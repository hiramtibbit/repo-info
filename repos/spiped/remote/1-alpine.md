## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:7476ae1ec82e9fb0b7c405d200ee535f0d34ab3b6eced59ef818f56214b593d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:1-alpine` - linux; amd64

```console
$ docker pull spiped@sha256:b11503377a9198273ae060c8bbc8d53df9b0c1110fb86d53ad2d9290e40f38ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549fe8dc0f0ae0a7c291623c3f015724e12b2e728c2c40a8d06fb6ba45233def`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 21:19:43 GMT
ADD file:fef3b00b3ae63967d8f4d83174b3fcecb55c9bada02b3e4f5a9b79a21b6c3bb3 in / 
# Wed, 19 Jun 2019 21:19:43 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:00:07 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:00:09 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:00:09 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:00:09 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:00:10 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:00:30 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:00:31 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:00:31 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:00:31 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:00:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:00:32 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:921b31ab772b38172fd9f942a40fae6db24decbd6706f67836260d47a72baab5`  
		Last Modified: Wed, 19 Jun 2019 21:20:26 GMT  
		Size: 2.8 MB (2789589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9071f6897941df4cc32be293333399eb4d2a6fece4f234208bff34663ae7320f`  
		Last Modified: Fri, 21 Jun 2019 21:00:50 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f535f630b0da8b72997c77cdc8297bf66d4a73dcec928302324b9c71f25e8207`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 6.3 KB (6316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf90add7bf4a9327e1de7d4e364d87936cbeff4bcd4e7e192c6beffdf08bf89`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 79.4 KB (79401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfa0a87619d3f1f1e7aa2157c8505df5dc86c9dd47129d7da236881a090b8e5`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cfd4a79734eb022477dba0f8932e6cd1091731b71fc9472a667f5cbb047fc53`  
		Last Modified: Fri, 21 Jun 2019 21:00:49 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:86fd28f104c7384db983a4aed9e61e53261256a2290e92dd0de954677720866e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2644353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbacf9cb8fe8f4d88f49cb7b56a6057ef96ef97ebdeb79d8441d3e65617f79b8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:49:36 GMT
ADD file:03b59368fa7e7f72a84a6f78b72e59d6bf46d5109acc13aecbab7c8c440e4add in / 
# Wed, 19 Jun 2019 20:49:36 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:57:28 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 20:57:31 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 20:57:31 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 20:57:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 20:57:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 20:57:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 20:57:51 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 20:57:52 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 20:57:52 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:57:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:57:53 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:257a368dd99250a68424e4023851034502f33df88589bf37646c56babc8e2e81`  
		Last Modified: Wed, 19 Jun 2019 20:50:09 GMT  
		Size: 2.6 MB (2568299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de643deebd4416e322f2a5d4a3e50e324c76512c97dbf484bae03c052482ebb`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c884a8c3574747b8f54756355d3caee573ae59051fa1a3dd6f21275a5e7ead34`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 6.3 KB (6314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1692aa6bbce8b4b4b28bb8ad5a6a2f1783bcade92f8a0cd01a85e70d0f7d2db`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 68.0 KB (67980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0c01b7954831e1e48b5d3bc4bb8130e19928e61efe2a1900710e778a6ce9a67`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59bcf9d32868e129369d8ae913910293463977ad6926e78ec481c9cf815bd39`  
		Last Modified: Fri, 21 Jun 2019 20:58:05 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:f9a0692fc21bd5e34160bc5a8099930958cd0aeb6531fe21c06f632a51a29dbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2445137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4528fe52a7d8e0b2bf12400087ddb0f30a833675f04297504b284fae22f8a2c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:57:43 GMT
ADD file:0fb1a3eecd6693893c4c94275505763f0c6432d1cbd38fea5c27baa5256b32aa in / 
# Wed, 19 Jun 2019 20:57:44 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:01:01 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:01:03 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:01:04 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:01:04 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:01:05 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:01:22 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:01:22 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:01:23 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:01:24 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:01:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:01:25 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fd0f3c17efd43a26a5fce1692600c9a45e087cd84f50f61df6780702cc0050fe`  
		Last Modified: Wed, 19 Jun 2019 20:58:07 GMT  
		Size: 2.4 MB (2375311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6dfd8c604bb92c7fac253e4fc28d139b07cc297ade3b449d717acd18807fa99`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441f181d55aefcbb53b9b2b720d2b8f76d7f019398267bf2ca68f62ad1d1d5b6`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 6.3 KB (6332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ce6dbb02753edd27b612316248fe9a255a691d95f6564503c5ca41e365254ec`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 61.7 KB (61735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5475180cdbf375be26a71ce909b4cf81b5c73a8d3077e966ad1dd0fb7dc3f82c`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed72c32aeeeccea61083e2eb50e96734b61ff8ded9d4fec95fb304ac29ab4d4c`  
		Last Modified: Fri, 21 Jun 2019 21:01:37 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:036f446c3aa35ee45d957ac40bc1b1c71cddb87bdadce52cdb4de1d5ef6d6939
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2797286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:244b42aa51fe7c7b2f22f180cabea740137d77ad7691ad0b9fde775a7d9b0143`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:38 GMT
ADD file:5ff5a563323bccd2fa42c7839aa0e7b4041af209e44bcb5bc9e07c4a94074b66 in / 
# Wed, 19 Jun 2019 20:39:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:45:22 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:45:24 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:45:24 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:45:25 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:45:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:45:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:45:44 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:45:45 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:45:45 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:45:46 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:54e94bcddc88729dd11dea70b3489452e71c2d5f846551f59fdeb807af4319d7`  
		Last Modified: Wed, 19 Jun 2019 20:40:29 GMT  
		Size: 2.7 MB (2714576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c94911c0bddddb910060f1c129bdfb2923a92bcba1bb9c484b1f16d02223d26`  
		Last Modified: Fri, 21 Jun 2019 21:45:58 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a916bf8fa5f69c02fdab7ac9463706bc0a4cafffefc9a703187096f2ec0252b`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 6.3 KB (6326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bc4a4af8b7349004a86a4edcf2995e89383c28737cab83f035843123d29722`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 74.6 KB (74623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d23d794739020aff66e305927d8cab547f39a0c510fb8982fedb10f16dac1d9`  
		Last Modified: Fri, 21 Jun 2019 21:45:57 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d115556fbb9ab649698564eb2eee9f40d17c5ffb87df3b58e24865c544933a7`  
		Last Modified: Fri, 21 Jun 2019 21:45:58 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:9bbff3a192902a90797bd6f49b5448566a2f4956d864211e7721871186ceb23d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2872969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb324862c47c65d30c1f5cf4f34a63897e58d5712305430e1fd9d20bed13600`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:38:55 GMT
ADD file:189b665b005d2449f1fb47b0601a64959d4df9daa34b0d5b5838a40f4cbd87af in / 
# Wed, 19 Jun 2019 20:38:55 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:22:53 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:22:54 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:22:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:23:05 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:23:05 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:23:05 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:23:05 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:23:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:23:06 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:930516d818d36eff6bb5ab126dfe9acca74ceab0121dc56c4a60e59033e73ad2`  
		Last Modified: Wed, 19 Jun 2019 20:39:33 GMT  
		Size: 2.8 MB (2777221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3a2e639b803dc73cb25e6e6c46460c44321b48b46453355f47e57ccf0bb06a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62701be26ef565dcd24ac2691ca3c4402e3fe84c9da804a126d7180bfcc953fa`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 6.3 KB (6340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e890eebfade8ab519409f3cd71292fc1e7468a7a22cfbb6134c03aaff483ea6a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 87.7 KB (87712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7d23a0d77dfb79c10c1c081fccbcb760ea85b5a2bbcc49efbc599682fdbdfc`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6b19184029979870f46c3c9de66c97dd11df70b18688368f96e329e4c7680a`  
		Last Modified: Fri, 21 Jun 2019 21:23:14 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:40c96f4ed4785af6f6ddd14fc7fb94d0c729b1cbb269c1a620bc4a19e6579b9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2902814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f31e1d9c13354564b4b9ab9310a6a00064261ee7135dea2b060fc1526896b7e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 21:20:24 GMT
ADD file:65df5bd8e9475a716f29e673c07c988f7dee4276826cc09c2f912c8471de3903 in / 
# Wed, 19 Jun 2019 21:20:25 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 20:43:12 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 20:43:17 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 20:43:19 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 20:43:23 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 20:43:25 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 20:43:49 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 20:43:50 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 20:43:52 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 20:43:53 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 20:43:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 20:43:57 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:774d1c824114747b62a96c94f3856fcbbc117ea204e801d43acfd7735b9c6b6c`  
		Last Modified: Wed, 19 Jun 2019 21:21:28 GMT  
		Size: 2.8 MB (2806316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a64c7d5a43e526f6fe7a272d6b4e439f32b1286bc0b0603be4af9c4eb25d985`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608b7825b6b1847a9e9fc831b049ca242ab18e63dd3c8f8a11fb776680ae32b5`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 6.3 KB (6342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b35fe6be31ff63cbe41aebbf40c15f122e94a433a082510791bc95cb31719e34`  
		Last Modified: Fri, 21 Jun 2019 20:44:18 GMT  
		Size: 88.4 KB (88397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034a9347f2d680d435c212d6a574d72921787433dab268a0d1777f2d73055919`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1b8132c7854bb6ffe492f46cfecbebf4cd76b5d80f0bca75d36d5a43a887dc`  
		Last Modified: Fri, 21 Jun 2019 20:44:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:683197593770f62c021db5699a2717df90bf50ab33221baf3c4615a9059aa2cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2650936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ee6f758e8787603e620fe83c56b069f4da67b954dc7c09883cd7a07d1cf792`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 19 Jun 2019 20:41:48 GMT
ADD file:1ef73640a5f885504655c88e9b4086090c61ab5304de3f4613faa793293a285a in / 
# Wed, 19 Jun 2019 20:41:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Jun 2019 21:02:28 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Jun 2019 21:02:29 GMT
RUN apk add --no-cache libssl1.1
# Fri, 21 Jun 2019 21:02:29 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Jun 2019 21:02:29 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Jun 2019 21:02:30 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Jun 2019 21:02:41 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Jun 2019 21:02:41 GMT
VOLUME [/spiped]
# Fri, 21 Jun 2019 21:02:42 GMT
WORKDIR /spiped
# Fri, 21 Jun 2019 21:02:42 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Jun 2019 21:02:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Jun 2019 21:02:43 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6d7f83980907ca45ebe6a825ca787438c1431aed60fe2145407c2fb808e5f141`  
		Last Modified: Wed, 19 Jun 2019 20:42:16 GMT  
		Size: 2.6 MB (2570285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c944fd377d18cce14c7332e8535402f14cf3e7f868efedb6bd76d0df2b6ef2e`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf1e18dd00bf27cbb3e864554410943bf1a956c79e419f425bc9c32e27cdfc1`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 6.3 KB (6321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0b83b4efd1f698cb772fd86798e7d86319187dfa061f23e65f0ec7219bf47b`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 72.6 KB (72632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf13fb901ca461d5c90af9c4bcafe72fc025f492b91e249b00d01e5dd8bdcb0`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ba65abe0a07dc348e560f7aefe6bf60e963623b575b02f07e3aa7ea9a43398`  
		Last Modified: Fri, 21 Jun 2019 21:02:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
