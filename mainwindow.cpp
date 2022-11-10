#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
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


void MainWindow::on_pushButton_clicked()
{

}

void MainWindow::on_pushButton_2_clicked()
{

}
