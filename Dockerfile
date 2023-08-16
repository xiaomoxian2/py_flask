FROM python:3.7
WORKDIR /home/admin

COPY requirements.txt ./
RUN pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple
COPY . .
CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]
