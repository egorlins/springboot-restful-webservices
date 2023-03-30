FROM eclipse-temurin:17

LABEL mentainer="egorlins@hotmail.com"

WORKDIR /app

COPY target/springboot-restful-webservices-0.0.1-SNAPSHOT.jar /app/springboot-restful-webservices.jar

ENTRYPOINT ["java", "-jar", "springboot-restful-webservices.jar"]

##PART2 SPRINGBOOT

#build
#maven disable tests
#maven clean, package

# cmd in proj root dir
#docker build -t springboot-restful-webservices .

#check
#docker images

    #REPOSITORY                       TAG       IMAGE ID       CREATED          SIZE
    #springboot-restful-webservices   latest    4cb81105d62e   20 seconds ago   496MB
    #mysql                            latest    483a8bc460a9   5 days ago       530MB

#with tag
#docker build -t springboot-restful-webservices:0.1.RELEASE .

#check
#docker images
    #REPOSITORY                       TAG           IMAGE ID       CREATED         SIZE
    #springboot-restful-webservices   0.1.RELEASE   4cb81105d62e   3 minutes ago   496MB
    #springboot-restful-webservices   latest        4cb81105d62e   3 minutes ago   496MB
    #mysql                            latest        483a8bc460a9   5 days ago      530MB

##run

#docker ps

#docker run --network springboot-mysql-net --name springboot-mysql-container -p 8080:8080 springboot-restful-webservices
    #
    #  .   ____          _            __ _ _
    # /\\ / ___'_ __ _ _(_)_ __  __ _ \ \ \ \
    #( ( )\___ | '_ | '_| | '_ \/ _` | \ \ \ \
    # \\/  ___)| |_)| | | | | || (_| |  ) ) ) )
    #  '  |____| .__|_| |_|_| |_\__, | / / / /
    # =========|_|==============|___/=/_/_/_/
    # :: Spring Boot ::             (v3.0.0-M4)

##detatched
#docker run --network springboot-mysql-net --name springboot-mysql-container -p 8080:8080 -d springboot-restful-webservices
    #5c270a2fecea3079d7ead6bac40999dc063435fef33df5da6b76f4159b74cddc
#see logs
#docker logs -f 5c27