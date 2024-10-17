FROM osrf/ros:humble-desktop

RUN apt update && DEBIAN_FRONTEND=noninteractive apt install -y python3-pip
RUN pip3 install tornado

RUN mkdir -p /app/rosboard
COPY ./rosboard /app/rosboard
COPY run /app
WORKDIR /app

CMD ["python3", "/app/run"]