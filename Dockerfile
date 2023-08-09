from ubuntu
run apt-get update
run apt-get upgrade -y
run apt-get autoremove -y
run apt-get install siege -y
run apt-get install hey -y
run apt-get update && apt-get install -y python3 python3-pip
run python3 -m pip install --upgrade pip

arg url 'https://orc.fyi/courses/kth/sf1624' 

workdir /app
run echo pinging $url > index.html
run python -m http.server $PORT &
run echo pinging $url


#cmd siege -c 255 "https://cloud.cbh.kth.se"
#cmd siege -c 255 "https://api.cloud.cbh.kth.se/deploy/hello"
cmd siege -c 255 $url

