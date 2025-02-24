## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:4c43a609abd7917e6bf4f54bb36c7a58fb5369d830fb66e4d804fa4af0b74bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:4a343a1b4d5c26d0d9037b58906a1eda685e69e2a25e021881b965dc18a68cf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.6 MB (85622129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9b58c77a0f3bb3d850921ce3fc2286f75199e66faf430b6903df640a7bfbf66`
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
# Sat, 11 May 2019 01:32:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 01:32:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:14:06 GMT
RUN apk add --no-cache       bash       libc6-compat
# Sat, 11 May 2019 04:14:06 GMT
ENV JRUBY_VERSION=9.2.7.0
# Sat, 11 May 2019 04:14:06 GMT
ENV JRUBY_SHA256=da7c1a5ce90015c0bafd4bca0352294e08fe1c9ec049ac51e82fe57ed50e1348
# Sat, 11 May 2019 04:14:09 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Sat, 11 May 2019 04:14:09 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 04:14:10 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Sat, 11 May 2019 04:14:28 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Sat, 11 May 2019 04:14:28 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 11 May 2019 04:14:28 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 11 May 2019 04:14:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 04:14:29 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 11 May 2019 04:14:29 GMT
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
	-	`sha256:b6abafe80f63b02535fc111df2ed6b3c728469679ab654e03e482b6f347c9639`  
		Last Modified: Sat, 11 May 2019 01:37:30 GMT  
		Size: 54.9 MB (54935634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:961fae1600d61e258a99f739c652d7b91414cbd55eb527c8279f7cf4012e5041`  
		Last Modified: Sat, 11 May 2019 04:16:13 GMT  
		Size: 1.2 MB (1207987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a47abd4424153c56520f49fe3769ac6c306af00862c6fc119c05a7bb0d1bc5`  
		Last Modified: Sat, 11 May 2019 04:16:17 GMT  
		Size: 25.8 MB (25773958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c2b455d2e0ad7bd918761d69ab6d786dc3e2359fc7a84c739a21d77dde54fc`  
		Last Modified: Sat, 11 May 2019 04:16:12 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a18e36cb2b5f3f1b50d7029426798ca615851a7e10093f458f9a1f4ce7f1fc`  
		Last Modified: Sat, 11 May 2019 04:16:12 GMT  
		Size: 946.9 KB (946921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15ca6dee3bf22020febcd586fd86da79a578f04f09dda765658e64fd7a5891f`  
		Last Modified: Sat, 11 May 2019 04:16:12 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
