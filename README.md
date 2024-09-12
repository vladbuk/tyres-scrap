## Run in docker container
```
docker build -t tyres-scrap .
docker run -d --name tyres-scrap -v ./:/tyres-scrap tyres-scrap python main.py
```

### Display logs
```
docker logs -f tyres-scrap
```

### Stop/continue scrapping
```
docker stop tyres-scrap
docker start tyres-scrap
```
