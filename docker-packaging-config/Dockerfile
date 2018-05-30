FROM node:alpine

COPY files /opt/app
COPY start-cmd.sh /start-cmd.sh

RUN chmod +x /*.sh

CMD ["/start-cmd.sh"]
