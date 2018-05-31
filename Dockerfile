FROM openjdk:10-jre-slim

ADD https://nlp.stanford.edu/software/stanford-ner-2018-02-27.zip ner.zip
RUN unzip ner.zip
WORKDIR stanford-ner-2018-02-27

COPY ner-server.sh .

CMD ["bash", "ner-server.sh"]
