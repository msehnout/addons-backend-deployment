FROM addons/addons-server:latest
EXPOSE 8000
ENTRYPOINT ["/code/scripts/start-docker.sh"]
CMD ["supervisord","-n","-c","/code/docker/supervisor.conf"]
