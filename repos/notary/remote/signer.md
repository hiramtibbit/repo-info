## `notary:signer`

```console
$ docker pull notary@sha256:2b699412160ea66eb7b4345a0cac1fba61418cdfe7263142a07ae0156d67c034
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
$ docker pull notary@sha256:f6462b22bc4bc4faa375fe54aa661bad16116d89c2e6f04dabd7c0771e83ffa8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6838072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fef16c9fe1c00f5b99b0496238d624a58a0f21abf7cafc86940dd39aa68f5a8`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:23:48 GMT
ENV TAG=v0.6.1
# Thu, 31 Jan 2019 00:23:49 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Thu, 31 Jan 2019 00:24:34 GMT
ENV INSTALLDIR=/notary/signer
# Thu, 31 Jan 2019 00:24:34 GMT
EXPOSE 4444
# Thu, 31 Jan 2019 00:24:34 GMT
EXPOSE 7899
# Thu, 31 Jan 2019 00:24:34 GMT
WORKDIR /notary/signer
# Thu, 31 Jan 2019 00:25:12 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 31 Jan 2019 00:25:12 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Thu, 31 Jan 2019 00:25:12 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Thu, 31 Jan 2019 00:25:13 GMT
RUN adduser -D -H -g "" notary
# Thu, 31 Jan 2019 00:25:14 GMT
USER notary
# Thu, 31 Jan 2019 00:25:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 31 Jan 2019 00:25:14 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 31 Jan 2019 00:25:14 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4712d2ba01c08a689ff9f5fc9cd2146c8340bf9b53a095ab5f27959e519564`  
		Last Modified: Thu, 31 Jan 2019 00:25:33 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:004c15c1bd7ebecbf1529bab9506d7844d01e592ae74e35e153f7ca69711c164`  
		Last Modified: Thu, 31 Jan 2019 00:25:34 GMT  
		Size: 4.6 MB (4628993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b77c8e2b276423f1e01b55e605f4163bcf4c7670bca06abe572f923a5ce5d1`  
		Last Modified: Thu, 31 Jan 2019 00:25:34 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80aa4f4f24e67e0877e44f8f50aaf7cd97ee572c6bccb3ea76d9e76f3d6a92b8`  
		Last Modified: Thu, 31 Jan 2019 00:25:33 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf64c86c51503c25ad9d1c4603deb894e5314d935c7882ee2ef0884f0a540b50`  
		Last Modified: Thu, 31 Jan 2019 00:25:33 GMT  
		Size: 1.2 KB (1189 bytes)  
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

### `notary:signer` - linux; arm64 variant v8

```console
$ docker pull notary@sha256:1c3d235a316b15a0e4ce8f9b050614617c8fb28c7478a4a433089ee7b74a11d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6483022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f49fcd97b7ec46baa22d5e679bf42b78d14c3e7a941add9ffbe6d389c7bb498c`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:22:34 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 13:22:35 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 13:23:37 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 21 Dec 2018 13:23:38 GMT
EXPOSE 4444
# Fri, 21 Dec 2018 13:23:39 GMT
EXPOSE 7899
# Fri, 21 Dec 2018 13:23:41 GMT
WORKDIR /notary/signer
# Fri, 21 Dec 2018 13:24:31 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 13:24:32 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Fri, 21 Dec 2018 13:24:33 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Fri, 21 Dec 2018 13:24:37 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 13:24:38 GMT
USER notary
# Fri, 21 Dec 2018 13:24:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 21 Dec 2018 13:24:40 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 13:24:41 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e419c846cb44abf14b7846dfaa8da506ac8e35b4002a57b5013066b14d9d2f01`  
		Last Modified: Fri, 21 Dec 2018 13:25:13 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086a230aeb2314de01306dabd3a93971b5edefd14f901bbda5b5dadc6e7b1c36`  
		Last Modified: Fri, 21 Dec 2018 13:25:16 GMT  
		Size: 4.4 MB (4380965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3bbc0a106524e92aa44be89ac4e8d99e8738f43294579fbf5970199c4e0604d`  
		Last Modified: Fri, 21 Dec 2018 13:25:13 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f539ec9dc2793b7eb0a5101107bc5188fd9de874d1848a2623d7c0d57c5f8f`  
		Last Modified: Fri, 21 Dec 2018 13:25:13 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4dabf678e2d9e4e400433cf2eed46e34365993648d73aa58efb6627e295d857`  
		Last Modified: Fri, 21 Dec 2018 13:25:13 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `notary:signer` - linux; 386

```console
$ docker pull notary@sha256:b59dc6cb4fefcbfa37b077cff33fcb81a7d58b3185eed2e1175b07db43a4aa5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6759409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8627614551f4a2f6751c8b7cd080b205825616caa452882f1c160fa4c1f2c715`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 12:21:45 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 12:21:46 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 12:22:17 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 21 Dec 2018 12:22:17 GMT
EXPOSE 4444
# Fri, 21 Dec 2018 12:22:18 GMT
EXPOSE 7899
# Fri, 21 Dec 2018 12:22:18 GMT
WORKDIR /notary/signer
# Fri, 21 Dec 2018 12:22:40 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 12:22:40 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Fri, 21 Dec 2018 12:22:40 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Fri, 21 Dec 2018 12:22:41 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 12:22:41 GMT
USER notary
# Fri, 21 Dec 2018 12:22:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 21 Dec 2018 12:22:41 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 12:22:41 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e125e0aa2fdf753514a4553bf3cc90ce0f63544ac1c02f32ff01411ea8422d8f`  
		Last Modified: Fri, 21 Dec 2018 12:22:53 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8649f854bb8edbce37d82b926b138401d6a2e05e393e48506d42ecf608f76db`  
		Last Modified: Fri, 21 Dec 2018 12:22:55 GMT  
		Size: 4.5 MB (4485618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6888c1a63a23bb6e6cffa4a0eee24af7707493e86e053ab646bf1d2bff20415b`  
		Last Modified: Fri, 21 Dec 2018 12:22:53 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83244d9428effa22b2e24ca0df3d6abdd3896eb60c2cfa14970c8d477fe5aa15`  
		Last Modified: Fri, 21 Dec 2018 12:22:53 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c12cfa5b0153bb666a9fc30741924a9ec4b80b0e6c8bc51b4e7e402a3d761dc`  
		Last Modified: Fri, 21 Dec 2018 12:22:53 GMT  
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
$ docker pull notary@sha256:fc804780e90f1e574f0c50a6f0e74fbd4cbca39593f75d9dbb4fa45d7731858b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d012373408333a5f331be67c45d6c178c6fc3c8b7c24fab52fe5f762539883`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:03:16 GMT
ENV TAG=v0.6.1
# Fri, 21 Dec 2018 13:03:16 GMT
ENV NOTARYPKG=github.com/theupdateframework/notary
# Fri, 21 Dec 2018 13:03:41 GMT
ENV INSTALLDIR=/notary/signer
# Fri, 21 Dec 2018 13:03:44 GMT
EXPOSE 4444
# Fri, 21 Dec 2018 13:03:45 GMT
EXPOSE 7899
# Fri, 21 Dec 2018 13:03:45 GMT
WORKDIR /notary/signer
# Fri, 21 Dec 2018 13:04:01 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Fri, 21 Dec 2018 13:04:01 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Fri, 21 Dec 2018 13:04:02 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Fri, 21 Dec 2018 13:04:02 GMT
RUN adduser -D -H -g "" notary
# Fri, 21 Dec 2018 13:04:03 GMT
USER notary
# Fri, 21 Dec 2018 13:04:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 21 Dec 2018 13:04:03 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 13:04:03 GMT
CMD ["notary-signer" "--help"]
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
	-	`sha256:3ef833df234804d02a22eb0c662649aa32ccdfdebd4189547181e80869ed8954`  
		Last Modified: Fri, 21 Dec 2018 13:04:23 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf9e15cd4027d7c57bb98093444a3107b8947dce1c8f4c0cb8fcafeebbd1186`  
		Last Modified: Fri, 21 Dec 2018 13:04:25 GMT  
		Size: 4.7 MB (4708565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcd7138722f0b9da6b5242271800fa936ba103e310bd0aa99ff186939f0b5e3`  
		Last Modified: Fri, 21 Dec 2018 13:04:23 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dc5a196b3f842798119eb23847b58ee5ff668931baa49aa7174081f915f1bb`  
		Last Modified: Fri, 21 Dec 2018 13:04:23 GMT  
		Size: 383.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c549d005002065f8dd73a10b7374ea258eb93d364af67c3cc14f58871a8b81`  
		Last Modified: Fri, 21 Dec 2018 13:04:23 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
