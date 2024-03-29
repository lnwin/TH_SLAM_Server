﻿#ifndef PCLVIWER_H
#define PCLVIWER_H
#include "ui_mainwindow.h"
#include <pcl/io/pcd_io.h> //PCD读写类相关头文件
#include <pcl/point_types.h> //PCL中支持的点类型头文件
#include <pcl/visualization/cloud_viewer.h>
#include <vtkGenericOpenGLRenderWindow.h>
#include <vtkNamedColors.h>
#include <vtkPoints.h>
using namespace pcl;
#include "vtkAutoInit.h"
#include"vtkSmartPointer.h"
#include"vtkAutoInit.h"
#include"vtkRenderer.h"
#include"vtkRenderWindow.h"
#include"vtkRenderWindowInteractor.h"
#include"vtkPolyData.h"
#include"vtkPolyDataReader.h"
#include"vtkSurfaceReconstructionFilter.h"
#include"vtkActor.h"
#include"vtkCamera.h"
#include"vtkContourFilter.h"
#include"vtkPolyDataMapper.h"
#include"vtkVertexGlyphFilter.h"
#include"vtkProperty.h"

VTK_MODULE_INIT(vtkRenderingOpenGL2); // VTK was built with vtkRenderingOpenGL
VTK_MODULE_INIT(vtkInteractionStyle);

class PCLViwer
{

public:
    PCLViwer(Ui::MainWindow);
   // void vtkSmartPointer<vtkActor> addCloudPoints(pcl::PointCloud<pcl::PointXYZRGBA> &cloud);
    //typedef pcl::PointXYZRGB PointT; //定义点云的每个点的类型；pcl::PointXYZRGBA ：包括空间坐标XYZ以及颜色信息RGB，多了一个alpha通道；PointXYZHSV :空间位置 + HSV颜色空间表示的颜色
   // typedef pcl::PointCloud<PointT> PointClouds; //定义点云类，用于创建点云对象


};

#endif // PCLVIWER_H
