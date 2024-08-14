
FROM amazoncorretto
MAINTAINER kapildeo patil
RUN mkdir -p ./java/
RUN pwd
COPY AreaOfCircle.java ./java/
WORKDIR ./java/
RUN javac AreaOfCircle.java
#ENTRYPOINT ["java","AreaOfCircle"]
CMD ["java","AreaOfCircle"]

