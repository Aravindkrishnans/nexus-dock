#!/bin/bash

curl -O -u admin:admin123 http://52.66.237.251:8081/repository/maven-Test/com/web_test/web_test_nexus/1.1/web_test_nexus-1.1.war
docker build -t aravind:v1 .
