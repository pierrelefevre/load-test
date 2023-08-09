from ubuntu
run apt-get update
run apt-get upgrade -y
run apt-get autoremove -y
run apt-get install siege -y
run apt-get install hey -y

#cmd siege -c 255 "https://cloud.cbh.kth.se"
#cmd siege -c 255 "https://api.cloud.cbh.kth.se/deploy/hello"
cmd siege -c 255 'https://orc.fyi/courses/kth/sf1624'

