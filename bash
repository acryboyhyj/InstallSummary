在 安装过程中，因为export了错误的环境变量，导致虚拟机无法登录桌面，且出现no such file等内容
安装编译工具链，修改环境变量后重启，可能因为误操作的原因导致开机输入密码后无法进入桌面。

按ctrl+atl+f1（f1-f6）在正在登录密码界面，可以进入控制台。

1)、进入系统(在输入密码的那个界面)
2)、按住Ctrl+Alt+F1(F1~F7分别是不同的模式，前6个为控制台模式)
3)、根据提示输入用户名、密码
4)、进入etc目录 (cd /etc)
5)、编辑profile文件 (/usr/bin/sudo vi profile)
6)、删除里面自己添加的出问题的代码 (选中按x键删除)
7)、保存并退出 (依次键入Shift+:  wq 并回车)
8)、重复 2) 进入窗口界面输入密码即可

/etc/profile 
The systemwide initialization file, executed for login shells
/etc/bash.bash_logout 
The systemwide login shell cleanup file, executed when a login shell exits
~/.bash_profile 
The personal initialization file, executed for login shells
~/.bashrc 
The individual per-interactive-shell startup file
~/.bash_logout 
The individual login shell cleanup file, executed when a login shell exits
 
总的来说登陆的shell会调用profile系列，非登陆则是rc系列
1. ~/.bash_profile显式调用~/.bashrc文件； 
2. ~/.bashrc显式调用/etc/bashrc文件；

Linux中startup文件区分全局和个人：全局startup文件放在/etc目录下，用于设置所有用户共同的配置；
个人startup文件放在~目录下，用于设置某个用户的个性化配置。
 
有些 平台usr/local/include 以及urs/local/lib 也会作为默认搜索路径，也是因为这个原因，
一般是include<mysql++/mysql++.h>，有些不会，所以在安装的时候可以 ./configure -prefix=/usr
避免 这个问题；不再默认路径或者把路径增加到默认路径，需要 显示指定-I -L，

#(动态库搜索路径) 程序加载运行期间查找动态链接库时指定除了系统默认路径之外的其他路径
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/protobuf/lib/
#(静态库搜索路径) 程序编译期间查找动态链接库时指定查找共享库的路径
export LIBRARY_PATH=$LIBRARY_PATH:/usr/local/protobuf/lib/
#执行程序搜索路径
export PATH=$PATH:/usr/local/protobuf/bin/
#c程序头文件搜索路径
export C_INCLUDE_PATH=$C_INCLUDE_PATH:/usr/local/protobuf/include/
#c++程序头文件搜索路径
export CPLUS_INCLUDE_PATH=$CPLUS_INCLUDE_PATH:/usr/local/protobuf/include/
#pkg-config 路径
export PKG_CONFIG_PATH=/usr/local/protobuf/lib/pkgconfig/
 
