#include "slam_socket.h"

QString HandBag    =  "aa";
QString HeartBag   =  "bb";
QString ControlMSG =  "cc";
SLAM_socket::SLAM_socket()
{

    mCrc=new Crc();
   // Init();
}

void SLAM_socket::Init()
{
     UDP4ControlMSG=new QUdpSocket;
     UDP4PC=new QUdpSocket;
     UDP4ControlMSG->bind(QHostAddress("192.168.194.77"),5100);
     UDP4PC->bind(QHostAddress("192.168.194.77"),5400);
     connect(UDP4ControlMSG,SIGNAL(readyRead()),this,SLOT(UDP4ControlMSGReadData()));
     connect(UDP4PC,SIGNAL(readyRead()),this,SLOT(UDP4PCReadData()));
     HeartBagTimer=new QTimer();
     connect(HeartBagTimer,SIGNAL(timeout()),this,SLOT(SendHeartBag()));
     HeartBagTimer->setInterval(1000);

};

void SLAM_socket::SendHanded()
{
    QByteArray MSG;
    MSG[0]=0xaa;
    MSG[1]=0x01;
    MSG[2]=0x07;
    MSG[3]=0xaa;
    MSG[4]=0x00;
    uint16_t wcrc=mCrc->ModbusCRC16(MSG);
    MSG.append(uint8_t(wcrc));
    MSG.append(uint8_t(wcrc>>8));
    UDP4ControlMSG->writeDatagram(MSG,QHostAddress("192.168.194.7"),5200);//Jetson接收端的端口须和window的不一样5
};
void SLAM_socket::SendHeartBag()
{
    unique_lock<mutex>lock(sendMutex);
    QByteArray MSG;
    MSG[0]=0xaa;
    MSG[1]=0x01;
    MSG[2]=0x07;
    MSG[3]=0xbb;
    MSG[4]=0x00;
    uint16_t wcrc=mCrc->ModbusCRC16(MSG);
    MSG.append(uint8_t(wcrc));
    MSG.append(uint8_t(wcrc>>8));
    UDP4ControlMSG->writeDatagram(MSG,QHostAddress("192.168.194.7"),5200);//Jetson接收端的端口须和window的不一样5
};


void SLAM_socket::StartSystem()
{
    unique_lock<mutex>lock(sendMutex);
    QByteArray MSG;
    MSG[0]=0xaa;
    MSG[1]=0x01;
    MSG[2]=0x07;
    MSG[3]=0xcc;
    MSG[4]=0xaa;
    uint16_t wcrc=mCrc->ModbusCRC16(MSG);
    MSG.append(uint8_t(wcrc));
    MSG.append(uint8_t(wcrc>>8));
    UDP4ControlMSG->writeDatagram(MSG,QHostAddress("192.168.194.7"),5200);//Jetson接收端的端口须和window的不一样5
};
void SLAM_socket::StopSystem()
{
    unique_lock<mutex>lock(sendMutex);
    QByteArray MSG;
    MSG[0]=0xaa;
    MSG[1]=0x01;
    MSG[2]=0x07;
    MSG[3]=0xcc;
    MSG[4]=0xbb;
    uint16_t wcrc=mCrc->ModbusCRC16(MSG);
    MSG.append(uint8_t(wcrc));
    MSG.append(uint8_t(wcrc>>8));
    UDP4ControlMSG->writeDatagram(MSG,QHostAddress("192.168.194.7"),5200);//Jetson接收端的端口须和window的不一样5
};
void SLAM_socket::UDP4ControlMSGReadData()
{
    QByteArray ba;
        while(UDP4ControlMSG->hasPendingDatagrams())
        {
            ba.resize(UDP4ControlMSG->pendingDatagramSize());
            UDP4ControlMSG->readDatagram(ba.data(), ba.size());
            if(!ba.isNull())
               {
                   QString MSGType =ba.mid(3,1).toHex();
                   if(MSGType==HandBag)
                  {
                         if(CheckCRC(ba))
                         {
                              qDebug()<<"Received handed"<<endl;
                              SendHanded();
                              HeartBagTimer->start();
                         }
                  }



               }


       }
}
void SLAM_socket::UDP4PCReadData()
{
        QByteArray ba;
        int cout=1;
        while(UDP4PC->hasPendingDatagrams())
        {
            ba.resize(UDP4PC->pendingDatagramSize());
            UDP4PC->readDatagram(ba.data(), ba.size());
            if(!ba.isNull())
               {
                if(ba.size()==2000)
                {

                    //qDebug()<<cout;
                    qDebug()<<ba.size();
                    //cout+=1;

                }
                else
                {
                     qDebug()<<ba.size();
                   //qDebug()<<cout;
                   // cout=1;
                }

               }
        }


}

bool SLAM_socket::CheckCRC(QByteArray byte)
{
    QByteArray ByteCopy=byte;
    QByteArray waveDataC1;
    waveDataC1[0]= ByteCopy.at(6);
    waveDataC1[1]= ByteCopy.at(5);
    int C1=waveDataC1.toHex().toInt(0,16);
    uint16_t wcrc= mCrc->ModbusCRC16(ByteCopy.mid(0,5));

    if(C1==wcrc)
    {
        return true;
    }
    else
    {
        return false;
    }

};
