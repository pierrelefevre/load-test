from ubuntu
run apt-get update
run apt-get upgrade -y
run apt-get autoremove -y
run apt-get install siege -y

arg URL

cmd siege -c 255 ${URL}
