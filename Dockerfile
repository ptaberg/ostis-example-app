FROM ubuntu:18.04
RUN apt update
RUN apt-get -y install sudo

CMD echo "GIT INSTALLATION"

RUN apt install -y git

CMD echo "GIT INSTALLED"

COPY . /app

CMD cd /app/scripts && sh ./install_ostis.sh && cd ../ostis/scripts/ && sh ./run_sctp.sh
EXPOSE 55770
