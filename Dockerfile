FROM hayd/alpine-deno:0.42.0

EXPOSE 8000

WORKDIR /app

USER deno

COPY dependencies.ts .
RUN deno cache dependencies.ts

ADD . .
RUN deno cache server.ts

CMD ["run", "--allow-net", "--allow-read", "server.ts"]