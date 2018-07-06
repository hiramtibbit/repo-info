## `jruby:9-jdk-alpine`

```console
$ docker pull jruby@sha256:4588d2deb1d611306236ee2c6290bad2c329cee1d5c4f831e87b5bd58d27d271
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jruby:9-jdk-alpine` - linux; amd64

```console
$ docker pull jruby@sha256:082da78932bc7a22705b5c333bc9bd11f253e3951b06b89212e5689e5f0cc1e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.0 MB (98951407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83a16188f5a79b18e260e9d914fb14e95ed4b2a58b2b727036ef4c4fceb1373e`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:15 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 06 Jul 2018 15:51:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:16 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 19:36:34 GMT
RUN apk add --no-cache       bash       libc6-compat
# Fri, 06 Jul 2018 19:36:34 GMT
ENV JRUBY_VERSION=9.2.0.0
# Fri, 06 Jul 2018 19:36:35 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Fri, 06 Jul 2018 19:36:38 GMT
RUN apk add --no-cache --virtual .build-deps       curl       tar   && mkdir -p /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 */tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && ln -s /opt/jruby/bin/jruby /usr/local/bin/ruby   && apk del .build-deps
# Fri, 06 Jul 2018 19:36:45 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 19:36:45 GMT
RUN mkdir -p /opt/jruby/etc     && {         echo 'install: --no-document';         echo 'update: --no-document';     } >> /opt/jruby/etc/gemrc
# Fri, 06 Jul 2018 19:37:00 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Fri, 06 Jul 2018 19:37:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 06 Jul 2018 19:37:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 06 Jul 2018 19:37:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 19:37:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN"     && chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 06 Jul 2018 19:37:01 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874028933da5d2edc0a5683332de9b0d399ef73993ce0048b1f9433d6d779026`  
		Last Modified: Fri, 06 Jul 2018 15:54:11 GMT  
		Size: 70.3 MB (70318463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c536462eed03d7c75daea6c7e96fd802a73372e2a0227ca45d668578fef85d7`  
		Last Modified: Fri, 06 Jul 2018 19:39:48 GMT  
		Size: 1.3 MB (1295968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226485ca486762bdf9cb7200054fb669a9dc884695dd62729a1e19a52eccf912`  
		Last Modified: Fri, 06 Jul 2018 19:39:51 GMT  
		Size: 24.3 MB (24284238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0d44f3cb10b9ce00430e7bc47578c0d4ed12f79734f84a7051275ceedf977d`  
		Last Modified: Fri, 06 Jul 2018 19:39:47 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922ef9272f4753585c26622d907555df1de2143fdfd67e7906d2554d0e85f882`  
		Last Modified: Fri, 06 Jul 2018 19:39:47 GMT  
		Size: 948.6 KB (948593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc92de011374a5b427d0b2f9c1a60c4096a2ff773ffe3af85aa4a4b0a3761da`  
		Last Modified: Fri, 06 Jul 2018 19:39:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
