FROM centos:latest
RUN  yum update -y
RUN  yum upgrade -y
RUN yum install curl -y
RUN yum install wget -y
RUN yum install git -y
RUN yum install java-1.8.0-openjdk -y
RUN yum install java-1.8.0-openjdk-devel -y
WORKDIR /opt/
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.41/bin/apache-tomcat-9.0.41.tar.gz 
RUN tar -xvf apache-tomcat-9.0.41.tar.gz
RUN mv apache-tomcat-9.0.41 tomcat
COPY . /opt/tomcat/webapps
WORKDIR /opt/tomcat/bin
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
