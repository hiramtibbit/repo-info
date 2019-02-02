## `spiped:alpine`

```console
$ docker pull spiped@sha256:9266f6535506492a64b229b40ff3490b4a0f6c0ee118e4c3a7dd976c6ada6ff7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `spiped:alpine` - linux; amd64

```console
$ docker pull spiped@sha256:665ffa6bcba71dc0f5d6be6b0d3fe26744b133fbef1cc25aab7f388c9465c8cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2842381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b068ece1a09b581fee656af47f2bedb9139fd1627685a2e6bb397b8952e3ae1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Fri, 01 Feb 2019 22:21:39 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 01 Feb 2019 22:21:40 GMT
RUN apk add --no-cache libssl1.1
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 01 Feb 2019 22:21:40 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 01 Feb 2019 22:21:51 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 01 Feb 2019 22:21:51 GMT
VOLUME [/spiped]
# Fri, 01 Feb 2019 22:21:51 GMT
WORKDIR /spiped
# Fri, 01 Feb 2019 22:21:52 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 01 Feb 2019 22:21:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Feb 2019 22:21:52 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2320f43dd4f5b3d4a5f7ee66ca6b5795d7b98eac80925b00db4a746d2b6cb58b`  
		Last Modified: Fri, 01 Feb 2019 22:22:01 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138bcd3bf5dc027ab9927f7293a3101b403242df68778358271d20eabeb7c54c`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 6.4 KB (6374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7b7bbec90ed9490f04081b9b0adb6b453dac0226193b18bced1aa3aae59e00`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 79.6 KB (79592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613342943ab7a788fcad978d86d20455d9be7967380e29b42e083e7c4fe6feb2`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e658d5a025a9a568d3c0ec70c9b386faf070c00534cd206ceea7a8488b03e96c`  
		Last Modified: Fri, 01 Feb 2019 22:22:00 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:3a67e6f5190d6c33b6de7e831ce52baa8627a4db9a4b5ad17780ff3cec7d9ea5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2617388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830fee77b3f15d7f583212fc665f779ceba0323b9521d31bc3ef10ce7de53f91`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 09:03:00 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 09:03:01 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 09:03:02 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 09:03:19 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 09:03:20 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 09:03:20 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 09:03:21 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 09:03:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 09:03:22 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0520f1a1117c483d2e0c59bf3e3e3bb816423e2e22e1988e1a2a4067f8942b`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e456175b91916fc727a7c863d10dd28e0a0019adc18e340f6450fa2dc271349`  
		Last Modified: Sat, 02 Feb 2019 09:03:30 GMT  
		Size: 6.4 KB (6384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d38f697671dbe0d3d29b24233777fe998d009ac879368c29b639153302af4b`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 68.3 KB (68340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d84de096f7fea4d68bea3f3a890a3ca73760a4c961e6f1324d9b22e69c4217`  
		Last Modified: Sat, 02 Feb 2019 09:03:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf89af97b5c94cef488ff4e063cb7b81c68edabc62cdfba6772c9b11be47ef7`  
		Last Modified: Sat, 02 Feb 2019 09:03:30 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:7a88585b6c5aa9f94f70a271e9c9506ad1f1b4df3eb1bc1717f023125238a3f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b298c6e9946ad986a7f9ce05202deb8c2bdbbebe14c8f4d7d91196d2ed8ade6e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 10:01:50 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 10:01:54 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 10:01:55 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 10:01:57 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 10:01:57 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 10:02:26 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 10:02:27 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 10:02:28 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 10:02:29 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 10:02:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 10:02:31 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24d04fa97998ab9fbb61929f183a7b0c6aedde636ed4504dcaa71e1c04bb4dd2`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 1.2 KB (1249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04842db82ddc8dfd44430afae1e47420cc0225193c0db96a7e77343b4afef4c`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 6.4 KB (6392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7111107af9e3445ed6b39f026e914a0a147f023aa0066a6b8d5f374de45c9f65`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 75.0 KB (74996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ebb2c461608b2018184ec5f905795c3161a19f135acc1931fdd69bd7bd3448`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7a97d58ef94e726e107b19628ced3da2e1dcc491de35f7da8ef4b88933022b`  
		Last Modified: Sat, 02 Feb 2019 10:02:48 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; 386

```console
$ docker pull spiped@sha256:fdfb1543ab4f7bbc17e1087c4043115debaa09d726b740d87e745dafe9975557
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2845488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df2f2d387bc6207a32ddb2891135333659214ba7a8731f2d8db952f1d0f1bd4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 12:21:31 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 12:21:32 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 12:21:32 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 12:21:43 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 12:21:43 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 12:21:43 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 12:21:43 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 12:21:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 12:21:44 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74953bd4bb2809f90482409754dfbad5f6ea1a86009c5956161c46bf10c4f3de`  
		Last Modified: Sat, 02 Feb 2019 12:21:53 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce67f311c3a7691ddc165a35077167c09585e1254cb191dbf7fc45dfb5e1d00`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 6.4 KB (6394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602c96ef375d5403081e00b6c33e91d936eb3dcf141b85ac0c390457672fde25`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 87.9 KB (87894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36853a433a0966015517dc72b44ace9477d0afd65770654be7b6785dfa0913af`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1600908f2527c202b3c00a2f002a87a8601d4c3609fe5d5f9e4a00dfc72858ac`  
		Last Modified: Sat, 02 Feb 2019 12:21:52 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:4ef3317b82851276c8572f0abd9e00717fdb015b6de9aa88d3d987e08bbe083e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2875663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39874959032067e3d0be557ef5da66e26903647ce5f2fa93df5099587ecad52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Sat, 02 Feb 2019 09:23:30 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Sat, 02 Feb 2019 09:23:39 GMT
RUN apk add --no-cache libssl1.1
# Sat, 02 Feb 2019 09:23:43 GMT
ENV SPIPED_VERSION=1.6.0
# Sat, 02 Feb 2019 09:23:51 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Sat, 02 Feb 2019 09:23:54 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Sat, 02 Feb 2019 09:24:13 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Sat, 02 Feb 2019 09:24:15 GMT
VOLUME [/spiped]
# Sat, 02 Feb 2019 09:24:19 GMT
WORKDIR /spiped
# Sat, 02 Feb 2019 09:24:20 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Sat, 02 Feb 2019 09:24:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Feb 2019 09:24:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49a14c5852ca3b4659ab33b00f720399f64bb00bfa56223b6b150e538a1de215`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8dfd7cd5f4180949045c61c2f2bfd1163266f9a7e5332b2a77b083439f6210`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91bc5854abba6d2ac2bf9e4adb568d1b1faaff7558c38a04fe5394dd862ecce7`  
		Last Modified: Sat, 02 Feb 2019 09:24:50 GMT  
		Size: 88.7 KB (88677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9cd23d109f938ea4b2308c95a0c064d7223944628b76b91f26fdd2bd259bfaa`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a20772ff227e84b891d517713920b3d0795c32aad1d055372921699b4ccff1c`  
		Last Modified: Sat, 02 Feb 2019 09:24:49 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:alpine` - linux; s390x

```console
$ docker pull spiped@sha256:d412e460f059a896a203beab40f4fa983453983fee330514e366512f8ce5b191
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3450279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa35230cd1e5f8bad7870b8b197dfc5188e89f1643155c6bcaa7a36691342cea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:34:59 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 21 Dec 2018 13:35:00 GMT
RUN apk add --no-cache libssl1.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 21 Dec 2018 13:35:00 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 21 Dec 2018 13:35:01 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 21 Dec 2018 13:35:11 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 21 Dec 2018 13:35:11 GMT
VOLUME [/spiped]
# Fri, 21 Dec 2018 13:35:11 GMT
WORKDIR /spiped
# Fri, 21 Dec 2018 13:35:12 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 21 Dec 2018 13:35:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:35:12 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890cbe9a0c09b545a4a698de2697b09287723336f7195c3957fa15c1de4700a7`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ba8f7951f2f8ba65d2654162311cfcaf166ec61e0d30db1d82078c92d429a2`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 1.1 MB (1065667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d32ff7f869442cd0ce9db680939da4703084c25792b1615f8582d1d1f6410af`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 74.9 KB (74900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9db1d3ee7d22aa13ff896629535bd2a9b25296abaa7692923772209722d65d4`  
		Last Modified: Fri, 21 Dec 2018 13:35:27 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b73bec7f2799b917a58414e957e2330b10d8b16c791188492a2e4d65d4cbb3`  
		Last Modified: Fri, 21 Dec 2018 13:35:26 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
