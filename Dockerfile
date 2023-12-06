FROM ubuntu
WORKDIR /app
COPY .. .
RUN sh build.sh
RUN sh generate_cv.sh