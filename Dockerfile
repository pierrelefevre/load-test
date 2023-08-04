from ubuntu
run apt-get update
run apt-get upgrade -y
run apt-get autoremove -y
run apt-get install siege -y

cmd siege -c 255 https://cloud.cbh.kth.se
