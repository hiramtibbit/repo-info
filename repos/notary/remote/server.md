## `notary:server`

```console
$ docker pull notary@sha256:323f274abcfed05c614423c2af09c29a49eeb17963c0aa858a6e5e63e0322805
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
