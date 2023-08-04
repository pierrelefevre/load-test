from ubuntu
run apt-get update
run apt-get upgrade -y
run apt-get autoremove -y
run apt-get install siege -y

arg URL
env ENDPOINT_URL = ${URL}
cmd echo $ENDPOINT_URL && siege -c 255 $ENDPOINT_URL
