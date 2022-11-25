#include "pclviwer.h"

vtkSmartPointer<vtkActor> addCloudPoints(pcl::PointCloud<pcl::PointXYZRGBA> &cloud)
{
    vtkSmartPointer<vtkPoints>points = vtkSmartPointer<vtkPoints>::New();//点数据
    vtkSmartPointer<vtkCellArray> vertices = vtkSmartPointer<vtkCellArray>::New();//单元数据 顶点类型

    for (int i = 0; i < cloud.points.size();i++)
    {
        //定义存储顶点索引的中间变量，类似Int、long类型
        vtkIdType pointId[1];
        //将每个点的坐标加入vtkPoints，InsertNextPoint()返回加入点的索引号
        pointId[0] = points->InsertNextPoint(cloud.points[i].x, cloud.points[i].y, cloud.points[i].z);
        //为每个坐标点分别创建一个顶点，顶点是单元类型里面的一种
        vertices->InsertNextCell(1,pointId);
    }
    //创建vtkPolyData对象
    vtkSmartPointer<vtkPolyData> polyData = vtkSmartPointer<vtkPolyData>::New();
    //指定数据的几何结构（由points指定）和拓扑结构（由vertices指定）
    polyData->SetPoints(points);
    polyData->SetVerts(vertices);

    vtkSmartPointer<vtkPolyDataMapper> pointsMapper =vtkSmartPointer<vtkPolyDataMapper>::New();
    pointsMapper->SetInputData(polyData);

    vtkSmartPointer<vtkActor> pointsActor = vtkSmartPointer<vtkActor>::New();
    pointsActor->SetMapper(pointsMapper);
    pointsActor->GetProperty()->SetPointSize(3);//设置点的大小

    return pointsActor;
}

PCLViwer::PCLViwer(Ui::MainWindow ui)
{
        pcl::PointCloud<pcl::PointXYZRGBA>::Ptr cloud_in(new pcl::PointCloud<pcl::PointXYZRGBA>); //创建存放读取点云的对象
        if (pcl::io::loadPCDFile("C:/Users/Administrator/Desktop/bunny.pcd", *cloud_in) < 0)
        {
            PCL_ERROR("\a->点云文件不存在！\n");
        }
        cout << "->加载了 " << cloud_in->points.size() << " 个数据点" << endl;
        QVTKOpenGLWidget *qvtk=ui.openGLWidget;
        // Setup window
        vtkSmartPointer<vtkGenericOpenGLRenderWindow> renderWindow =
            vtkSmartPointer<vtkGenericOpenGLRenderWindow>::New();       // setup sphere
        qvtk->SetRenderWindow(renderWindow);
        vtkNew<vtkRenderWindowInteractor> interactor;
          interactor->SetRenderWindow(renderWindow);
        vtkSmartPointer<vtkActor> pointsActor = addCloudPoints(*cloud_in);
        // Setup renderer
        vtkSmartPointer<vtkRenderer> renderer =
            vtkSmartPointer<vtkRenderer>::New();
        renderer->SetBackground(.1, .2, .3);
        renderer->AddActor(pointsActor);
        renderWindow->AddRenderer(renderer);
        vtkSmartPointer<vtkInteractorStyleTrackballCamera>interactorStyle = vtkSmartPointer<vtkInteractorStyleTrackballCamera>::New();
            interactor->SetInteractorStyle(interactorStyle);
        renderWindow->Render();
        interactor->Initialize();


;



}
