ARG MONGODB_VERSION=3.4.5

FROM mongo:${MONGODB_VERSION}

LABEL maintainer="aashreysh@gmail.com"

# Auth Configuration. Modify as needed.
# These environment variables can also be specified through command line or docker-compose configuration
# ENV AUTH yes

# ENV MONGODB_ADMIN_USER root
# ENV MONGODB_ADMIN_PASS password

# ENV MONGODB_APPLICATION_DATABASE your_db
# ENV MONGODB_APPLICATION_USER user
# ENV MONGODB_APPLICATION_PASS password
# ARG MONGODB_VERSION version

EXPOSE 27017 27017

COPY run.sh /run.sh
COPY set_mongodb_password.sh /set_mongodb_password.sh

RUN chmod +x /run.sh
RUN chmod +x /set_mongodb_password.sh

CMD ["/run.sh"]
