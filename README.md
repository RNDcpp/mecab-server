# Natto gRPC

Natto gRPC is implemtation to call Natto::MeCab#parse on a Docker component through gRPC.

# usage
Start gRPC Server
```
docker-compose build
docker-compose up
```

run client script
```
docker-compose run client bundle exec ruby client.rb
```
