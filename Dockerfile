# From CentOS
FROM linuxserver/openssh-server

# Install Depedencies
RUN apk update
RUN apk add --no-cache subversion

# Setup sebversion
RUN addgroup -S svn-tunnel && adduser -S svn-tunnel -G svn-tunnel
USER appuser

# Create repos directory
RUN mkdir ~/svn
RUN mkdir ~./ssh

# Expose the svn directory
VOLUME [ "/home/svn-tunnel/.ssh" ]
VOLUME [ "/home/svn-tunnel/svn" ]
