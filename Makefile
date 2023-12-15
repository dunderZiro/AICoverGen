build:
	docker build -t aicovergen .

run:
	docker run --rm --name aicovergen --gpus all -p 127.0.0.1:7860:7860 aicovergen

rund:
	docker run -d --rm --name aicovergen --gpus all -p 127.0.0.1:7860:7860 aicovergen