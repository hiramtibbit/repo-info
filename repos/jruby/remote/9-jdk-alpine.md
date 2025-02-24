## `jruby:9-jdk-alpine`

```console
$ docker pull jruby@sha256:bc00bc8280fee9c3ed2f05b99dad205f45f4354329d80e2924f4283641b976e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:e12b48d5f2fb47d841313c0da45f5a2a1347a263de9f4ec9a9ca42992fec571e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.4 MB (101420652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74866f8cbfc35a2b0ac3b2248461edc50db691fb64b0bf0706308af52e4f51a8`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 11 May 2019 01:32:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:13 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:14:40 GMT
RUN apk add --no-cache       bash       libc6-compat
# Sat, 11 May 2019 04:14:40 GMT
ENV JRUBY_VERSION=9.2.7.0
# Sat, 11 May 2019 04:14:40 GMT
ENV JRUBY_SHA256=da7c1a5ce90015c0bafd4bca0352294e08fe1c9ec049ac51e82fe57ed50e1348
# Sat, 11 May 2019 04:14:43 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Sat, 11 May 2019 04:14:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 04:14:44 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Sat, 11 May 2019 04:15:00 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Sat, 11 May 2019 04:15:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 11 May 2019 04:15:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 11 May 2019 04:15:01 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 04:15:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 11 May 2019 04:15:02 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2274a1a0e2786ee9101b08f76111f9ab8019e368dce1e325d3c284a0ca33397`  
		Last Modified: Sat, 11 May 2019 01:37:08 GMT  
		Size: 70.7 MB (70732768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc00830f6e7b576240d48bedb2b815dd539c125e89113271b2cabfc02d8e54a3`  
		Last Modified: Sat, 11 May 2019 04:16:25 GMT  
		Size: 1.2 MB (1208642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a42bdf729d8a55e6396bb66be9e6f2317fdd09941977450a4dd78fd8102799`  
		Last Modified: Sat, 11 May 2019 04:16:27 GMT  
		Size: 25.8 MB (25774660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1b89cf9693ba7a67b784d5d0428a721389bf760ab13673def7450c7aac5bba`  
		Last Modified: Sat, 11 May 2019 04:16:24 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07620efb38cdd2abeb5b2d842371c6498df92bf1a7c1fa2836753f38396adb32`  
		Last Modified: Sat, 11 May 2019 04:16:25 GMT  
		Size: 947.0 KB (946955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82f30c486b97a7e36470aab32fab50a2c794bf0fcca2dbcd4f9440dcd6709a0`  
		Last Modified: Sat, 11 May 2019 04:16:24 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
