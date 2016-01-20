function vdo() {
    docker run -it --rm -p 1521:1521 -v ~/test/alim:/alim $(docker images | awk '{print $1}' | grep oracle ) /bin/bash
}
function vdip() {
    docker inspect $(docker ps -qa) | grep \"IPAddress\" | sed 's/,//g' | awk  '{print $2}' | sed 's/\"//g'
}

function vdrm() {
    docker rm $(docker ps --all -qa)
}
