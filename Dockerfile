FROM addons/addons-server:latest
RUN groupadd -r olympia && useradd --no-log-init -r -g olympia olympia
COPY local_settings.py /code/local_settings.py
RUN chown -R olympia:olympia /code
RUN chmod -R ugo+rwx /code
USER olympia
EXPOSE 8000
CMD ["supervisord","-n","-c","/code/docker/supervisor.conf"]
