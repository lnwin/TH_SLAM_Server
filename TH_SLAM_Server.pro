QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    Crc.cpp \
    main.cpp \
    mainwindow.cpp \
    pclviwer.cpp \
    slam_socket.cpp

HEADERS += \
    Crc.h \
    mainwindow.h \
    pclviwer.h \
    slam_socket.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


INCLUDEPATH += 'C:/Program Files/PCL 1.9.1/include/pcl-1.9'
DEPENDPATH += 'C:/Program Files/PCL 1.9.1/include/pcl-1.9'

INCLUDEPATH += 'C:/Program Files/PCL 1.9.1/3rdParty/Boost/include/boost-1_68'
INCLUDEPATH += 'C:/Program Files/PCL 1.9.1/3rdParty/Eigen/eigen3'
INCLUDEPATH += 'C:/Program Files/PCL 1.9.1/3rdParty/VTK/include/vtk-8.1'
INCLUDEPATH += 'C:/Program Files/PCL 1.9.1/3rdParty/Qhull/include'
INCLUDEPATH += 'C:/Program Files/PCL 1.9.1/3rdParty/FLANN/include/flann'



#release {
#          LIBS += -L'C:/Program Files/PCL 1.9.1/lib/'
#                  -lpcl_common_release/
#                  -lpcl_features_release/
#                  -lpcl_filters_release/
#                  -lpcl_io_ply_release/
#                  -lpcl_io_release/
#                  -lpcl_kdtree_release/
#                  -lpcl_keypoints_release/
#                  -lpcl_ml_release/
#                  -lpcl_octree_release/
#                  -lpcl_outofcore_release/
#                  -lpcl_people_release/
#                  -lpcl_recognition_release/
#                  -lpcl_registration_release/
#                  -lpcl_sample_consensus_release/
#                  -lpcl_search_release/
#                  -lpcl_segmentation_release/
#                  -lpcl_stereo_release/
#                  -lpcl_surface_release/
#                  -lpcl_tracking_release/
#                  -lpcl_visualization_release

#         LIBS +=  -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/'
#                  -llibboost_atomic-vc141-mt-x64-1_68/
#                  -llibboost_bzip2-vc141-mt-x64-1_68/
#                  -llibboost_chrono-vc141-mt-x64-1_68/
#                  -llibboost_container-vc141-mt-x64-1_68/
#                  -llibboost_context-vc141-mt-x64-1_68/
#                  -llibboost_contract-vc141-mt-x64-1_68/
#                  -llibboost_coroutine-vc141-mt-x64-1_68/
#                  -llibboost_date_time-vc141-mt-x64-1_68/
#                  -llibboost_exception-vc141-mt-x64-1_68/
#                  -llibboost_fiber-vc141-mt-x64-1_68/
#                  -llibboost_filesystem-vc141-mt-x64-1_68/
#                  -llibboost_graph_parallel-vc141-mt-x64-1_68/
#                  -llibboost_graph-vc141-mt-x64-1_68/
#                  -llibboost_iostreams-vc141-mt-x64-1_68/
#                  -llibboost_locale-vc141-mt-x64-1_68/
#                  -llibboost_log_setup-vc141-mt-x64-1_68/
#                  -llibboost_log-vc141-mt-x64-1_68/
#                  -llibboost_math_c99f-vc141-mt-x64-1_68/
#                  -llibboost_math_c99l-vc141-mt-x64-1_68/
#                  -llibboost_math_c99-vc141-mt-x64-1_68/
#                  -llibboost_math_tr1f-vc141-mt-x64-1_68/
#                  -llibboost_math_tr1l-vc141-mt-x64-1_68/
#                  -llibboost_math_tr1-vc141-mt-x64-1_68/
#                  -llibboost_mpi-vc141-mt-x64-1_68/
#                  -llibboost_numpy27-vc141-mt-x64-1_68/
#                  -llibboost_numpy37-vc141-mt-x64-1_68/
#                  -llibboost_prg_exec_monitor-vc141-mt-x64-1_68/
#                  -llibboost_program_options-vc141-mt-x64-1_68/
#                  -llibboost_python27-vc141-mt-x64-1_68/
#                  -llibboost_python37-vc141-mt-x64-1_68/
#                  -llibboost_random-vc141-mt-x64-1_68/
#                  -llibboost_regex-vc141-mt-x64-1_68/
#                  -llibboost_serialization-vc141-mt-x64-1_68/
#                  -llibboost_signals-vc141-mt-x64-1_68/
#                  -llibboost_stacktrace_noop-vc141-mt-x64-1_68/
#                  -llibboost_stacktrace_windbg_cached-vc141-mt-x64-1_68/
#                  -llibboost_stacktrace_windbg-vc141-mt-x64-1_68/
#                  -llibboost_system-vc141-mt-x64-1_68/
#                  -llibboost_test_exec_monitor-vc141-mt-x64-1_68/
#                  -llibboost_thread-vc141-mt-x64-1_68/
#                  -llibboost_timer-vc141-mt-x64-1_68/
#                  -llibboost_type_erasure-vc141-mt-x64-1_68/
#                  -llibboost_unit_test_framework-vc141-mt-x64-1_68/
#                  -llibboost_wave-vc141-mt-x64-1_68/
#                  -llibboost_wserialization-vc141-mt-x64-1_68/
#                  -llibboost_zlib-vc141-mt-x64-1_68

#          LIBS +=-L'C:/Program Files/PCL 1.9.1/3rdParty/FLANN/lib/'
#                  -lflann\
#                  -lflann_cpp\
#                  -lflann_cpp_s\
#                  -lflann_cpp_s-gd\
#                  -lflann_cpp-gd\
#                  -lflann_s\
#                  -lflann_s-gd\
#                  -lflann-gd

#          LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Qhull/lib/'
#                  -lqhull\
#                  -lqhull_d\
#                  -lqhull_p\
#                  -lqhull_p_d\
#                  -lqhull_r\
#                  -lqhull_r_d\
#                  -lqhullcpp\
#                  -lqhullcpp_d\
#                  -lqhullstatic\
#                  -lqhullstatic_d\
#                  -lqhullstatic_r\
#                  -lqhullstatic_r_d



#          LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib'
#                  -lvtkalglib-8.1\
#                  -lvtkChartsCore-8.1\
#                  -lvtkCommonColor-8.1\
#                  -lvtkCommonComputationalGeometry-8.1\
#                  -lvtkCommonCore-8.1\
#                  -lvtkCommonDataModel-8.1\
#                  -lvtkCommonExecutionModel-8.1\
#                  -lvtkCommonMath-8.1\
#                  -lvtkCommonMisc-8.1\
#                  -lvtkCommonSystem-8.1\
#                  -lvtkCommonTransforms-8.1\
#                  -lvtkDICOMParser-8.1\
#                  -lvtkDomainsChemistry-8.1\
#                  -lvtkexoIIc-8.1\
#                  -lvtkexpat-8.1\
#                  -lvtkFiltersAMR-8.1\
#                  -lvtkFiltersCore-8.1\
#                  -lvtkFiltersExtraction-8.1\
#                  -lvtkFiltersFlowPaths-8.1\
#                  -lvtkFiltersGeneral-8.1\
#                  -lvtkFiltersGeneric-8.1\
#                  -lvtkFiltersGeometry-8.1\
#                  -lvtkFiltersHybrid-8.1\
#                  -lvtkFiltersHyperTree-8.1\
#                  -lvtkFiltersImaging-8.1\
#                  -lvtkFiltersModeling-8.1\
#                  -lvtkFiltersParallel-8.1\
#                  -lvtkFiltersParallelImaging-8.1\
#                  -lvtkFiltersPoints-8.1\
#                  -lvtkFiltersProgrammable-8.1\
#                  -lvtkFiltersSelection-8.1\
#                  -lvtkFiltersSMP-8.1\
#                  -lvtkFiltersSources-8.1\
#                  -lvtkFiltersStatistics-8.1\
#                  -lvtkFiltersTexture-8.1\
#                  -lvtkFiltersTopology-8.1\
#                  -lvtkFiltersVerdict-8.1\
#                  -lvtkfreetype-8.1\
#                  -lvtkGeovisCore-8.1\
#                  -lvtkgl2ps-8.1\
#                  -lvtkhdf5_hl-8.1\
#                  -lvtkhdf5-8.1\
#                  -lvtkImagingColor-8.1\
#                  -lvtkImagingCore-8.1\
#                  -lvtkImagingFourier-8.1\
#                  -lvtkImagingGeneral-8.1\
#                  -lvtkImagingHybrid-8.1\
#                  -lvtkImagingMath-8.1\
#                  -lvtkImagingMorphological-8.1\
#                  -lvtkImagingSources-8.1\
#                  -lvtkImagingStatistics-8.1\
#                  -lvtkImagingStencil-8.1\
#                  -lvtkInfovisCore-8.1\
#                  -lvtkInfovisLayout-8.1\
#                  -lvtkInteractionImage-8.1\
#                  -lvtkInteractionStyle-8.1\
#                  -lvtkInteractionWidgets-8.1\
#                  -lvtkInteractionStyle-8.1\
#                  -lvtkIOAMR-8.1\
#                  -lvtkIOCore-8.1\
#                  -lvtkIOEnSight-8.1\
#                  -lvtkIOExodus-8.1\
#                  -lvtkIOExport-8.1\
#                  -lvtkIOExportOpenGL-8.1\
#                  -lvtkIOGeometry-8.1\
#                  -lvtkIOImage-8.1\
#                  -lvtkIOImport-8.1\
#                  -lvtkIOInfovis-8.1\
#                  -lvtkIOLegacy-8.1\
#                  -lvtkIOLSDyna-8.1\
#                  -lvtkIOMINC-8.1\
#                  -lvtkIOMovie-8.1\
#                  -lvtkIONetCDF-8.1\
#                  -lvtkIOParallel-8.1\
#                  -lvtkIOParallelXML-8.1\
#                  -lvtkIOPLY-8.1\
#                  -lvtkIOSQL-8.1\
#                  -lvtkIOTecplotTable-8.1\
#                  -lvtkIOVideo-8.1\
#                  -lvtkIOXML-8.1\
#                  -lvtkIOXMLParser-8.1\
#                  -lvtkjpeg-8.1\
#                  -lvtkjsoncpp-8.1\
#                  -lvtklibharu-8.1\
#                  -lvtklibxml2-8.1\
#                  -lvtklz4-8.1\
#                  -lvtkmetaio-8.1\
#                  -lvtkNetCDF-8.1\
#                  -lvtknetcdfcpp-8.1\
#                  -lvtkoggtheora-8.1\
#                  -lvtkParallelCore-8.1\
#                  -lvtkpng-8.1\
#                  -lvtkproj4-8.1\
#                  -lvtkRenderingAnnotation-8.1\
#                  -lvtkRenderingContext2D-8.1\
#                  -lvtkRenderingContextOpenGL-8.1\
#                  -lvtkRenderingCore-8.1\
#                  -lvtkRenderingFreeType-8.1\
#                  -lvtkRenderingImage-8.1\
#                  -lvtkRenderingLabel-8.1\
#                  -lvtkRenderingLIC-8.1\
#                  -lvtkRenderingLOD-8.1\
#                  -lvtkRenderingVolume-8.1\
#                  -lvtkRenderingVolumeOpenGL-8.1\
#                  -lvtksqlite-8.1\
#                  -lvtksys-8.1\
#                  -lvtktiff-8.1\
#                  -lvtkverdict-8.1\
#                  -lvtkViewsContext2D-8.1\
#                  -lvtkViewsCore-8.1\
#                  -lvtkViewsInfovis-8.1\
#                  -lvtkzlib-8.1

#        }










#////////////////////////////////////////////boost



win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_atomic-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_bzip2-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_chrono-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_container-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_context-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_contract-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_coroutine-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_date_time-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_exception-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_exception-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_fiber-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_filesystem-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_graph_parallel-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_graph-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_iostreams-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_locale-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_log_setup-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_log-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_math_c99f-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_math_c99l-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_math_c99-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_math_tr1f-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_math_tr1l-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_math_tr1-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_mpi-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_numpy27-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_numpy37-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_prg_exec_monitor-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_program_options-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_python27-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_python37-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_random-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_regex-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_serialization-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_signals-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_stacktrace_noop-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_stacktrace_windbg_cached-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_stacktrace_windbg-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_system-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_test_exec_monitor-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_thread-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_timer-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_type_erasure-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_unit_test_framework-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_wave-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_wserialization-vc141-mt-x64-1_68

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Boost/lib/' -llibboost_zlib-vc141-mt-x64-1_68
#////////////////////vtk

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkalglib-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkChartsCore-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkCommonColor-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkCommonComputationalGeometry-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkCommonDataModel-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkCommonExecutionModel-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkCommonMath-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkCommonMisc-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkCommonSystem-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkCommonTransforms-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkDICOMParser-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkDomainsChemistry-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkexoIIc-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkexpat-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersAMR-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersCore-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersExtraction-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersFlowPaths-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersGeneral-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersGeneric-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersGeometry-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersHybrid-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersHyperTree-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersImaging-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersModeling-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersParallel-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersParallelImaging-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersPoints-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersProgrammable-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersSelection-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersSMP-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersSources-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersStatistics-8.1
win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersTexture-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersTopology-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkFiltersVerdict-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkfreetype-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkGeovisCore-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkgl2ps-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkhdf5_hl-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkhdf5-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkImagingColor-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkImagingCore-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkImagingFourier-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkImagingGeneral-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkImagingHybrid-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkImagingMath-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkImagingMorphological-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkImagingSources-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkImagingStatistics-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkImagingStencil-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkInfovisCore-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkInfovisLayout-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkInteractionImage-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkInteractionStyle-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkInteractionWidgets-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOAMR-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOCore-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOEnSight-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOExodus-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOExport-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOExportOpenGL-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOGeometry-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOImage-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOImport-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOInfovis-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOLegacy-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOLSDyna-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOMINC-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOMovie-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIONetCDF-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOParallel-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOParallelXML-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOPLY-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOSQL-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOTecplotTable-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOVideo-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOXML-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOXMLParser-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkjpeg-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkjsoncpp-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtklibharu-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtklibxml2-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtklz4-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkmetaio-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkNetCDF-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtknetcdfcpp-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkoggtheora-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkParallelCore-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkIOParallelXML-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkpng-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkproj4-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkRenderingAnnotation-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkRenderingContext2D-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkRenderingContextOpenGL-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkRenderingCore-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkRenderingFreeType-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkRenderingGL2PS-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkRenderingImage-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkRenderingLabel-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkRenderingLIC-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkRenderingLOD-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkRenderingOpenGL-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkRenderingVolume-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkRenderingVolumeOpenGL-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtksqlite-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtksys-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtktiff-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkverdict-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkViewsContext2D-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkViewsCore-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkViewsInfovis-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkzlib-8.1

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/VTK/lib/' -lvtkCommonCore-8.1


win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/FLANN/lib/' -lflann

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/FLANN/lib/' -lflann_cpp

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/FLANN/lib/' -lflann_cpp_s

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/FLANN/lib/' -lflann_cpp_s-gd

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/FLANN/lib/' -lflann_s

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/FLANN/lib/' -lflann_s-gd

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/FLANN/lib/' -lflann-gd

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Qhull/lib/' -lqhull

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Qhull/lib/' -lqhullcpp

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Qhull/lib/' -lqhullstatic

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Qhull/lib/' -lqhull_p

win32: LIBS += -L'C:/Program Files/PCL 1.9.1/3rdParty/Qhull/lib/' -lqhull_r



win32: LIBS += -L'C:/Program Files/OpenNI2/Lib/' -lOpenNI2

INCLUDEPATH += 'C:/Program Files/OpenNI2/Include'
DEPENDPATH += 'C:/Program Files/OpenNI2/Include'

CONFIG(release)
{
LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_common_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_tracking_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_visualization_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_features_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_filters_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_io_ply_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_io_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_kdtree_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_keypoints_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_ml_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_octree_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_outofcore_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_people_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_recognition_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_registration_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_sample_consensus_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_search_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_segmentation_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_stereo_release

LIBS += -L'C:/Program Files/PCL 1.9.1/lib/' -lpcl_surface_release
}
