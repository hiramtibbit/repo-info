## `notary:server-0.6.1-1`

```console
$ docker pull notary@sha256:6c2b6291cc5d5eff8c00412c3831cf99bc7ed59190dcf2b2088192cbd07846cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

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

### `notary:server-0.6.1-1` - linux; arm variant v6

```console
$ docker pull notary@sha256:a0156017eda2bb7d651a325cdfd6aabf8a32169f0ed7e2f7aa0d6001550c8847
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6834469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb6bd3b94fc33a1d668cd36b5e7a973ff2eb0cda27b78083783dddda68877dcf`
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
# Thu, 20 Dec 2018 08:51:47 GMT
EXPOSE 4443
# Thu, 20 Dec 2018 08:51:48 GMT
WORKDIR /notary/server
# Thu, 20 Dec 2018 08:52:14 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 08:52:14 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Thu, 20 Dec 2018 08:52:15 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Thu, 20 Dec 2018 08:52:16 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 08:52:16 GMT
USER notary
# Thu, 20 Dec 2018 08:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 20 Dec 2018 08:52:17 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 08:52:17 GMT
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
	-	`sha256:95180a84a01962018b92f1c354ae06ee2623d372ad1fa8ac03d406952b6a79a3`  
		Last Modified: Thu, 20 Dec 2018 08:54:00 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22f6d7d7e4b7fb17fba72a7bed26b620a801d76d0edda46d962c438583e763e`  
		Last Modified: Thu, 20 Dec 2018 08:54:02 GMT  
		Size: 4.7 MB (4685698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5324cbc2b9ad4a48a93a954ddb52ba59c15feb73b60a7c07d5c592c542dca960`  
		Last Modified: Thu, 20 Dec 2018 08:54:00 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ac96f8273ad042798751869c20fe2f1506af49402690c1a84704285f6595f8`  
		Last Modified: Thu, 20 Dec 2018 08:54:00 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d27a098403d3621627d8d5ea99972943e9b452119b5f78711a91ab9dd4f3b4`  
		Last Modified: Thu, 20 Dec 2018 08:54:00 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server-0.6.1-1` - linux; ppc64le

```console
$ docker pull notary@sha256:97a268529b9598f48e84f01f7eeb5dbd91f6045fb9685528bfc96cfdc737c576
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7008728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:235ea636c43aa3132dbdf184cd823f835266829081644f7d066f10440d619ae5`
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
# Thu, 20 Dec 2018 09:28:41 GMT
EXPOSE 4443
# Thu, 20 Dec 2018 09:28:44 GMT
WORKDIR /notary/server
# Thu, 20 Dec 2018 09:29:12 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 09:29:14 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Thu, 20 Dec 2018 09:29:16 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Thu, 20 Dec 2018 09:29:21 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 09:29:24 GMT
USER notary
# Thu, 20 Dec 2018 09:29:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 20 Dec 2018 09:29:27 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 09:29:29 GMT
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
	-	`sha256:c43f8638f77a3e9bd82194bf4baedb394dc68b59a791bf9cf0d33e0b20468029`  
		Last Modified: Thu, 20 Dec 2018 09:30:36 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef3505b52c3f67b99e2910b48464ea97df96d2029c20adeef6c9c67c2e3cc938`  
		Last Modified: Thu, 20 Dec 2018 09:30:37 GMT  
		Size: 4.8 MB (4811187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045640cadf79b7d15eed3ed8f39449dfa67921aec577ec5b7e6e38e26ce5a134`  
		Last Modified: Thu, 20 Dec 2018 09:30:36 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81646a1ab496e1ee554edc122ce371aaf6584a99eca91a2815d43e7b33bbfe6c`  
		Last Modified: Thu, 20 Dec 2018 09:30:36 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30375ade09651401204a7532d6936b1dea588a807b352b307e5077562f0308f`  
		Last Modified: Thu, 20 Dec 2018 09:30:36 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
