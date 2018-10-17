FROM addons/addons-server:latest
RUN groupadd -r olympia && useradd --no-log-init -r -g olympia olympia
USER olympia
EXPOSE 8000
CMD ["supervisord","-n","-c","/code/docker/supervisor.conf"]
