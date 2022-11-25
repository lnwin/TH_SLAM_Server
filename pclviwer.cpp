#include "pclviwer.h"

PCLViwer::PCLViwer(Ui::MainWindow ui)
{
//        pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_in(new pcl::PointCloud<pcl::PointXYZ>); //创建存放读取点云的对象
//        if (pcl::io::loadPCDFile("C:/Users/Administrator/Desktop/bunny.pcd", *cloud_in) < 0)
//        {
//            PCL_ERROR("\a->点云文件不存在！\n");
//           // system("pause");
//        }
//        cout << "->加载了 " << cloud_in->points.size() << " 个数据点" << endl;
//        boost::shared_ptr<pcl::visualization::PCLVisualizer> viewer(new pcl::visualization::PCLVisualizer("3D Viewer"));
//        viewer->addPointCloud(cloud_in, "cloud");

//        vtkNew<vtkGenericOpenGLRenderWindow> myrenderWindow;

//        ui.openGLWidget->SetRenderWindow(myrenderWindow);
////            viewer->setupInteractor(ui.qvtkWidget->GetInteractor(), ui.qvtkWidget->GetRenderWindow());
////            viewer->setCameraPosition(0, 0, -2, 0, -1, 0, 0);
//        ui.openGLWidget->update();

        QVTKOpenGLWidget *qvtk=ui.openGLWidget;

        // Setup window
        vtkSmartPointer<vtkGenericOpenGLRenderWindow> renderWindow =
            vtkSmartPointer<vtkGenericOpenGLRenderWindow>::New();
        // setup sphere
        vtkSmartPointer<vtkSphereSource> sphereSource =
                vtkSmartPointer<vtkSphereSource>::New();
            sphereSource->SetCenter(0.0, 0.0, 0.0);
            sphereSource->SetRadius(5.0);
            sphereSource->Update();
        // setup map and actor
        vtkSmartPointer<vtkPolyDataMapper> mapper =
            vtkSmartPointer<vtkPolyDataMapper>::New();
        mapper->SetInputConnection(sphereSource->GetOutputPort());

        vtkSmartPointer<vtkActor> actor =
            vtkSmartPointer<vtkActor>::New();
        actor->SetMapper(mapper);

        vtkSmartPointer<vtkNamedColors> colors =
            vtkSmartPointer<vtkNamedColors>::New();

        // Setup renderer
        vtkSmartPointer<vtkRenderer> renderer =
        vtkSmartPointer<vtkRenderer>::New();
        renderer->SetBackground(colors->GetColor3d("Slate_grey").GetData());
        renderWindow->AddRenderer(renderer);
        renderer->AddActor(actor);
        qvtk->SetRenderWindow(renderWindow);
        // create stuff for user interaction
        vtkSmartPointer<vtkRenderWindowInteractor> renderWindowInteractor =
        vtkSmartPointer<vtkRenderWindowInteractor>::New();
        /*
          vtkSmartPointer<vtkUserInteractionStyle> inter = vtkUserInteractionStyle::New ();
           inter->SetDefaultRenderer(renderer);
           renderWindowInteractor->SetInteractorStyle( inter );
        */

        // make the link between the  renderwindow and the interactor
        renderWindowInteractor->SetRenderWindow ( renderWindow );
        qvtk->show();
        renderWindow->Render ();
        renderWindowInteractor->Initialize();



}
