FROM  pluswave/ctex

RUN   apt-get update
RUN   DEBIAN_FRONTEND=noninteractiveve apt-get upgrade -y
RUN   DEBIAN_FRONTEND=noninteractiveve apt-get install -y python-pip 
RUN   DEBIAN_FRONTEND=noninteractive apt-get install -y libgraphviz-dev
RUN   DEBIAN_FRONTEND=noninteractive apt-get install -y libxml2-dev 
RUN   DEBIAN_FRONTEND=noninteractive apt-get install -y python-dev
RUN   DEBIAN_FRONTEND=noninteractive apt-get install -y libxslt1-dev
RUN   DEBIAN_FRONTEND=noninteractive apt-get install -y graphviz
RUN   DEBIAN_FRONTEND=noninteractive apt-get install -y openjdk-7-jre
RUN   DEBIAN_FRONTEND=noninteractive apt-get install -y locales
RUN   echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
RUN   echo 'zh_CN.UTF-8 UTF-8' >> /etc/locale.gen
RUN   locale-gen
ENV   LANG zh_CN.UTF-8

RUN   pip install Sphinx
RUN   pip install tinkerer
RUN   pip install sphinxcontrib-plantuml
COPY  plantuml.jar /usr/local/plantuml/

CMD ["/bin/bash"] 
