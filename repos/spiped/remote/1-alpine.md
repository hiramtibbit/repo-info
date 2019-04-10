## `spiped:1-alpine`

```console
$ docker pull spiped@sha256:ce181ab48efd6f5a16c00baacc4e62ae45828036183c4ac81600dcffe58dd703
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
$ docker pull spiped@sha256:76bfb2c2d9bc65a6f3f6972208511417c684bda5d42a877bff75e2d874677615
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2844695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94aa6264c644ca4fd6a6d01ac2ee76e3496b5e0f2298aec66436e70551e3d7af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:55:20 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Tue, 09 Apr 2019 23:55:21 GMT
RUN apk add --no-cache libssl1.1
# Tue, 09 Apr 2019 23:55:21 GMT
ENV SPIPED_VERSION=1.6.0
# Tue, 09 Apr 2019 23:55:22 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Tue, 09 Apr 2019 23:55:22 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Tue, 09 Apr 2019 23:55:32 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Tue, 09 Apr 2019 23:55:32 GMT
VOLUME [/spiped]
# Tue, 09 Apr 2019 23:55:32 GMT
WORKDIR /spiped
# Tue, 09 Apr 2019 23:55:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:55:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:55:33 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8234f03fa8a139ca49aba31553c318fe32da9855b7f7b5cc4d4db535afb3793`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1070d6aced3397465c61060aabafbe8235b689b5b1556e34c325936e8ed7f1`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 6.4 KB (6380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0beabb73baf87bd5aeb1f92df034032af4d231e36edc2a646a2ae20160aea56c`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 79.6 KB (79610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2119809dd922d434f9c0a7547b1e5cf86bb69ba2d5273a8e02ba1cf260f03a4`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f93169aef4349f0689b9141b341c03a7ba1f4186159e0bffe5dd057a7e3d7b`  
		Last Modified: Tue, 09 Apr 2019 23:55:44 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v6

```console
$ docker pull spiped@sha256:be4715b6984bdf0f04ef82fc46e08e292ed8d3034ad5a6a724c79fd1071fe8b6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2620016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9f96bc364dc234ce7c414b47191c57858e7910371de785d3af671bb57fe34f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 09:02:11 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 09:02:13 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 09:02:13 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 09:02:13 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 09:02:14 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 09:02:31 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 09:02:32 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 09:02:32 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 09:02:33 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 09:02:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:02:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cba87aecdad34477dfb8027388cd5d4dfaea36ab15943599ae0687ee4427b6`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7646df46140795aedc20913a8036b31fc1647df4cb0a9ef377fdaed9f4133dbe`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 6.4 KB (6397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14e996eef5cc3e4b9d7078d1ea46d76d0003af7604ed6194862a710155fda85`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 68.4 KB (68421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278255654318bec8ff8455858fee8e69b5c9963d000d09a8aaa01b0b467d1806`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5616712ecf39de33024de8a4c3b54085631ad57fd33bc9b438b74eb9e65431`  
		Last Modified: Wed, 10 Apr 2019 09:02:43 GMT  
		Size: 343.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm variant v7

```console
$ docker pull spiped@sha256:86a084c872adf9bed8a9791ad451ee1f6349a50c3cce545acc395a33ed3b2afa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2421076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d1c8fc95d99414a65d3d9f874cd83618e475af122d3e2e01f47d1f07b3e891e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:30:25 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 12:30:27 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 12:30:27 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 12:30:27 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 12:30:28 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 12:30:45 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 12:30:46 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 12:30:46 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 12:30:47 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 12:30:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 12:30:48 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6046e3a66218f67beee09edf31522799824b08cbbce1f6e30ea229147154dd70`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9608f0b6b8ec0f6514144f9c84d43b7279bcbeeb9c0a00ddf5d7c03f5788033c`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 6.4 KB (6379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8116fbddac912aa46a21e03d80844ea418bf764a99ae1097b6d3dafcdfc182cd`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 62.2 KB (62185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1bebe218c4bb69b9229dadb8606390a7cf2b45ca7a6a41b84f5bf5bff012fa`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d8b60c7e8731f2755eb41cb1fd259f868141605e59abdcee27eda0b47e5fa4`  
		Last Modified: Wed, 10 Apr 2019 12:30:59 GMT  
		Size: 340.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; arm64 variant v8

```console
$ docker pull spiped@sha256:caebfd50f51747f2a2d27a115735690881995840598f1b990ccdfb11c96d0a24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eae7c7187fe26866da8d27afde9ebd110a824b373d710b7635d4454c052c11e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:53:45 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 07:53:48 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 07:53:49 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 07:53:50 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 07:53:51 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 07:54:23 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 07:54:24 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 07:54:25 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 07:54:26 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 07:54:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:54:27 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5ecfff623894bc63b62f06796656ea0503e1bb1304913ad3de6d4f23909e45`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665122279a172c19fb8078cefb674b8ef8776991960e9e0772119f80d156cc46`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 6.4 KB (6385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2dfa54cd90411bcf74ac21b04bc7ccf4597118152c0b66735d24e27e057580`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 75.0 KB (75002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a828fac1f1f9bdca3c602eb3896e249203a93aec3bcdfc0234d76515cac3a270`  
		Last Modified: Fri, 08 Mar 2019 07:54:47 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9728a3a61d5d98a1d7220be5f1d4494606a871d1fde27ba3ccbf080ae20a525a`  
		Last Modified: Fri, 08 Mar 2019 07:54:46 GMT  
		Size: 339.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; 386

```console
$ docker pull spiped@sha256:97351cdf6471f361eba40031b93613241fb585d959385f3e915c156bf959e486
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2845331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21101c5ef6e438675b437edd22dfab9832a105f99ce0708117446b7ab46f30bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:16:57 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 10:16:58 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 10:16:58 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 10:16:59 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 10:16:59 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 10:17:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 10:17:09 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 10:17:09 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 10:17:10 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 10:17:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 10:17:10 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a305b33c4fc473f870284a5f41fa57dd9ebb0d1347f3d3f57a229dffa7dcef`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8779ac0c98cdbd02665f281a489076f283e39d756a5e8d47bbed67d7dcf7c028`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 6.4 KB (6396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216c1bbf517c53b57b89dd1402aff9ee63c2b5a47143d616076e653a0da87d4d`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 87.9 KB (87894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ade00fc94c488dd5676dce9cf0ca40becae0ef54bf93fd90d3aec4f9fb8771`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 91.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb800ed4b51420050bef406b4896a51084475e5912180b3f5da4773dda811d0`  
		Last Modified: Fri, 08 Mar 2019 10:17:19 GMT  
		Size: 337.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; ppc64le

```console
$ docker pull spiped@sha256:4cf9b84e9352fb0d287ebbad7a27705dc2a1573462ae0c256825c2066e25da19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.9 MB (2877767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75899f09a59edfbf8a40bd8930cc4a720743d2e560492c1a43d75091a7e265e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:23:14 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Wed, 10 Apr 2019 10:23:28 GMT
RUN apk add --no-cache libssl1.1
# Wed, 10 Apr 2019 10:23:34 GMT
ENV SPIPED_VERSION=1.6.0
# Wed, 10 Apr 2019 10:23:39 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Wed, 10 Apr 2019 10:23:45 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Wed, 10 Apr 2019 10:24:16 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Wed, 10 Apr 2019 10:24:20 GMT
VOLUME [/spiped]
# Wed, 10 Apr 2019 10:24:26 GMT
WORKDIR /spiped
# Wed, 10 Apr 2019 10:24:27 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Wed, 10 Apr 2019 10:24:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 10:24:34 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864fe0e9483bf5bd7ecd7f91a64123c5baa028b508d8c6cf212b0e4a63069863`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac5f178dee233aa4bdafd58ec88bf27326ab6e70335d46a12895c19e375a68d1`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 6.4 KB (6410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ef1539f2acb1c12a152271ba20d58cf445e369fd537f59da60f35ef5a12499`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 88.6 KB (88577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367ba8d5348813357fe526a1d78cc6042752975605670491548d485890b54388`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ee940e50564eae47a71e79f478fe06ded9a9a86c7277ca3135866c908b8c92`  
		Last Modified: Wed, 10 Apr 2019 10:25:05 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `spiped:1-alpine` - linux; s390x

```console
$ docker pull spiped@sha256:6133a2af505f180170426ec6b55f7d01e45251f9776bf5028f88d164be25ee6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2622291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fc736851cb15c248f006b38a8e20baa9ac0038116394b7c4d807c0e70be492a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["spiped"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:04:51 GMT
RUN addgroup -S spiped &&	adduser -S -G spiped spiped
# Fri, 08 Mar 2019 05:04:52 GMT
RUN apk add --no-cache libssl1.1
# Fri, 08 Mar 2019 05:04:52 GMT
ENV SPIPED_VERSION=1.6.0
# Fri, 08 Mar 2019 05:04:53 GMT
ENV SPIPED_DOWNLOAD_URL=https://www.tarsnap.com/spiped/spiped-1.6.0.tgz
# Fri, 08 Mar 2019 05:04:53 GMT
ENV SPIPED_DOWNLOAD_SHA256=e6f7f8f912172c3ad55638af8346ae7c4ecaa92aed6d3fb60f2bda4359cba1e4
# Fri, 08 Mar 2019 05:05:01 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 		curl 		gcc 		make 		musl-dev 		openssl-dev 		tar &&	curl -fsSL "$SPIPED_DOWNLOAD_URL" -o spiped.tar.gz &&	echo "$SPIPED_DOWNLOAD_SHA256 *spiped.tar.gz" |sha256sum -c - &&	mkdir -p /usr/local/src/spiped &&	tar xzf "spiped.tar.gz" -C /usr/local/src/spiped --strip-components=1 &&	rm "spiped.tar.gz" &&	CC=gcc make -C /usr/local/src/spiped &&	make -C /usr/local/src/spiped install &&	rm -rf /usr/local/src/spiped &&	apk del .build-deps
# Fri, 08 Mar 2019 05:05:01 GMT
VOLUME [/spiped]
# Fri, 08 Mar 2019 05:05:01 GMT
WORKDIR /spiped
# Fri, 08 Mar 2019 05:05:02 GMT
COPY multi:5bc169de21988025d207318e8462faac29a47f22ea391b38427ea86b5aba8f5a in /usr/local/bin/ 
# Fri, 08 Mar 2019 05:05:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:05:02 GMT
CMD ["spiped"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0192823751d616a3364f8ceca6f6e50c78d6a0f36a004767798f75863205dd6`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6151faf7e9d82cd2a235fdd05ec445e1883fe858aab30151f1de8b67f4e6aeb8`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 6.4 KB (6392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a50ad12010bfda0f8370739e5275876addd713f131e40234ab14828d572db3`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 72.9 KB (72900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee004ccdb1d799f613601443799c97669a66107dcd980d84d2169666dcf53ceb`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 95.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb15f3940d163f4563aec6c0bcf4c124cae8d9ac490e6b6d0c5595a0b78fd84`  
		Last Modified: Fri, 08 Mar 2019 05:05:17 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
