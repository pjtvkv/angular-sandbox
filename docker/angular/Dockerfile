FROM node:20-alpine

ENV NG_CLI_ANALYTICS=false

WORKDIR /workspace

RUN npm install -g @angular/cli@17

COPY docker/angular/entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

EXPOSE 4200

ENTRYPOINT ["entrypoint.sh"]
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200", "--poll", "2000"]
