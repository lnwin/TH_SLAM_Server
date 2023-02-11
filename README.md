SLAM3-1.0 在windows下编译需要注意的事项：

1、使用QT5+vs2017/2022 C++14的方式，全部使用静态库；
2、第三方库的安装强烈建议使用vcpkg，否则白浪费时间，vxpkg 编译的各种库的指令如下
  
     vcpkg install boost:x64-windows-static  
     vcpkg install opencv[cuda]:x64-windows-static   
     vcpkg install vtk[qt,opengl]:x64-windows-static
     vcpkg install qt5:x64-windows-static

使用以上的vcpkg配置就可以满足我们的项目需求，以下是特别注意：

使用vcpkg安装的静态库时，需要额外在  项目-》连接器=》输入中添加  以下lib
，否则会报错。必须注意。！
WS2_32.lib
Psapi.lib
DbgHelp.lib
