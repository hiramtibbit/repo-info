<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `aerospike`

-	[`aerospike:4.3.1.8`](#aerospike4318)
-	[`aerospike:4.4.0.8`](#aerospike4408)
-	[`aerospike:4.5.0.3`](#aerospike4503)
-	[`aerospike:latest`](#aerospikelatest)

## `aerospike:4.3.1.8`

```console
$ docker pull aerospike@sha256:fe3d5109b33f9ff75f1c73cde1d92caceda4ccbb3c1278ca9ff5f2afd3ead4e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.3.1.8` - linux; amd64

```console
$ docker pull aerospike@sha256:d11790c51e7063ddd677035ca0fb51f27d36da7bd8aad24cffce6755e85ae514
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49288557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca5d93dc1ba538cb598a3165d171a246a0217c2f70c691aee95fcf7f2feffdb5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:07:43 GMT
ENV AEROSPIKE_VERSION=4.3.1.8
# Wed, 06 Feb 2019 05:07:43 GMT
ENV AEROSPIKE_SHA256=63df952ad6dc031749d09322091760ba5836b6921b6004cb5b7d14c292591380
# Wed, 06 Feb 2019 05:08:00 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Wed, 06 Feb 2019 05:08:00 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Wed, 06 Feb 2019 05:08:01 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Wed, 06 Feb 2019 05:08:01 GMT
VOLUME [/opt/aerospike/data]
# Wed, 06 Feb 2019 05:08:01 GMT
EXPOSE 3000 3001 3002 3003
# Wed, 06 Feb 2019 05:08:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 05:08:01 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833a6d40dd2c6027404a563ef9f6b0d97906b41c1841cddabd428dfcc7e864ef`  
		Last Modified: Wed, 06 Feb 2019 05:08:38 GMT  
		Size: 26.8 MB (26786272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0feac764c7efbd89339c3386b787ffef8bdc4e7097748874070cf4a0c9abdb5c`  
		Last Modified: Wed, 06 Feb 2019 05:08:32 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fa4b45970023498a759e445ce3cd58c317fff974b3174003e020f5bf1fc79a9`  
		Last Modified: Wed, 06 Feb 2019 05:08:30 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.4.0.8`

```console
$ docker pull aerospike@sha256:2e5b975baa0eb4541750a31dcd05513a993d55cd80bce8d57e776eea0d784512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.4.0.8` - linux; amd64

```console
$ docker pull aerospike@sha256:6b6f7e4e06a5bc0b6ae3b386cf25d889126787a81cb7647a0d5ed15b7fb10208
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49252445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d1f3aaa6e3064be673c578a0218b0003b612a433965c90dbfeccc04d5ab9974`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:07:20 GMT
ENV AEROSPIKE_VERSION=4.4.0.8
# Wed, 06 Feb 2019 05:07:20 GMT
ENV AEROSPIKE_SHA256=d9fe9642346e8ada2fe0c1f621f49eb9a5be12a91fee72e74a9391de9bab6f58
# Wed, 06 Feb 2019 05:07:38 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Wed, 06 Feb 2019 05:07:38 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Wed, 06 Feb 2019 05:07:38 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Wed, 06 Feb 2019 05:07:38 GMT
VOLUME [/opt/aerospike/data]
# Wed, 06 Feb 2019 05:07:39 GMT
EXPOSE 3000 3001 3002 3003
# Wed, 06 Feb 2019 05:07:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 05:07:39 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f611a30a5276f0ea6f6c3fa17f568ea392587a5a509e0f5f4f430b4b76fd27e6`  
		Last Modified: Wed, 06 Feb 2019 05:08:27 GMT  
		Size: 26.8 MB (26750163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fc5783c860045dddd745f20cee0106548b5bbca2fec0d01c79a7b50d18bd5a`  
		Last Modified: Wed, 06 Feb 2019 05:08:20 GMT  
		Size: 1.1 KB (1110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60f0a311fa2873768a8aeb6675d84a556c55d4b78cce9d2aaf527781d5747d6`  
		Last Modified: Wed, 06 Feb 2019 05:08:20 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:4.5.0.3`

```console
$ docker pull aerospike@sha256:b9f7ef4c4f3c21af4998a50104f1a432f955951b8548429fd5a2ffffbb926794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:4.5.0.3` - linux; amd64

```console
$ docker pull aerospike@sha256:a45df84eea63bdd57dafbcda0324cfdfed2b44394ad81a3bdb8736f2bd53b1b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49259048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6eb5b480e449c3788b5befdf7c28529cbd052fafb3051270a995cec9397929`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:06:57 GMT
ENV AEROSPIKE_VERSION=4.5.0.3
# Wed, 06 Feb 2019 05:06:57 GMT
ENV AEROSPIKE_SHA256=baf76fbb822cb8cfc420c18ab789c3d772280736e248dac44f2b225e789d366e
# Wed, 06 Feb 2019 05:07:15 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Wed, 06 Feb 2019 05:07:16 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Wed, 06 Feb 2019 05:07:16 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Wed, 06 Feb 2019 05:07:16 GMT
VOLUME [/opt/aerospike/data]
# Wed, 06 Feb 2019 05:07:16 GMT
EXPOSE 3000 3001 3002 3003
# Wed, 06 Feb 2019 05:07:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 05:07:17 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be3a50b957611b0432fafb30de3528584982088b2776c2d588b31a010c49404`  
		Last Modified: Wed, 06 Feb 2019 05:08:16 GMT  
		Size: 26.8 MB (26756762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12f08a88ecb678a51f4e0d8126ae4f53fd1e4e7b7197758926a4d9a03f46a5a`  
		Last Modified: Wed, 06 Feb 2019 05:08:10 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73060fa4549af0b7d0138ad73d2e101fc10ef6efbb0d269b9da2bed48b7a8087`  
		Last Modified: Wed, 06 Feb 2019 05:08:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `aerospike:latest`

```console
$ docker pull aerospike@sha256:b9f7ef4c4f3c21af4998a50104f1a432f955951b8548429fd5a2ffffbb926794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `aerospike:latest` - linux; amd64

```console
$ docker pull aerospike@sha256:a45df84eea63bdd57dafbcda0324cfdfed2b44394ad81a3bdb8736f2bd53b1b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49259048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d6eb5b480e449c3788b5befdf7c28529cbd052fafb3051270a995cec9397929`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["asd"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:06:57 GMT
ENV AEROSPIKE_VERSION=4.5.0.3
# Wed, 06 Feb 2019 05:06:57 GMT
ENV AEROSPIKE_SHA256=baf76fbb822cb8cfc420c18ab789c3d772280736e248dac44f2b225e789d366e
# Wed, 06 Feb 2019 05:07:15 GMT
RUN apt-get update -y   && apt-get install -y wget python lua5.2 gettext-base   && wget "https://www.aerospike.com/artifacts/aerospike-server-community/${AEROSPIKE_VERSION}/aerospike-server-community-${AEROSPIKE_VERSION}-debian9.tgz" -O aerospike-server.tgz   && echo "$AEROSPIKE_SHA256 *aerospike-server.tgz" | sha256sum -c -   && mkdir aerospike   && tar xzf aerospike-server.tgz --strip-components=1 -C aerospike   && dpkg -i aerospike/aerospike-server-*.deb   && dpkg -i aerospike/aerospike-tools-*.deb   && mkdir -p /var/log/aerospike/   && mkdir -p /var/run/aerospike/   && rm -rf aerospike-server.tgz aerospike /var/lib/apt/lists/*   && rm -rf /opt/aerospike/lib/java   && dpkg -r wget ca-certificates openssl xz-utils  && dpkg --purge wget ca-certificates openssl xz-utils  && apt-get purge -y   && apt autoremove -y
# Wed, 06 Feb 2019 05:07:16 GMT
COPY file:8d3c7b634fe854c02711ded13d6741f28621ef3e5ae540ca3219ed7816a992ab in /etc/aerospike/aerospike.template.conf 
# Wed, 06 Feb 2019 05:07:16 GMT
COPY file:688bc1b7dea55c1dc5575a99640936049823d07bac5c920bbace2369fbb27428 in /entrypoint.sh 
# Wed, 06 Feb 2019 05:07:16 GMT
VOLUME [/opt/aerospike/data]
# Wed, 06 Feb 2019 05:07:16 GMT
EXPOSE 3000 3001 3002 3003
# Wed, 06 Feb 2019 05:07:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 05:07:17 GMT
CMD ["asd"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be3a50b957611b0432fafb30de3528584982088b2776c2d588b31a010c49404`  
		Last Modified: Wed, 06 Feb 2019 05:08:16 GMT  
		Size: 26.8 MB (26756762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12f08a88ecb678a51f4e0d8126ae4f53fd1e4e7b7197758926a4d9a03f46a5a`  
		Last Modified: Wed, 06 Feb 2019 05:08:10 GMT  
		Size: 1.1 KB (1113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73060fa4549af0b7d0138ad73d2e101fc10ef6efbb0d269b9da2bed48b7a8087`  
		Last Modified: Wed, 06 Feb 2019 05:08:10 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
