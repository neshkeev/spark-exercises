function docker() {
    ssh -o ConnectTimeout=10 root@"$DIND_HOST" -p 2222 -i ~/.ssh/id_rsa_dind "cd /root/\$(cat /tmp/cwd); /usr/local/bin/docker $@"
}

function hdfs() {
    docker compose exec -T "${NAMENODE_HOST}" "su -l hdfs -c \"hdfs $@\""
}

function yarn() {
    docker compose exec -T "${RESOURCEMANAGER_HOST}" "su -l yarn -c \"yarn $@\""
}

function execute() {
    docker compose exec -T "${HOST:-$(hostname)}" $@
}
