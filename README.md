# Minecraft 服务端 1.20.4

## 运行你的服务器

### docker compose

1. 克隆代码
```bash
git clone https://github.com/24worker/fabrics.git
```
2. 进入文件夹中
```bash
cd fabrics
```
3. 运行服务器
```bash
sudo docker compose up -d
```

### docker-ce

- 单行
```bash
docker run -d -p 25565:25565 -p 25566:25566 -e FABRIC_URL=https://meta.fabricmc.net/v2/versions/loader/1.20.4/0.16.10/1.0.1/server/jar -v $(pwd)/fabric-server:/root/mc-server --name fabric-server 24workers/fabrics:latest
```

- 多行
```bash
docker run -d \
  -p 25565:25565 \
  -p 25566:25566 \
  -e FABRIC_URL=https://meta.fabricmc.net/v2/versions/loader/1.20.4/0.16.10/1.0.1/server/jar \
  -v $(pwd)/fabric-server:/root/mc-server \
  --name fabric-server \
  24workers/fabrics:latest
```