## `notary:signer`

```console
$ docker pull notary@sha256:6ec80d9b7d2beff8328c74e4e14a4493324f8b65364776813a5b4a7b71006871
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
$ docker pull notary@sha256:30c125a3a178d1c27a6750ce7d9452ca09be3da719d9edb15fa88aba5c312790
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6579335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:840d4158ce10c0d5f916f5378de99e8f6c0585809507cd484ccdb7ee75661b3d`
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
# Thu, 20 Dec 2018 09:29:38 GMT
EXPOSE 4444
# Thu, 20 Dec 2018 09:29:41 GMT
EXPOSE 7899
# Thu, 20 Dec 2018 09:29:43 GMT
WORKDIR /notary/signer
# Thu, 20 Dec 2018 09:30:06 GMT
RUN set -eux;     apk add --no-cache --virtual build-deps git go make musl-dev;     go version | grep 'go1.10.7 ';     export GOPATH=/go GOCACHE=/go/cache;     mkdir -p ${GOPATH}/src/${NOTARYPKG};     git clone -b ${TAG} --depth 1 https://${NOTARYPKG} ${GOPATH}/src/${NOTARYPKG};     make -C ${GOPATH}/src/${NOTARYPKG} PREFIX=. ./bin/static/notary-signer;     cp -vL ${GOPATH}/src/${NOTARYPKG}/bin/static/notary-signer ./;     apk del --no-network build-deps;     rm -rf ${GOPATH}
# Thu, 20 Dec 2018 09:30:07 GMT
COPY file:180643db1fd4154262e619c42c1255057d49a4c6cd56be3f475942fd0a35a236 in . 
# Thu, 20 Dec 2018 09:30:08 GMT
COPY file:849eab43398bc401ed08e75cbad3ea52969452506337a4135a0ef8144dff93ad in . 
# Thu, 20 Dec 2018 09:30:12 GMT
RUN adduser -D -H -g "" notary
# Thu, 20 Dec 2018 09:30:13 GMT
USER notary
# Thu, 20 Dec 2018 09:30:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Thu, 20 Dec 2018 09:30:17 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 09:30:21 GMT
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
	-	`sha256:3402edebc77840a1ef4c4a8415a469568d67d5525e2533f46c59e33ed2b8f4a7`  
		Last Modified: Thu, 20 Dec 2018 09:30:51 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8a947f720767e06104d8609a48445ec752af6cd5a31ac4e8a7e2b9cdfa852c`  
		Last Modified: Thu, 20 Dec 2018 09:30:53 GMT  
		Size: 4.4 MB (4381857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5398ec553d2fbad707e423b7c09fc0e9c5462f0e23ac5be1f8a59d8418f3fd6`  
		Last Modified: Thu, 20 Dec 2018 09:30:51 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c32d3f87e628004a8d5199f7ce3f988329c2b59d711386eae2552debf48117c`  
		Last Modified: Thu, 20 Dec 2018 09:30:51 GMT  
		Size: 381.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc8bbfdb9048b826636294ef8e00d016abd659e623322938c87156ec27b908e`  
		Last Modified: Thu, 20 Dec 2018 09:30:51 GMT  
		Size: 1.2 KB (1190 bytes)  
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
