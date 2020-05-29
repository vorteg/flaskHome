FROM python:3.6.9
RUN mkdir -p /home/app
RUN git clone https://github.com/vorteg/flaskHome.git
RUN pip install --no-cache-dir -r requirements.txt
