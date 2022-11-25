#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    mPCLViwer=new PCLViwer(*ui);
    SLAMst = new SLAM_socket();
    UPDThread=new QThread;
    SLAMst->moveToThread(UPDThread);
    QObject::connect(UPDThread,&QThread::started,SLAMst,&SLAM_socket::Init);
    UPDThread->start();

}

MainWindow::~MainWindow()
{
    delete ui;
}


void MainWindow::on_StartScan_clicked()
{
     SLAMst->StartSystem();
}

void MainWindow::on_StopScan_clicked()
{
     SLAMst->StopSystem();
}
