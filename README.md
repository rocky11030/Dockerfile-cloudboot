Dockerfile说明
========

* 基于centos6.8的镜像
* 拷贝cloudboot的rpm包到容器的tmp下,包太大不能传到git上了
* 安装mount和cloudboot
* 复制service.sh脚本到根目录
* 创建2个挂载点，但是感觉没什么用处
* CMD执行/server.sh脚本
