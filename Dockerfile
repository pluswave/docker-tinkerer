FROM  texlive-full-ctex-debian8:v1.0

RUN   apt-get update
RUN   DEBIAN_FRONTEND=noninteractiveve apt-get upgrade -y
RUN   DEBIAN_FRONTEND=noninteractiveve apt-get install -y python-pip 
RUN   DEBIAN_FRONTEND=noninteractive apt-get install -y libgraphviz-dev
RUN   DEBIAN_FRONTEND=noninteractive apt-get install -y libxml2-dev 
RUN   DEBIAN_FRONTEND=noninteractive apt-get install -y python-dev
RUN   DEBIAN_FRONTEND=noninteractive apt-get install -y libxslt1-dev


RUN   pip install Sphinx
RUN   pip install tinkerer
RUN   pip install sphinxcontrib-plantuml
COPY  plantuml.jar /usr/local/bin

CMD ["/bin/bash"] 
