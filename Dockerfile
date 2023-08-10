from ubuntu
run apt-get update
run apt-get upgrade -y
run apt-get autoremove -y
run apt-get install siege -y
run apt-get install hey -y
run apt-get install -y python3 python3-pip
run python3 -m pip install --upgrade pip

env url='https://orc.fyi/courses/kth/sf1624' 
env PORT=8080

# "https://api.cloud.cbh.kth.se/deploy/hello"
# "https://cloud.cbh.kth.se"

workdir /app
run echo pinging $url > index.html

cmd python3 -m http.server $PORT & \
	siege -c 255 $url
