# From CentOS
FROM linuxserver/openssh-server

# Install Depedencies
RUN apk update
RUN apk add --no-cache subversion

# Create repos directory
RUN mkdir /svn

# Expose the svn directory
VOLUME [ "/svn" ]
