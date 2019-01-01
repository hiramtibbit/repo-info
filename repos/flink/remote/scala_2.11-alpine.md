## `flink:scala_2.11-alpine`

```console
$ docker pull flink@sha256:6d924d8219493bbac398f4d0e916a7c99a0df1c7eff0150dd14d33044ff7b3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:scala_2.11-alpine` - linux; amd64

```console
$ docker pull flink@sha256:06f8adba3ca97af18e7703a65cf83da5c41181fd0e5573a43c096bee1cd48125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.4 MB (317402710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bdbb365e57a7f77e82edc3584ac7418d34966aa1c302885140bb5a44072179b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 00:41:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:41:19 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:13:27 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 01 Jan 2019 00:35:37 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 01 Jan 2019 00:35:37 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 01 Jan 2019 00:35:37 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 01 Jan 2019 00:35:38 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 01 Jan 2019 00:35:38 GMT
WORKDIR /opt/flink
# Tue, 01 Jan 2019 00:35:38 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz
# Tue, 01 Jan 2019 00:35:38 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz.asc
# Tue, 01 Jan 2019 00:35:38 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 01 Jan 2019 00:35:52 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 01 Jan 2019 00:35:52 GMT
COPY file:32c6488d6beeaf64fa93d8e2829a44e98f034c72595380c30670d97807b6f9b0 in / 
# Tue, 01 Jan 2019 00:35:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Jan 2019 00:35:53 GMT
EXPOSE 6123 8081
# Tue, 01 Jan 2019 00:35:53 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e4d568ad31b18826f29fce2a8e1643f8237b9adfbbbe1bd8073c5edfcced3b`  
		Last Modified: Fri, 21 Dec 2018 00:45:09 GMT  
		Size: 54.8 MB (54829758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060476fae668b17db64319337b3af342950849576d21a099ab9ead308e38c631`  
		Last Modified: Fri, 21 Dec 2018 05:25:07 GMT  
		Size: 1.2 MB (1220648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a915e182768694886a1831ac866143ff34818e799b5d2ac4b0422c566d07c921`  
		Last Modified: Tue, 01 Jan 2019 00:47:54 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9064c23b7f3cf10d20dc2fe75bd0df39e36f3719c6025a34e5aa04e6ad83e7ca`  
		Last Modified: Tue, 01 Jan 2019 00:47:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b48fdf7e6a2fa4d0ba8211d0d76d720127a332956110bdbb6e6956afdf0a7b`  
		Last Modified: Tue, 01 Jan 2019 00:47:54 GMT  
		Size: 61.6 KB (61620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8194047e0e0b4e51b6e9f1dd1f2661d5c00ac650b56a48ea16bb521bcde51f3b`  
		Last Modified: Tue, 01 Jan 2019 00:48:09 GMT  
		Size: 259.1 MB (259081001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d83d878ef47db66324fbb6e9f1eb13fb273f2c121f052b9fd2e86ead022c195`  
		Last Modified: Tue, 01 Jan 2019 00:47:54 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
