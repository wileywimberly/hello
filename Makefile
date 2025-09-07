.DEFAULT_GOAL := server

.PHONY: clean server

hugo_image := ghcr.io/gohugoio/hugo:v0.149.1
hugo_podman_cmd := podman run --rm -it \
	--userns keep-id:uid=1000,gid=1000 \
	-v $${PWD}:/project

clean:
	rm -rf public resources/_gen

server: clean
	$(hugo_podman_cmd) \
	-p 1313:1313 \
	$(hugo_image) \
	server --bind 0.0.0.0 --buildDrafts
