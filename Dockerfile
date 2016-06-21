FROM alpine
MAINTAINER naokikimura <n.kimura.cap@gmail.com>

RUN apk update && apk add subversion
RUN svnadmin create /var/svn/repos

EXPOSE 3690
VOLUME /var/svn/repos

ENTRYPOINT [ "/usr/bin/svnserve", "-d", "--foreground", "--root", "/var/svn/repos" ]
