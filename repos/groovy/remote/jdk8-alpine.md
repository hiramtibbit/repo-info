## `groovy:jdk8-alpine`

```console
$ docker pull groovy@sha256:3a39e9364bd4a5562d9deeaa13d301e0488b25a7e1fde35cbb3ec1d9268e1c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `groovy:jdk8-alpine` - linux; amd64

```console
$ docker pull groovy@sha256:9363de55984daf86e23f716dfb540edf2c61072693a41ddb28ad6b809911b457
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.7 MB (102696846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0027ce14f72742cd3d76f03685fcba9bf6893eb15485882d02584a39c0ec2f29`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:40:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 00:40:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:40:59 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:22:00 GMT
CMD ["groovysh"]
# Fri, 21 Dec 2018 05:22:00 GMT
ENV GROOVY_HOME=/opt/groovy
# Mon, 24 Dec 2018 22:24:21 GMT
ENV GROOVY_VERSION=2.5.5
# Mon, 24 Dec 2018 22:24:29 GMT
RUN set -o errexit -o nounset     && echo "Installing build dependencies"     && apk add --no-cache --virtual .build-deps         gnupg         && echo "Downloading Groovy"     && wget -qO groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)";     for key in         "7FAA0F2206DE228F0DB01AD741321490758AAD6F"         "331224E1D7BE883D16E8A685825C06C827AF6B66"         "34441E504A937F43EB0DAEF96A65176A0FB1CD0B"         "9A810E3B766E089FFB27C70F11B595CEDC4AEBB5"         "81CABC23EECA0790E8989B361FF96E10F0E13706"     ; do         for server in             "ha.pool.sks-keyservers.net"             "hkp://p80.pool.sks-keyservers.net:80"             "pgp.mit.edu"         ; do             echo "  Trying ${server}";             if gpg --batch --no-tty --keyserver "${server}" --recv-keys "${key}"; then                 break;             fi;         done;     done;     if [ $(gpg --batch --no-tty --list-keys | grep -c "pub ") -ne 5 ]; then         echo "ERROR: Failed to fetch GPG keys" >&2;         exit 1;     fi         && echo "Checking download signature"     && wget -qO groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm -rf "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mkdir /opt     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && ln -s "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln -s "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln -s "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln -s "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln -s "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln -s "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln -s "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Cleaning up build dependencies"     && apk del .build-deps         && echo "Adding groovy user and group"     && addgroup -S -g 1000 groovy     && adduser -D -S -G groovy -u 1000 -s /bin/ash groovy     && mkdir -p /home/groovy/.groovy/grapes     && chown -R groovy:groovy /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy
# Mon, 24 Dec 2018 22:24:29 GMT
USER groovy
# Mon, 24 Dec 2018 22:24:30 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Mon, 24 Dec 2018 22:24:30 GMT
WORKDIR /home/groovy
# Mon, 24 Dec 2018 22:24:34 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version
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
	-	`sha256:f8a5c2c61767e93d1e332a4319f396f39b0dc6b2ee9e4cd2b9d0d5270c82556c`  
		Last Modified: Fri, 21 Dec 2018 00:44:52 GMT  
		Size: 70.6 MB (70610751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10937dc4b1023bfdace25a43adaab249b3780d7e8ac2cab41c125a6738568d87`  
		Last Modified: Mon, 24 Dec 2018 22:27:16 GMT  
		Size: 29.9 MB (29878694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30babb7df4b0342554a20e112548d75fc70f4494560110425170811e7231ae82`  
		Last Modified: Mon, 24 Dec 2018 22:27:14 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
