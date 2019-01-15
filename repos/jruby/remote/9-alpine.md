## `jruby:9-alpine`

```console
$ docker pull jruby@sha256:e4cb7511ba533fa6a2ba4c92e5c6ed502e88f3cb4ca029649bc8a3e8560c1860
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:f0a3b4d6b40ff447d9de9aeb3ad309dc46e22590f85df7a4e0319be4826bef7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83457914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a24c75a6bd7d7e92e4d99e0d54f6947614566e091c5223bcb3fb97c2ebf3c95`
-	Default Command: `["irb"]`

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
# Fri, 11 Jan 2019 00:26:19 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:19 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 01:40:33 GMT
RUN apk add --no-cache       bash       libc6-compat
# Fri, 11 Jan 2019 01:40:33 GMT
ENV JRUBY_VERSION=9.2.5.0
# Fri, 11 Jan 2019 01:40:34 GMT
ENV JRUBY_SHA256=f4ad088082eca73561df983f6cb0a937b966cba3a36454e88f63930ed2bdf349
# Fri, 11 Jan 2019 01:40:38 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Fri, 11 Jan 2019 01:40:38 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 01:40:39 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Fri, 11 Jan 2019 01:41:09 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Fri, 11 Jan 2019 01:41:10 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 11 Jan 2019 01:41:10 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 11 Jan 2019 01:41:10 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 01:41:11 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 11 Jan 2019 01:41:11 GMT
CMD ["irb"]
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
	-	`sha256:1a5149a464dd4b435dd529c6420b1a5c12b1076cdb94d3e0c41cdcc78f9582a5`  
		Last Modified: Fri, 11 Jan 2019 00:30:16 GMT  
		Size: 54.9 MB (54866597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a076729e971f16d6b586acb52aae5d1c217e34bfd59f477589fac6ac72a49d`  
		Last Modified: Fri, 11 Jan 2019 01:43:40 GMT  
		Size: 1.2 MB (1202840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2f346ac745938d658cfd6fa82462d445beae0de4a6263b04c18c522283faee`  
		Last Modified: Fri, 11 Jan 2019 01:43:42 GMT  
		Size: 24.2 MB (24233871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe382da23a726466d8fa32bd49a38c6c102575b4e01f7f7ac49f8583ec20225d`  
		Last Modified: Fri, 11 Jan 2019 01:43:39 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfc12cd678464ea37b0efb4d6cc08345be4965d43dda89b7ca23b0f550c9ed9`  
		Last Modified: Fri, 11 Jan 2019 01:43:40 GMT  
		Size: 947.0 KB (946988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385d5c93390ab7a31e0347594a12acef706d6c1e7d5d68f1b197a1e8f00c474a`  
		Last Modified: Fri, 11 Jan 2019 01:43:39 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
