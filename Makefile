.PHONY: server

server:
	podman run --rm -it \
	--userns keep-id:uid=1000,gid=1000 \
	-p 1313:1313 -v $${PWD}:/project \
	ghcr.io/gohugoio/hugo:v0.149.1 \
	server --bind 0.0.0.0 --buildDrafts
