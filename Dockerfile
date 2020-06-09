FROM python:3.6.9
#RUN git clone https://github.com/vorteg/flaskHome.git
WORKDIR "/flaskHome"
VOLUME [ "/flaskHome"]
RUN pip install --no-cache-dir -r requirements.txt
ENV FLASK_APP app.py
EXPOSE 8000

ENTRYPOINT ["gunicorn", "-w", "1", "-b", "0.0.0.0:8000", "wsgi:server"]



