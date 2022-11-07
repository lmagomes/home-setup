FROM openjdk:17-alpine

WORKDIR /app
RUN wget https://api.papermc.io/v2/projects/velocity/versions/3.1.2-SNAPSHOT/builds/184/downloads/velocity-3.1.2-SNAPSHOT-184.jar -O velocity.jar

WORKDIR /server
CMD cp /app/velocity.jar /server/velocity.jar && java -Xms512M -Xmx512M -XX:+UseG1GC -XX:G1HeapRegionSize=4M -XX:+UnlockExperimentalVMOptions -XX:+ParallelRefProcEnabled -XX:+AlwaysPreTouch -jar velocity.jar