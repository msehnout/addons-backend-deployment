FROM addons/addons-server:latest
RUN groupadd -r user && useradd --no-log-init -r -g olympia olympia
EXPOSE 8000
ENTRYPOINT ["/code/scripts/start-docker.sh"]
CMD ["supervisord","-n","-c","/code/docker/supervisor.conf"]
