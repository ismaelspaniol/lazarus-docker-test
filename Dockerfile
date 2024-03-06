# FROM ubuntu:22.04
# RUN apt-get updade -y \
#     && apt-get upgrade -y
    

# ENTRYPOINT /usr/sbin/horse_console

FROM ubuntu:latest
RUN apt-get update && apt-get install -y \    
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY ./horse /usr/sbin/


EXPOSE 9000

CMD ["bash"]