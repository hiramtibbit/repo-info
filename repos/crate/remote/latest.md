## `crate:latest`

```console
$ docker pull crate@sha256:e3ca565d252467c6e7b0a3e11b560460d6495967eab5de8743af472d0285e1ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:a165a32085cfb857c8738f0d7885d1eca947e17a22c6c20bcc9177b3ebad0066
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130539591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74ee34098008ab908da5e7a899071b8f18c031d840d14b4d36f09b340ca9a601`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:00:21 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Mon, 24 Dec 2018 22:21:16 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.4.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.4.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.4.tar.gz.asc crate-3.1.4.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.4.tar.gz.asc     && tar -xf crate-3.1.4.tar.gz -C /crate --strip-components=1     && rm crate-3.1.4.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Mon, 24 Dec 2018 22:21:20 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Mon, 24 Dec 2018 22:21:20 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Dec 2018 22:21:20 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 24 Dec 2018 22:21:20 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Mon, 24 Dec 2018 22:21:21 GMT
RUN mkdir -p /data/data /data/log
# Mon, 24 Dec 2018 22:21:21 GMT
VOLUME [/data]
# Mon, 24 Dec 2018 22:21:22 GMT
WORKDIR /data
# Mon, 24 Dec 2018 22:21:22 GMT
EXPOSE 4200 4300 5432
# Mon, 24 Dec 2018 22:21:22 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2018-12-19T12:39:46.068316553+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.4
# Mon, 24 Dec 2018 22:21:22 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Mon, 24 Dec 2018 22:21:23 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Mon, 24 Dec 2018 22:21:23 GMT
COPY file:dcdba4de3b5ee86e3ed391c361c223b50022f9865a89a53d53f5c45521bd6989 in / 
# Mon, 24 Dec 2018 22:21:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Dec 2018 22:21:23 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f9be2a1317187a4a965a34ea54ef71816a72cc4a215f84a3a843ea3ab552da`  
		Last Modified: Fri, 21 Dec 2018 01:03:41 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b969f5e944bf768e63b4ec8d2e1e03e062f97ff9cbc562103d6601575840d89`  
		Last Modified: Mon, 24 Dec 2018 22:22:19 GMT  
		Size: 126.9 MB (126871578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee49d7f5f0e2b3bc1f2bb3a637a156a85623888942b1dc27c1ee342292d4f787`  
		Last Modified: Mon, 24 Dec 2018 22:22:07 GMT  
		Size: 1.5 MB (1457867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689219d01a6ce7550ac59c3d4a29d146b69dc629bafa8da3ae3909d957c18eb8`  
		Last Modified: Mon, 24 Dec 2018 22:22:06 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52183cdd333849484f818e002f570cc5cf61eb54f296888c37fde2e57e0cfa5`  
		Last Modified: Mon, 24 Dec 2018 22:22:06 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8d201e361d26041f277d2b497e73faaa94505e0fa3b2d3eb0b90007461658c`  
		Last Modified: Mon, 24 Dec 2018 22:22:06 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789450fa87170c315a9d8d136da4683a7038f49e83bf8125bd7917d2de1f39d7`  
		Last Modified: Mon, 24 Dec 2018 22:22:06 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:cb3d05f527171daccf766956c4b7619df5b3d29e7d1cb18c124ea16057fec7c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128518831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c7ecfded5578c5d2a3fbf3bf7cb3ec45cf79017a6b5ec9603609836cb00f8f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:40:52 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Tue, 25 Dec 2018 09:43:38 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.4.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.4.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.4.tar.gz.asc crate-3.1.4.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.4.tar.gz.asc     && tar -xf crate-3.1.4.tar.gz -C /crate --strip-components=1     && rm crate-3.1.4.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Tue, 25 Dec 2018 09:43:45 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Tue, 25 Dec 2018 09:43:45 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Dec 2018 09:43:46 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 25 Dec 2018 09:43:47 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Tue, 25 Dec 2018 09:43:48 GMT
RUN mkdir -p /data/data /data/log
# Tue, 25 Dec 2018 09:43:49 GMT
VOLUME [/data]
# Tue, 25 Dec 2018 09:43:50 GMT
WORKDIR /data
# Tue, 25 Dec 2018 09:43:51 GMT
EXPOSE 4200 4300 5432
# Tue, 25 Dec 2018 09:43:51 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2018-12-19T12:39:46.068316553+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.4
# Tue, 25 Dec 2018 09:43:52 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 25 Dec 2018 09:43:52 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 25 Dec 2018 09:43:53 GMT
COPY file:dcdba4de3b5ee86e3ed391c361c223b50022f9865a89a53d53f5c45521bd6989 in / 
# Tue, 25 Dec 2018 09:43:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 25 Dec 2018 09:43:54 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf6e4828a3e9f80bfa761b39062e4481c11b4a610152a814acd32573231fa99`  
		Last Modified: Fri, 21 Dec 2018 13:42:11 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285d071a3553cc030400fed846072f219e6ff5791af51cf073d4cbfce464b3e6`  
		Last Modified: Tue, 25 Dec 2018 09:44:33 GMT  
		Size: 125.0 MB (124959267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ed4cc0e564c5cb59ff2a7b8cd678fc4656002eb5124a1142054b699f9b486e`  
		Last Modified: Tue, 25 Dec 2018 09:44:05 GMT  
		Size: 1.5 MB (1456433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93085ec0590ec30e397e9ca72ba9c170ec890b3dee2fedf2b54a71b0d77ef2fe`  
		Last Modified: Tue, 25 Dec 2018 09:44:05 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb0eec80824faf2a5d4e4f2245cba0a055e92cff2152d7277ee5777483656121`  
		Last Modified: Tue, 25 Dec 2018 09:44:05 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784fb73b4ae02cd7d0836762b0317dbeb925843c9bbd1488a2211d453180dbd7`  
		Last Modified: Tue, 25 Dec 2018 09:44:05 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aaee0d1c6d6477678ff02ccbfc24d5b166cfdac1bece6defea698089f267c8d`  
		Last Modified: Tue, 25 Dec 2018 09:44:05 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
