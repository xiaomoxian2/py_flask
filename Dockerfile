FROM python:3.7
WORKDIR ./docker_demo

ADD . .
RUN pip install --upgrade pip && \
  pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
CMD ["python", "./src/main.py"]
