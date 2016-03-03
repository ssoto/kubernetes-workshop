## BUILDING
##   (from project root directory)
##   $ docker build -t express-4-13-4-on-ubuntu .
##
## RUNNING
##   $ docker run -p 3000:3000 express-4-13-4-on-ubuntu
##
## CONNECTING
##   Lookup the IP of your active docker host using:
##     $ docker-machine ip $(docker-machine active)
##   Connect to the container at DOCKER_IP:3000
##     replacing DOCKER_IP for the IP of your active docker host

FROM gcr.io/stacksmith-images/ubuntu-buildpack:14.04-r04

MAINTAINER Bitnami <containers@bitnami.com>

LABEL com.bitnami.stacksmith.id="BqQuByA" \
      com.bitnami.stacksmith.name="Express 4.13.4 on Ubuntu"

ENV STACKSMITH_STACK_ID="BqQuByA" \
    STACKSMITH_STACK_NAME="Express 4.13.4 on Ubuntu" \
    NODE_PACKAGE_SHA256="dd494b4443a1ef6164467865d0026009ce09f0809faa90d33fb8eb16d6e9ac12" \
    EXPRESS_PACKAGE_SHA256="3bf06484d85b81e5f807e3f7085dcc767566fc73c02967307b3098428b4a944d" \
    STACKSMITH_STACK_PRIVATE="1"

# Runtime
RUN bitnami-pkg-install node-5.2.0-0

# Framework
RUN bitnami-pkg-install express-4.13.4-0

# Runtime template
ENV PATH=/opt/bitnami/node/bin:/opt/bitnami/python/bin:$PATH
ENV NODE_PATH=/opt/bitnami/node/lib/node_modules

COPY . /app
RUN chown -R bitnami:bitnami /app
USER bitnami
WORKDIR /app

RUN npm install

EXPOSE 3000
CMD ["npm", "start"]
Status API Training Shop Blog About Pricing
