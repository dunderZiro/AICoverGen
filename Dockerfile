FROM python:3.9.18

RUN apt -y update && apt install -y git ffmpeg sox

RUN mkdir -p /app && cd /app && git clone https://github.com/SociallyIneptWeeb/AICoverGen
WORKDIR /app/AICoverGen
RUN pip install -r requirements.txt

RUN python src/download_models.py

CMD ["python", "src/webui.py", "--listen"]