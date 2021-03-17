#
# Ubuntu Dockerfile
#
FROM ubuntu:latest

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y curl git nano vim wget && \
  rm -rf /var/lib/apt/lists/*

# Add files.
ADD docker-files/.bashrc /home/root/.bashrc
COPY users-and-groups/groups_and_users.sh /home/root/

# Set environment variables.
ENV HOME /home/root

# Define working directory.
WORKDIR /home/root

# Define default command.
CMD ["bash"]