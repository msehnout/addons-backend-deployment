FROM addons/addons-server:latest
USER olympia
EXPOSE 8000
CMD ["supervisord","-n","-c","/code/docker/supervisor.conf"]
