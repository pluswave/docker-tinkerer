# docker-tinkerer
基于 [Tinkerer](http://tinkerer.me) 的博客编译工具, docker一键安装版本，支持Latex, graphviz, plantuml

# 使用


把下面内容放到文件 docker-tinkerer.sh, 然后拷贝到 $PATH 包含的目录下(例如 /usr/local/bin )
``` 
#!/bin/sh
docker run -it --rm -v $PWD:/usr/src/app -w /usr/src/app -u `id -u`:`id -g` pluswave/tinkerer "$@"
```
然后执行

./docker-tinkerer.sh 代替 tinkerer 即可。
