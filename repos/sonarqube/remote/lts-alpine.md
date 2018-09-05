## `sonarqube:lts-alpine`

```console
$ docker pull sonarqube@sha256:bca08f9cf17df2774b75e377799ac00238711b87b45135a8e9311cf5dfb5b2b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:lts-alpine` - linux; amd64

```console
$ docker pull sonarqube@sha256:1f956f9da1d1001ae708a61404d24d7b44005431c0c3f2fea3cd1b00bfd3fb8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.8 MB (238764814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc4f7c57692de5e04472aa08d786d92bbe323f2d064f4204d0c0847a8e09991`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 05 Sep 2018 01:23:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:23:03 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:23:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 17:26:20 GMT
ENV SONAR_VERSION=6.7.5 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Wed, 05 Sep 2018 17:26:20 GMT
EXPOSE 9000/tcp
# Wed, 05 Sep 2018 17:26:20 GMT
RUN addgroup -S sonarqube && adduser -S -G sonarqube sonarqube
# Wed, 05 Sep 2018 17:26:31 GMT
RUN set -x     && apk add --no-cache gnupg unzip     && apk add --no-cache libressl wget     && apk add --no-cache su-exec     && apk add --no-cache bash     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && mkdir /opt     && cd /opt     && wget -O sonarqube.zip --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && wget -O sonarqube.zip.asc --no-verbose https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Wed, 05 Sep 2018 17:26:32 GMT
VOLUME [/opt/sonarqube/data]
# Wed, 05 Sep 2018 17:26:33 GMT
WORKDIR /opt/sonarqube
# Wed, 05 Sep 2018 17:26:33 GMT
COPY file:b692f3c4a910c6cabb33643ad789b4e104de43e0b26bf76e018578d0a457f0b3 in /opt/sonarqube/bin/ 
# Wed, 05 Sep 2018 17:26:33 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c25b7e741b44f5fbe32ea548b5bc3c49b59cde87cb61dfb823b8606b3b82a0`  
		Last Modified: Wed, 05 Sep 2018 01:41:22 GMT  
		Size: 70.6 MB (70581257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7337ef8991448d1a46d9c55b543e409af6ec669bf5d13612c04fe99d7d5d12fa`  
		Last Modified: Wed, 05 Sep 2018 17:28:14 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f426a5787fe73815221c7baab73d1688b57f8d0868ff2866fb562a5604fd3d42`  
		Last Modified: Wed, 05 Sep 2018 17:28:26 GMT  
		Size: 166.0 MB (165975039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561dc84cedb5cd9f4b5d2ba1527155e9e9561bffce9eca9d5e0ac5b73f6f9fc8`  
		Last Modified: Wed, 05 Sep 2018 17:28:15 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
