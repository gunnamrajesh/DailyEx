FROM ubuntu as compiler
RUN apt-get update && apt-get install -y build-essential
COPY hello.cc .
RUN make hello
FROM ubuntu
COPY --from=compiler /hello /hello
CMD /hello
