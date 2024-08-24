alias r := run
alias b := build
alias db := docker-build
alias dr := docker-run
alias dp := docker-push

run:
  pnpm run dev

build:
  pnpm run build

docker-build:
  docker build . --platform linux/amd64,linux/arm64 -t ghcr.io/maslo-digital/under-construction:latest

docker-run:
  docker run -p 80:80 ghcr.io/maslo-digital/under-construction:latest

docker-push:
  docker push ghcr.io/maslo-digital/under-construction:latest
