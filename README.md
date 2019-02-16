# ideal-next-starter
Ideal Next.js starter

## Features

+ Docker
+ Yarn
+ Jest
+ Next.js

## Usage

1. Build image

```sh
docker build -t my-app .
```

2. Run app

```sh
docker run -it --rm -p 3000:3000 my-app

# On Swarm let use service
docker service create --publish 3000:3000 my-app

# Docker Compose file also available
docker-compose up

# Docker Stacks supported
docker stack deploy my-app -c ./docker-compose.yml
```

3. Open in browser `localhost:3000`
