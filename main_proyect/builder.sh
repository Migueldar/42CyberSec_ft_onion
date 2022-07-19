docker build -t $1 .
docker run -it --name $2 -p 4242:4242 -p 80:80 $1