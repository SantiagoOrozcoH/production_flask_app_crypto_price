FROM tiangolo/uwsgi-nginx-flask:python3.8-alpine-2020-12-19

COPY requirements.txt /tmp/

# upgrade pip and install required python packages
RUN pip install -U pip
RUN pip install -r /tmp/requirements.txt

# copy over our app code
COPY ./app /app

# set an environmental variable, MESSAGE,
# which the app will use and display
ENV MESSAGE "hello from Docker"