docker build -t $1 .
docker run -it --name $2 $1