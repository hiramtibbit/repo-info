<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `notary`

-	[`notary:server`](#notaryserver)
-	[`notary:server-0.6.1-1`](#notaryserver-061-1)
-	[`notary:signer`](#notarysigner)
-	[`notary:signer-0.6.1-1`](#notarysigner-061-1)

## `notary:server`

```console
$ docker pull notary@sha256:05d1cceee56e406fae0dafbe82ea53a57f3d9c17d209f6c41ba2e495f5b8941b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:bf6d699c06194497a730e0b606357681646618fb0a5acdcb3f5c7ae08474083f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7300753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd815c2ee5000846aab39d323cdccc6f2f0ee66a6351e667dfdc4a3c2c34565`
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
# Fri, 16 Nov 2018 20:19:58 GMT
EXPOSE 4443/tcp
# Fri, 16 Nov 2018 20:19:58 GMT
WORKDIR /notary/server
# Fri, 16 Nov 2018 20:20:43 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 20:20:43 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in . 
# Fri, 16 Nov 2018 20:20:44 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in . 
# Fri, 16 Nov 2018 20:20:45 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 20:20:46 GMT
USER [notary]
# Fri, 16 Nov 2018 20:20:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 16 Nov 2018 20:20:47 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 20:20:47 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40864b3e19c40b6998fce9786416e702be7d4049c64e3e9bb9f14202a236eb6`  
		Last Modified: Fri, 16 Nov 2018 20:22:43 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db80344b18ec2f8fe4cbbf9856ae5e9ed87713a0edaebe4b0db523904def37e`  
		Last Modified: Fri, 16 Nov 2018 20:22:45 GMT  
		Size: 5.1 MB (5091714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b0ed951c126e9e3cb421bf3b1f922f2e23e665b79d409ea275f11bddc98e577`  
		Last Modified: Fri, 16 Nov 2018 20:22:43 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ab6b7e31eab988ffa128f0e43400b8e5e563728e4b99ea433764e852d619df`  
		Last Modified: Fri, 16 Nov 2018 20:22:43 GMT  
		Size: 383.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d23b62a5e1cf6b3e9a1925d21e804d97bd4a79c1d434ffa15d2b2ee30778ef`  
		Last Modified: Fri, 16 Nov 2018 20:22:43 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server` - linux; arm variant v6

```console
$ docker pull notary@sha256:dffc7d8462246852d4f83d0368e05bbc07a975b0d58056bc6ee34c9ac5134d5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6833777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f8c33b9706f6fa11a33c4d9bf45d71775229857aaf53b659a392e4603cfd64f`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 09:06:21 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 09:06:21 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 09:06:21 GMT
ENV INSTALLDIR=/notary/server
# Fri, 16 Nov 2018 09:06:21 GMT
EXPOSE 4443/tcp
# Fri, 16 Nov 2018 09:06:22 GMT
WORKDIR /notary/server
# Fri, 16 Nov 2018 09:06:50 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 09:06:51 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in . 
# Fri, 16 Nov 2018 09:06:51 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in . 
# Fri, 16 Nov 2018 09:06:52 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 09:06:53 GMT
USER [notary]
# Fri, 16 Nov 2018 09:06:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 16 Nov 2018 09:06:53 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 09:06:54 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca69ad328f7f2da92bc49a70f5f65991698e3e152145b1bd0c2c5269c7e5e49`  
		Last Modified: Fri, 16 Nov 2018 09:07:52 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a21f9aaad293a6ce1ecf3c55d0302ef4f7267eabea685d0b352ba399088498`  
		Last Modified: Fri, 16 Nov 2018 09:07:53 GMT  
		Size: 4.7 MB (4685008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94645bc95af0c3b2c067209a693ec6a4739ebcddd5a36fb8ee2a164073b77a3d`  
		Last Modified: Fri, 16 Nov 2018 09:07:52 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec5687aa236366773f15623bb09c50191ead76ad805d1265d32155c71cdc2a2`  
		Last Modified: Fri, 16 Nov 2018 09:07:52 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c63a3f1fc475297eb768a7d572fc814f88d9e8221b0f6dfea46595025bed793`  
		Last Modified: Fri, 16 Nov 2018 09:07:52 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server` - linux; arm64 variant v8

```console
$ docker pull notary@sha256:0bf68afd9551189d0c0586b5c7a983d4a3b113ffdc5191ce27f2998a18defe0a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.9 MB (6917573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3d4a5560c82f0cf1ba46327c409585bd7d8e0afd52e88f064fd9ffb57be432e`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 14:03:43 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 14:03:44 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 14:03:44 GMT
ENV INSTALLDIR=/notary/server
# Fri, 16 Nov 2018 14:03:45 GMT
EXPOSE 4443/tcp
# Fri, 16 Nov 2018 14:03:46 GMT
WORKDIR /notary/server
# Fri, 16 Nov 2018 14:04:18 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 14:04:19 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in . 
# Fri, 16 Nov 2018 14:04:20 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in . 
# Fri, 16 Nov 2018 14:04:22 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 14:04:22 GMT
USER [notary]
# Fri, 16 Nov 2018 14:04:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 16 Nov 2018 14:04:23 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 14:04:24 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cea18c060572e0c38721f6f23a6b8301815f5225530e30227c12cca70427871`  
		Last Modified: Fri, 16 Nov 2018 14:06:12 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a1c0f3e5e81fd1ed9932ec39ea412c0d9e0e8c7503dad7e797f1ef9852cab0`  
		Last Modified: Fri, 16 Nov 2018 14:06:14 GMT  
		Size: 4.8 MB (4815529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3970d63cc8c608e94a8606dff6e7c67b9a7c22883f633014192fddf8d3ade38`  
		Last Modified: Fri, 16 Nov 2018 14:06:12 GMT  
		Size: 419.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fbc957b902cc144d6d768de1d332120d1cc2c9514b1727aa998078ed89b97e`  
		Last Modified: Fri, 16 Nov 2018 14:06:13 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885b9ceceb519a0f279e4f21cdf9d39cba70801df8d33fdf66137ae88df8f2fc`  
		Last Modified: Fri, 16 Nov 2018 14:06:13 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server` - linux; 386

```console
$ docker pull notary@sha256:e7e390ac3043ea1c40a7ac36d6a2a3fd527859b02321136d69679337cb1f303f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7207176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e92372d26a28cc8b3361c6b9e3ae935269522ef9662f1ee0becc3fe576d83c3c`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 16:42:40 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 16:42:41 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 16:42:41 GMT
ENV INSTALLDIR=/notary/server
# Fri, 16 Nov 2018 16:42:41 GMT
EXPOSE 4443/tcp
# Fri, 16 Nov 2018 16:42:42 GMT
WORKDIR /notary/server
# Fri, 16 Nov 2018 16:43:22 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 16:43:23 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in . 
# Fri, 16 Nov 2018 16:43:23 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in . 
# Fri, 16 Nov 2018 16:43:25 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 16:43:25 GMT
USER [notary]
# Fri, 16 Nov 2018 16:43:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 16 Nov 2018 16:43:25 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 16:43:26 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0865aae2e6d5557bafa48c22f98fd7fba5f3fd4cdf1664323be49eaa68a59e2`  
		Last Modified: Fri, 16 Nov 2018 16:45:04 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53606f72842f83c7e3886c011d008ee1c7f95d9a371bf6661ab0882ceee4d2e`  
		Last Modified: Fri, 16 Nov 2018 16:45:06 GMT  
		Size: 4.9 MB (4933432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9f55edbfd4d4e75c3a1fb15448971dde8998dfc2efcb71dbd3709cf1958537`  
		Last Modified: Fri, 16 Nov 2018 16:45:04 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e61e63a97eb0f301faecbe15dfc0dcdddf93cc26b5acc8c08fe5463a90a635`  
		Last Modified: Fri, 16 Nov 2018 16:45:04 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8852ae6e3affd2f48b7dbe577a2892fb663ceab646408c00610413f8651cc0b9`  
		Last Modified: Fri, 16 Nov 2018 16:45:04 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server` - linux; ppc64le

```console
$ docker pull notary@sha256:eb390ac7b465c4ac48eaba55984f7af1e222adff8fe288817692edcb8abf4f9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7006679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:452458db1ab77f64ccb9c2d50c3ef6217c7a7c20e8a369bdeb399c0269a2089c`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 13:14:06 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 13:14:06 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 13:14:07 GMT
ENV INSTALLDIR=/notary/server
# Fri, 16 Nov 2018 13:14:07 GMT
EXPOSE 4443/tcp
# Fri, 16 Nov 2018 13:14:09 GMT
WORKDIR /notary/server
# Fri, 16 Nov 2018 13:14:33 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 13:14:34 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in . 
# Fri, 16 Nov 2018 13:14:34 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in . 
# Fri, 16 Nov 2018 13:14:38 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 13:14:38 GMT
USER [notary]
# Fri, 16 Nov 2018 13:14:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 16 Nov 2018 13:14:39 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 13:14:40 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5c4fc248196641087d2c5448447d58deb2fe3fcf877af4c3f475cdd0bc985e`  
		Last Modified: Fri, 16 Nov 2018 13:16:03 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b55523b72d88cfbe040d3d3ae3a5ae0d478c0b0d73e72c7b7c5a588904b8b997`  
		Last Modified: Fri, 16 Nov 2018 13:16:04 GMT  
		Size: 4.8 MB (4809138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27e229827c5ee5c9c2ac785cca391123ce69d072a2539e3afced1f2867b79881`  
		Last Modified: Fri, 16 Nov 2018 13:16:03 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd85d69f55848dfb0fe71b51e93e5dccb4b044253fbf5e8e0995390807e52883`  
		Last Modified: Fri, 16 Nov 2018 13:16:03 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c999f7906ea0894f2fe7338293001b323714450a9a72e40918f4f81825113695`  
		Last Modified: Fri, 16 Nov 2018 13:16:02 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server` - linux; s390x

```console
$ docker pull notary@sha256:000e80829e0175c3e3b7d1fcc5833d7a2708ddc565abeee28fea20cdaf1de27a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7478129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e66b2585c14b9283713a747220f07eeb60e8801440cf0b5ab745c76e5eb98518`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 14:50:49 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 14:50:53 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 14:50:58 GMT
ENV INSTALLDIR=/notary/server
# Fri, 16 Nov 2018 14:50:58 GMT
EXPOSE 4443/tcp
# Fri, 16 Nov 2018 14:50:58 GMT
WORKDIR /notary/server
# Fri, 16 Nov 2018 14:51:31 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 14:51:32 GMT
COPY file:e0e3204ef0b253b4cb710125fb7780914daff79cb06e65bfd4e44ee5c6a69a75 in . 
# Fri, 16 Nov 2018 14:51:33 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in . 
# Fri, 16 Nov 2018 14:51:35 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 14:51:35 GMT
USER [notary]
# Fri, 16 Nov 2018 14:51:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 16 Nov 2018 14:51:36 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 14:51:36 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874312f4989b89c5d0cf4f0857421102f3504c409ce2afbe4d16e426148d1173`  
		Last Modified: Fri, 16 Nov 2018 14:52:51 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a3ada639a77b77c4312b93cc16f1f5d0395baccb14a40ed5943b79529eab775`  
		Last Modified: Fri, 16 Nov 2018 14:52:52 GMT  
		Size: 5.2 MB (5168102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efa987569e7054f26e7f2b10e4e33c036fe1c43a238c9d9391e9448cad8cb30`  
		Last Modified: Fri, 16 Nov 2018 14:52:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1c3d60846f8e24e809d94c495ce2ac920d49e07277931e8bb3ddac523b5735`  
		Last Modified: Fri, 16 Nov 2018 14:52:51 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681af7be44090629b7600946f7509b002883dc97745b4f61f75d65a42390130c`  
		Last Modified: Fri, 16 Nov 2018 14:52:51 GMT  
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
$ docker pull notary@sha256:03b560eb6287f8bc5d321d84cbc226cc94173f893e4fff87a585d16561c322d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:f9a878650942b34f6d909455c99c04bf0313364c6bec8f85133a20d964808dfe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6840442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20732da2cb63d9c28884e75373e8457a067220912b4c01b1560ae30e3a434f7f`
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
# Fri, 16 Nov 2018 20:21:19 GMT
EXPOSE 4444/tcp
# Fri, 16 Nov 2018 20:21:19 GMT
EXPOSE 7899/tcp
# Fri, 16 Nov 2018 20:21:19 GMT
WORKDIR /notary/signer
# Fri, 16 Nov 2018 20:22:01 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 20:22:01 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in . 
# Fri, 16 Nov 2018 20:22:02 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in . 
# Fri, 16 Nov 2018 20:22:03 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 20:22:04 GMT
USER [notary]
# Fri, 16 Nov 2018 20:22:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 16 Nov 2018 20:22:05 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 20:22:05 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5986807acc44ae91159b0c2dfe09f8dd9fedb31f55c27468a7113edb40f3e1`  
		Last Modified: Fri, 16 Nov 2018 20:23:43 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c66a4f3a21c98aeef7b6f28ae3b5e03871173a7bb21c0ff3b318c235c089f2`  
		Last Modified: Fri, 16 Nov 2018 20:23:41 GMT  
		Size: 4.6 MB (4631466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06a551008d87bfbab8e3b881785cda8d70b539850f161d3b7f5adf5ee8fe56c7`  
		Last Modified: Fri, 16 Nov 2018 20:23:39 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1c10daa70ffec48fa4129a1e8f78d5963d848b6ddc89dc36de07ebe592583b`  
		Last Modified: Fri, 16 Nov 2018 20:23:39 GMT  
		Size: 383.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31358009df5026cb8cd40671dc323823761537702b3d13b50ffb8d6bd2b2944e`  
		Last Modified: Fri, 16 Nov 2018 20:23:39 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; arm variant v6

```console
$ docker pull notary@sha256:18c6f1cc018cf2af768b6c21958f19c04515160b476e7e2b65c2fc5771ab7647
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6413986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b4fcff33cdb8014cdc144b8939c0b2db8d1f3458f61e43393fbecce058a081`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 09:06:21 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 09:06:21 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 09:07:04 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 16 Nov 2018 09:07:05 GMT
EXPOSE 4444/tcp
# Fri, 16 Nov 2018 09:07:05 GMT
EXPOSE 7899/tcp
# Fri, 16 Nov 2018 09:07:05 GMT
WORKDIR /notary/signer
# Fri, 16 Nov 2018 09:07:30 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 09:07:30 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in . 
# Fri, 16 Nov 2018 09:07:31 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in . 
# Fri, 16 Nov 2018 09:07:32 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 09:07:36 GMT
USER [notary]
# Fri, 16 Nov 2018 09:07:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 16 Nov 2018 09:07:36 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 09:07:37 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10677a4b6168eb72d525e96820efcfbd3dcc066b28184c37cd91391d923df42`  
		Last Modified: Fri, 16 Nov 2018 09:08:07 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fafc356583d6fc1c10c560d8666a253d64a324254bf02cca9c8fcf60ac209fae`  
		Last Modified: Fri, 16 Nov 2018 09:08:08 GMT  
		Size: 4.3 MB (4265275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f26bfc12cfe770f50b4b9891301a02420205ce6f374f6d6b9b2d99d1a80f67`  
		Last Modified: Fri, 16 Nov 2018 09:08:07 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:273a13aa510bd4198a692cabd5683ddcba41cef40381c44cc97cda4df48ce236`  
		Last Modified: Fri, 16 Nov 2018 09:08:07 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82832ecfe96d3fab08278a813b95aff2dd1c57dbb2b60ee5440663363a18296d`  
		Last Modified: Fri, 16 Nov 2018 09:08:07 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; arm64 variant v8

```console
$ docker pull notary@sha256:56cd37cbba16d0cd7c0953e68fda20e7a5175fdbdc14c825e1c2de798be11e0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6483078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbd07e58c784ec01ef2e5839d3b5c42586289db593bd630b1576ee633b70b8ec`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 14:03:43 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 14:03:44 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 14:04:50 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 16 Nov 2018 14:04:51 GMT
EXPOSE 4444/tcp
# Fri, 16 Nov 2018 14:04:52 GMT
EXPOSE 7899/tcp
# Fri, 16 Nov 2018 14:04:53 GMT
WORKDIR /notary/signer
# Fri, 16 Nov 2018 14:05:37 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 14:05:38 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in . 
# Fri, 16 Nov 2018 14:05:39 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in . 
# Fri, 16 Nov 2018 14:05:41 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 14:05:42 GMT
USER [notary]
# Fri, 16 Nov 2018 14:05:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 16 Nov 2018 14:05:43 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 14:05:44 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcecc434954cb441a0645d3ab3fdd36bfc50b76d100420620b4a39edd514bc5`  
		Last Modified: Fri, 16 Nov 2018 14:06:52 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02185475efc560ed8aa620cbbaa0c734dc82b8e1ab2e930d389931cb450b41d8`  
		Last Modified: Fri, 16 Nov 2018 14:06:54 GMT  
		Size: 4.4 MB (4381099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c837517a3ba064c5a3a2e9df51072c03f5070bf53cd47c332d388f373b265785`  
		Last Modified: Fri, 16 Nov 2018 14:06:52 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f52f0b5b7a9c30d255a32b4ce4b2642e9c437f725e39bd01f3990d1b9f2e099`  
		Last Modified: Fri, 16 Nov 2018 14:06:52 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13d16c45284b5dced5884548f8c068b5a555ba98bd1f6228c24bd94aadfda7be`  
		Last Modified: Fri, 16 Nov 2018 14:06:52 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; 386

```console
$ docker pull notary@sha256:01fa5d3489b5106558b337df05f15595151847048c9aac20024fac81853ba72c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6758932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1fd3349346eec6ecdaffaa07dc11e50d8533d17330efb2cc1c2d9443de9138c`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 16:42:40 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 16:42:41 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 16:43:53 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 16 Nov 2018 16:43:54 GMT
EXPOSE 4444/tcp
# Fri, 16 Nov 2018 16:43:54 GMT
EXPOSE 7899/tcp
# Fri, 16 Nov 2018 16:43:54 GMT
WORKDIR /notary/signer
# Fri, 16 Nov 2018 16:44:32 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 16:44:32 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in . 
# Fri, 16 Nov 2018 16:44:33 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in . 
# Fri, 16 Nov 2018 16:44:34 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 16:44:34 GMT
USER [notary]
# Fri, 16 Nov 2018 16:44:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 16 Nov 2018 16:44:35 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 16:44:35 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a893fb049f729b2d1fe94225ace7a706c4e61921ed9733d1dd4b1d5f5992a74`  
		Last Modified: Fri, 16 Nov 2018 16:45:46 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec036e20963ab3cd4327ad452a76c9e04ae3277faa26f62562ee96ebdd56571b`  
		Last Modified: Fri, 16 Nov 2018 16:45:48 GMT  
		Size: 4.5 MB (4485253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca64f45d2ff608d8afd040e8c6a42296564e6681b2307db5499729621f0f3d3`  
		Last Modified: Fri, 16 Nov 2018 16:45:46 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1cf834a85d4e487c4e157614605848fe2c284139e5915c7e54bedf0dcfb7fa1`  
		Last Modified: Fri, 16 Nov 2018 16:45:46 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b39795f9db6bde90340d8cbbf82f8abbc3a9e18db631f67af53da9e3206d70`  
		Last Modified: Fri, 16 Nov 2018 16:45:46 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; ppc64le

```console
$ docker pull notary@sha256:f97b1f4921cd249191c3f5f263b09c5c007586e4231d3e3ba25e932c4251efae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6577287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d868512d6c8da0a9f1faf54c4b6a4f335c2137d191f0e52cac9f9c4cfee9ad36`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 13:14:06 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 13:14:06 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 13:14:57 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 16 Nov 2018 13:14:59 GMT
EXPOSE 4444/tcp
# Fri, 16 Nov 2018 13:15:00 GMT
EXPOSE 7899/tcp
# Fri, 16 Nov 2018 13:15:00 GMT
WORKDIR /notary/signer
# Fri, 16 Nov 2018 13:15:21 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 13:15:22 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in . 
# Fri, 16 Nov 2018 13:15:23 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in . 
# Fri, 16 Nov 2018 13:15:27 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 13:15:28 GMT
USER [notary]
# Fri, 16 Nov 2018 13:15:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 16 Nov 2018 13:15:31 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 13:15:40 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d9a6a0d2b6575b14a62cd10dec4e119e29613c5f4e82c4d9f30410ccaa5abf`  
		Last Modified: Fri, 16 Nov 2018 13:16:34 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bc4f7e919dc95400fb08be5fbc29c6fcac427c750ca185495d3cb1a1409808`  
		Last Modified: Fri, 16 Nov 2018 13:16:34 GMT  
		Size: 4.4 MB (4379811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15436c9d76d208d40408b2a96bb11444abb48c500feff28533cb0456b5a0f61a`  
		Last Modified: Fri, 16 Nov 2018 13:16:34 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26e244764b32b53b7f81b4e9e137efb55e895bb88f2193471e029121bc4b2f`  
		Last Modified: Fri, 16 Nov 2018 13:16:34 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd54b137989765eb402e8f45c32781c48580876c5fcddb32e58de5e4c4b470c6`  
		Last Modified: Fri, 16 Nov 2018 13:16:34 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; s390x

```console
$ docker pull notary@sha256:4e5b671b7c423915aabac59c0bc08db24ed962d94ee32acb9efe498cee3ed8b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7015719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966add36cd75988f5b36ed73055b02a1c786b83dfcf6e69a71e6380dd5a57549`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Fri, 16 Nov 2018 14:50:49 GMT
ENV TAG=v0.6.1
# Fri, 16 Nov 2018 14:50:53 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 16 Nov 2018 14:51:51 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 16 Nov 2018 14:51:52 GMT
EXPOSE 4444/tcp
# Fri, 16 Nov 2018 14:51:52 GMT
EXPOSE 7899/tcp
# Fri, 16 Nov 2018 14:51:53 GMT
WORKDIR /notary/signer
# Fri, 16 Nov 2018 14:52:25 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 16 Nov 2018 14:52:26 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in . 
# Fri, 16 Nov 2018 14:52:27 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in . 
# Fri, 16 Nov 2018 14:52:28 GMT
RUN adduser -D -H -g "" notary
# Fri, 16 Nov 2018 14:52:29 GMT
USER [notary]
# Fri, 16 Nov 2018 14:52:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 16 Nov 2018 14:52:30 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 16 Nov 2018 14:52:31 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12690b4e2eb531ae5bb5e7be7da0570b1b01225630f08c8f9a53bba3f1f4a73`  
		Last Modified: Fri, 16 Nov 2018 14:53:04 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e12c3887fd8934165410a7cc9ddfa5ed5b19b41acb1d67964f73f1f1696f8b`  
		Last Modified: Fri, 16 Nov 2018 14:53:06 GMT  
		Size: 4.7 MB (4705758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9516c7e558b8fad6e786296cfc135991ce79a8fe2d06e537c2ca37bb571d9c0`  
		Last Modified: Fri, 16 Nov 2018 14:53:04 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f78fdff0b1762fedef197148d895d79086c51e5b7aded35cb7527a1d5aecdb`  
		Last Modified: Fri, 16 Nov 2018 14:53:05 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:350a4b340e8cc840c58942dcdb859c3f8c053cc0bfceb7203a99ededdd4356f6`  
		Last Modified: Fri, 16 Nov 2018 14:53:04 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.6.1-1`

**does not exist** (yet?)
