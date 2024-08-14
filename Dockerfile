
FROM ubuntu
MAINTAINER kapildeo patil

RUN apt-get update
ARG name="kapil patil"
#ENV username=${name}
#CMD ["echo", "hello kapil"]
#ENV name kapil patil
#CMD ["/bin/bash", "-c", "echo hello, $name"]
ENTRYPOINT ["/bin/bash", "-c", "echo hello, $name"]
