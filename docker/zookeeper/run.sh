#!/bin/bash -
docker rm -f zookeeper || true
docker run -itd --name zookeeper --net host --restart always -d -v /root/docker/zookeeper/data:/data -v /root/docker/zookeeper/conf/zoo.cfg:/conf/zoo.cfg zookeeper