docker rm -f canal-server || true
./run.sh \
    -e canal.id=1 \

    # register ip to zookeeper
    -e canal.register.ip=192.168.x.x \
    -e canal.port=11111 \
    -e canal.metrics.pull.port=11112 \

    # zookeeper
    -e canal.zkServers=192.168.x.x:2181 \

    # destinations
    -e canal.destinations=prod \

    # instance
    -e canal.instance.global.spring.xml=classpath:spring/default-instance.xml \
    -e canal.instance.mysql.salveId=1111 \
    -e canal.instance.master.address=192.168.x.x:3306 \
    -e canal.instance.dbUsername=root \
    -e canal.instance.dbPassword=root