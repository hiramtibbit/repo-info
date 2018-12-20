<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `notary`

-	[`notary:server`](#notaryserver)
-	[`notary:server-0.6.1-1`](#notaryserver-061-1)
-	[`notary:signer`](#notarysigner)
-	[`notary:signer-0.6.1-1`](#notarysigner-061-1)

## `notary:server`

```console
$ docker pull notary@sha256:9859283e09e88a7482a3a3d6435e2ad1b1a3d195af47a380b628f430727b2235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:4fe8ce86a9054abde65e8dc15388b0e03c6fdadb1f60fcc5542d7ac02df20193
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7300364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b1138c0acf0122f0060504a19ceefd08a35db4d2b995bfc27f8a1dc19bed70`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 20:19:56 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 20:19:57 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 20:19:57 GMT
ENV INSTALLDIR=/notary/server
# Thu, 20 Dec 2018 00:27:56 GMT
EXPOSE 4443
# Thu, 20 Dec 2018 00:27:57 GMT
WORKDIR /notary/server
# Thu, 20 Dec 2018 00:28:38 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 00:28:38 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Thu, 20 Dec 2018 00:28:38 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Thu, 20 Dec 2018 00:28:39 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 00:28:39 GMT
USER notary
# Thu, 20 Dec 2018 00:28:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 20 Dec 2018 00:28:40 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 00:28:40 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309d4bd7b4b52c24633dbac9c33967c3c0aa8fbe6aa336eed33e104598a3ebbc`  
		Last Modified: Thu, 20 Dec 2018 00:29:35 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85aae6fa31caf4de0ae386778724af0f03760513f10495c5a9ca2c9409982d42`  
		Last Modified: Thu, 20 Dec 2018 00:29:37 GMT  
		Size: 5.1 MB (5091328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed1c6f4f4436c492666d9ac89bb36d20fb83909d82d26200c8e8e6d2790dd5c`  
		Last Modified: Thu, 20 Dec 2018 00:29:35 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3632152f14b8f98ad6a75bf5e82f6da327258703ecb31e2dd8a76228250d98`  
		Last Modified: Thu, 20 Dec 2018 00:29:35 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baab6ef964ad55d1f2e7ea8497b48332508426e9331d5b1aa9e34443f6600c3`  
		Last Modified: Thu, 20 Dec 2018 00:29:35 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.6.1-1`

```console
$ docker pull notary@sha256:9859283e09e88a7482a3a3d6435e2ad1b1a3d195af47a380b628f430727b2235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.6.1-1` - linux; amd64

```console
$ docker pull notary@sha256:4fe8ce86a9054abde65e8dc15388b0e03c6fdadb1f60fcc5542d7ac02df20193
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7300364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b1138c0acf0122f0060504a19ceefd08a35db4d2b995bfc27f8a1dc19bed70`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 20:19:56 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 20:19:57 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 20:19:57 GMT
ENV INSTALLDIR=/notary/server
# Thu, 20 Dec 2018 00:27:56 GMT
EXPOSE 4443
# Thu, 20 Dec 2018 00:27:57 GMT
WORKDIR /notary/server
# Thu, 20 Dec 2018 00:28:38 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 00:28:38 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Thu, 20 Dec 2018 00:28:38 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Thu, 20 Dec 2018 00:28:39 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 00:28:39 GMT
USER notary
# Thu, 20 Dec 2018 00:28:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 20 Dec 2018 00:28:40 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 00:28:40 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309d4bd7b4b52c24633dbac9c33967c3c0aa8fbe6aa336eed33e104598a3ebbc`  
		Last Modified: Thu, 20 Dec 2018 00:29:35 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85aae6fa31caf4de0ae386778724af0f03760513f10495c5a9ca2c9409982d42`  
		Last Modified: Thu, 20 Dec 2018 00:29:37 GMT  
		Size: 5.1 MB (5091328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed1c6f4f4436c492666d9ac89bb36d20fb83909d82d26200c8e8e6d2790dd5c`  
		Last Modified: Thu, 20 Dec 2018 00:29:35 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3632152f14b8f98ad6a75bf5e82f6da327258703ecb31e2dd8a76228250d98`  
		Last Modified: Thu, 20 Dec 2018 00:29:35 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5baab6ef964ad55d1f2e7ea8497b48332508426e9331d5b1aa9e34443f6600c3`  
		Last Modified: Thu, 20 Dec 2018 00:29:35 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:8c65ed3a32532fdacae8114090b109aa1fad15cd91c3802fe0eb043669cf21cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:412b78d272740fe7b9708eb1516772b57f69a7bea599988ca2bb75584f5fcdbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6837953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08ad603970c2be6c590a0aca7c50732b3b22902c301df40366177ce270eff7f7`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 20:19:56 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 20:19:57 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 20:21:18 GMT
ENV INSTALLDIR=/notary/signer
# Thu, 20 Dec 2018 00:28:49 GMT
EXPOSE 4444
# Thu, 20 Dec 2018 00:28:50 GMT
EXPOSE 7899
# Thu, 20 Dec 2018 00:28:50 GMT
WORKDIR /notary/signer
# Thu, 20 Dec 2018 00:29:19 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 00:29:19 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Thu, 20 Dec 2018 00:29:19 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Thu, 20 Dec 2018 00:29:20 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 00:29:21 GMT
USER notary
# Thu, 20 Dec 2018 00:29:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 20 Dec 2018 00:29:21 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 00:29:21 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf5311608e176d31857d7e1def32dacf87bd0908058a06d9f474471792edf34`  
		Last Modified: Thu, 20 Dec 2018 00:29:41 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced8a8edbb04a0563d1bf51955a7b3364a62143c4efc1fda2ea4a265537be385`  
		Last Modified: Thu, 20 Dec 2018 00:29:44 GMT  
		Size: 4.6 MB (4628979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364eb27cbd031a8796e3254a340d5e3582f675e9436be6c48755aa2e56faab70`  
		Last Modified: Thu, 20 Dec 2018 00:29:42 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033a2218a9442c9d3f348bb807d2927f91fdb555b1973165995056b0a942847e`  
		Last Modified: Thu, 20 Dec 2018 00:29:41 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf94b6abd152726f5c73fcd0ee2ea383ab78233fff5b9271af41c913acf1914e`  
		Last Modified: Thu, 20 Dec 2018 00:29:41 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.6.1-1`

```console
$ docker pull notary@sha256:8c65ed3a32532fdacae8114090b109aa1fad15cd91c3802fe0eb043669cf21cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.6.1-1` - linux; amd64

```console
$ docker pull notary@sha256:412b78d272740fe7b9708eb1516772b57f69a7bea599988ca2bb75584f5fcdbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6837953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08ad603970c2be6c590a0aca7c50732b3b22902c301df40366177ce270eff7f7`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 20:19:56 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 20:19:57 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 20:21:18 GMT
ENV INSTALLDIR=/notary/signer
# Thu, 20 Dec 2018 00:28:49 GMT
EXPOSE 4444
# Thu, 20 Dec 2018 00:28:50 GMT
EXPOSE 7899
# Thu, 20 Dec 2018 00:28:50 GMT
WORKDIR /notary/signer
# Thu, 20 Dec 2018 00:29:19 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 00:29:19 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Thu, 20 Dec 2018 00:29:19 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Thu, 20 Dec 2018 00:29:20 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 00:29:21 GMT
USER notary
# Thu, 20 Dec 2018 00:29:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 20 Dec 2018 00:29:21 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 00:29:21 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caf5311608e176d31857d7e1def32dacf87bd0908058a06d9f474471792edf34`  
		Last Modified: Thu, 20 Dec 2018 00:29:41 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ced8a8edbb04a0563d1bf51955a7b3364a62143c4efc1fda2ea4a265537be385`  
		Last Modified: Thu, 20 Dec 2018 00:29:44 GMT  
		Size: 4.6 MB (4628979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:364eb27cbd031a8796e3254a340d5e3582f675e9436be6c48755aa2e56faab70`  
		Last Modified: Thu, 20 Dec 2018 00:29:42 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033a2218a9442c9d3f348bb807d2927f91fdb555b1973165995056b0a942847e`  
		Last Modified: Thu, 20 Dec 2018 00:29:41 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf94b6abd152726f5c73fcd0ee2ea383ab78233fff5b9271af41c913acf1914e`  
		Last Modified: Thu, 20 Dec 2018 00:29:41 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
