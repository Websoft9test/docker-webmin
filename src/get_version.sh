sudo echo "webmin version:" $(docker exec -i $1 ls |grep webmin|cut -d- -f2) 1>> /data/logs/install_version.txt
