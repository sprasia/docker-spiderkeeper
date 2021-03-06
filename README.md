# docker-spiderkeeper

Docker image of the beautiful web UI for scrapyd, [SpiderKeeper](https://github.com/DormyMo/SpiderKeeper).

## Usage

Use together with scrapyd. See docker-compose.yml.

```
version: '2'
services:
  scrapyd:
    image: sprasia/scrapyd:latest
    environment:
      TZ: Asia/Tokyo
    volumes:
      - scrapyd:/var/lib/scrapyd/

  spiderkeeper:
    build: .
    ports:
      - 5000:5000
    environment:
      SERVER: http://scrapyd:6800
      TZ: Asia/Tokyo
    volumes:
      - spiderkeeper:/db
    depends_on:
      - scrapyd

volumes:
  scrapyd:
  spiderkeeper:
```
