## `notary:server`

```console
$ docker pull notary@sha256:1116e117f4aeac7d7d068cde8748c037249ddd8710eea16acd57a8a485c59304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

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
