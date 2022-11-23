#include "pclviwer.h"

PCLViwer::PCLViwer()
{
        pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_in(new pcl::PointCloud<pcl::PointXYZ>); //创建存放读取点云的对象
        if (pcl::io::loadPCDFile("test.pcd", *cloud_in) < 0)
        {
            PCL_ERROR("\a->点云文件不存在！\n");
           // system("pause");
        }
        cout << "->加载了 " << cloud_in->points.size() << " 个数据点" << endl;
}
