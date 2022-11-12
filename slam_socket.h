#ifndef SLAM_SOCKET_H
#define SLAM_SOCKET_H
#include <QUdpSocket>
#include <QObject>
#include <QThread>
#include <QDebug>
#include <Crc.h>
#include <QTimer>
#include <mutex>
using namespace std;
class SLAM_socket :public QThread
{
    Q_OBJECT
public:
    SLAM_socket();

    QUdpSocket* UDP4ControlMSG;
    Crc* mCrc;

    void StartSystem();
    void StopSystem();
    void SendHanded();


public slots:
    void UDP4ControlMSGReadData();
    void Init();

    void SendHeartBag();
private:
    bool CheckCRC(QByteArray byte);
    QTimer *HeartBagTimer;
    mutex sendMutex;
};

#endif // SLAM_SOCKET_H
