@echo off 
rem Delete any existing dst_containerid files
if exist dst-master-cid del dst-master-cid
if exist dst-slave1-cid del dst-slave1-cid
rem Running servers from .env files
rem docker run -itd --publish 10999:10999/udp --name=dst-server --cidfile=dst_containerid --env-file=.dst_serverconfig yeetzone/dontstarvetogether
rem docker run -itd --mount source=dst-volume-master,destination=/opt/storage --publish 10999:10999/udp --name=dst-master --cidfile=dst-master-cid --env-file=.env-master yeetzone/dontstarvetogether
rem docker run -itd --mount source=dst-volume-slave1,destination=/opt/storage --publish 11000:11000/udp --name=dst-slave1 --cidfile=dst-slave1-cid --env-file=.env-slave1 yeetzone/dontstarvetogether
rem docker run -itd --mount source=data,target=/data --publish 10999:10999/udp --name=dst-master --cidfile=dst-master-cid --env-file=.env-master yeetzone/dontstarvetogether
rem docker run -itd --mount source=data,target=/data --publish 11000:11000/udp --name=dst-slave1 --cidfile=dst-slave1-cid --env-file=.env-slave1 yeetzone/dontstarvetogether
docker-compose up -d