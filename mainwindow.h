#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <slam_socket.h>
#include <pclviwer.h>
#include <QThread>
QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
    PCLViwer *mPCLViwer;
    SLAM_socket *SLAMst;
private slots:
    void on_StartScan_clicked();
    void on_StopScan_clicked();

private:
    Ui::MainWindow *ui;
    QThread *UPDThread;
};
#endif // MAINWINDOW_H
