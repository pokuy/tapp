build:
	docker build -t deno-project .

run: build
	docker run -p 8000:8000 deno-project