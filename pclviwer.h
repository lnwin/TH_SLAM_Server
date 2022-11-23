﻿#ifndef PCLVIWER_H
#define PCLVIWER_H

#include <pcl/io/pcd_io.h> //PCD读写类相关头文件
#include <pcl/point_types.h> //PCL中支持的点类型头文件
#include <pcl/visualization/cloud_viewer.h>
//using namespace pcl;


class PCLViwer
{
public:
    PCLViwer();
    //typedef pcl::PointXYZRGB PointT; //定义点云的每个点的类型；pcl::PointXYZRGBA ：包括空间坐标XYZ以及颜色信息RGB，多了一个alpha通道；PointXYZHSV :空间位置 + HSV颜色空间表示的颜色
   // typedef pcl::PointCloud<PointT> PointClouds; //定义点云类，用于创建点云对象


};

#endif // PCLVIWER_H