docker build -t ssh-server-gateway .

docker run -d -p 10022:22 -p 18080:80 --name ssh-server-gateway ssh-server-gateway

docker exec -it ssh-server-gateway bash