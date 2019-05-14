## `spiped:alpine`

```console
$ docker pull spiped@sha256:d418fcea64c56956f66411c92ae20dbfeb13c9044f1380bf9ac887f4f76e158d
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

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:b957740f833538b3771fabd3eb00485be6b9e5a469fcde3787260a0da6c7c562
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2844719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0efa760df45b20a2bacc1a3e46272ae5bed32b2562fec4d5fa41125a8d08cfa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:49:59 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 01:50:00 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 01:50:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 01:50:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 01:50:20 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 01:50:20 GMT
WORKDIR /spiped
# Sat, 11 May 2019 01:50:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 01:50:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:50:21 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef2770bd03c589f70b5a774dc481b29f74ffe220544ae1a0f007c81fb08983a3`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0a720b5a9f6fadd3e42a13a31e80022c989d5e7de29e0477e8a696bcf125d3`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 6.4 KB (6381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54240dd8f68b0ced13b6c38396b90cd288e03192c2d2a2110fac5e0988a1ba05`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 79.6 KB (79612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb4b1212926844509e0f6ce474d3f00dfb508f29a95cd857d61b073610bded6`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca05dcee260130d4761cc8558512d6fb399d0c91003f7588eddb5feb26f71b1`  
		Last Modified: Sat, 11 May 2019 01:50:37 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:0b66af7678bf3b02272e08b339a3faf99bc40fbb16c00b3ed73adf3283a254f5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2619993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:712abda549574642ba1bc6a7a9448d3f701fff55496702eef37583b58d0041ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:31:58 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 08:32:00 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 08:32:00 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 08:32:01 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 08:32:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 08:32:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 08:32:18 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 08:32:19 GMT
WORKDIR /spiped
# Sat, 11 May 2019 08:32:19 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 08:32:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:32:20 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deed7fbf341c2d5c3fa302e330fc31dac83e8f8b71bacec835a240dab99cbcd8`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b8568d7ef9a30261b1d43ccf5b307657a47b8582e98b06100abe927e4f5fb6`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 6.4 KB (6393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3530af6ebb74ea33e953e476658af2867d671ffa178b78ab58337e650b83364c`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 68.4 KB (68418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7c62ed5e061e8c93923bd04b240634b15750b5fdcc836e13ef9efad62d7982`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0349fa3568e6373decb638cfe0436c819288b8f390b9b5de2dd036468edf58f7`  
		Last Modified: Sat, 11 May 2019 08:32:30 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:2c4950766053bf7a5fc79a63200c6a9ad0b4dd50b5db113feab260d39e3f0dd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2420988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d515320ce54e9b9a736e2f17ef7a6480b5c61a4ca2fd73eadc61d0d8b75e74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:47:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 12:47:16 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 12:47:17 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 12:47:17 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 12:47:18 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 12:47:36 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 12:47:36 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 12:47:37 GMT
WORKDIR /spiped
# Sat, 11 May 2019 12:47:38 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 12:47:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 12:47:39 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52c4b7087d0a9e823bd3a715038357835e04ae1c4e535b1dca55994f60a7e511`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cba67efbd41be5582496c852dc87966cd1369d5c1f97af6793a121997b3a87`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 6.4 KB (6380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2461fbc8826ec2dfe7bc3fa9649511bd886bace6d4c6052abda993732574f57`  
		Last Modified: Sat, 11 May 2019 12:47:55 GMT  
		Size: 62.2 KB (62187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15935a7f2ab9263ae495c5e2e8cda200e959b76f68526e3a88f000ae0ba6f6ed`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aff52c9761fa04d19a6faf34ba9c9f7ca6126cda35a7848583ceab7ac3ccdff0`  
		Last Modified: Sat, 11 May 2019 12:47:54 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:3aecc1e8565c918d862b4e872aaa397c8d62880b364d2f28b1b0f573224ff485
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71557191d9ba1a2d98a6a231d7a8176f7011bd63cafb07e9ac06209a1fda88c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:03:29 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 14:03:32 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 14:03:32 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 14:03:33 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 14:03:34 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 14:04:00 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 14:04:01 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 14:04:01 GMT
WORKDIR /spiped
# Sat, 11 May 2019 14:04:02 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 14:04:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:04:04 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18186b94b5a374ece29b99c9fc88f357e26dc61af6dfb9abc672e2152ebfcb24`  
		Last Modified: Sat, 11 May 2019 14:04:24 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b41bb40e77477f7bbaee2252f31e076fcb03289842db1e7b3fa59d3b297961`  
		Last Modified: Sat, 11 May 2019 14:04:24 GMT  
		Size: 6.4 KB (6395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2caf5544ff85cd694b99185016282fbe3206a1a6438e643f9d64064393fa545f`  
		Last Modified: Sat, 11 May 2019 14:04:24 GMT  
		Size: 75.0 KB (74996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea3c422436c1806935b38919ef71f4f2d75cd6853bae60fd37477a9c455a34a0`  
		Last Modified: Sat, 11 May 2019 14:04:24 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7b4500a9fd634204c1f24f7f6ee808c0713be4c8b45f96cbce3c2c0bbee1b03`  
		Last Modified: Sat, 11 May 2019 14:04:24 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:c1b7c7458a5f2b1b30731dcba7d472f135444efd937d7bb8ef2f60cabe5064c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2848031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1244c9df40b18090753908c9c649cd655beaa9a6e2c634749c3990fe84f9c8db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:22:38 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 14:22:39 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 14:22:39 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 14:22:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 14:22:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 14:22:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 14:22:50 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 14:22:50 GMT
WORKDIR /spiped
# Sat, 11 May 2019 14:22:50 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 14:22:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 14:22:51 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7684f3c2fd7b752cfb242313b2eb3f0dce50a24068b43f98bed22eb85b12988f`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec838d4a9df3f0b1587ec77258b5662f5da621ead0d0af416452351878fd844`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8083ec304199501b0a423d55d6a71b4eebd6ebfe9e6c3c0e34e6c8eef1c81c1a`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 87.9 KB (87853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3ce4b9aeb2de4babbbbc52cde7019d72ba0a0bfa6dd6d80596178254c1e0cf`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b88cc75c2f295350f651dee9bf30dc6bb282fe154b443da298ef583fb3e25f0`  
		Last Modified: Sat, 11 May 2019 14:23:00 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:437f19e36fb97de274a756940f1144ec18e23ce5f287ea00e700c727b1b227e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d964058efc2f2c2d3336085dc5e2578db13e430b0ee061caaf17cb699b75d22e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:56:22 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 08:56:32 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 08:56:36 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 08:56:43 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 08:56:46 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 08:57:24 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 08:57:27 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 08:57:30 GMT
WORKDIR /spiped
# Sat, 11 May 2019 08:57:32 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 08:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:57:37 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f31dbe3071f8c037131aef6960a783a6dc7e0554588e47e0d5c376ff913444`  
		Last Modified: Sat, 11 May 2019 08:57:57 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945acc6a2fe54a1afda9e5bb186f41e95d653c39bb70370ae882e3729ab412b0`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 6.4 KB (6408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f535694efed2ba3741f95a78c49d10b59e772810fc31f9461952fbb84c930fc`  
		Last Modified: Sat, 11 May 2019 08:57:55 GMT  
		Size: 88.6 KB (88572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871152c8e5bf4aef0d227dda1798a30e7a7554c64fc42a2710a5fd3cbe41271d`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d53050b88a62e4ad2c394d326bff142a0ec6397765f3b35a329ce4f13ec356a`  
		Last Modified: Sat, 11 May 2019 08:57:54 GMT  
		Size: 344.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:90c3a30c59f45f71b866e9470b759fa05c56f44e1b73decbd2e5782cb48604c7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2624335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a51e5a42bfe89fe1965a3196018d0efa5a00d25098e7333b70edbcd80a796d85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:53:47 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 11 May 2019 13:53:48 GMT
RUN apk add --no-cache libssl1.1
# Sat, 11 May 2019 13:53:48 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 11 May 2019 13:53:49 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 11 May 2019 13:53:49 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 11 May 2019 13:54:00 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 11 May 2019 13:54:03 GMT
VOLUME [/spiped]
# Sat, 11 May 2019 13:54:06 GMT
WORKDIR /spiped
# Sat, 11 May 2019 13:54:06 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 11 May 2019 13:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 13:54:07 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5cd2fe99ad8a7a2f91329eb1ec9d1f0083c150ddbf4a0829eb9e27d426474c`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1f1a88ded0520d413e5a20671b527e170ed3d25fb098a049df5c44ff2c368e`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 6.4 KB (6393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a12ff642d3632ba364c7a8509f229293b4f79d1d46dcfd2a3fdcf7d6d6e965e6`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 72.9 KB (72915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:025aa172fcad0844d7385f06fde499fc5685ddc23e5021fb35268c0a0c334276`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9f1b417ce66a198eb47e19da92cca8b4c97f4e72ad5a4224e965f85858db4ea`  
		Last Modified: Sat, 11 May 2019 13:54:20 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
