<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `notary`

-	[`notary:server`](#notaryserver)
-	[`notary:server-0.6.1-1`](#notaryserver-061-1)
-	[`notary:signer`](#notarysigner)
-	[`notary:signer-0.6.1-1`](#notarysigner-061-1)

## `notary:server`

```console
$ docker pull notary@sha256:4a8e99264854582ccd3900170a8af1fb519e684d2e00287c431ba70a6a3ef56b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `notary:server` - linux; amd64

```console
$ docker pull notary@sha256:8ffe4ee34ff9790af4c0c110ec61cb93967166cacf56a8e9d360747546e98ad6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7300453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8fbf75f1e1523bf2458bc266b9f282b34321ece7be66851395d777843fee81c`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:59:44 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 04:59:45 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 04:59:45 GMT
ENV INSTALLDIR=/notary/server
# Fri, 21 Dec 2018 04:59:45 GMT
EXPOSE 4443
# Fri, 21 Dec 2018 04:59:45 GMT
WORKDIR /notary/server
# Fri, 21 Dec 2018 05:00:20 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 05:00:20 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Fri, 21 Dec 2018 05:00:21 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Fri, 21 Dec 2018 05:00:22 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 05:00:22 GMT
USER notary
# Fri, 21 Dec 2018 05:00:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 21 Dec 2018 05:00:23 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 05:00:23 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1b617a34a3588ea497f6159421dbdf8d8c8880de45a58d2964ea24b4734e56`  
		Last Modified: Fri, 21 Dec 2018 05:01:20 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d563344df172b19ef3b8194394391f48575e1d66e4a8c8738d9a311cc231dbe2`  
		Last Modified: Fri, 21 Dec 2018 05:01:22 GMT  
		Size: 5.1 MB (5091323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1881498b943b5a6fc9eefefc67c3c349df36ddb3e46c11f260087a83eb2c37`  
		Last Modified: Fri, 21 Dec 2018 05:01:20 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2251fc0f9d0170870db1b83ba1aa8563262d165e72c8f11b39b262f529eb474`  
		Last Modified: Fri, 21 Dec 2018 05:01:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1c71a851fef5adf4c3ab3f183673ab87fab5001e718ae7c02487bc01f83f03`  
		Last Modified: Fri, 21 Dec 2018 05:01:20 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server` - linux; arm variant v6

```console
$ docker pull notary@sha256:9c88a21518d5ac3f1b291aea7f07aab2eddcc6342b14c34c01ebf9d9811b6619
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6833776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3895471e64dfbb9a0c695d320cefa3eb778ee4c7b91614bea8c59a402ea8dd`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:18:16 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 09:18:16 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 09:18:17 GMT
ENV INSTALLDIR=/notary/server
# Fri, 21 Dec 2018 09:18:17 GMT
EXPOSE 4443
# Fri, 21 Dec 2018 09:18:17 GMT
WORKDIR /notary/server
# Fri, 21 Dec 2018 09:18:45 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 09:18:45 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Fri, 21 Dec 2018 09:18:46 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Fri, 21 Dec 2018 09:18:47 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 09:18:48 GMT
USER notary
# Fri, 21 Dec 2018 09:18:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 21 Dec 2018 09:18:48 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 09:18:49 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a341540ef8f467f97bc84d43d6fc16cb4abe89ab562cb8aa1828e1d4e098ed3`  
		Last Modified: Fri, 21 Dec 2018 09:19:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beabb6db16f4b7cd3f305f1cc5db8d70a939e24846f85d84301834dcba84e8dd`  
		Last Modified: Fri, 21 Dec 2018 09:19:39 GMT  
		Size: 4.7 MB (4685678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766225441395122981e33fa15300fc2d40a67b65baecfd048783d3ce84690d9a`  
		Last Modified: Fri, 21 Dec 2018 09:19:37 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7bffa7d0ecc972375e69e692591bebd4798e722f1adef9c0d135f20723b1cca`  
		Last Modified: Fri, 21 Dec 2018 09:19:37 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43de9887d5e217a6dbf34aa4a12a527a172af81049fdd0a7d23eb0d5ff9355f6`  
		Last Modified: Fri, 21 Dec 2018 09:19:37 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server` - linux; 386

```console
$ docker pull notary@sha256:4c0ac06cf55cf532edf1cfb44924bc9f66e5eb2c29596bdf2fdb02e4638da011
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7207186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b41e3bb145e84ac39030cd2c68790c67a3c89ea64ad9bf1af6c7a599ce301c1`
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
# Thu, 20 Dec 2018 12:45:27 GMT
EXPOSE 4443
# Thu, 20 Dec 2018 12:45:28 GMT
WORKDIR /notary/server
# Thu, 20 Dec 2018 12:45:51 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 12:45:51 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Thu, 20 Dec 2018 12:45:51 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Thu, 20 Dec 2018 12:45:52 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 12:45:52 GMT
USER notary
# Thu, 20 Dec 2018 12:45:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 20 Dec 2018 12:45:53 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 12:45:53 GMT
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
	-	`sha256:d0c633a76e7b23822e2b3cb448f03a3d167725aea158b56aee7c1c94affa7c04`  
		Last Modified: Thu, 20 Dec 2018 12:46:36 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df55057d7f4976af33227fc6796bdb8226f630f47cce4da5b9e0b68a52ea4846`  
		Last Modified: Thu, 20 Dec 2018 12:46:37 GMT  
		Size: 4.9 MB (4933452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821ffb2ef61301093769fd3bea9c04f068c93cc80a116c77920ef827a302367d`  
		Last Modified: Thu, 20 Dec 2018 12:46:35 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34386a5c32a4ad9eb3ede899ea81e787f6cb125591597afc0c656ce4697b6853`  
		Last Modified: Thu, 20 Dec 2018 12:46:35 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4be76aec5f459e1d95ee1da2e28be8a547c0c71e998202b723091d8da97df5a`  
		Last Modified: Thu, 20 Dec 2018 12:46:35 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server` - linux; ppc64le

```console
$ docker pull notary@sha256:48f9c9b5a203bbb9d4c4c0b9387cd43031aa0ebfcdf00534084803d7f2bb9c42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7008277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29daf844e063bb375c6ef60380fdd50fa494c6f27f918789bce4b01a9fe0ff65`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:28:42 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 10:28:45 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 10:28:49 GMT
ENV INSTALLDIR=/notary/server
# Fri, 21 Dec 2018 10:28:55 GMT
EXPOSE 4443
# Fri, 21 Dec 2018 10:29:00 GMT
WORKDIR /notary/server
# Fri, 21 Dec 2018 10:29:26 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 10:29:28 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Fri, 21 Dec 2018 10:29:28 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Fri, 21 Dec 2018 10:29:35 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 10:29:40 GMT
USER notary
# Fri, 21 Dec 2018 10:29:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 21 Dec 2018 10:29:48 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 10:29:52 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fadb5a0058ae2e0fda8eb97c52d43532e1fb076685d3dcd2158ef2814e265d2`  
		Last Modified: Fri, 21 Dec 2018 10:31:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0822067d59872b2596e8e97079387a0ef62751c5f392a7bc4633cb673d3b2e`  
		Last Modified: Fri, 21 Dec 2018 10:31:35 GMT  
		Size: 4.8 MB (4811190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f96213ca777766acea6222f9acde0a1294267412cb4e07559ca5d3a69b4698`  
		Last Modified: Fri, 21 Dec 2018 10:31:35 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6c50dc9ea972b50df37ac04e6a8c27e01c8bf25da0570fed59f31edda92e2d`  
		Last Modified: Fri, 21 Dec 2018 10:31:34 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76aeffb3504f5614010b53a25be353e7bbf85a8d56422a71f9e479ea6fd283c4`  
		Last Modified: Fri, 21 Dec 2018 10:31:34 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server` - linux; s390x

```console
$ docker pull notary@sha256:1af3f6fef271bcc8f4cbe4525e9016a9d545247dbb2a45cc4d76ee3b441349ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7478133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7b3482badd9156d6cf1c02590e31f611ebff47e8f43af7653cc73ece78c7c6`
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
# Thu, 20 Dec 2018 13:07:01 GMT
EXPOSE 4443
# Thu, 20 Dec 2018 13:07:01 GMT
WORKDIR /notary/server
# Thu, 20 Dec 2018 13:07:24 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 13:07:24 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Thu, 20 Dec 2018 13:07:24 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Thu, 20 Dec 2018 13:07:25 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 13:07:25 GMT
USER notary
# Thu, 20 Dec 2018 13:07:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 20 Dec 2018 13:07:26 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 13:07:26 GMT
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
	-	`sha256:b8f046b5a45380d9d661e50cf96bca0ca8502a77671df66c83263558e75b894e`  
		Last Modified: Thu, 20 Dec 2018 13:08:11 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca409c3a0c262ecc361a1078f646c1f61cf9c012e0c1e525a727d590435fb62`  
		Last Modified: Thu, 20 Dec 2018 13:08:13 GMT  
		Size: 5.2 MB (5168106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756688c8b4bfb47be5481fe15710b316bc3a000469aae85c59ec9ecb1c263fad`  
		Last Modified: Thu, 20 Dec 2018 13:08:11 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfd57ecc9ac14b35a78c269bceb7b1e355920a2006bee9ee8f355947a5fdcb4`  
		Last Modified: Thu, 20 Dec 2018 13:08:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afd14b3819f4cd6d9c2767ee5d29337bdc4866bc93322616094156b402cf6f2`  
		Last Modified: Thu, 20 Dec 2018 13:08:11 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.6.1-1`

```console
$ docker pull notary@sha256:4a8e99264854582ccd3900170a8af1fb519e684d2e00287c431ba70a6a3ef56b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `notary:server-0.6.1-1` - linux; amd64

```console
$ docker pull notary@sha256:8ffe4ee34ff9790af4c0c110ec61cb93967166cacf56a8e9d360747546e98ad6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7300453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8fbf75f1e1523bf2458bc266b9f282b34321ece7be66851395d777843fee81c`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:59:44 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 04:59:45 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 04:59:45 GMT
ENV INSTALLDIR=/notary/server
# Fri, 21 Dec 2018 04:59:45 GMT
EXPOSE 4443
# Fri, 21 Dec 2018 04:59:45 GMT
WORKDIR /notary/server
# Fri, 21 Dec 2018 05:00:20 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 05:00:20 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Fri, 21 Dec 2018 05:00:21 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Fri, 21 Dec 2018 05:00:22 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 05:00:22 GMT
USER notary
# Fri, 21 Dec 2018 05:00:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 21 Dec 2018 05:00:23 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 05:00:23 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac1b617a34a3588ea497f6159421dbdf8d8c8880de45a58d2964ea24b4734e56`  
		Last Modified: Fri, 21 Dec 2018 05:01:20 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d563344df172b19ef3b8194394391f48575e1d66e4a8c8738d9a311cc231dbe2`  
		Last Modified: Fri, 21 Dec 2018 05:01:22 GMT  
		Size: 5.1 MB (5091323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1881498b943b5a6fc9eefefc67c3c349df36ddb3e46c11f260087a83eb2c37`  
		Last Modified: Fri, 21 Dec 2018 05:01:20 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2251fc0f9d0170870db1b83ba1aa8563262d165e72c8f11b39b262f529eb474`  
		Last Modified: Fri, 21 Dec 2018 05:01:20 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1c71a851fef5adf4c3ab3f183673ab87fab5001e718ae7c02487bc01f83f03`  
		Last Modified: Fri, 21 Dec 2018 05:01:20 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server-0.6.1-1` - linux; arm variant v6

```console
$ docker pull notary@sha256:9c88a21518d5ac3f1b291aea7f07aab2eddcc6342b14c34c01ebf9d9811b6619
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6833776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3895471e64dfbb9a0c695d320cefa3eb778ee4c7b91614bea8c59a402ea8dd`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:18:16 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 09:18:16 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 09:18:17 GMT
ENV INSTALLDIR=/notary/server
# Fri, 21 Dec 2018 09:18:17 GMT
EXPOSE 4443
# Fri, 21 Dec 2018 09:18:17 GMT
WORKDIR /notary/server
# Fri, 21 Dec 2018 09:18:45 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 09:18:45 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Fri, 21 Dec 2018 09:18:46 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Fri, 21 Dec 2018 09:18:47 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 09:18:48 GMT
USER notary
# Fri, 21 Dec 2018 09:18:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 21 Dec 2018 09:18:48 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 09:18:49 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a341540ef8f467f97bc84d43d6fc16cb4abe89ab562cb8aa1828e1d4e098ed3`  
		Last Modified: Fri, 21 Dec 2018 09:19:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beabb6db16f4b7cd3f305f1cc5db8d70a939e24846f85d84301834dcba84e8dd`  
		Last Modified: Fri, 21 Dec 2018 09:19:39 GMT  
		Size: 4.7 MB (4685678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766225441395122981e33fa15300fc2d40a67b65baecfd048783d3ce84690d9a`  
		Last Modified: Fri, 21 Dec 2018 09:19:37 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7bffa7d0ecc972375e69e692591bebd4798e722f1adef9c0d135f20723b1cca`  
		Last Modified: Fri, 21 Dec 2018 09:19:37 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43de9887d5e217a6dbf34aa4a12a527a172af81049fdd0a7d23eb0d5ff9355f6`  
		Last Modified: Fri, 21 Dec 2018 09:19:37 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server-0.6.1-1` - linux; 386

```console
$ docker pull notary@sha256:4c0ac06cf55cf532edf1cfb44924bc9f66e5eb2c29596bdf2fdb02e4638da011
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7207186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b41e3bb145e84ac39030cd2c68790c67a3c89ea64ad9bf1af6c7a599ce301c1`
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
# Thu, 20 Dec 2018 12:45:27 GMT
EXPOSE 4443
# Thu, 20 Dec 2018 12:45:28 GMT
WORKDIR /notary/server
# Thu, 20 Dec 2018 12:45:51 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 12:45:51 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Thu, 20 Dec 2018 12:45:51 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Thu, 20 Dec 2018 12:45:52 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 12:45:52 GMT
USER notary
# Thu, 20 Dec 2018 12:45:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 20 Dec 2018 12:45:53 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 12:45:53 GMT
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
	-	`sha256:d0c633a76e7b23822e2b3cb448f03a3d167725aea158b56aee7c1c94affa7c04`  
		Last Modified: Thu, 20 Dec 2018 12:46:36 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df55057d7f4976af33227fc6796bdb8226f630f47cce4da5b9e0b68a52ea4846`  
		Last Modified: Thu, 20 Dec 2018 12:46:37 GMT  
		Size: 4.9 MB (4933452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:821ffb2ef61301093769fd3bea9c04f068c93cc80a116c77920ef827a302367d`  
		Last Modified: Thu, 20 Dec 2018 12:46:35 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34386a5c32a4ad9eb3ede899ea81e787f6cb125591597afc0c656ce4697b6853`  
		Last Modified: Thu, 20 Dec 2018 12:46:35 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4be76aec5f459e1d95ee1da2e28be8a547c0c71e998202b723091d8da97df5a`  
		Last Modified: Thu, 20 Dec 2018 12:46:35 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server-0.6.1-1` - linux; ppc64le

```console
$ docker pull notary@sha256:48f9c9b5a203bbb9d4c4c0b9387cd43031aa0ebfcdf00534084803d7f2bb9c42
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7008277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29daf844e063bb375c6ef60380fdd50fa494c6f27f918789bce4b01a9fe0ff65`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:28:42 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 10:28:45 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 10:28:49 GMT
ENV INSTALLDIR=/notary/server
# Fri, 21 Dec 2018 10:28:55 GMT
EXPOSE 4443
# Fri, 21 Dec 2018 10:29:00 GMT
WORKDIR /notary/server
# Fri, 21 Dec 2018 10:29:26 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 10:29:28 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Fri, 21 Dec 2018 10:29:28 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Fri, 21 Dec 2018 10:29:35 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 10:29:40 GMT
USER notary
# Fri, 21 Dec 2018 10:29:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 21 Dec 2018 10:29:48 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 10:29:52 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fadb5a0058ae2e0fda8eb97c52d43532e1fb076685d3dcd2158ef2814e265d2`  
		Last Modified: Fri, 21 Dec 2018 10:31:37 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0822067d59872b2596e8e97079387a0ef62751c5f392a7bc4633cb673d3b2e`  
		Last Modified: Fri, 21 Dec 2018 10:31:35 GMT  
		Size: 4.8 MB (4811190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f96213ca777766acea6222f9acde0a1294267412cb4e07559ca5d3a69b4698`  
		Last Modified: Fri, 21 Dec 2018 10:31:35 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6c50dc9ea972b50df37ac04e6a8c27e01c8bf25da0570fed59f31edda92e2d`  
		Last Modified: Fri, 21 Dec 2018 10:31:34 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76aeffb3504f5614010b53a25be353e7bbf85a8d56422a71f9e479ea6fd283c4`  
		Last Modified: Fri, 21 Dec 2018 10:31:34 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:server-0.6.1-1` - linux; s390x

```console
$ docker pull notary@sha256:1af3f6fef271bcc8f4cbe4525e9016a9d545247dbb2a45cc4d76ee3b441349ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7478133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7b3482badd9156d6cf1c02590e31f611ebff47e8f43af7653cc73ece78c7c6`
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
# Thu, 20 Dec 2018 13:07:01 GMT
EXPOSE 4443
# Thu, 20 Dec 2018 13:07:01 GMT
WORKDIR /notary/server
# Thu, 20 Dec 2018 13:07:24 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-server;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-server ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 13:07:24 GMT
COPY file:33643ab6368f7007610a81abd5ef291ec43cbd47a0d1581b29490690dc44f709 in . 
# Thu, 20 Dec 2018 13:07:24 GMT
COPY file:ad1ab25ac8ceb29f1cdc7363c26c083887d76bdbd37db998baad09873ef0811e in . 
# Thu, 20 Dec 2018 13:07:25 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 13:07:25 GMT
USER notary
# Thu, 20 Dec 2018 13:07:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Thu, 20 Dec 2018 13:07:26 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 13:07:26 GMT
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
	-	`sha256:b8f046b5a45380d9d661e50cf96bca0ca8502a77671df66c83263558e75b894e`  
		Last Modified: Thu, 20 Dec 2018 13:08:11 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca409c3a0c262ecc361a1078f646c1f61cf9c012e0c1e525a727d590435fb62`  
		Last Modified: Thu, 20 Dec 2018 13:08:13 GMT  
		Size: 5.2 MB (5168106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756688c8b4bfb47be5481fe15710b316bc3a000469aae85c59ec9ecb1c263fad`  
		Last Modified: Thu, 20 Dec 2018 13:08:11 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfd57ecc9ac14b35a78c269bceb7b1e355920a2006bee9ee8f355947a5fdcb4`  
		Last Modified: Thu, 20 Dec 2018 13:08:11 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afd14b3819f4cd6d9c2767ee5d29337bdc4866bc93322616094156b402cf6f2`  
		Last Modified: Thu, 20 Dec 2018 13:08:11 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer`

```console
$ docker pull notary@sha256:1c8258e9a8cb069b88e688aa70044af59a224a037d6299987f7bba76fac6e96b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:7a2d4695a594e85d95e328e7530a11361adddee68ee63badfbb60e26819ce8c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6838045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe511f911aab6643c35a32ff18351ba687a2ac86076f8826bb9328a19a45844`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:59:44 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 04:59:45 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 05:00:29 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 21 Dec 2018 05:00:30 GMT
EXPOSE 4444
# Fri, 21 Dec 2018 05:00:30 GMT
EXPOSE 7899
# Fri, 21 Dec 2018 05:00:30 GMT
WORKDIR /notary/signer
# Fri, 21 Dec 2018 05:01:03 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 05:01:03 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Fri, 21 Dec 2018 05:01:03 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Fri, 21 Dec 2018 05:01:04 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 05:01:05 GMT
USER notary
# Fri, 21 Dec 2018 05:01:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 21 Dec 2018 05:01:05 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 05:01:05 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c11fbb4fc6fb74d3c1d79e5f6414a66f9dd471a6db5fa329064f38489b8ab5`  
		Last Modified: Fri, 21 Dec 2018 05:01:27 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989dd4a6dfafff030b5093c01b56331051d05ac76d0f668634c3f0675bf57bbe`  
		Last Modified: Fri, 21 Dec 2018 05:01:28 GMT  
		Size: 4.6 MB (4628975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47c5366c501b4a2f83fa4127453cb0afaa79dd98533f1d88bef0575feeff7a2`  
		Last Modified: Fri, 21 Dec 2018 05:01:27 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a252937349637d758635a0084c68d85c8401f38f4b84ef88c3adfbe09773434`  
		Last Modified: Fri, 21 Dec 2018 05:01:27 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba721aa58d918af1a635242bb4a9e388fe8c8f10d5fca87ed810e14512eb5699`  
		Last Modified: Fri, 21 Dec 2018 05:01:27 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; arm variant v6

```console
$ docker pull notary@sha256:0e561f0a48830f97636caa0d5b8a6fdf55f6927a61cbebab909519a7a75b130e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6413489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a008c691607ce183a50b2ca5932185d7ffb7a9ec65cf6bf59d41559be0c1fcdc`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:18:16 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 09:18:16 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 09:18:54 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 21 Dec 2018 09:18:54 GMT
EXPOSE 4444
# Fri, 21 Dec 2018 09:18:55 GMT
EXPOSE 7899
# Fri, 21 Dec 2018 09:18:55 GMT
WORKDIR /notary/signer
# Fri, 21 Dec 2018 09:19:22 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 09:19:22 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Fri, 21 Dec 2018 09:19:23 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Fri, 21 Dec 2018 09:19:24 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 09:19:24 GMT
USER notary
# Fri, 21 Dec 2018 09:19:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 21 Dec 2018 09:19:25 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 09:19:25 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f77d0d04c0d73ed5d6cb4e05aa66b8b6e5e23cb191c997b2fde0d0e932d96d5`  
		Last Modified: Fri, 21 Dec 2018 09:19:45 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0409aa373cf0f0c46d50b88f6ec7c5ce5c34705ef1dac23842ddad4918617f31`  
		Last Modified: Fri, 21 Dec 2018 09:19:46 GMT  
		Size: 4.3 MB (4265449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87b3138eefccee479b156a551ddb29ad589642afe83371cd04155e2b806a163`  
		Last Modified: Fri, 21 Dec 2018 09:19:45 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4eea015be93e3284cc1189e1fe951a50484aae16664a4e546625f9806703a4`  
		Last Modified: Fri, 21 Dec 2018 09:19:45 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fdbffe6c18ba55d01e3a62def43c04521c2504e4d59f3344be48652ecbb983`  
		Last Modified: Fri, 21 Dec 2018 09:19:45 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; 386

```console
$ docker pull notary@sha256:eae33da32fb20e4ff702cc5489b56936877c2609381601a75e94a407fa94cb0a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6759310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900e1f31e62612dd740eb2fe1d87d71d70fd084ad95f640a7c4359e8aac2bbcd`
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
# Thu, 20 Dec 2018 12:45:59 GMT
EXPOSE 4444
# Thu, 20 Dec 2018 12:45:59 GMT
EXPOSE 7899
# Thu, 20 Dec 2018 12:46:00 GMT
WORKDIR /notary/signer
# Thu, 20 Dec 2018 12:46:22 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 12:46:22 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Thu, 20 Dec 2018 12:46:23 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Thu, 20 Dec 2018 12:46:23 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 12:46:24 GMT
USER notary
# Thu, 20 Dec 2018 12:46:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 20 Dec 2018 12:46:24 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 12:46:24 GMT
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
	-	`sha256:90c81c75f4733cb399b9a7c419d1c195d5ecc35d0916964eabbacc337973f512`  
		Last Modified: Thu, 20 Dec 2018 12:46:41 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d456c0b55751ea4761f8eb2c4427612cf02ff8b1e057b49cf99e108e40c1d0e`  
		Last Modified: Thu, 20 Dec 2018 12:46:42 GMT  
		Size: 4.5 MB (4485636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fc5510cfcfcb849a50e002e20fc72d55a4ad549193fb2a291a44a8cdef36fb`  
		Last Modified: Thu, 20 Dec 2018 12:46:41 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a040bcc2c83533428c00bbcfd1aa37ea450dcdce2f7820e2bffd588512b05215`  
		Last Modified: Thu, 20 Dec 2018 12:46:41 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fd9de869889d9750400f87e6d1a6464cfcb28a1fbe18399fcefbe5dae72153`  
		Last Modified: Thu, 20 Dec 2018 12:46:41 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; ppc64le

```console
$ docker pull notary@sha256:557b203ce8d674763e557489bf9b01590e700be6cb160e3734a0be7b2419f799
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6578894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8923128d32c1227400121259255ce06562b15aeec4c7622a9ec7982079f7812a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:28:42 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 10:28:45 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 10:30:05 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 21 Dec 2018 10:30:10 GMT
EXPOSE 4444
# Fri, 21 Dec 2018 10:30:13 GMT
EXPOSE 7899
# Fri, 21 Dec 2018 10:30:16 GMT
WORKDIR /notary/signer
# Fri, 21 Dec 2018 10:30:43 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 10:30:46 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Fri, 21 Dec 2018 10:30:50 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Fri, 21 Dec 2018 10:31:06 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 10:31:09 GMT
USER notary
# Fri, 21 Dec 2018 10:31:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 21 Dec 2018 10:31:18 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 10:31:21 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bece8d2573700b8846efac1da38f77131ea1fdef5554161c46fa302e285424b`  
		Last Modified: Fri, 21 Dec 2018 10:31:47 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6534fb7966e8be8b1d88ef7ac9b1a234f6976a97d26bb9b1659c1f315b6f41`  
		Last Modified: Fri, 21 Dec 2018 10:31:48 GMT  
		Size: 4.4 MB (4381863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2882e49e3a84d64e0c6801ec4f1f9bdbb909e450683ed38b6e3637a263a3bb0`  
		Last Modified: Fri, 21 Dec 2018 10:31:48 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfee567f80cce768e924fbe2e0b94f2e6d41903202c59d3d20669a92f02e09f9`  
		Last Modified: Fri, 21 Dec 2018 10:31:47 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3961d7a684bde53410147a8b850856d9b19d3ac76251475b7b19d7a237987361`  
		Last Modified: Fri, 21 Dec 2018 10:31:48 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; s390x

```console
$ docker pull notary@sha256:58ccabd7954131b12f72a484ce0d6e5c434ca4dfead2e9ad088d697668ff7edd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42800c5c5ab37b97e4b55713f5e759c179908c7ac1980db7dfa1610a2c05dcfb`
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
# Thu, 20 Dec 2018 13:07:33 GMT
EXPOSE 4444
# Thu, 20 Dec 2018 13:07:33 GMT
EXPOSE 7899
# Thu, 20 Dec 2018 13:07:34 GMT
WORKDIR /notary/signer
# Thu, 20 Dec 2018 13:07:55 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 13:07:55 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Thu, 20 Dec 2018 13:07:55 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Thu, 20 Dec 2018 13:07:56 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 13:07:56 GMT
USER notary
# Thu, 20 Dec 2018 13:07:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 20 Dec 2018 13:07:57 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 13:07:57 GMT
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
	-	`sha256:d07ba2a0e1e039bd7a759c81e39e1ed75d6daf20edbce16eef088c9900438b4e`  
		Last Modified: Thu, 20 Dec 2018 13:08:18 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdadfcaa2995c54679d28ec3e1b30fefbc1e18e4ce9d1f938391f5b02c88a3da`  
		Last Modified: Thu, 20 Dec 2018 13:08:20 GMT  
		Size: 4.7 MB (4708558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30700290a5807bd78fc71e2e450184ce5fdb60686c9212840e83c9d1e04e1392`  
		Last Modified: Thu, 20 Dec 2018 13:08:19 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7ce224b1939dda7a5cecee7d25a464d620fa5c066fcc517cb2f75e715370f3`  
		Last Modified: Thu, 20 Dec 2018 13:08:18 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc2d4102df86a411ed9c837ac43a4149f07a1a9f8834b42b89627ae75230906`  
		Last Modified: Thu, 20 Dec 2018 13:08:18 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.6.1-1`

```console
$ docker pull notary@sha256:1c8258e9a8cb069b88e688aa70044af59a224a037d6299987f7bba76fac6e96b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `notary:signer-0.6.1-1` - linux; amd64

```console
$ docker pull notary@sha256:7a2d4695a594e85d95e328e7530a11361adddee68ee63badfbb60e26819ce8c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6838045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe511f911aab6643c35a32ff18351ba687a2ac86076f8826bb9328a19a45844`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:59:44 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 04:59:45 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 05:00:29 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 21 Dec 2018 05:00:30 GMT
EXPOSE 4444
# Fri, 21 Dec 2018 05:00:30 GMT
EXPOSE 7899
# Fri, 21 Dec 2018 05:00:30 GMT
WORKDIR /notary/signer
# Fri, 21 Dec 2018 05:01:03 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 05:01:03 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Fri, 21 Dec 2018 05:01:03 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Fri, 21 Dec 2018 05:01:04 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 05:01:05 GMT
USER notary
# Fri, 21 Dec 2018 05:01:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 21 Dec 2018 05:01:05 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 05:01:05 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c11fbb4fc6fb74d3c1d79e5f6414a66f9dd471a6db5fa329064f38489b8ab5`  
		Last Modified: Fri, 21 Dec 2018 05:01:27 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989dd4a6dfafff030b5093c01b56331051d05ac76d0f668634c3f0675bf57bbe`  
		Last Modified: Fri, 21 Dec 2018 05:01:28 GMT  
		Size: 4.6 MB (4628975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47c5366c501b4a2f83fa4127453cb0afaa79dd98533f1d88bef0575feeff7a2`  
		Last Modified: Fri, 21 Dec 2018 05:01:27 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a252937349637d758635a0084c68d85c8401f38f4b84ef88c3adfbe09773434`  
		Last Modified: Fri, 21 Dec 2018 05:01:27 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba721aa58d918af1a635242bb4a9e388fe8c8f10d5fca87ed810e14512eb5699`  
		Last Modified: Fri, 21 Dec 2018 05:01:27 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer-0.6.1-1` - linux; arm variant v6

```console
$ docker pull notary@sha256:0e561f0a48830f97636caa0d5b8a6fdf55f6927a61cbebab909519a7a75b130e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6413489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a008c691607ce183a50b2ca5932185d7ffb7a9ec65cf6bf59d41559be0c1fcdc`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:18:16 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 09:18:16 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 09:18:54 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 21 Dec 2018 09:18:54 GMT
EXPOSE 4444
# Fri, 21 Dec 2018 09:18:55 GMT
EXPOSE 7899
# Fri, 21 Dec 2018 09:18:55 GMT
WORKDIR /notary/signer
# Fri, 21 Dec 2018 09:19:22 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 09:19:22 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Fri, 21 Dec 2018 09:19:23 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Fri, 21 Dec 2018 09:19:24 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 09:19:24 GMT
USER notary
# Fri, 21 Dec 2018 09:19:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 21 Dec 2018 09:19:25 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 09:19:25 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f77d0d04c0d73ed5d6cb4e05aa66b8b6e5e23cb191c997b2fde0d0e932d96d5`  
		Last Modified: Fri, 21 Dec 2018 09:19:45 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0409aa373cf0f0c46d50b88f6ec7c5ce5c34705ef1dac23842ddad4918617f31`  
		Last Modified: Fri, 21 Dec 2018 09:19:46 GMT  
		Size: 4.3 MB (4265449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87b3138eefccee479b156a551ddb29ad589642afe83371cd04155e2b806a163`  
		Last Modified: Fri, 21 Dec 2018 09:19:45 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4eea015be93e3284cc1189e1fe951a50484aae16664a4e546625f9806703a4`  
		Last Modified: Fri, 21 Dec 2018 09:19:45 GMT  
		Size: 384.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89fdbffe6c18ba55d01e3a62def43c04521c2504e4d59f3344be48652ecbb983`  
		Last Modified: Fri, 21 Dec 2018 09:19:45 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer-0.6.1-1` - linux; 386

```console
$ docker pull notary@sha256:eae33da32fb20e4ff702cc5489b56936877c2609381601a75e94a407fa94cb0a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6759310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900e1f31e62612dd740eb2fe1d87d71d70fd084ad95f640a7c4359e8aac2bbcd`
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
# Thu, 20 Dec 2018 12:45:59 GMT
EXPOSE 4444
# Thu, 20 Dec 2018 12:45:59 GMT
EXPOSE 7899
# Thu, 20 Dec 2018 12:46:00 GMT
WORKDIR /notary/signer
# Thu, 20 Dec 2018 12:46:22 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 12:46:22 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Thu, 20 Dec 2018 12:46:23 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Thu, 20 Dec 2018 12:46:23 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 12:46:24 GMT
USER notary
# Thu, 20 Dec 2018 12:46:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 20 Dec 2018 12:46:24 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 12:46:24 GMT
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
	-	`sha256:90c81c75f4733cb399b9a7c419d1c195d5ecc35d0916964eabbacc337973f512`  
		Last Modified: Thu, 20 Dec 2018 12:46:41 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d456c0b55751ea4761f8eb2c4427612cf02ff8b1e057b49cf99e108e40c1d0e`  
		Last Modified: Thu, 20 Dec 2018 12:46:42 GMT  
		Size: 4.5 MB (4485636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07fc5510cfcfcb849a50e002e20fc72d55a4ad549193fb2a291a44a8cdef36fb`  
		Last Modified: Thu, 20 Dec 2018 12:46:41 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a040bcc2c83533428c00bbcfd1aa37ea450dcdce2f7820e2bffd588512b05215`  
		Last Modified: Thu, 20 Dec 2018 12:46:41 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fd9de869889d9750400f87e6d1a6464cfcb28a1fbe18399fcefbe5dae72153`  
		Last Modified: Thu, 20 Dec 2018 12:46:41 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer-0.6.1-1` - linux; ppc64le

```console
$ docker pull notary@sha256:557b203ce8d674763e557489bf9b01590e700be6cb160e3734a0be7b2419f799
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6578894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8923128d32c1227400121259255ce06562b15aeec4c7622a9ec7982079f7812a`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:28:42 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 10:28:45 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 10:30:05 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 21 Dec 2018 10:30:10 GMT
EXPOSE 4444
# Fri, 21 Dec 2018 10:30:13 GMT
EXPOSE 7899
# Fri, 21 Dec 2018 10:30:16 GMT
WORKDIR /notary/signer
# Fri, 21 Dec 2018 10:30:43 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 10:30:46 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Fri, 21 Dec 2018 10:30:50 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Fri, 21 Dec 2018 10:31:06 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 10:31:09 GMT
USER notary
# Fri, 21 Dec 2018 10:31:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 21 Dec 2018 10:31:18 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 10:31:21 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bece8d2573700b8846efac1da38f77131ea1fdef5554161c46fa302e285424b`  
		Last Modified: Fri, 21 Dec 2018 10:31:47 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6534fb7966e8be8b1d88ef7ac9b1a234f6976a97d26bb9b1659c1f315b6f41`  
		Last Modified: Fri, 21 Dec 2018 10:31:48 GMT  
		Size: 4.4 MB (4381863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2882e49e3a84d64e0c6801ec4f1f9bdbb909e450683ed38b6e3637a263a3bb0`  
		Last Modified: Fri, 21 Dec 2018 10:31:48 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfee567f80cce768e924fbe2e0b94f2e6d41903202c59d3d20669a92f02e09f9`  
		Last Modified: Fri, 21 Dec 2018 10:31:47 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3961d7a684bde53410147a8b850856d9b19d3ac76251475b7b19d7a237987361`  
		Last Modified: Fri, 21 Dec 2018 10:31:48 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer-0.6.1-1` - linux; s390x

```console
$ docker pull notary@sha256:58ccabd7954131b12f72a484ce0d6e5c434ca4dfead2e9ad088d697668ff7edd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42800c5c5ab37b97e4b55713f5e759c179908c7ac1980db7dfa1610a2c05dcfb`
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
# Thu, 20 Dec 2018 13:07:33 GMT
EXPOSE 4444
# Thu, 20 Dec 2018 13:07:33 GMT
EXPOSE 7899
# Thu, 20 Dec 2018 13:07:34 GMT
WORKDIR /notary/signer
# Thu, 20 Dec 2018 13:07:55 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 13:07:55 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Thu, 20 Dec 2018 13:07:55 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Thu, 20 Dec 2018 13:07:56 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 13:07:56 GMT
USER notary
# Thu, 20 Dec 2018 13:07:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 20 Dec 2018 13:07:57 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 13:07:57 GMT
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
	-	`sha256:d07ba2a0e1e039bd7a759c81e39e1ed75d6daf20edbce16eef088c9900438b4e`  
		Last Modified: Thu, 20 Dec 2018 13:08:18 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdadfcaa2995c54679d28ec3e1b30fefbc1e18e4ce9d1f938391f5b02c88a3da`  
		Last Modified: Thu, 20 Dec 2018 13:08:20 GMT  
		Size: 4.7 MB (4708558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30700290a5807bd78fc71e2e450184ce5fdb60686c9212840e83c9d1e04e1392`  
		Last Modified: Thu, 20 Dec 2018 13:08:19 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7ce224b1939dda7a5cecee7d25a464d620fa5c066fcc517cb2f75e715370f3`  
		Last Modified: Thu, 20 Dec 2018 13:08:18 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc2d4102df86a411ed9c837ac43a4149f07a1a9f8834b42b89627ae75230906`  
		Last Modified: Thu, 20 Dec 2018 13:08:18 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
