FROM openjdk:17-alpine

WORKDIR /app

RUN wget https://api.papermc.io/v2/projects/paper/versions/1.19.2/builds/220/downloads/paper-1.19.2-220.jar -O paper.jar

RUN java -Xms2G -Xmx2G -jar /app/paper.jar --nogui
RUN sed -i 's/false/true/g' eula.txt

WORKDIR /server
CMD cp -r /app/paper.jar /server/paper.jar && cp /app/eula.txt /server/eula.txt && java -Xms2G -Xmx2G -jar paper.jar --nogui