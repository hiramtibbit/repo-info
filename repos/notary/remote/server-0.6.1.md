## `notary:server-0.6.1`

```console
$ docker pull notary@sha256:3e29f7c0b171e86f8d3a349cdc7bd518459b01137952ba89ae0c4edb31b923aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `notary:server-0.6.1` - linux; arm variant v6

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

### `notary:server-0.6.1` - linux; arm64 variant v8

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

### `notary:server-0.6.1` - linux; ppc64le

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
