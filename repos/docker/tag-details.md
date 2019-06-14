<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:18`](#docker18)
-	[`docker:18.09`](#docker1809)
-	[`docker:18.09.6`](#docker18096)
-	[`docker:18.09.6-dind`](#docker18096-dind)
-	[`docker:18.09.6-git`](#docker18096-git)
-	[`docker:18.09-dind`](#docker1809-dind)
-	[`docker:18.09-git`](#docker1809-git)
-	[`docker:18-dind`](#docker18-dind)
-	[`docker:18-git`](#docker18-git)
-	[`docker:19.03.0-rc2`](#docker19030-rc2)
-	[`docker:19.03.0-rc2-dind`](#docker19030-rc2-dind)
-	[`docker:19.03.0-rc2-git`](#docker19030-rc2-git)
-	[`docker:19.03-rc`](#docker1903-rc)
-	[`docker:19.03-rc-dind`](#docker1903-rc-dind)
-	[`docker:19.03-rc-git`](#docker1903-rc-git)
-	[`docker:dind`](#dockerdind)
-	[`docker:git`](#dockergit)
-	[`docker:latest`](#dockerlatest)
-	[`docker:rc`](#dockerrc)
-	[`docker:rc-dind`](#dockerrc-dind)
-	[`docker:rc-git`](#dockerrc-git)
-	[`docker:stable`](#dockerstable)
-	[`docker:stable-dind`](#dockerstable-dind)
-	[`docker:stable-git`](#dockerstable-git)
-	[`docker:test`](#dockertest)
-	[`docker:test-dind`](#dockertest-dind)
-	[`docker:test-git`](#dockertest-git)

## `docker:18`

```console
$ docker pull docker@sha256:16a1f4b3e64c5a8e1ac80987bc2b8907dbc1c79c1b13be0781f4d24a2072e698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18` - linux; amd64

```console
$ docker pull docker@sha256:9fc0c3ff7b83704b0f1d3a73ac7217c1ded7995225d6c9436966f9996f597a3e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51590184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af42f41a7d73a4a181843011f62cbdefa6d0f546bc7b50f71163750e0475a928`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm variant v6

```console
$ docker pull docker@sha256:652970ef6e7179d13bf0e80feaa454eb474fd2421b98fa8ff9f25822166d0919
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48573763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ea58c2b13e96a959f694e71979e0ffde6729d7f180660e96bfe47f37805a8f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9158b0c8a79443cb51789b1be128bb39dea3afdc0d4914099195ec462adbfaa4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:095bbf2e04cbdadf52d49d42a557b69072f2d721a61dbd6b6794670b93700651`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; ppc64le

```console
$ docker pull docker@sha256:18d3c182508d401451fe7a0c538dff3686360456b233675b4ddb2371aa9d1608
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43303623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10903a7995b02bb2bb17f3be3423e93bd2ff6a70618d0d42cfed01639a17ec9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
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
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18` - linux; s390x

```console
$ docker pull docker@sha256:c5468d30d00c21f2ca65cd017d0e18ff6798e3a27f46cf87b2e48ca517db31a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46596849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60a02f562e4e1def44341de661e4dc6bad47361ccf04300bc55c717afb782b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 11:42:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 11:42:41 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 11:42:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 11:42:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 11:42:49 GMT
CMD ["sh"]
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
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a73b4926fc6d26cebfb269a87c138a8e0c29b95a752850242925cc735c51004`  
		Last Modified: Sat, 06 Oct 2018 11:44:24 GMT  
		Size: 44.0 MB (43978078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4642236ab255803933428a29257664fa179a9d6da1fa6bdbd4114c509e395d08`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a332eed975fffe98d153e6f6cc3c2f36776f5aa038500c47472fb054ade82502`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09`

```console
$ docker pull docker@sha256:bf929409251faa1d1fcf63af68d02bb942054cfbe14e6ad9dca0dc4a01cbffad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09` - linux; amd64

```console
$ docker pull docker@sha256:9fc0c3ff7b83704b0f1d3a73ac7217c1ded7995225d6c9436966f9996f597a3e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51590184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af42f41a7d73a4a181843011f62cbdefa6d0f546bc7b50f71163750e0475a928`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm variant v6

```console
$ docker pull docker@sha256:652970ef6e7179d13bf0e80feaa454eb474fd2421b98fa8ff9f25822166d0919
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48573763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ea58c2b13e96a959f694e71979e0ffde6729d7f180660e96bfe47f37805a8f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9158b0c8a79443cb51789b1be128bb39dea3afdc0d4914099195ec462adbfaa4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:095bbf2e04cbdadf52d49d42a557b69072f2d721a61dbd6b6794670b93700651`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.6`

```console
$ docker pull docker@sha256:bf929409251faa1d1fcf63af68d02bb942054cfbe14e6ad9dca0dc4a01cbffad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.6` - linux; amd64

```console
$ docker pull docker@sha256:9fc0c3ff7b83704b0f1d3a73ac7217c1ded7995225d6c9436966f9996f597a3e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51590184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af42f41a7d73a4a181843011f62cbdefa6d0f546bc7b50f71163750e0475a928`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6` - linux; arm variant v6

```console
$ docker pull docker@sha256:652970ef6e7179d13bf0e80feaa454eb474fd2421b98fa8ff9f25822166d0919
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48573763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ea58c2b13e96a959f694e71979e0ffde6729d7f180660e96bfe47f37805a8f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9158b0c8a79443cb51789b1be128bb39dea3afdc0d4914099195ec462adbfaa4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:095bbf2e04cbdadf52d49d42a557b69072f2d721a61dbd6b6794670b93700651`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.6-dind`

```console
$ docker pull docker@sha256:323f789b9bea83331e79760593736a1b0102572393c50220f4f2256bd37d20b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.6-dind` - linux; amd64

```console
$ docker pull docker@sha256:bc9ff78c82061c0e3e3b559c9e735a8d9818d11ef1e0726bff5f2438c07c32d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56362577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed64de70fa1f4d0b5a498791647c45d954cb0306ec2852dbcfb956f4ff3b0d6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
# Sat, 11 May 2019 00:24:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 11 May 2019 00:24:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 11 May 2019 00:24:04 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 11 May 2019 00:24:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 11 May 2019 00:24:06 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Sat, 11 May 2019 00:24:06 GMT
VOLUME [/var/lib/docker]
# Sat, 11 May 2019 00:24:06 GMT
EXPOSE 2375
# Sat, 11 May 2019 00:24:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 11 May 2019 00:24:07 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8a5ec7012a3b2bf944b717814d118063780acf75b66f8081390edca80d080d`  
		Last Modified: Sat, 11 May 2019 00:25:44 GMT  
		Size: 4.8 MB (4769763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6adc20046ac5a250a46b6c45b73fb3e753e89cc92099690122e3df2758483135`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a1f54aa48c1844faea794fdf88fc976ddcfd514b37180d35cb78ad2616445f`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717a4f34e5411b8a1c37925b33346dca952da85b66e8fb8288b0d5384d268de6`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:ac7c275633665d6448fe91f477b442ff49d6e198645f9bab23423a5a66b68b5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51341376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe114b5c31f46b407a7f262d8437207c91b086e370ed30ae9c784a5f93676e4a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
# Sat, 11 May 2019 09:21:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 11 May 2019 09:21:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 11 May 2019 09:21:32 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 11 May 2019 09:21:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 11 May 2019 09:21:34 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:34 GMT
VOLUME [/var/lib/docker]
# Sat, 11 May 2019 09:21:35 GMT
EXPOSE 2375
# Sat, 11 May 2019 09:21:35 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 11 May 2019 09:21:36 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194bd02b83951fd71ca7e5fbf05cd6c8911b7febe1a2ea23720551a990691649`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 2.8 MB (2764950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02424aa47a9e0072f4692df2f6ed36cd47bc67016f48788ee501282f725b59b0`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dde8706b7c4922e3a6dd1a9a1ef171f7be6411833450d0c8099fceffc385624`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67483a1fd3dfbe072b256f6e83e3f605134c8f8ec7c707ab14a238251c1f12ba`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3d7693df7f211ad6573e9ac25ec52372e26d67d45b9d4acfc7ab72ec0e101b30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90242934f9a14d8e529451d8d3f7e78b978c6cdb8137af6f6b72f35833ad9496`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
# Thu, 16 May 2019 00:40:33 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 16 May 2019 00:40:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 16 May 2019 00:40:36 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 16 May 2019 00:40:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 16 May 2019 00:40:37 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:38 GMT
VOLUME [/var/lib/docker]
# Thu, 16 May 2019 00:40:38 GMT
EXPOSE 2375
# Thu, 16 May 2019 00:40:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 16 May 2019 00:40:39 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400d563cdbfee49508d9008ac19176167a9a9127ef2e98c6abba2e5dc9508b22`  
		Last Modified: Thu, 16 May 2019 00:43:11 GMT  
		Size: 4.8 MB (4810131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8f14db4228758b5975e428a3c9bb7ff579e7c5bfd592463b61150d0b53ed9e`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e364534abd15a4f63bee653e47390c030f3d212e9f3e890048e0634ae0fed3c4`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9732b8f4824f68c9db0037fedc34dfa098fb85d7cf49070c6cfc08b66c9ea4`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09.6-git`

```console
$ docker pull docker@sha256:172a88c39d7d2b7129e7bde639781c6886a00b971f4515272bb4db516f253b19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09.6-git` - linux; amd64

```console
$ docker pull docker@sha256:570a559103eecbf55fb518faa66d8eedc267773160feae6330a14f7da0e1ddfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60862017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02cac6ab7b2970f791cc69782695600f8759f14bd440be68fc371977be18b502`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
# Sat, 11 May 2019 00:24:12 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7277243def7adc8ba0b75147831088472188be331ff1f077ee77e61187f86ecd`  
		Last Modified: Sat, 11 May 2019 00:25:53 GMT  
		Size: 9.3 MB (9271833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:2d55f7345ca12f5609093d202177cad57d75f2774793f01086dce3b07756a26e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57342831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38390e2ad90b0414f68ae55e3d8b3f55ac7201e8b1a7e3adf905848102527cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
# Sat, 11 May 2019 09:21:43 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032862d576071b64b84c9d68b899559461e227216d242ef1ccd1546866b44d8f`  
		Last Modified: Sat, 11 May 2019 09:24:08 GMT  
		Size: 8.8 MB (8769068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09.6-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:dfc332727046a2f51e5b7c3b0d73159a712b9d65adf575a1b09de9b77d5051ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56172469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfce92f338ef40726b0f304138784a9b157c5c5e5b054e17e8e6f86500abb71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
# Thu, 16 May 2019 00:40:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a804ff36976bdc435914d0e6af5fb783bde97d169e1fc55ed38a884cfa628c`  
		Last Modified: Thu, 16 May 2019 00:43:24 GMT  
		Size: 9.5 MB (9520594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-dind`

```console
$ docker pull docker@sha256:323f789b9bea83331e79760593736a1b0102572393c50220f4f2256bd37d20b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-dind` - linux; amd64

```console
$ docker pull docker@sha256:bc9ff78c82061c0e3e3b559c9e735a8d9818d11ef1e0726bff5f2438c07c32d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56362577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed64de70fa1f4d0b5a498791647c45d954cb0306ec2852dbcfb956f4ff3b0d6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
# Sat, 11 May 2019 00:24:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 11 May 2019 00:24:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 11 May 2019 00:24:04 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 11 May 2019 00:24:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 11 May 2019 00:24:06 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Sat, 11 May 2019 00:24:06 GMT
VOLUME [/var/lib/docker]
# Sat, 11 May 2019 00:24:06 GMT
EXPOSE 2375
# Sat, 11 May 2019 00:24:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 11 May 2019 00:24:07 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8a5ec7012a3b2bf944b717814d118063780acf75b66f8081390edca80d080d`  
		Last Modified: Sat, 11 May 2019 00:25:44 GMT  
		Size: 4.8 MB (4769763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6adc20046ac5a250a46b6c45b73fb3e753e89cc92099690122e3df2758483135`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a1f54aa48c1844faea794fdf88fc976ddcfd514b37180d35cb78ad2616445f`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717a4f34e5411b8a1c37925b33346dca952da85b66e8fb8288b0d5384d268de6`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:ac7c275633665d6448fe91f477b442ff49d6e198645f9bab23423a5a66b68b5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51341376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe114b5c31f46b407a7f262d8437207c91b086e370ed30ae9c784a5f93676e4a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
# Sat, 11 May 2019 09:21:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 11 May 2019 09:21:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 11 May 2019 09:21:32 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 11 May 2019 09:21:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 11 May 2019 09:21:34 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:34 GMT
VOLUME [/var/lib/docker]
# Sat, 11 May 2019 09:21:35 GMT
EXPOSE 2375
# Sat, 11 May 2019 09:21:35 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 11 May 2019 09:21:36 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194bd02b83951fd71ca7e5fbf05cd6c8911b7febe1a2ea23720551a990691649`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 2.8 MB (2764950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02424aa47a9e0072f4692df2f6ed36cd47bc67016f48788ee501282f725b59b0`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dde8706b7c4922e3a6dd1a9a1ef171f7be6411833450d0c8099fceffc385624`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67483a1fd3dfbe072b256f6e83e3f605134c8f8ec7c707ab14a238251c1f12ba`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3d7693df7f211ad6573e9ac25ec52372e26d67d45b9d4acfc7ab72ec0e101b30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90242934f9a14d8e529451d8d3f7e78b978c6cdb8137af6f6b72f35833ad9496`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
# Thu, 16 May 2019 00:40:33 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 16 May 2019 00:40:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 16 May 2019 00:40:36 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 16 May 2019 00:40:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 16 May 2019 00:40:37 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:38 GMT
VOLUME [/var/lib/docker]
# Thu, 16 May 2019 00:40:38 GMT
EXPOSE 2375
# Thu, 16 May 2019 00:40:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 16 May 2019 00:40:39 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400d563cdbfee49508d9008ac19176167a9a9127ef2e98c6abba2e5dc9508b22`  
		Last Modified: Thu, 16 May 2019 00:43:11 GMT  
		Size: 4.8 MB (4810131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8f14db4228758b5975e428a3c9bb7ff579e7c5bfd592463b61150d0b53ed9e`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e364534abd15a4f63bee653e47390c030f3d212e9f3e890048e0634ae0fed3c4`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9732b8f4824f68c9db0037fedc34dfa098fb85d7cf49070c6cfc08b66c9ea4`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18.09-git`

```console
$ docker pull docker@sha256:172a88c39d7d2b7129e7bde639781c6886a00b971f4515272bb4db516f253b19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18.09-git` - linux; amd64

```console
$ docker pull docker@sha256:570a559103eecbf55fb518faa66d8eedc267773160feae6330a14f7da0e1ddfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60862017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02cac6ab7b2970f791cc69782695600f8759f14bd440be68fc371977be18b502`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
# Sat, 11 May 2019 00:24:12 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7277243def7adc8ba0b75147831088472188be331ff1f077ee77e61187f86ecd`  
		Last Modified: Sat, 11 May 2019 00:25:53 GMT  
		Size: 9.3 MB (9271833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:2d55f7345ca12f5609093d202177cad57d75f2774793f01086dce3b07756a26e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57342831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38390e2ad90b0414f68ae55e3d8b3f55ac7201e8b1a7e3adf905848102527cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
# Sat, 11 May 2019 09:21:43 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032862d576071b64b84c9d68b899559461e227216d242ef1ccd1546866b44d8f`  
		Last Modified: Sat, 11 May 2019 09:24:08 GMT  
		Size: 8.8 MB (8769068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18.09-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:dfc332727046a2f51e5b7c3b0d73159a712b9d65adf575a1b09de9b77d5051ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56172469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfce92f338ef40726b0f304138784a9b157c5c5e5b054e17e8e6f86500abb71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
# Thu, 16 May 2019 00:40:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a804ff36976bdc435914d0e6af5fb783bde97d169e1fc55ed38a884cfa628c`  
		Last Modified: Thu, 16 May 2019 00:43:24 GMT  
		Size: 9.5 MB (9520594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-dind`

```console
$ docker pull docker@sha256:9685e9d5e5e5cd0b408c465184befbc435d1b973222725a2fbedef4f0e685e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18-dind` - linux; amd64

```console
$ docker pull docker@sha256:bc9ff78c82061c0e3e3b559c9e735a8d9818d11ef1e0726bff5f2438c07c32d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56362577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed64de70fa1f4d0b5a498791647c45d954cb0306ec2852dbcfb956f4ff3b0d6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
# Sat, 11 May 2019 00:24:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 11 May 2019 00:24:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 11 May 2019 00:24:04 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 11 May 2019 00:24:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 11 May 2019 00:24:06 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Sat, 11 May 2019 00:24:06 GMT
VOLUME [/var/lib/docker]
# Sat, 11 May 2019 00:24:06 GMT
EXPOSE 2375
# Sat, 11 May 2019 00:24:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 11 May 2019 00:24:07 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8a5ec7012a3b2bf944b717814d118063780acf75b66f8081390edca80d080d`  
		Last Modified: Sat, 11 May 2019 00:25:44 GMT  
		Size: 4.8 MB (4769763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6adc20046ac5a250a46b6c45b73fb3e753e89cc92099690122e3df2758483135`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a1f54aa48c1844faea794fdf88fc976ddcfd514b37180d35cb78ad2616445f`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717a4f34e5411b8a1c37925b33346dca952da85b66e8fb8288b0d5384d268de6`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:ac7c275633665d6448fe91f477b442ff49d6e198645f9bab23423a5a66b68b5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51341376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe114b5c31f46b407a7f262d8437207c91b086e370ed30ae9c784a5f93676e4a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
# Sat, 11 May 2019 09:21:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 11 May 2019 09:21:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 11 May 2019 09:21:32 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 11 May 2019 09:21:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 11 May 2019 09:21:34 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:34 GMT
VOLUME [/var/lib/docker]
# Sat, 11 May 2019 09:21:35 GMT
EXPOSE 2375
# Sat, 11 May 2019 09:21:35 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 11 May 2019 09:21:36 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194bd02b83951fd71ca7e5fbf05cd6c8911b7febe1a2ea23720551a990691649`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 2.8 MB (2764950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02424aa47a9e0072f4692df2f6ed36cd47bc67016f48788ee501282f725b59b0`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dde8706b7c4922e3a6dd1a9a1ef171f7be6411833450d0c8099fceffc385624`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67483a1fd3dfbe072b256f6e83e3f605134c8f8ec7c707ab14a238251c1f12ba`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3d7693df7f211ad6573e9ac25ec52372e26d67d45b9d4acfc7ab72ec0e101b30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90242934f9a14d8e529451d8d3f7e78b978c6cdb8137af6f6b72f35833ad9496`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
# Thu, 16 May 2019 00:40:33 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 16 May 2019 00:40:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 16 May 2019 00:40:36 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 16 May 2019 00:40:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 16 May 2019 00:40:37 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:38 GMT
VOLUME [/var/lib/docker]
# Thu, 16 May 2019 00:40:38 GMT
EXPOSE 2375
# Thu, 16 May 2019 00:40:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 16 May 2019 00:40:39 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400d563cdbfee49508d9008ac19176167a9a9127ef2e98c6abba2e5dc9508b22`  
		Last Modified: Thu, 16 May 2019 00:43:11 GMT  
		Size: 4.8 MB (4810131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8f14db4228758b5975e428a3c9bb7ff579e7c5bfd592463b61150d0b53ed9e`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e364534abd15a4f63bee653e47390c030f3d212e9f3e890048e0634ae0fed3c4`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9732b8f4824f68c9db0037fedc34dfa098fb85d7cf49070c6cfc08b66c9ea4`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a8d8d76930eca14cfde6167631a999a6a6137727f507e7562e42a3bf2545a6e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47937563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99fdac1de9639603896f83710cb986d83784d077261f8817d6941e355eb40e91`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:19:28 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 08:19:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 08:19:32 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 08:19:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 08:19:41 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:44 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 08:19:45 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 08:19:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:48 GMT
CMD []
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
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38711b01f42666555d2b50287a0ef2c503e3f3a104370449ccd72917f09f9817`  
		Last Modified: Sat, 06 Oct 2018 08:22:30 GMT  
		Size: 4.6 MB (4631271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c6ed450c4ab6fe89b0da0d54db90b35b05b5e6a103eac4f250af8f3f68e96`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6854236cfa68b41fe6cd6dbccf06c008d70128ea2821f97f2a05b630f8c53`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626e29f784527ad502c87166fc6d353ac21667139e77e0bd78a69264d2622eff`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; s390x

```console
$ docker pull docker@sha256:19db3bc2f05915784cb1c43eed7a43f6ce5e79c569def2972fb43928829ee63c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51412853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c7aa6197da311d1c9d3ea8b029e72ec53fc3d4e55fb07bcd24a82da73186f6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 11:42:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 11:42:41 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 11:42:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 11:42:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 11:42:49 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 11:43:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 11:43:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 11:43:11 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 11:43:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 11:43:13 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 11:43:13 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 11:43:14 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 11:43:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 11:43:15 GMT
CMD []
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
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a73b4926fc6d26cebfb269a87c138a8e0c29b95a752850242925cc735c51004`  
		Last Modified: Sat, 06 Oct 2018 11:44:24 GMT  
		Size: 44.0 MB (43978078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4642236ab255803933428a29257664fa179a9d6da1fa6bdbd4114c509e395d08`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a332eed975fffe98d153e6f6cc3c2f36776f5aa038500c47472fb054ade82502`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cacf271f8ce57cc633c6ee72bffe8d13935290e7eeaae719127853bd15fb4f`  
		Last Modified: Sat, 06 Oct 2018 11:45:51 GMT  
		Size: 4.8 MB (4813357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687766b6c54a848c9dc65b73e21bed7fe7a368b0c076c921e307a3d5fa093056`  
		Last Modified: Sat, 06 Oct 2018 11:45:50 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500b7f916ebf8618635bacb8ccf6ebed849c4455cd516382e8aab4d37c049c80`  
		Last Modified: Sat, 06 Oct 2018 11:45:50 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af9796e82f57c3dcbc517323e4842fb3e026dac515ec842cf747687d88b59e6`  
		Last Modified: Sat, 06 Oct 2018 11:45:50 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:18-git`

```console
$ docker pull docker@sha256:c0559c104a43489f949e9d779d90bc94b814a47a8c0c7c80a2ad140f498fb5c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:18-git` - linux; amd64

```console
$ docker pull docker@sha256:570a559103eecbf55fb518faa66d8eedc267773160feae6330a14f7da0e1ddfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60862017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02cac6ab7b2970f791cc69782695600f8759f14bd440be68fc371977be18b502`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
# Sat, 11 May 2019 00:24:12 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7277243def7adc8ba0b75147831088472188be331ff1f077ee77e61187f86ecd`  
		Last Modified: Sat, 11 May 2019 00:25:53 GMT  
		Size: 9.3 MB (9271833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:2d55f7345ca12f5609093d202177cad57d75f2774793f01086dce3b07756a26e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57342831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38390e2ad90b0414f68ae55e3d8b3f55ac7201e8b1a7e3adf905848102527cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
# Sat, 11 May 2019 09:21:43 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032862d576071b64b84c9d68b899559461e227216d242ef1ccd1546866b44d8f`  
		Last Modified: Sat, 11 May 2019 09:24:08 GMT  
		Size: 8.8 MB (8769068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:dfc332727046a2f51e5b7c3b0d73159a712b9d65adf575a1b09de9b77d5051ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56172469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfce92f338ef40726b0f304138784a9b157c5c5e5b054e17e8e6f86500abb71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
# Thu, 16 May 2019 00:40:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a804ff36976bdc435914d0e6af5fb783bde97d169e1fc55ed38a884cfa628c`  
		Last Modified: Thu, 16 May 2019 00:43:24 GMT  
		Size: 9.5 MB (9520594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; ppc64le

```console
$ docker pull docker@sha256:7a420ec2c811af08e8b6f0dba2236079d1b1666b499eb07613ec6696069a220b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51703404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5784bcca7b1a1d9069037ca7baaeedf6050f44c81b3a52cf0884358d68f601c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:20:07 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1af98daa9c4b8629b4939bce74aa85d7efe7d54d45323818aa3139bd00fbb2f`  
		Last Modified: Sat, 06 Oct 2018 08:24:28 GMT  
		Size: 8.4 MB (8399781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-git` - linux; s390x

```console
$ docker pull docker@sha256:206d18012aa4407344531aa0130ec623f6eef97972858bbe491b82a1ec71e3aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55463343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6352c9f221876b482de603e73a800598b581993cfda4c3511f32fbc3fb491841`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 11:42:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 11:42:41 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 11:42:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 11:42:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 11:42:49 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 11:43:32 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a73b4926fc6d26cebfb269a87c138a8e0c29b95a752850242925cc735c51004`  
		Last Modified: Sat, 06 Oct 2018 11:44:24 GMT  
		Size: 44.0 MB (43978078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4642236ab255803933428a29257664fa179a9d6da1fa6bdbd4114c509e395d08`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a332eed975fffe98d153e6f6cc3c2f36776f5aa038500c47472fb054ade82502`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7418ff7648f12e328a33c87dcdd7a0f197fcee6125bba462f9054c6d7b46080d`  
		Last Modified: Sat, 06 Oct 2018 11:47:14 GMT  
		Size: 8.9 MB (8866494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03.0-rc2`

```console
$ docker pull docker@sha256:886246e2d0de5ae0569a08bc83d7a569ec590b5082c75229154e5ce2b70c5e1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:19.03.0-rc2` - linux; amd64

```console
$ docker pull docker@sha256:f612fe1ecea825312236594787ce22740e2253837e554b0012088ab6425ff354
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66857122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fc309660820c5d51f44925c02170444ecfe49f134c6bf4977415646ac8ae48`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 23:24:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:44 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f677b8c84c9a0a741a823821f5b085b629f976727d1169337edf8019c22298`  
		Last Modified: Wed, 05 Jun 2019 23:25:45 GMT  
		Size: 63.8 MB (63796753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f33576e5f316475fb328d297337c8878d177dac78fa8f9a5fbe119c81d1887`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028839d7ee9eca4f1dc9377e5f2f9096161287fb8fe67817d5c64f7f0630a00`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2` - linux; arm variant v6

```console
$ docker pull docker@sha256:cce73a2dea4b19e3313f46e86fa0fafc62b2b3d618d9cf8348b47fa09da912c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62364289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b794f00193287ca92042deace144607c201ec4c59f615cec44586af1bc2423`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:49:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:49:36 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:49:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dde7f7f8a2733af0a508930ce56bfe488f7db8783883e88b8d80a5f307a5b81`  
		Last Modified: Wed, 05 Jun 2019 22:51:10 GMT  
		Size: 59.5 MB (59517309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187485db6ccb7ddc229deee75f68e0aa58fbc68b8ae6f2e160c87b01b9c4ca8d`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af01c3e87143eee98d3ee5e89033e4576a42dcabf3f5e40d4ec7222c74e1e16f`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:52930857d2f290e9e002c329dc82db0f26ca59dd00a62cf589ad57f67e1be211
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60002677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ef4ace095d43210f3fa25f1b898d0c6c63dfbe554963307c0ab3bc018ef879`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:39:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8386b7de89c6bda210de4ca0fb7d73c8d2bd3c54517607e73f3f7ada70c0738`  
		Last Modified: Wed, 05 Jun 2019 22:41:04 GMT  
		Size: 57.0 MB (57010049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2033366f50a4f2437b553bfa7917f4b68ec7dd017d4663b43929cbfae0aa8619`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a680ee63b181161ae56429b749d91618a026a5dbc486cc975579c436196c5cf0`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03.0-rc2-dind`

```console
$ docker pull docker@sha256:4211793931e7687ddba871f71c934f744ca5da3d53d4841b0e942577a371daa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:19.03.0-rc2-dind` - linux; amd64

```console
$ docker pull docker@sha256:806c57f522b26d0b9af1872129feee77802b3cc796a5dcebb44bc0d74642c500
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71629531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf399ade5b224e8e1a2c847cf1f7a257ffab0f277f8485fc6cabebeed065a4c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 23:24:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:44 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 23:24:49 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 05 Jun 2019 23:24:49 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Jun 2019 23:24:50 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 05 Jun 2019 23:24:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 05 Jun 2019 23:24:51 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:51 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Jun 2019 23:24:51 GMT
EXPOSE 2375
# Wed, 05 Jun 2019 23:24:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:51 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f677b8c84c9a0a741a823821f5b085b629f976727d1169337edf8019c22298`  
		Last Modified: Wed, 05 Jun 2019 23:25:45 GMT  
		Size: 63.8 MB (63796753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f33576e5f316475fb328d297337c8878d177dac78fa8f9a5fbe119c81d1887`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028839d7ee9eca4f1dc9377e5f2f9096161287fb8fe67817d5c64f7f0630a00`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbdf8fac6e7cbd2a3ed5b2d68c6a4867957a63e12faa9993e971223b8dd7205`  
		Last Modified: Wed, 05 Jun 2019 23:25:53 GMT  
		Size: 4.8 MB (4769763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f2c3758d8ae4ac7cd6977bdd8b671f2fb340e0e6d4765c3a99dcc44b0763aa`  
		Last Modified: Wed, 05 Jun 2019 23:25:52 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b6e42e1ec140405296301dbb181763f1b03189a06246c9b1b51d7f723f1ff0`  
		Last Modified: Wed, 05 Jun 2019 23:25:52 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a08e4e8e3ef9a244f599fbe0ca4d0ed3b7b3486e3ce2d64388eadc32603eb1`  
		Last Modified: Wed, 05 Jun 2019 23:25:52 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:42e92e0c6d6602fc13733576ad1791c3a30bfe38ce69ed3aa2665297607c3a36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65131866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558f9e9f9548103f11a37315c911bf7267620739292aba980adb225c9b862250`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:49:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:49:36 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:49:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:49:45 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 05 Jun 2019 22:49:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Jun 2019 22:49:47 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 05 Jun 2019 22:49:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 05 Jun 2019 22:49:50 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:50 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Jun 2019 22:49:51 GMT
EXPOSE 2375
# Wed, 05 Jun 2019 22:49:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:52 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dde7f7f8a2733af0a508930ce56bfe488f7db8783883e88b8d80a5f307a5b81`  
		Last Modified: Wed, 05 Jun 2019 22:51:10 GMT  
		Size: 59.5 MB (59517309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187485db6ccb7ddc229deee75f68e0aa58fbc68b8ae6f2e160c87b01b9c4ca8d`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af01c3e87143eee98d3ee5e89033e4576a42dcabf3f5e40d4ec7222c74e1e16f`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fefd8622e68a2c92e15b739b02a9389b0b521a297c64c988b2f5d0d26705a6`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 2.8 MB (2764909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f0c44077fb7ff2f597f7b485d884ae312ab9f8b5ce5e18a51845cc857b8c0ab`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698490992c17c9c5e18784bf8dd52ab4e5734c11ad4d17a429d12c7f060bdbd0`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4156985baf99de21517beac1b5657306b42ac5a96a3dc42f59e64967a91000c`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:374b42b9e4b4b9d53c977e00e0cde4d525d263c6b5ae8e119238d125c29f65e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64815460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e59b1316b4f553a58bdd945f4f9efcb54c91bcd032f3a1e6996dfec2e67dffb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:39:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:39 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:39:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 05 Jun 2019 22:39:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Jun 2019 22:39:48 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 05 Jun 2019 22:39:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 05 Jun 2019 22:39:50 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:50 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Jun 2019 22:39:50 GMT
EXPOSE 2375
# Wed, 05 Jun 2019 22:39:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:51 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8386b7de89c6bda210de4ca0fb7d73c8d2bd3c54517607e73f3f7ada70c0738`  
		Last Modified: Wed, 05 Jun 2019 22:41:04 GMT  
		Size: 57.0 MB (57010049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2033366f50a4f2437b553bfa7917f4b68ec7dd017d4663b43929cbfae0aa8619`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a680ee63b181161ae56429b749d91618a026a5dbc486cc975579c436196c5cf0`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b64ac65dbc5b66b491f8c8d994c287f3ac5907a1edbca27b39da6ccbc226243`  
		Last Modified: Wed, 05 Jun 2019 22:41:15 GMT  
		Size: 4.8 MB (4810116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bcc187c066b64e1ec6c1e5f900bb20a7e052e0f0c58bdc82e9bed1981f1ac81`  
		Last Modified: Wed, 05 Jun 2019 22:41:13 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b1ca97567cd7e85cca4bc2098d227d1365f32bd628897bd92613a5df2b5396`  
		Last Modified: Wed, 05 Jun 2019 22:41:13 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc89386154f3a68acb89d38b4ac3caf56682bc4f9d49fd85b8f3afafd4c9d04`  
		Last Modified: Wed, 05 Jun 2019 22:41:13 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03.0-rc2-git`

```console
$ docker pull docker@sha256:9df199b11067d56519227d15585f934035edfcc8a8da6dbcfdb6c84cc19a4675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:19.03.0-rc2-git` - linux; amd64

```console
$ docker pull docker@sha256:00f8749eb6ef0b2036d5dfb71ecf274b90dabbcb78e1fc67ad4e50de8aafa17d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76129131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb6aa9b2e98a1e9eac3703b00d8e235d95128bf7e603a0674c504ecd6505ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 23:24:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:44 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 23:24:56 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f677b8c84c9a0a741a823821f5b085b629f976727d1169337edf8019c22298`  
		Last Modified: Wed, 05 Jun 2019 23:25:45 GMT  
		Size: 63.8 MB (63796753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f33576e5f316475fb328d297337c8878d177dac78fa8f9a5fbe119c81d1887`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028839d7ee9eca4f1dc9377e5f2f9096161287fb8fe67817d5c64f7f0630a00`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab3170d9c1898a41cc8187ce01f2e06c63883cd8ce0a082f769a22269227e46`  
		Last Modified: Wed, 05 Jun 2019 23:26:00 GMT  
		Size: 9.3 MB (9272009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:e8c43590e0d658426aadbb0fcdac026ee2fc0a94fa72455da2412cbfeed12e69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71133626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba334a263b11851445c2761c69a9f7afcb98881d8b28652de6b6b21fbb8eef4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:49:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:49:36 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:49:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:50:02 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dde7f7f8a2733af0a508930ce56bfe488f7db8783883e88b8d80a5f307a5b81`  
		Last Modified: Wed, 05 Jun 2019 22:51:10 GMT  
		Size: 59.5 MB (59517309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187485db6ccb7ddc229deee75f68e0aa58fbc68b8ae6f2e160c87b01b9c4ca8d`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af01c3e87143eee98d3ee5e89033e4576a42dcabf3f5e40d4ec7222c74e1e16f`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64cd354d722ed4df68ea91d16d1ec0a2d678d1a08a31ff1e14cdcf8ba5fbfb2`  
		Last Modified: Wed, 05 Jun 2019 22:51:40 GMT  
		Size: 8.8 MB (8769337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03.0-rc2-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d09e53f1a91178bbd9d1236e32bdfcb5f018cad10cf3b4dd5785017cbdccc8d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69523899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ddea04ccadc9f014af2c2a5b884529dc4074ab4d5082393f69ed5698568ec16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:39:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:39 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:39:59 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8386b7de89c6bda210de4ca0fb7d73c8d2bd3c54517607e73f3f7ada70c0738`  
		Last Modified: Wed, 05 Jun 2019 22:41:04 GMT  
		Size: 57.0 MB (57010049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2033366f50a4f2437b553bfa7917f4b68ec7dd017d4663b43929cbfae0aa8619`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a680ee63b181161ae56429b749d91618a026a5dbc486cc975579c436196c5cf0`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72374a233ec916d46b238a8e52bce4508637f4ea2a708ae5712a7b625330977`  
		Last Modified: Wed, 05 Jun 2019 22:41:25 GMT  
		Size: 9.5 MB (9521222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03-rc`

```console
$ docker pull docker@sha256:886246e2d0de5ae0569a08bc83d7a569ec590b5082c75229154e5ce2b70c5e1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:19.03-rc` - linux; amd64

```console
$ docker pull docker@sha256:f612fe1ecea825312236594787ce22740e2253837e554b0012088ab6425ff354
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66857122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fc309660820c5d51f44925c02170444ecfe49f134c6bf4977415646ac8ae48`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 23:24:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:44 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f677b8c84c9a0a741a823821f5b085b629f976727d1169337edf8019c22298`  
		Last Modified: Wed, 05 Jun 2019 23:25:45 GMT  
		Size: 63.8 MB (63796753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f33576e5f316475fb328d297337c8878d177dac78fa8f9a5fbe119c81d1887`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028839d7ee9eca4f1dc9377e5f2f9096161287fb8fe67817d5c64f7f0630a00`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc` - linux; arm variant v6

```console
$ docker pull docker@sha256:cce73a2dea4b19e3313f46e86fa0fafc62b2b3d618d9cf8348b47fa09da912c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62364289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b794f00193287ca92042deace144607c201ec4c59f615cec44586af1bc2423`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:49:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:49:36 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:49:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dde7f7f8a2733af0a508930ce56bfe488f7db8783883e88b8d80a5f307a5b81`  
		Last Modified: Wed, 05 Jun 2019 22:51:10 GMT  
		Size: 59.5 MB (59517309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187485db6ccb7ddc229deee75f68e0aa58fbc68b8ae6f2e160c87b01b9c4ca8d`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af01c3e87143eee98d3ee5e89033e4576a42dcabf3f5e40d4ec7222c74e1e16f`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:52930857d2f290e9e002c329dc82db0f26ca59dd00a62cf589ad57f67e1be211
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60002677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ef4ace095d43210f3fa25f1b898d0c6c63dfbe554963307c0ab3bc018ef879`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:39:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8386b7de89c6bda210de4ca0fb7d73c8d2bd3c54517607e73f3f7ada70c0738`  
		Last Modified: Wed, 05 Jun 2019 22:41:04 GMT  
		Size: 57.0 MB (57010049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2033366f50a4f2437b553bfa7917f4b68ec7dd017d4663b43929cbfae0aa8619`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a680ee63b181161ae56429b749d91618a026a5dbc486cc975579c436196c5cf0`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03-rc-dind`

```console
$ docker pull docker@sha256:4211793931e7687ddba871f71c934f744ca5da3d53d4841b0e942577a371daa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:19.03-rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:806c57f522b26d0b9af1872129feee77802b3cc796a5dcebb44bc0d74642c500
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71629531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf399ade5b224e8e1a2c847cf1f7a257ffab0f277f8485fc6cabebeed065a4c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 23:24:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:44 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 23:24:49 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 05 Jun 2019 23:24:49 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Jun 2019 23:24:50 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 05 Jun 2019 23:24:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 05 Jun 2019 23:24:51 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:51 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Jun 2019 23:24:51 GMT
EXPOSE 2375
# Wed, 05 Jun 2019 23:24:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:51 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f677b8c84c9a0a741a823821f5b085b629f976727d1169337edf8019c22298`  
		Last Modified: Wed, 05 Jun 2019 23:25:45 GMT  
		Size: 63.8 MB (63796753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f33576e5f316475fb328d297337c8878d177dac78fa8f9a5fbe119c81d1887`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028839d7ee9eca4f1dc9377e5f2f9096161287fb8fe67817d5c64f7f0630a00`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbdf8fac6e7cbd2a3ed5b2d68c6a4867957a63e12faa9993e971223b8dd7205`  
		Last Modified: Wed, 05 Jun 2019 23:25:53 GMT  
		Size: 4.8 MB (4769763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f2c3758d8ae4ac7cd6977bdd8b671f2fb340e0e6d4765c3a99dcc44b0763aa`  
		Last Modified: Wed, 05 Jun 2019 23:25:52 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b6e42e1ec140405296301dbb181763f1b03189a06246c9b1b51d7f723f1ff0`  
		Last Modified: Wed, 05 Jun 2019 23:25:52 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a08e4e8e3ef9a244f599fbe0ca4d0ed3b7b3486e3ce2d64388eadc32603eb1`  
		Last Modified: Wed, 05 Jun 2019 23:25:52 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:42e92e0c6d6602fc13733576ad1791c3a30bfe38ce69ed3aa2665297607c3a36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65131866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558f9e9f9548103f11a37315c911bf7267620739292aba980adb225c9b862250`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:49:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:49:36 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:49:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:49:45 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 05 Jun 2019 22:49:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Jun 2019 22:49:47 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 05 Jun 2019 22:49:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 05 Jun 2019 22:49:50 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:50 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Jun 2019 22:49:51 GMT
EXPOSE 2375
# Wed, 05 Jun 2019 22:49:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:52 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dde7f7f8a2733af0a508930ce56bfe488f7db8783883e88b8d80a5f307a5b81`  
		Last Modified: Wed, 05 Jun 2019 22:51:10 GMT  
		Size: 59.5 MB (59517309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187485db6ccb7ddc229deee75f68e0aa58fbc68b8ae6f2e160c87b01b9c4ca8d`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af01c3e87143eee98d3ee5e89033e4576a42dcabf3f5e40d4ec7222c74e1e16f`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fefd8622e68a2c92e15b739b02a9389b0b521a297c64c988b2f5d0d26705a6`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 2.8 MB (2764909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f0c44077fb7ff2f597f7b485d884ae312ab9f8b5ce5e18a51845cc857b8c0ab`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698490992c17c9c5e18784bf8dd52ab4e5734c11ad4d17a429d12c7f060bdbd0`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4156985baf99de21517beac1b5657306b42ac5a96a3dc42f59e64967a91000c`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:374b42b9e4b4b9d53c977e00e0cde4d525d263c6b5ae8e119238d125c29f65e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64815460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e59b1316b4f553a58bdd945f4f9efcb54c91bcd032f3a1e6996dfec2e67dffb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:39:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:39 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:39:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 05 Jun 2019 22:39:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Jun 2019 22:39:48 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 05 Jun 2019 22:39:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 05 Jun 2019 22:39:50 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:50 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Jun 2019 22:39:50 GMT
EXPOSE 2375
# Wed, 05 Jun 2019 22:39:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:51 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8386b7de89c6bda210de4ca0fb7d73c8d2bd3c54517607e73f3f7ada70c0738`  
		Last Modified: Wed, 05 Jun 2019 22:41:04 GMT  
		Size: 57.0 MB (57010049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2033366f50a4f2437b553bfa7917f4b68ec7dd017d4663b43929cbfae0aa8619`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a680ee63b181161ae56429b749d91618a026a5dbc486cc975579c436196c5cf0`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b64ac65dbc5b66b491f8c8d994c287f3ac5907a1edbca27b39da6ccbc226243`  
		Last Modified: Wed, 05 Jun 2019 22:41:15 GMT  
		Size: 4.8 MB (4810116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bcc187c066b64e1ec6c1e5f900bb20a7e052e0f0c58bdc82e9bed1981f1ac81`  
		Last Modified: Wed, 05 Jun 2019 22:41:13 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b1ca97567cd7e85cca4bc2098d227d1365f32bd628897bd92613a5df2b5396`  
		Last Modified: Wed, 05 Jun 2019 22:41:13 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc89386154f3a68acb89d38b4ac3caf56682bc4f9d49fd85b8f3afafd4c9d04`  
		Last Modified: Wed, 05 Jun 2019 22:41:13 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:19.03-rc-git`

```console
$ docker pull docker@sha256:9df199b11067d56519227d15585f934035edfcc8a8da6dbcfdb6c84cc19a4675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:19.03-rc-git` - linux; amd64

```console
$ docker pull docker@sha256:00f8749eb6ef0b2036d5dfb71ecf274b90dabbcb78e1fc67ad4e50de8aafa17d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76129131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb6aa9b2e98a1e9eac3703b00d8e235d95128bf7e603a0674c504ecd6505ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 23:24:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:44 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 23:24:56 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f677b8c84c9a0a741a823821f5b085b629f976727d1169337edf8019c22298`  
		Last Modified: Wed, 05 Jun 2019 23:25:45 GMT  
		Size: 63.8 MB (63796753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f33576e5f316475fb328d297337c8878d177dac78fa8f9a5fbe119c81d1887`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028839d7ee9eca4f1dc9377e5f2f9096161287fb8fe67817d5c64f7f0630a00`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab3170d9c1898a41cc8187ce01f2e06c63883cd8ce0a082f769a22269227e46`  
		Last Modified: Wed, 05 Jun 2019 23:26:00 GMT  
		Size: 9.3 MB (9272009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:e8c43590e0d658426aadbb0fcdac026ee2fc0a94fa72455da2412cbfeed12e69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71133626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba334a263b11851445c2761c69a9f7afcb98881d8b28652de6b6b21fbb8eef4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:49:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:49:36 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:49:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:50:02 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dde7f7f8a2733af0a508930ce56bfe488f7db8783883e88b8d80a5f307a5b81`  
		Last Modified: Wed, 05 Jun 2019 22:51:10 GMT  
		Size: 59.5 MB (59517309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187485db6ccb7ddc229deee75f68e0aa58fbc68b8ae6f2e160c87b01b9c4ca8d`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af01c3e87143eee98d3ee5e89033e4576a42dcabf3f5e40d4ec7222c74e1e16f`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64cd354d722ed4df68ea91d16d1ec0a2d678d1a08a31ff1e14cdcf8ba5fbfb2`  
		Last Modified: Wed, 05 Jun 2019 22:51:40 GMT  
		Size: 8.8 MB (8769337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:19.03-rc-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d09e53f1a91178bbd9d1236e32bdfcb5f018cad10cf3b4dd5785017cbdccc8d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69523899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ddea04ccadc9f014af2c2a5b884529dc4074ab4d5082393f69ed5698568ec16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:39:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:39 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:39:59 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8386b7de89c6bda210de4ca0fb7d73c8d2bd3c54517607e73f3f7ada70c0738`  
		Last Modified: Wed, 05 Jun 2019 22:41:04 GMT  
		Size: 57.0 MB (57010049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2033366f50a4f2437b553bfa7917f4b68ec7dd017d4663b43929cbfae0aa8619`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a680ee63b181161ae56429b749d91618a026a5dbc486cc975579c436196c5cf0`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72374a233ec916d46b238a8e52bce4508637f4ea2a708ae5712a7b625330977`  
		Last Modified: Wed, 05 Jun 2019 22:41:25 GMT  
		Size: 9.5 MB (9521222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:dind`

```console
$ docker pull docker@sha256:9685e9d5e5e5cd0b408c465184befbc435d1b973222725a2fbedef4f0e685e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:bc9ff78c82061c0e3e3b559c9e735a8d9818d11ef1e0726bff5f2438c07c32d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56362577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed64de70fa1f4d0b5a498791647c45d954cb0306ec2852dbcfb956f4ff3b0d6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
# Sat, 11 May 2019 00:24:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 11 May 2019 00:24:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 11 May 2019 00:24:04 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 11 May 2019 00:24:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 11 May 2019 00:24:06 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Sat, 11 May 2019 00:24:06 GMT
VOLUME [/var/lib/docker]
# Sat, 11 May 2019 00:24:06 GMT
EXPOSE 2375
# Sat, 11 May 2019 00:24:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 11 May 2019 00:24:07 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8a5ec7012a3b2bf944b717814d118063780acf75b66f8081390edca80d080d`  
		Last Modified: Sat, 11 May 2019 00:25:44 GMT  
		Size: 4.8 MB (4769763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6adc20046ac5a250a46b6c45b73fb3e753e89cc92099690122e3df2758483135`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a1f54aa48c1844faea794fdf88fc976ddcfd514b37180d35cb78ad2616445f`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717a4f34e5411b8a1c37925b33346dca952da85b66e8fb8288b0d5384d268de6`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:ac7c275633665d6448fe91f477b442ff49d6e198645f9bab23423a5a66b68b5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51341376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe114b5c31f46b407a7f262d8437207c91b086e370ed30ae9c784a5f93676e4a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
# Sat, 11 May 2019 09:21:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 11 May 2019 09:21:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 11 May 2019 09:21:32 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 11 May 2019 09:21:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 11 May 2019 09:21:34 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:34 GMT
VOLUME [/var/lib/docker]
# Sat, 11 May 2019 09:21:35 GMT
EXPOSE 2375
# Sat, 11 May 2019 09:21:35 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 11 May 2019 09:21:36 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194bd02b83951fd71ca7e5fbf05cd6c8911b7febe1a2ea23720551a990691649`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 2.8 MB (2764950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02424aa47a9e0072f4692df2f6ed36cd47bc67016f48788ee501282f725b59b0`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dde8706b7c4922e3a6dd1a9a1ef171f7be6411833450d0c8099fceffc385624`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67483a1fd3dfbe072b256f6e83e3f605134c8f8ec7c707ab14a238251c1f12ba`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3d7693df7f211ad6573e9ac25ec52372e26d67d45b9d4acfc7ab72ec0e101b30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90242934f9a14d8e529451d8d3f7e78b978c6cdb8137af6f6b72f35833ad9496`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
# Thu, 16 May 2019 00:40:33 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 16 May 2019 00:40:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 16 May 2019 00:40:36 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 16 May 2019 00:40:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 16 May 2019 00:40:37 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:38 GMT
VOLUME [/var/lib/docker]
# Thu, 16 May 2019 00:40:38 GMT
EXPOSE 2375
# Thu, 16 May 2019 00:40:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 16 May 2019 00:40:39 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400d563cdbfee49508d9008ac19176167a9a9127ef2e98c6abba2e5dc9508b22`  
		Last Modified: Thu, 16 May 2019 00:43:11 GMT  
		Size: 4.8 MB (4810131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8f14db4228758b5975e428a3c9bb7ff579e7c5bfd592463b61150d0b53ed9e`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e364534abd15a4f63bee653e47390c030f3d212e9f3e890048e0634ae0fed3c4`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9732b8f4824f68c9db0037fedc34dfa098fb85d7cf49070c6cfc08b66c9ea4`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a8d8d76930eca14cfde6167631a999a6a6137727f507e7562e42a3bf2545a6e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47937563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99fdac1de9639603896f83710cb986d83784d077261f8817d6941e355eb40e91`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:19:28 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 08:19:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 08:19:32 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 08:19:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 08:19:41 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:44 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 08:19:45 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 08:19:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:48 GMT
CMD []
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
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38711b01f42666555d2b50287a0ef2c503e3f3a104370449ccd72917f09f9817`  
		Last Modified: Sat, 06 Oct 2018 08:22:30 GMT  
		Size: 4.6 MB (4631271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c6ed450c4ab6fe89b0da0d54db90b35b05b5e6a103eac4f250af8f3f68e96`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6854236cfa68b41fe6cd6dbccf06c008d70128ea2821f97f2a05b630f8c53`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626e29f784527ad502c87166fc6d353ac21667139e77e0bd78a69264d2622eff`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:dind` - linux; s390x

```console
$ docker pull docker@sha256:19db3bc2f05915784cb1c43eed7a43f6ce5e79c569def2972fb43928829ee63c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51412853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c7aa6197da311d1c9d3ea8b029e72ec53fc3d4e55fb07bcd24a82da73186f6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 11:42:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 11:42:41 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 11:42:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 11:42:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 11:42:49 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 11:43:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 11:43:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 11:43:11 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 11:43:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 11:43:13 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 11:43:13 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 11:43:14 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 11:43:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 11:43:15 GMT
CMD []
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
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a73b4926fc6d26cebfb269a87c138a8e0c29b95a752850242925cc735c51004`  
		Last Modified: Sat, 06 Oct 2018 11:44:24 GMT  
		Size: 44.0 MB (43978078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4642236ab255803933428a29257664fa179a9d6da1fa6bdbd4114c509e395d08`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a332eed975fffe98d153e6f6cc3c2f36776f5aa038500c47472fb054ade82502`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cacf271f8ce57cc633c6ee72bffe8d13935290e7eeaae719127853bd15fb4f`  
		Last Modified: Sat, 06 Oct 2018 11:45:51 GMT  
		Size: 4.8 MB (4813357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687766b6c54a848c9dc65b73e21bed7fe7a368b0c076c921e307a3d5fa093056`  
		Last Modified: Sat, 06 Oct 2018 11:45:50 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500b7f916ebf8618635bacb8ccf6ebed849c4455cd516382e8aab4d37c049c80`  
		Last Modified: Sat, 06 Oct 2018 11:45:50 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af9796e82f57c3dcbc517323e4842fb3e026dac515ec842cf747687d88b59e6`  
		Last Modified: Sat, 06 Oct 2018 11:45:50 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:git`

```console
$ docker pull docker@sha256:c0559c104a43489f949e9d779d90bc94b814a47a8c0c7c80a2ad140f498fb5c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:git` - linux; amd64

```console
$ docker pull docker@sha256:570a559103eecbf55fb518faa66d8eedc267773160feae6330a14f7da0e1ddfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60862017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02cac6ab7b2970f791cc69782695600f8759f14bd440be68fc371977be18b502`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
# Sat, 11 May 2019 00:24:12 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7277243def7adc8ba0b75147831088472188be331ff1f077ee77e61187f86ecd`  
		Last Modified: Sat, 11 May 2019 00:25:53 GMT  
		Size: 9.3 MB (9271833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm variant v6

```console
$ docker pull docker@sha256:2d55f7345ca12f5609093d202177cad57d75f2774793f01086dce3b07756a26e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57342831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38390e2ad90b0414f68ae55e3d8b3f55ac7201e8b1a7e3adf905848102527cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
# Sat, 11 May 2019 09:21:43 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032862d576071b64b84c9d68b899559461e227216d242ef1ccd1546866b44d8f`  
		Last Modified: Sat, 11 May 2019 09:24:08 GMT  
		Size: 8.8 MB (8769068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:dfc332727046a2f51e5b7c3b0d73159a712b9d65adf575a1b09de9b77d5051ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56172469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfce92f338ef40726b0f304138784a9b157c5c5e5b054e17e8e6f86500abb71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
# Thu, 16 May 2019 00:40:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a804ff36976bdc435914d0e6af5fb783bde97d169e1fc55ed38a884cfa628c`  
		Last Modified: Thu, 16 May 2019 00:43:24 GMT  
		Size: 9.5 MB (9520594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; ppc64le

```console
$ docker pull docker@sha256:7a420ec2c811af08e8b6f0dba2236079d1b1666b499eb07613ec6696069a220b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51703404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5784bcca7b1a1d9069037ca7baaeedf6050f44c81b3a52cf0884358d68f601c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:20:07 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1af98daa9c4b8629b4939bce74aa85d7efe7d54d45323818aa3139bd00fbb2f`  
		Last Modified: Sat, 06 Oct 2018 08:24:28 GMT  
		Size: 8.4 MB (8399781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:git` - linux; s390x

```console
$ docker pull docker@sha256:206d18012aa4407344531aa0130ec623f6eef97972858bbe491b82a1ec71e3aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55463343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6352c9f221876b482de603e73a800598b581993cfda4c3511f32fbc3fb491841`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 11:42:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 11:42:41 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 11:42:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 11:42:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 11:42:49 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 11:43:32 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a73b4926fc6d26cebfb269a87c138a8e0c29b95a752850242925cc735c51004`  
		Last Modified: Sat, 06 Oct 2018 11:44:24 GMT  
		Size: 44.0 MB (43978078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4642236ab255803933428a29257664fa179a9d6da1fa6bdbd4114c509e395d08`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a332eed975fffe98d153e6f6cc3c2f36776f5aa038500c47472fb054ade82502`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7418ff7648f12e328a33c87dcdd7a0f197fcee6125bba462f9054c6d7b46080d`  
		Last Modified: Sat, 06 Oct 2018 11:47:14 GMT  
		Size: 8.9 MB (8866494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:latest`

```console
$ docker pull docker@sha256:16a1f4b3e64c5a8e1ac80987bc2b8907dbc1c79c1b13be0781f4d24a2072e698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:9fc0c3ff7b83704b0f1d3a73ac7217c1ded7995225d6c9436966f9996f597a3e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51590184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af42f41a7d73a4a181843011f62cbdefa6d0f546bc7b50f71163750e0475a928`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:652970ef6e7179d13bf0e80feaa454eb474fd2421b98fa8ff9f25822166d0919
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48573763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ea58c2b13e96a959f694e71979e0ffde6729d7f180660e96bfe47f37805a8f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9158b0c8a79443cb51789b1be128bb39dea3afdc0d4914099195ec462adbfaa4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:095bbf2e04cbdadf52d49d42a557b69072f2d721a61dbd6b6794670b93700651`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; ppc64le

```console
$ docker pull docker@sha256:18d3c182508d401451fe7a0c538dff3686360456b233675b4ddb2371aa9d1608
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43303623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10903a7995b02bb2bb17f3be3423e93bd2ff6a70618d0d42cfed01639a17ec9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
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
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:latest` - linux; s390x

```console
$ docker pull docker@sha256:c5468d30d00c21f2ca65cd017d0e18ff6798e3a27f46cf87b2e48ca517db31a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46596849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60a02f562e4e1def44341de661e4dc6bad47361ccf04300bc55c717afb782b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 11:42:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 11:42:41 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 11:42:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 11:42:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 11:42:49 GMT
CMD ["sh"]
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
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a73b4926fc6d26cebfb269a87c138a8e0c29b95a752850242925cc735c51004`  
		Last Modified: Sat, 06 Oct 2018 11:44:24 GMT  
		Size: 44.0 MB (43978078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4642236ab255803933428a29257664fa179a9d6da1fa6bdbd4114c509e395d08`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a332eed975fffe98d153e6f6cc3c2f36776f5aa038500c47472fb054ade82502`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc`

```console
$ docker pull docker@sha256:8bb4fd55a2591bf7356cb1fe270de7ef5c79ec1bf529e76ce1a5af434ba3f5d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:rc` - linux; amd64

```console
$ docker pull docker@sha256:f612fe1ecea825312236594787ce22740e2253837e554b0012088ab6425ff354
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66857122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fc309660820c5d51f44925c02170444ecfe49f134c6bf4977415646ac8ae48`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 23:24:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:44 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f677b8c84c9a0a741a823821f5b085b629f976727d1169337edf8019c22298`  
		Last Modified: Wed, 05 Jun 2019 23:25:45 GMT  
		Size: 63.8 MB (63796753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f33576e5f316475fb328d297337c8878d177dac78fa8f9a5fbe119c81d1887`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028839d7ee9eca4f1dc9377e5f2f9096161287fb8fe67817d5c64f7f0630a00`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; arm variant v6

```console
$ docker pull docker@sha256:cce73a2dea4b19e3313f46e86fa0fafc62b2b3d618d9cf8348b47fa09da912c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62364289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b794f00193287ca92042deace144607c201ec4c59f615cec44586af1bc2423`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:49:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:49:36 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:49:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dde7f7f8a2733af0a508930ce56bfe488f7db8783883e88b8d80a5f307a5b81`  
		Last Modified: Wed, 05 Jun 2019 22:51:10 GMT  
		Size: 59.5 MB (59517309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187485db6ccb7ddc229deee75f68e0aa58fbc68b8ae6f2e160c87b01b9c4ca8d`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af01c3e87143eee98d3ee5e89033e4576a42dcabf3f5e40d4ec7222c74e1e16f`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:52930857d2f290e9e002c329dc82db0f26ca59dd00a62cf589ad57f67e1be211
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60002677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ef4ace095d43210f3fa25f1b898d0c6c63dfbe554963307c0ab3bc018ef879`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:39:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8386b7de89c6bda210de4ca0fb7d73c8d2bd3c54517607e73f3f7ada70c0738`  
		Last Modified: Wed, 05 Jun 2019 22:41:04 GMT  
		Size: 57.0 MB (57010049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2033366f50a4f2437b553bfa7917f4b68ec7dd017d4663b43929cbfae0aa8619`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a680ee63b181161ae56429b749d91618a026a5dbc486cc975579c436196c5cf0`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; ppc64le

```console
$ docker pull docker@sha256:4527e928bfe59175ce64fcf4e4cded3e36298dab76229ead11ca5574fd0b96ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44559950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0999e75724001ed322e2db113455148aea4878a7e94b6d024f381b238e3ced08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 18:43:52 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 18:43:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 08:18:24 GMT
ENV DOCKER_CHANNEL=test
# Fri, 17 Aug 2018 08:18:30 GMT
ENV DOCKER_VERSION=18.06.1-ce-rc2
# Fri, 17 Aug 2018 08:19:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 17 Aug 2018 08:19:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 17 Aug 2018 08:19:36 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 17 Aug 2018 08:19:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 08:19:46 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec6bd9d21e799a48d9d45adc8b1205b230ebc1c404f5e24819f7a163e930fae`  
		Last Modified: Fri, 13 Jul 2018 18:48:55 GMT  
		Size: 310.8 KB (310839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72b93b2b95e568babbdef6769cccc48118c63c2cdbfabd9b4a3b15250ec64fc`  
		Last Modified: Fri, 13 Jul 2018 18:48:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a813a597ad86617331a94a43ff515d926f61c93ad0dc6f3e2301a51453e972b`  
		Last Modified: Fri, 17 Aug 2018 08:28:18 GMT  
		Size: 42.1 MB (42052626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6e46ab6bf1981ae060a5f8f932e17dc5b54387a3277dbafaf4ff55e2ab20ea`  
		Last Modified: Fri, 17 Aug 2018 08:27:57 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad65c81e446eba72d85525881f53d37f89b5c9df40302b686e22bc7ee2643218`  
		Last Modified: Fri, 17 Aug 2018 08:27:57 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc` - linux; s390x

```console
$ docker pull docker@sha256:ce17de328c4c0ca1a00fd94c0d60e6113acf2b874f3da30009e97a8b735282a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47828733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:654958b00a64d6ca64a29aa3bd3c698294aa5bfd8b3cdb7e99682d0343c086bf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 11:41:31 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 11:41:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 11:42:26 GMT
ENV DOCKER_CHANNEL=test
# Fri, 17 Aug 2018 11:42:26 GMT
ENV DOCKER_VERSION=18.06.1-ce-rc2
# Fri, 17 Aug 2018 11:42:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 17 Aug 2018 11:42:30 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 17 Aug 2018 11:42:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 17 Aug 2018 11:42:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 11:42:31 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5eeb143e96d53824ae8400edeaff13b2f662c7b1eabb1ea3f35b13606a43844`  
		Last Modified: Fri, 13 Jul 2018 11:46:08 GMT  
		Size: 309.4 KB (309440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d9e1e34325661474352d946155c6b35e9706f2ab12465bc084d780a7c2bb27`  
		Last Modified: Fri, 13 Jul 2018 11:46:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda0dedfe3d3ac86297c5131bac6b2bd33ad87283300ae3af7304d02a4254c6`  
		Last Modified: Fri, 17 Aug 2018 11:44:08 GMT  
		Size: 45.2 MB (45210202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13e5d4f36cc3db256468b508c0c868524e247856a87e0787f239e71674502c5`  
		Last Modified: Fri, 17 Aug 2018 11:43:56 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e90c696c7171c8727b677a2d0ef318a23313bee0e94f5fbdf9414c0716e0b9`  
		Last Modified: Fri, 17 Aug 2018 11:43:56 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-dind`

```console
$ docker pull docker@sha256:6560c9b843c04b6db9c5266f6bce4ac86092efe8060ce1df0c677465085f7fac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:806c57f522b26d0b9af1872129feee77802b3cc796a5dcebb44bc0d74642c500
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71629531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf399ade5b224e8e1a2c847cf1f7a257ffab0f277f8485fc6cabebeed065a4c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 23:24:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:44 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 23:24:49 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 05 Jun 2019 23:24:49 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Jun 2019 23:24:50 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 05 Jun 2019 23:24:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 05 Jun 2019 23:24:51 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:51 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Jun 2019 23:24:51 GMT
EXPOSE 2375
# Wed, 05 Jun 2019 23:24:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:51 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f677b8c84c9a0a741a823821f5b085b629f976727d1169337edf8019c22298`  
		Last Modified: Wed, 05 Jun 2019 23:25:45 GMT  
		Size: 63.8 MB (63796753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f33576e5f316475fb328d297337c8878d177dac78fa8f9a5fbe119c81d1887`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028839d7ee9eca4f1dc9377e5f2f9096161287fb8fe67817d5c64f7f0630a00`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbdf8fac6e7cbd2a3ed5b2d68c6a4867957a63e12faa9993e971223b8dd7205`  
		Last Modified: Wed, 05 Jun 2019 23:25:53 GMT  
		Size: 4.8 MB (4769763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f2c3758d8ae4ac7cd6977bdd8b671f2fb340e0e6d4765c3a99dcc44b0763aa`  
		Last Modified: Wed, 05 Jun 2019 23:25:52 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b6e42e1ec140405296301dbb181763f1b03189a06246c9b1b51d7f723f1ff0`  
		Last Modified: Wed, 05 Jun 2019 23:25:52 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a08e4e8e3ef9a244f599fbe0ca4d0ed3b7b3486e3ce2d64388eadc32603eb1`  
		Last Modified: Wed, 05 Jun 2019 23:25:52 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:42e92e0c6d6602fc13733576ad1791c3a30bfe38ce69ed3aa2665297607c3a36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65131866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558f9e9f9548103f11a37315c911bf7267620739292aba980adb225c9b862250`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:49:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:49:36 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:49:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:49:45 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 05 Jun 2019 22:49:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Jun 2019 22:49:47 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 05 Jun 2019 22:49:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 05 Jun 2019 22:49:50 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:50 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Jun 2019 22:49:51 GMT
EXPOSE 2375
# Wed, 05 Jun 2019 22:49:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:52 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dde7f7f8a2733af0a508930ce56bfe488f7db8783883e88b8d80a5f307a5b81`  
		Last Modified: Wed, 05 Jun 2019 22:51:10 GMT  
		Size: 59.5 MB (59517309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187485db6ccb7ddc229deee75f68e0aa58fbc68b8ae6f2e160c87b01b9c4ca8d`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af01c3e87143eee98d3ee5e89033e4576a42dcabf3f5e40d4ec7222c74e1e16f`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fefd8622e68a2c92e15b739b02a9389b0b521a297c64c988b2f5d0d26705a6`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 2.8 MB (2764909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f0c44077fb7ff2f597f7b485d884ae312ab9f8b5ce5e18a51845cc857b8c0ab`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698490992c17c9c5e18784bf8dd52ab4e5734c11ad4d17a429d12c7f060bdbd0`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4156985baf99de21517beac1b5657306b42ac5a96a3dc42f59e64967a91000c`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:374b42b9e4b4b9d53c977e00e0cde4d525d263c6b5ae8e119238d125c29f65e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64815460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e59b1316b4f553a58bdd945f4f9efcb54c91bcd032f3a1e6996dfec2e67dffb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:39:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:39 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:39:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 05 Jun 2019 22:39:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Jun 2019 22:39:48 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 05 Jun 2019 22:39:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 05 Jun 2019 22:39:50 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:50 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Jun 2019 22:39:50 GMT
EXPOSE 2375
# Wed, 05 Jun 2019 22:39:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:51 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8386b7de89c6bda210de4ca0fb7d73c8d2bd3c54517607e73f3f7ada70c0738`  
		Last Modified: Wed, 05 Jun 2019 22:41:04 GMT  
		Size: 57.0 MB (57010049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2033366f50a4f2437b553bfa7917f4b68ec7dd017d4663b43929cbfae0aa8619`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a680ee63b181161ae56429b749d91618a026a5dbc486cc975579c436196c5cf0`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b64ac65dbc5b66b491f8c8d994c287f3ac5907a1edbca27b39da6ccbc226243`  
		Last Modified: Wed, 05 Jun 2019 22:41:15 GMT  
		Size: 4.8 MB (4810116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bcc187c066b64e1ec6c1e5f900bb20a7e052e0f0c58bdc82e9bed1981f1ac81`  
		Last Modified: Wed, 05 Jun 2019 22:41:13 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b1ca97567cd7e85cca4bc2098d227d1365f32bd628897bd92613a5df2b5396`  
		Last Modified: Wed, 05 Jun 2019 22:41:13 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc89386154f3a68acb89d38b4ac3caf56682bc4f9d49fd85b8f3afafd4c9d04`  
		Last Modified: Wed, 05 Jun 2019 22:41:13 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:93e10cfce2f07a3bf35a0c4e67fa340a18de874c39c65510496d181edb3143bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49218908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dfd6bd2c700099f0a8d2d5851b5dac2870f54434579eefb22c9de402a25820f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 18:43:52 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 18:43:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 08:18:24 GMT
ENV DOCKER_CHANNEL=test
# Fri, 17 Aug 2018 08:18:30 GMT
ENV DOCKER_VERSION=18.06.1-ce-rc2
# Fri, 17 Aug 2018 08:19:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 17 Aug 2018 08:19:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 17 Aug 2018 08:19:36 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 17 Aug 2018 08:19:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 08:19:46 GMT
CMD ["sh"]
# Fri, 17 Aug 2018 08:20:49 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 17 Aug 2018 08:21:06 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 17 Aug 2018 08:21:12 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 17 Aug 2018 08:21:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 17 Aug 2018 08:21:30 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 17 Aug 2018 08:21:33 GMT
VOLUME [/var/lib/docker]
# Fri, 17 Aug 2018 08:21:37 GMT
EXPOSE 2375/tcp
# Fri, 17 Aug 2018 08:21:41 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 17 Aug 2018 08:21:43 GMT
CMD []
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec6bd9d21e799a48d9d45adc8b1205b230ebc1c404f5e24819f7a163e930fae`  
		Last Modified: Fri, 13 Jul 2018 18:48:55 GMT  
		Size: 310.8 KB (310839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72b93b2b95e568babbdef6769cccc48118c63c2cdbfabd9b4a3b15250ec64fc`  
		Last Modified: Fri, 13 Jul 2018 18:48:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a813a597ad86617331a94a43ff515d926f61c93ad0dc6f3e2301a51453e972b`  
		Last Modified: Fri, 17 Aug 2018 08:28:18 GMT  
		Size: 42.1 MB (42052626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6e46ab6bf1981ae060a5f8f932e17dc5b54387a3277dbafaf4ff55e2ab20ea`  
		Last Modified: Fri, 17 Aug 2018 08:27:57 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad65c81e446eba72d85525881f53d37f89b5c9df40302b686e22bc7ee2643218`  
		Last Modified: Fri, 17 Aug 2018 08:27:57 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea15cb0d6af960574ca3fbbf6dc7fb75b1808cdda11a66dcab18bcf8c27dac5f`  
		Last Modified: Fri, 17 Aug 2018 08:29:38 GMT  
		Size: 4.6 MB (4631283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79785c41afce891b5bab5128a3f696a543e7e3fcd4fa912c541ab447605db3b`  
		Last Modified: Fri, 17 Aug 2018 08:29:33 GMT  
		Size: 1.3 KB (1340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b74b55e407f8a66e3eceb60cdfbeb5dd95b8b01729121a84274b0605b8f950`  
		Last Modified: Fri, 17 Aug 2018 08:29:33 GMT  
		Size: 25.7 KB (25737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34eac2acd12262a2e301b32215b1cc59fe198a4acccc653ac91781b24cddbb6`  
		Last Modified: Fri, 17 Aug 2018 08:29:33 GMT  
		Size: 598.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; s390x

```console
$ docker pull docker@sha256:b877b51843c59540a258c00b3d4b73a1c250243af62ac364ce48a7844d719218
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52669599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fdfc6a276b124fc2a97ef2decf6876559e7f477eeae08b2970fb4058cffae5c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 11:41:31 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 11:41:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 11:42:26 GMT
ENV DOCKER_CHANNEL=test
# Fri, 17 Aug 2018 11:42:26 GMT
ENV DOCKER_VERSION=18.06.1-ce-rc2
# Fri, 17 Aug 2018 11:42:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 17 Aug 2018 11:42:30 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 17 Aug 2018 11:42:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 17 Aug 2018 11:42:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 11:42:31 GMT
CMD ["sh"]
# Fri, 17 Aug 2018 11:42:44 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 17 Aug 2018 11:42:45 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 17 Aug 2018 11:42:45 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Fri, 17 Aug 2018 11:42:46 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Fri, 17 Aug 2018 11:42:46 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Fri, 17 Aug 2018 11:42:47 GMT
VOLUME [/var/lib/docker]
# Fri, 17 Aug 2018 11:42:47 GMT
EXPOSE 2375/tcp
# Fri, 17 Aug 2018 11:42:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 17 Aug 2018 11:42:47 GMT
CMD []
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5eeb143e96d53824ae8400edeaff13b2f662c7b1eabb1ea3f35b13606a43844`  
		Last Modified: Fri, 13 Jul 2018 11:46:08 GMT  
		Size: 309.4 KB (309440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d9e1e34325661474352d946155c6b35e9706f2ab12465bc084d780a7c2bb27`  
		Last Modified: Fri, 13 Jul 2018 11:46:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda0dedfe3d3ac86297c5131bac6b2bd33ad87283300ae3af7304d02a4254c6`  
		Last Modified: Fri, 17 Aug 2018 11:44:08 GMT  
		Size: 45.2 MB (45210202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13e5d4f36cc3db256468b508c0c868524e247856a87e0787f239e71674502c5`  
		Last Modified: Fri, 17 Aug 2018 11:43:56 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e90c696c7171c8727b677a2d0ef318a23313bee0e94f5fbdf9414c0716e0b9`  
		Last Modified: Fri, 17 Aug 2018 11:43:56 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780dcc8f108cd740f9216836a7648879865fc8cf1cb83897af1b463a803125aa`  
		Last Modified: Fri, 17 Aug 2018 11:44:36 GMT  
		Size: 4.8 MB (4813266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdb689f60b3cf0d54bd9aea2c3abfa359315eb6a722806a1c395dc7bbfc8702`  
		Last Modified: Fri, 17 Aug 2018 11:44:35 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8fce1db0f20be412d020f67f53c39ef91907ada6565ab4e817038babb0dd9d`  
		Last Modified: Fri, 17 Aug 2018 11:44:35 GMT  
		Size: 25.7 KB (25701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02150b640b3353ad1f2a4f4379e0de5a9cd04d25bcb61f93c09667a74da07f31`  
		Last Modified: Fri, 17 Aug 2018 11:44:35 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:rc-git`

```console
$ docker pull docker@sha256:c978d21da510091f5e140f5d3a75a270df2f754e40c0fd27643e6ba41455a957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:rc-git` - linux; amd64

```console
$ docker pull docker@sha256:00f8749eb6ef0b2036d5dfb71ecf274b90dabbcb78e1fc67ad4e50de8aafa17d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76129131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb6aa9b2e98a1e9eac3703b00d8e235d95128bf7e603a0674c504ecd6505ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 23:24:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:44 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 23:24:56 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f677b8c84c9a0a741a823821f5b085b629f976727d1169337edf8019c22298`  
		Last Modified: Wed, 05 Jun 2019 23:25:45 GMT  
		Size: 63.8 MB (63796753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f33576e5f316475fb328d297337c8878d177dac78fa8f9a5fbe119c81d1887`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028839d7ee9eca4f1dc9377e5f2f9096161287fb8fe67817d5c64f7f0630a00`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab3170d9c1898a41cc8187ce01f2e06c63883cd8ce0a082f769a22269227e46`  
		Last Modified: Wed, 05 Jun 2019 23:26:00 GMT  
		Size: 9.3 MB (9272009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:e8c43590e0d658426aadbb0fcdac026ee2fc0a94fa72455da2412cbfeed12e69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71133626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba334a263b11851445c2761c69a9f7afcb98881d8b28652de6b6b21fbb8eef4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:49:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:49:36 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:49:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:50:02 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dde7f7f8a2733af0a508930ce56bfe488f7db8783883e88b8d80a5f307a5b81`  
		Last Modified: Wed, 05 Jun 2019 22:51:10 GMT  
		Size: 59.5 MB (59517309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187485db6ccb7ddc229deee75f68e0aa58fbc68b8ae6f2e160c87b01b9c4ca8d`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af01c3e87143eee98d3ee5e89033e4576a42dcabf3f5e40d4ec7222c74e1e16f`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64cd354d722ed4df68ea91d16d1ec0a2d678d1a08a31ff1e14cdcf8ba5fbfb2`  
		Last Modified: Wed, 05 Jun 2019 22:51:40 GMT  
		Size: 8.8 MB (8769337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d09e53f1a91178bbd9d1236e32bdfcb5f018cad10cf3b4dd5785017cbdccc8d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69523899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ddea04ccadc9f014af2c2a5b884529dc4074ab4d5082393f69ed5698568ec16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:39:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:39 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:39:59 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8386b7de89c6bda210de4ca0fb7d73c8d2bd3c54517607e73f3f7ada70c0738`  
		Last Modified: Wed, 05 Jun 2019 22:41:04 GMT  
		Size: 57.0 MB (57010049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2033366f50a4f2437b553bfa7917f4b68ec7dd017d4663b43929cbfae0aa8619`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a680ee63b181161ae56429b749d91618a026a5dbc486cc975579c436196c5cf0`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72374a233ec916d46b238a8e52bce4508637f4ea2a708ae5712a7b625330977`  
		Last Modified: Wed, 05 Jun 2019 22:41:25 GMT  
		Size: 9.5 MB (9521222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; ppc64le

```console
$ docker pull docker@sha256:fd58600194d2ee11f6cf4ac4da2c8626aeaeb6f6e11be1dabebd1a20fae11f4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (52959275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce15088fb6e54fcaeffdc0a97b109aee6ec254aa1a3ca20e9804f3b44818168`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 18:43:52 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 18:43:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 08:18:24 GMT
ENV DOCKER_CHANNEL=test
# Fri, 17 Aug 2018 08:18:30 GMT
ENV DOCKER_VERSION=18.06.1-ce-rc2
# Fri, 17 Aug 2018 08:19:19 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 17 Aug 2018 08:19:31 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 17 Aug 2018 08:19:36 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 17 Aug 2018 08:19:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 08:19:46 GMT
CMD ["sh"]
# Fri, 17 Aug 2018 08:22:32 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec6bd9d21e799a48d9d45adc8b1205b230ebc1c404f5e24819f7a163e930fae`  
		Last Modified: Fri, 13 Jul 2018 18:48:55 GMT  
		Size: 310.8 KB (310839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72b93b2b95e568babbdef6769cccc48118c63c2cdbfabd9b4a3b15250ec64fc`  
		Last Modified: Fri, 13 Jul 2018 18:48:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a813a597ad86617331a94a43ff515d926f61c93ad0dc6f3e2301a51453e972b`  
		Last Modified: Fri, 17 Aug 2018 08:28:18 GMT  
		Size: 42.1 MB (42052626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6e46ab6bf1981ae060a5f8f932e17dc5b54387a3277dbafaf4ff55e2ab20ea`  
		Last Modified: Fri, 17 Aug 2018 08:27:57 GMT  
		Size: 551.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad65c81e446eba72d85525881f53d37f89b5c9df40302b686e22bc7ee2643218`  
		Last Modified: Fri, 17 Aug 2018 08:27:57 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb3c4956228792b38cb009a1534327011cc68c327bf47233cfec4cbd9fe5d1ba`  
		Last Modified: Fri, 17 Aug 2018 08:31:19 GMT  
		Size: 8.4 MB (8399325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-git` - linux; s390x

```console
$ docker pull docker@sha256:f32a497ca8a5382bc9a5faee4548cc417c0cfc652fbfb298e8884d115fcd7459
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56695015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a22c71b9631f5e13de93fece216299ff63bd079367b2716734565f3755d4617`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 11:41:31 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 11:41:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 11:42:26 GMT
ENV DOCKER_CHANNEL=test
# Fri, 17 Aug 2018 11:42:26 GMT
ENV DOCKER_VERSION=18.06.1-ce-rc2
# Fri, 17 Aug 2018 11:42:30 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Fri, 17 Aug 2018 11:42:30 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Fri, 17 Aug 2018 11:42:30 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Fri, 17 Aug 2018 11:42:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Aug 2018 11:42:31 GMT
CMD ["sh"]
# Fri, 17 Aug 2018 11:43:00 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5eeb143e96d53824ae8400edeaff13b2f662c7b1eabb1ea3f35b13606a43844`  
		Last Modified: Fri, 13 Jul 2018 11:46:08 GMT  
		Size: 309.4 KB (309440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d9e1e34325661474352d946155c6b35e9706f2ab12465bc084d780a7c2bb27`  
		Last Modified: Fri, 13 Jul 2018 11:46:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cda0dedfe3d3ac86297c5131bac6b2bd33ad87283300ae3af7304d02a4254c6`  
		Last Modified: Fri, 17 Aug 2018 11:44:08 GMT  
		Size: 45.2 MB (45210202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13e5d4f36cc3db256468b508c0c868524e247856a87e0787f239e71674502c5`  
		Last Modified: Fri, 17 Aug 2018 11:43:56 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e90c696c7171c8727b677a2d0ef318a23313bee0e94f5fbdf9414c0716e0b9`  
		Last Modified: Fri, 17 Aug 2018 11:43:56 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafba560a63fb6601236be507beb37f06f4cb36f1e39875f45f646a89a446934`  
		Last Modified: Fri, 17 Aug 2018 11:45:04 GMT  
		Size: 8.9 MB (8866282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable`

```console
$ docker pull docker@sha256:16a1f4b3e64c5a8e1ac80987bc2b8907dbc1c79c1b13be0781f4d24a2072e698
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:stable` - linux; amd64

```console
$ docker pull docker@sha256:9fc0c3ff7b83704b0f1d3a73ac7217c1ded7995225d6c9436966f9996f597a3e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51590184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af42f41a7d73a4a181843011f62cbdefa6d0f546bc7b50f71163750e0475a928`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm variant v6

```console
$ docker pull docker@sha256:652970ef6e7179d13bf0e80feaa454eb474fd2421b98fa8ff9f25822166d0919
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48573763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ea58c2b13e96a959f694e71979e0ffde6729d7f180660e96bfe47f37805a8f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:9158b0c8a79443cb51789b1be128bb39dea3afdc0d4914099195ec462adbfaa4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46651875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:095bbf2e04cbdadf52d49d42a557b69072f2d721a61dbd6b6794670b93700651`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; ppc64le

```console
$ docker pull docker@sha256:18d3c182508d401451fe7a0c538dff3686360456b233675b4ddb2371aa9d1608
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 MB (43303623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10903a7995b02bb2bb17f3be3423e93bd2ff6a70618d0d42cfed01639a17ec9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
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
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable` - linux; s390x

```console
$ docker pull docker@sha256:c5468d30d00c21f2ca65cd017d0e18ff6798e3a27f46cf87b2e48ca517db31a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46596849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60a02f562e4e1def44341de661e4dc6bad47361ccf04300bc55c717afb782b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 11:42:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 11:42:41 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 11:42:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 11:42:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 11:42:49 GMT
CMD ["sh"]
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
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a73b4926fc6d26cebfb269a87c138a8e0c29b95a752850242925cc735c51004`  
		Last Modified: Sat, 06 Oct 2018 11:44:24 GMT  
		Size: 44.0 MB (43978078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4642236ab255803933428a29257664fa179a9d6da1fa6bdbd4114c509e395d08`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a332eed975fffe98d153e6f6cc3c2f36776f5aa038500c47472fb054ade82502`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-dind`

```console
$ docker pull docker@sha256:9685e9d5e5e5cd0b408c465184befbc435d1b973222725a2fbedef4f0e685e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:stable-dind` - linux; amd64

```console
$ docker pull docker@sha256:bc9ff78c82061c0e3e3b559c9e735a8d9818d11ef1e0726bff5f2438c07c32d5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56362577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed64de70fa1f4d0b5a498791647c45d954cb0306ec2852dbcfb956f4ff3b0d6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
# Sat, 11 May 2019 00:24:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 11 May 2019 00:24:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 11 May 2019 00:24:04 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 11 May 2019 00:24:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 11 May 2019 00:24:06 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Sat, 11 May 2019 00:24:06 GMT
VOLUME [/var/lib/docker]
# Sat, 11 May 2019 00:24:06 GMT
EXPOSE 2375
# Sat, 11 May 2019 00:24:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 11 May 2019 00:24:07 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8a5ec7012a3b2bf944b717814d118063780acf75b66f8081390edca80d080d`  
		Last Modified: Sat, 11 May 2019 00:25:44 GMT  
		Size: 4.8 MB (4769763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6adc20046ac5a250a46b6c45b73fb3e753e89cc92099690122e3df2758483135`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 1.3 KB (1305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a1f54aa48c1844faea794fdf88fc976ddcfd514b37180d35cb78ad2616445f`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717a4f34e5411b8a1c37925b33346dca952da85b66e8fb8288b0d5384d268de6`  
		Last Modified: Sat, 11 May 2019 00:25:43 GMT  
		Size: 574.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:ac7c275633665d6448fe91f477b442ff49d6e198645f9bab23423a5a66b68b5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51341376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe114b5c31f46b407a7f262d8437207c91b086e370ed30ae9c784a5f93676e4a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
# Sat, 11 May 2019 09:21:31 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 11 May 2019 09:21:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 11 May 2019 09:21:32 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 11 May 2019 09:21:34 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 11 May 2019 09:21:34 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:34 GMT
VOLUME [/var/lib/docker]
# Sat, 11 May 2019 09:21:35 GMT
EXPOSE 2375
# Sat, 11 May 2019 09:21:35 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 11 May 2019 09:21:36 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194bd02b83951fd71ca7e5fbf05cd6c8911b7febe1a2ea23720551a990691649`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 2.8 MB (2764950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02424aa47a9e0072f4692df2f6ed36cd47bc67016f48788ee501282f725b59b0`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dde8706b7c4922e3a6dd1a9a1ef171f7be6411833450d0c8099fceffc385624`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67483a1fd3dfbe072b256f6e83e3f605134c8f8ec7c707ab14a238251c1f12ba`  
		Last Modified: Sat, 11 May 2019 09:23:55 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3d7693df7f211ad6573e9ac25ec52372e26d67d45b9d4acfc7ab72ec0e101b30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51464677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90242934f9a14d8e529451d8d3f7e78b978c6cdb8137af6f6b72f35833ad9496`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
# Thu, 16 May 2019 00:40:33 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 16 May 2019 00:40:35 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 16 May 2019 00:40:36 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 16 May 2019 00:40:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 16 May 2019 00:40:37 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:38 GMT
VOLUME [/var/lib/docker]
# Thu, 16 May 2019 00:40:38 GMT
EXPOSE 2375
# Thu, 16 May 2019 00:40:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 16 May 2019 00:40:39 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:400d563cdbfee49508d9008ac19176167a9a9127ef2e98c6abba2e5dc9508b22`  
		Last Modified: Thu, 16 May 2019 00:43:11 GMT  
		Size: 4.8 MB (4810131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8f14db4228758b5975e428a3c9bb7ff579e7c5bfd592463b61150d0b53ed9e`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e364534abd15a4f63bee653e47390c030f3d212e9f3e890048e0634ae0fed3c4`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a9732b8f4824f68c9db0037fedc34dfa098fb85d7cf49070c6cfc08b66c9ea4`  
		Last Modified: Thu, 16 May 2019 00:43:10 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a8d8d76930eca14cfde6167631a999a6a6137727f507e7562e42a3bf2545a6e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47937563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99fdac1de9639603896f83710cb986d83784d077261f8817d6941e355eb40e91`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:19:28 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 08:19:31 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 08:19:32 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 08:19:37 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 08:19:41 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:44 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 08:19:45 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 08:19:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:48 GMT
CMD []
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
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38711b01f42666555d2b50287a0ef2c503e3f3a104370449ccd72917f09f9817`  
		Last Modified: Sat, 06 Oct 2018 08:22:30 GMT  
		Size: 4.6 MB (4631271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1c6ed450c4ab6fe89b0da0d54db90b35b05b5e6a103eac4f250af8f3f68e96`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca6854236cfa68b41fe6cd6dbccf06c008d70128ea2821f97f2a05b630f8c53`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:626e29f784527ad502c87166fc6d353ac21667139e77e0bd78a69264d2622eff`  
		Last Modified: Sat, 06 Oct 2018 08:22:29 GMT  
		Size: 593.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-dind` - linux; s390x

```console
$ docker pull docker@sha256:19db3bc2f05915784cb1c43eed7a43f6ce5e79c569def2972fb43928829ee63c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51412853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c7aa6197da311d1c9d3ea8b029e72ec53fc3d4e55fb07bcd24a82da73186f6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 11:42:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 11:42:41 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 11:42:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 11:42:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 11:42:49 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 11:43:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Oct 2018 11:43:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Oct 2018 11:43:11 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Sat, 06 Oct 2018 11:43:12 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Oct 2018 11:43:13 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Sat, 06 Oct 2018 11:43:13 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Oct 2018 11:43:14 GMT
EXPOSE 2375/tcp
# Sat, 06 Oct 2018 11:43:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Oct 2018 11:43:15 GMT
CMD []
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
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a73b4926fc6d26cebfb269a87c138a8e0c29b95a752850242925cc735c51004`  
		Last Modified: Sat, 06 Oct 2018 11:44:24 GMT  
		Size: 44.0 MB (43978078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4642236ab255803933428a29257664fa179a9d6da1fa6bdbd4114c509e395d08`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a332eed975fffe98d153e6f6cc3c2f36776f5aa038500c47472fb054ade82502`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82cacf271f8ce57cc633c6ee72bffe8d13935290e7eeaae719127853bd15fb4f`  
		Last Modified: Sat, 06 Oct 2018 11:45:51 GMT  
		Size: 4.8 MB (4813357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687766b6c54a848c9dc65b73e21bed7fe7a368b0c076c921e307a3d5fa093056`  
		Last Modified: Sat, 06 Oct 2018 11:45:50 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500b7f916ebf8618635bacb8ccf6ebed849c4455cd516382e8aab4d37c049c80`  
		Last Modified: Sat, 06 Oct 2018 11:45:50 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af9796e82f57c3dcbc517323e4842fb3e026dac515ec842cf747687d88b59e6`  
		Last Modified: Sat, 06 Oct 2018 11:45:50 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:stable-git`

```console
$ docker pull docker@sha256:c0559c104a43489f949e9d779d90bc94b814a47a8c0c7c80a2ad140f498fb5c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:570a559103eecbf55fb518faa66d8eedc267773160feae6330a14f7da0e1ddfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60862017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02cac6ab7b2970f791cc69782695600f8759f14bd440be68fc371977be18b502`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:51 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 00:23:52 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 00:23:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 00:23:57 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 00:23:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 00:23:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 00:23:58 GMT
CMD ["sh"]
# Sat, 11 May 2019 00:24:12 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b893dcc701736a5f886371844ce361e0e64ec6701035d010f3c0482af2df25`  
		Last Modified: Sat, 11 May 2019 00:25:35 GMT  
		Size: 48.5 MB (48529814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48bf7c1cb0dd1a12914a2cc8d2dbd2b9ef7b038402c504c7e36811ac67b86e03`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:555b6ea27ad249b1baf03c514fd3347091ec69833608216313ce47a6258546a3`  
		Last Modified: Sat, 11 May 2019 00:25:24 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7277243def7adc8ba0b75147831088472188be331ff1f077ee77e61187f86ecd`  
		Last Modified: Sat, 11 May 2019 00:25:53 GMT  
		Size: 9.3 MB (9271833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:2d55f7345ca12f5609093d202177cad57d75f2774793f01086dce3b07756a26e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57342831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f38390e2ad90b0414f68ae55e3d8b3f55ac7201e8b1a7e3adf905848102527cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_CHANNEL=stable
# Sat, 11 May 2019 09:21:14 GMT
ENV DOCKER_VERSION=18.09.6
# Sat, 11 May 2019 09:21:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 11 May 2019 09:21:23 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 11 May 2019 09:21:24 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 11 May 2019 09:21:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 09:21:24 GMT
CMD ["sh"]
# Sat, 11 May 2019 09:21:43 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c495aa9db95a799bff30476dfe77f7655a32e5f72545a47084508d173a4438e1`  
		Last Modified: Sat, 11 May 2019 09:23:45 GMT  
		Size: 45.7 MB (45726789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a63e663404e5aa889bdac861ba4f7cb1c7e980e7d852652f082e33f066ed7d1`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c6de62f1ce357530c1ff251568c0d838881f9d94e45f9a635317b474fb48f5f`  
		Last Modified: Sat, 11 May 2019 09:23:29 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032862d576071b64b84c9d68b899559461e227216d242ef1ccd1546866b44d8f`  
		Last Modified: Sat, 11 May 2019 09:24:08 GMT  
		Size: 8.8 MB (8769068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:dfc332727046a2f51e5b7c3b0d73159a712b9d65adf575a1b09de9b77d5051ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.2 MB (56172469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecfce92f338ef40726b0f304138784a9b157c5c5e5b054e17e8e6f86500abb71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 16 May 2019 00:40:10 GMT
ENV DOCKER_VERSION=18.09.6
# Thu, 16 May 2019 00:40:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 16 May 2019 00:40:21 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 16 May 2019 00:40:21 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 16 May 2019 00:40:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 May 2019 00:40:22 GMT
CMD ["sh"]
# Thu, 16 May 2019 00:40:50 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86682a6ce3966c336e0956c4b5bbcfcb48615eea10e2b8be5f0acd4f97486f68`  
		Last Modified: Thu, 16 May 2019 00:43:00 GMT  
		Size: 43.7 MB (43659251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bca8add36b432816c3ffa0db8b30987d9cefbb6f7c61d2f6952a4cd4eb46610`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4533e34a386d0fb165ee9ebc3e90f256b423513b8d69f506f4b3b208d68d864d`  
		Last Modified: Thu, 16 May 2019 00:42:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a804ff36976bdc435914d0e6af5fb783bde97d169e1fc55ed38a884cfa628c`  
		Last Modified: Thu, 16 May 2019 00:43:24 GMT  
		Size: 9.5 MB (9520594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; ppc64le

```console
$ docker pull docker@sha256:7a420ec2c811af08e8b6f0dba2236079d1b1666b499eb07613ec6696069a220b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51703404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5784bcca7b1a1d9069037ca7baaeedf6050f44c81b3a52cf0884358d68f601c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 09:51:25 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 09:51:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 09:53:29 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 09:53:34 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 08:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 08:18:56 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 08:19:02 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 08:19:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 08:19:06 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 08:20:07 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:7ab4b28968b92237adc6438d06c14d4680a3936996176f2cea20d781885af568`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 310.9 KB (310853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387f12b774ebb4a88b15e4f754eb9c772618a15230f9c093759496c41f5c6c8f`  
		Last Modified: Wed, 12 Sep 2018 09:57:28 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8847e0f1fbcbc029817eb1d930620fd68a65b6bf9dcb73b6d2e96d4e8161ba75`  
		Last Modified: Sat, 06 Oct 2018 08:20:48 GMT  
		Size: 40.8 MB (40795934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7425929e73f782470c79b835b77e1d923e63be874374d247c1deb271178256f`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d865172b780f7e0c045e1d59db4d57be4d6f52d93a27f7d7444edead40260b`  
		Last Modified: Sat, 06 Oct 2018 08:20:36 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1af98daa9c4b8629b4939bce74aa85d7efe7d54d45323818aa3139bd00fbb2f`  
		Last Modified: Sat, 06 Oct 2018 08:24:28 GMT  
		Size: 8.4 MB (8399781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; s390x

```console
$ docker pull docker@sha256:206d18012aa4407344531aa0130ec623f6eef97972858bbe491b82a1ec71e3aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55463343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6352c9f221876b482de603e73a800598b581993cfda4c3511f32fbc3fb491841`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:22:28 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 12 Sep 2018 12:22:29 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_CHANNEL=stable
# Wed, 12 Sep 2018 12:44:14 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Sat, 06 Oct 2018 11:42:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Oct 2018 11:42:41 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Sat, 06 Oct 2018 11:42:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Sat, 06 Oct 2018 11:42:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Oct 2018 11:42:49 GMT
CMD ["sh"]
# Sat, 06 Oct 2018 11:43:32 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:bb561d3126b35cb13bedd4f23b2184db9140369cef0de58b3a4e284e9984fcda`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 309.4 KB (309416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba58ed64e881912769f695871270925930a2eb897d81ab2f623accf36a7831d2`  
		Last Modified: Wed, 12 Sep 2018 12:29:26 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a73b4926fc6d26cebfb269a87c138a8e0c29b95a752850242925cc735c51004`  
		Last Modified: Sat, 06 Oct 2018 11:44:24 GMT  
		Size: 44.0 MB (43978078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4642236ab255803933428a29257664fa179a9d6da1fa6bdbd4114c509e395d08`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a332eed975fffe98d153e6f6cc3c2f36776f5aa038500c47472fb054ade82502`  
		Last Modified: Sat, 06 Oct 2018 11:44:02 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7418ff7648f12e328a33c87dcdd7a0f197fcee6125bba462f9054c6d7b46080d`  
		Last Modified: Sat, 06 Oct 2018 11:47:14 GMT  
		Size: 8.9 MB (8866494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test`

```console
$ docker pull docker@sha256:78f59422d2571d6c4a73b1d221943985b3c27aaf694607627c6fc1b9f7018e78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:f612fe1ecea825312236594787ce22740e2253837e554b0012088ab6425ff354
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.9 MB (66857122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fc309660820c5d51f44925c02170444ecfe49f134c6bf4977415646ac8ae48`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 23:24:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:44 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f677b8c84c9a0a741a823821f5b085b629f976727d1169337edf8019c22298`  
		Last Modified: Wed, 05 Jun 2019 23:25:45 GMT  
		Size: 63.8 MB (63796753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f33576e5f316475fb328d297337c8878d177dac78fa8f9a5fbe119c81d1887`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028839d7ee9eca4f1dc9377e5f2f9096161287fb8fe67817d5c64f7f0630a00`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm variant v6

```console
$ docker pull docker@sha256:cce73a2dea4b19e3313f46e86fa0fafc62b2b3d618d9cf8348b47fa09da912c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62364289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b794f00193287ca92042deace144607c201ec4c59f615cec44586af1bc2423`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:49:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:49:36 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:49:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dde7f7f8a2733af0a508930ce56bfe488f7db8783883e88b8d80a5f307a5b81`  
		Last Modified: Wed, 05 Jun 2019 22:51:10 GMT  
		Size: 59.5 MB (59517309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187485db6ccb7ddc229deee75f68e0aa58fbc68b8ae6f2e160c87b01b9c4ca8d`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af01c3e87143eee98d3ee5e89033e4576a42dcabf3f5e40d4ec7222c74e1e16f`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:52930857d2f290e9e002c329dc82db0f26ca59dd00a62cf589ad57f67e1be211
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.0 MB (60002677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ef4ace095d43210f3fa25f1b898d0c6c63dfbe554963307c0ab3bc018ef879`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:39:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:39 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8386b7de89c6bda210de4ca0fb7d73c8d2bd3c54517607e73f3f7ada70c0738`  
		Last Modified: Wed, 05 Jun 2019 22:41:04 GMT  
		Size: 57.0 MB (57010049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2033366f50a4f2437b553bfa7917f4b68ec7dd017d4663b43929cbfae0aa8619`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a680ee63b181161ae56429b749d91618a026a5dbc486cc975579c436196c5cf0`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; ppc64le

```console
$ docker pull docker@sha256:4959ae6e6adf4e8494f8fefaf05c2a92fffaa45ff05142dcb2e1494cac376334
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44558742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6502d4f9225c9277b55d678870b8774b2a968465302f687dcdc9051c1d6743a4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 18:43:52 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 18:43:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 08:23:05 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 23 Aug 2018 08:43:42 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Thu, 23 Aug 2018 08:43:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Aug 2018 08:43:52 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Aug 2018 08:43:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Aug 2018 08:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 08:43:55 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec6bd9d21e799a48d9d45adc8b1205b230ebc1c404f5e24819f7a163e930fae`  
		Last Modified: Fri, 13 Jul 2018 18:48:55 GMT  
		Size: 310.8 KB (310839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72b93b2b95e568babbdef6769cccc48118c63c2cdbfabd9b4a3b15250ec64fc`  
		Last Modified: Fri, 13 Jul 2018 18:48:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b8f8d917c36191a6e4a94adb7ec84c1484ca57c5b62eab52e5c787a4087919`  
		Last Modified: Thu, 23 Aug 2018 08:44:57 GMT  
		Size: 42.1 MB (42051423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e46dd913679c1413c97949e0fb3d60e8c6767cbf1f3cef716b0dd553990a0c`  
		Last Modified: Thu, 23 Aug 2018 08:44:45 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18093889f81e517f425f05ea0cc1ce7ab2e6308420cdbc32465fb8f5cb24ef1e`  
		Last Modified: Thu, 23 Aug 2018 08:44:45 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; s390x

```console
$ docker pull docker@sha256:be8bdf869b9be55e48dc2456477809e6bddcc3786fe3a726cc8584e3bbc73989
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47830307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f0c4d4704dfb1861365e163731ce2c12e1b3a2b8ecd57a0310b2b4240af6d33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 11:41:31 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 11:41:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 11:43:08 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 23 Aug 2018 11:41:21 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Thu, 23 Aug 2018 11:41:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Aug 2018 11:41:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Aug 2018 11:41:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Aug 2018 11:41:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 11:41:27 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5eeb143e96d53824ae8400edeaff13b2f662c7b1eabb1ea3f35b13606a43844`  
		Last Modified: Fri, 13 Jul 2018 11:46:08 GMT  
		Size: 309.4 KB (309440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d9e1e34325661474352d946155c6b35e9706f2ab12465bc084d780a7c2bb27`  
		Last Modified: Fri, 13 Jul 2018 11:46:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cc8f98fa441b129dbfb071f6e1cc758ad54f1a4ffbf44b04ff69042c020ee9`  
		Last Modified: Thu, 23 Aug 2018 11:42:38 GMT  
		Size: 45.2 MB (45211782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41a0e66d56985d34f6890b19770538b3ce15a1e3816b30649817b4420f5495f`  
		Last Modified: Thu, 23 Aug 2018 11:42:08 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ded0b648ebb90301349b3c4309032c03bfa3509c92bec1d219613f23d5aa585`  
		Last Modified: Thu, 23 Aug 2018 11:42:08 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-dind`

```console
$ docker pull docker@sha256:33299ceeda4811e7fb62aed92308297f25a56736990993028ad5f4e0ee341d30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:806c57f522b26d0b9af1872129feee77802b3cc796a5dcebb44bc0d74642c500
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71629531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf399ade5b224e8e1a2c847cf1f7a257ffab0f277f8485fc6cabebeed065a4c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 23:24:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:44 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 23:24:49 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 05 Jun 2019 23:24:49 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Jun 2019 23:24:50 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 05 Jun 2019 23:24:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 05 Jun 2019 23:24:51 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:51 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Jun 2019 23:24:51 GMT
EXPOSE 2375
# Wed, 05 Jun 2019 23:24:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:51 GMT
CMD []
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f677b8c84c9a0a741a823821f5b085b629f976727d1169337edf8019c22298`  
		Last Modified: Wed, 05 Jun 2019 23:25:45 GMT  
		Size: 63.8 MB (63796753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f33576e5f316475fb328d297337c8878d177dac78fa8f9a5fbe119c81d1887`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028839d7ee9eca4f1dc9377e5f2f9096161287fb8fe67817d5c64f7f0630a00`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cbdf8fac6e7cbd2a3ed5b2d68c6a4867957a63e12faa9993e971223b8dd7205`  
		Last Modified: Wed, 05 Jun 2019 23:25:53 GMT  
		Size: 4.8 MB (4769763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f2c3758d8ae4ac7cd6977bdd8b671f2fb340e0e6d4765c3a99dcc44b0763aa`  
		Last Modified: Wed, 05 Jun 2019 23:25:52 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b6e42e1ec140405296301dbb181763f1b03189a06246c9b1b51d7f723f1ff0`  
		Last Modified: Wed, 05 Jun 2019 23:25:52 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a08e4e8e3ef9a244f599fbe0ca4d0ed3b7b3486e3ce2d64388eadc32603eb1`  
		Last Modified: Wed, 05 Jun 2019 23:25:52 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:42e92e0c6d6602fc13733576ad1791c3a30bfe38ce69ed3aa2665297607c3a36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65131866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:558f9e9f9548103f11a37315c911bf7267620739292aba980adb225c9b862250`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:49:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:49:36 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:49:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:49:45 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 05 Jun 2019 22:49:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Jun 2019 22:49:47 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 05 Jun 2019 22:49:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 05 Jun 2019 22:49:50 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:50 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Jun 2019 22:49:51 GMT
EXPOSE 2375
# Wed, 05 Jun 2019 22:49:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:52 GMT
CMD []
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dde7f7f8a2733af0a508930ce56bfe488f7db8783883e88b8d80a5f307a5b81`  
		Last Modified: Wed, 05 Jun 2019 22:51:10 GMT  
		Size: 59.5 MB (59517309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187485db6ccb7ddc229deee75f68e0aa58fbc68b8ae6f2e160c87b01b9c4ca8d`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af01c3e87143eee98d3ee5e89033e4576a42dcabf3f5e40d4ec7222c74e1e16f`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fefd8622e68a2c92e15b739b02a9389b0b521a297c64c988b2f5d0d26705a6`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 2.8 MB (2764909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f0c44077fb7ff2f597f7b485d884ae312ab9f8b5ce5e18a51845cc857b8c0ab`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:698490992c17c9c5e18784bf8dd52ab4e5734c11ad4d17a429d12c7f060bdbd0`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4156985baf99de21517beac1b5657306b42ac5a96a3dc42f59e64967a91000c`  
		Last Modified: Wed, 05 Jun 2019 22:51:25 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:374b42b9e4b4b9d53c977e00e0cde4d525d263c6b5ae8e119238d125c29f65e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64815460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e59b1316b4f553a58bdd945f4f9efcb54c91bcd032f3a1e6996dfec2e67dffb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:39:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:39 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:39:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 05 Jun 2019 22:39:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 05 Jun 2019 22:39:48 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Wed, 05 Jun 2019 22:39:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Wed, 05 Jun 2019 22:39:50 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:50 GMT
VOLUME [/var/lib/docker]
# Wed, 05 Jun 2019 22:39:50 GMT
EXPOSE 2375
# Wed, 05 Jun 2019 22:39:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:51 GMT
CMD []
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8386b7de89c6bda210de4ca0fb7d73c8d2bd3c54517607e73f3f7ada70c0738`  
		Last Modified: Wed, 05 Jun 2019 22:41:04 GMT  
		Size: 57.0 MB (57010049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2033366f50a4f2437b553bfa7917f4b68ec7dd017d4663b43929cbfae0aa8619`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a680ee63b181161ae56429b749d91618a026a5dbc486cc975579c436196c5cf0`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b64ac65dbc5b66b491f8c8d994c287f3ac5907a1edbca27b39da6ccbc226243`  
		Last Modified: Wed, 05 Jun 2019 22:41:15 GMT  
		Size: 4.8 MB (4810116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bcc187c066b64e1ec6c1e5f900bb20a7e052e0f0c58bdc82e9bed1981f1ac81`  
		Last Modified: Wed, 05 Jun 2019 22:41:13 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b1ca97567cd7e85cca4bc2098d227d1365f32bd628897bd92613a5df2b5396`  
		Last Modified: Wed, 05 Jun 2019 22:41:13 GMT  
		Size: 752.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fc89386154f3a68acb89d38b4ac3caf56682bc4f9d49fd85b8f3afafd4c9d04`  
		Last Modified: Wed, 05 Jun 2019 22:41:13 GMT  
		Size: 580.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:76db7567d5822cbba524ac47f9b0a1d3fd19f3bc8087eb4ca72d5241cfbcd8f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49217703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:697203ff8a16b338bc0446a6fcb3bb68e54ad89b62e2f484e2aae3659e8bd5ab`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 18:43:52 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 18:43:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 08:23:05 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 23 Aug 2018 08:43:42 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Thu, 23 Aug 2018 08:43:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Aug 2018 08:43:52 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Aug 2018 08:43:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Aug 2018 08:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 08:43:55 GMT
CMD ["sh"]
# Thu, 23 Aug 2018 08:44:07 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 23 Aug 2018 08:44:10 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Aug 2018 08:44:10 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 23 Aug 2018 08:44:13 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 23 Aug 2018 08:44:14 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Thu, 23 Aug 2018 08:44:16 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Aug 2018 08:44:17 GMT
EXPOSE 2375/tcp
# Thu, 23 Aug 2018 08:44:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Aug 2018 08:44:18 GMT
CMD []
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec6bd9d21e799a48d9d45adc8b1205b230ebc1c404f5e24819f7a163e930fae`  
		Last Modified: Fri, 13 Jul 2018 18:48:55 GMT  
		Size: 310.8 KB (310839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72b93b2b95e568babbdef6769cccc48118c63c2cdbfabd9b4a3b15250ec64fc`  
		Last Modified: Fri, 13 Jul 2018 18:48:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b8f8d917c36191a6e4a94adb7ec84c1484ca57c5b62eab52e5c787a4087919`  
		Last Modified: Thu, 23 Aug 2018 08:44:57 GMT  
		Size: 42.1 MB (42051423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e46dd913679c1413c97949e0fb3d60e8c6767cbf1f3cef716b0dd553990a0c`  
		Last Modified: Thu, 23 Aug 2018 08:44:45 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18093889f81e517f425f05ea0cc1ce7ab2e6308420cdbc32465fb8f5cb24ef1e`  
		Last Modified: Thu, 23 Aug 2018 08:44:45 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a9bfbbeabc8e33045fa61934fd88f08e5d77cb31f7c5e5fa5d508504c5ccbd`  
		Last Modified: Thu, 23 Aug 2018 08:45:55 GMT  
		Size: 4.6 MB (4631297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5412983402e6d51719b54d5416d02d8854165bc09756465ec00a592ae21cf59c`  
		Last Modified: Thu, 23 Aug 2018 08:45:53 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e652d6a301e9b0e56011431f3d0da4fc245fd2015a6b36328205121d9c49cd87`  
		Last Modified: Thu, 23 Aug 2018 08:45:53 GMT  
		Size: 25.7 KB (25734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992b2d2e8e87406618aaee2c9b3f6917df3dc9df2823a0bf0e62e764898142b1`  
		Last Modified: Thu, 23 Aug 2018 08:45:54 GMT  
		Size: 596.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; s390x

```console
$ docker pull docker@sha256:8516920fe2912c4ad5d7328ebd8b4d48cb17f4ab04ca09016eeca451d8570919
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52671271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2772c133d603d075c3417a5c1cb68862d7361cc34909ccc168e19ae0a9a873a9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 11:41:31 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 11:41:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 11:43:08 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 23 Aug 2018 11:41:21 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Thu, 23 Aug 2018 11:41:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Aug 2018 11:41:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Aug 2018 11:41:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Aug 2018 11:41:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 11:41:27 GMT
CMD ["sh"]
# Thu, 23 Aug 2018 11:41:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 23 Aug 2018 11:41:37 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 23 Aug 2018 11:41:38 GMT
ENV DIND_COMMIT=52379fa76dee07ca038624d639d9e14f4fb719ff
# Thu, 23 Aug 2018 11:41:38 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Thu, 23 Aug 2018 11:41:39 GMT
COPY file:4369494e10938c035554e3167656aa131a9a7c6790e86742abd46e48568c8201 in /usr/local/bin/ 
# Thu, 23 Aug 2018 11:41:39 GMT
VOLUME [/var/lib/docker]
# Thu, 23 Aug 2018 11:41:39 GMT
EXPOSE 2375/tcp
# Thu, 23 Aug 2018 11:41:39 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 23 Aug 2018 11:41:39 GMT
CMD []
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5eeb143e96d53824ae8400edeaff13b2f662c7b1eabb1ea3f35b13606a43844`  
		Last Modified: Fri, 13 Jul 2018 11:46:08 GMT  
		Size: 309.4 KB (309440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d9e1e34325661474352d946155c6b35e9706f2ab12465bc084d780a7c2bb27`  
		Last Modified: Fri, 13 Jul 2018 11:46:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cc8f98fa441b129dbfb071f6e1cc758ad54f1a4ffbf44b04ff69042c020ee9`  
		Last Modified: Thu, 23 Aug 2018 11:42:38 GMT  
		Size: 45.2 MB (45211782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41a0e66d56985d34f6890b19770538b3ce15a1e3816b30649817b4420f5495f`  
		Last Modified: Thu, 23 Aug 2018 11:42:08 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ded0b648ebb90301349b3c4309032c03bfa3509c92bec1d219613f23d5aa585`  
		Last Modified: Thu, 23 Aug 2018 11:42:08 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96764e2eeed10be74b8042ca76ec9a830b997db5897a644e8b4dbf16ed8bc9f`  
		Last Modified: Thu, 23 Aug 2018 11:43:35 GMT  
		Size: 4.8 MB (4813361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888baf018db96fd3baf0b246186a5ee48b187ad107752e4a4c5e23384193c338`  
		Last Modified: Thu, 23 Aug 2018 11:43:33 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb5b6a497fdd8a498d838842f2bbd8574df613b93571def7747fa6d38c473d5`  
		Last Modified: Thu, 23 Aug 2018 11:43:33 GMT  
		Size: 25.7 KB (25702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb8bdc4389f78cb8831a266bf2a9083f446744a0e2304b5a9dbf7756fffce25`  
		Last Modified: Thu, 23 Aug 2018 11:43:33 GMT  
		Size: 595.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:test-git`

```console
$ docker pull docker@sha256:28c41eb4739741ac6a5a8498819fe0f085c8d788709c12abe3ef569e4101bf22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:00f8749eb6ef0b2036d5dfb71ecf274b90dabbcb78e1fc67ad4e50de8aafa17d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76129131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eb6aa9b2e98a1e9eac3703b00d8e235d95128bf7e603a0674c504ecd6505ad3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 00:23:26 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 00:23:27 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 00:23:27 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 23:24:36 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 23:24:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 23:24:44 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 23:24:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 23:24:44 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 23:24:56 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5297bd3818169b125a364b85eb77095c3f33626fa6a83f36bf2123aba60f2b39`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 301.9 KB (301904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a664477889cd9030004351f3bb8a9c904e299cf5e5f17f8819e20d7370aeceb`  
		Last Modified: Sat, 11 May 2019 00:24:51 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53f677b8c84c9a0a741a823821f5b085b629f976727d1169337edf8019c22298`  
		Last Modified: Wed, 05 Jun 2019 23:25:45 GMT  
		Size: 63.8 MB (63796753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f33576e5f316475fb328d297337c8878d177dac78fa8f9a5fbe119c81d1887`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3028839d7ee9eca4f1dc9377e5f2f9096161287fb8fe67817d5c64f7f0630a00`  
		Last Modified: Wed, 05 Jun 2019 23:25:31 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab3170d9c1898a41cc8187ce01f2e06c63883cd8ce0a082f769a22269227e46`  
		Last Modified: Wed, 05 Jun 2019 23:26:00 GMT  
		Size: 9.3 MB (9272009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:e8c43590e0d658426aadbb0fcdac026ee2fc0a94fa72455da2412cbfeed12e69
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71133626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba334a263b11851445c2761c69a9f7afcb98881d8b28652de6b6b21fbb8eef4e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:14:32 GMT
RUN apk add --no-cache 		ca-certificates
# Sat, 11 May 2019 09:14:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 09:20:31 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:49:23 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:49:35 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:49:36 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:49:37 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:49:38 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:50:02 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e973d2d028433a678a141dae7960c25f92470d4fb1445eb6db2043b2e835031`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 302.1 KB (302114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78436e680e21b80ea470c654124955de15e6e8a79b59499c5dbe71d477058b7c`  
		Last Modified: Sat, 11 May 2019 09:20:00 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dde7f7f8a2733af0a508930ce56bfe488f7db8783883e88b8d80a5f307a5b81`  
		Last Modified: Wed, 05 Jun 2019 22:51:10 GMT  
		Size: 59.5 MB (59517309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187485db6ccb7ddc229deee75f68e0aa58fbc68b8ae6f2e160c87b01b9c4ca8d`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af01c3e87143eee98d3ee5e89033e4576a42dcabf3f5e40d4ec7222c74e1e16f`  
		Last Modified: Wed, 05 Jun 2019 22:50:48 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e64cd354d722ed4df68ea91d16d1ec0a2d678d1a08a31ff1e14cdcf8ba5fbfb2`  
		Last Modified: Wed, 05 Jun 2019 22:51:40 GMT  
		Size: 8.8 MB (8769337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d09e53f1a91178bbd9d1236e32bdfcb5f018cad10cf3b4dd5785017cbdccc8d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69523899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ddea04ccadc9f014af2c2a5b884529dc4074ab4d5082393f69ed5698568ec16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 16 May 2019 00:39:29 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 16 May 2019 00:39:30 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 16 May 2019 00:39:30 GMT
ENV DOCKER_CHANNEL=test
# Wed, 05 Jun 2019 22:39:28 GMT
ENV DOCKER_VERSION=19.03.0-rc2
# Wed, 05 Jun 2019 22:39:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 05 Jun 2019 22:39:38 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 05 Jun 2019 22:39:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Jun 2019 22:39:39 GMT
CMD ["sh"]
# Wed, 05 Jun 2019 22:39:59 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfbe23cb93f5c54409e935c5fd19cf451ad8742f93d33deda5a6fb7c56b5d64`  
		Last Modified: Thu, 16 May 2019 00:41:58 GMT  
		Size: 302.4 KB (302411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a61663e5e1d8099e20743fee711858255dde1f1f2e6dfee691d4476ef37806`  
		Last Modified: Thu, 16 May 2019 00:41:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8386b7de89c6bda210de4ca0fb7d73c8d2bd3c54517607e73f3f7ada70c0738`  
		Last Modified: Wed, 05 Jun 2019 22:41:04 GMT  
		Size: 57.0 MB (57010049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2033366f50a4f2437b553bfa7917f4b68ec7dd017d4663b43929cbfae0aa8619`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a680ee63b181161ae56429b749d91618a026a5dbc486cc975579c436196c5cf0`  
		Last Modified: Wed, 05 Jun 2019 22:40:43 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e72374a233ec916d46b238a8e52bce4508637f4ea2a708ae5712a7b625330977`  
		Last Modified: Wed, 05 Jun 2019 22:41:25 GMT  
		Size: 9.5 MB (9521222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; ppc64le

```console
$ docker pull docker@sha256:aac9269a99da5f57eea32f59148b9c648aec965b44b1b0418a53162960e3a203
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.0 MB (52958081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8a85ebc68d2f0c22d96d8079aaf35082d66df135d01b3e0e3671e3dd68d9ef0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 18:43:52 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 18:43:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 08:23:05 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 23 Aug 2018 08:43:42 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Thu, 23 Aug 2018 08:43:50 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Aug 2018 08:43:52 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Aug 2018 08:43:53 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Aug 2018 08:43:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 08:43:55 GMT
CMD ["sh"]
# Thu, 23 Aug 2018 08:44:28 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec6bd9d21e799a48d9d45adc8b1205b230ebc1c404f5e24819f7a163e930fae`  
		Last Modified: Fri, 13 Jul 2018 18:48:55 GMT  
		Size: 310.8 KB (310839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b72b93b2b95e568babbdef6769cccc48118c63c2cdbfabd9b4a3b15250ec64fc`  
		Last Modified: Fri, 13 Jul 2018 18:48:54 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b8f8d917c36191a6e4a94adb7ec84c1484ca57c5b62eab52e5c787a4087919`  
		Last Modified: Thu, 23 Aug 2018 08:44:57 GMT  
		Size: 42.1 MB (42051423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e46dd913679c1413c97949e0fb3d60e8c6767cbf1f3cef716b0dd553990a0c`  
		Last Modified: Thu, 23 Aug 2018 08:44:45 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18093889f81e517f425f05ea0cc1ce7ab2e6308420cdbc32465fb8f5cb24ef1e`  
		Last Modified: Thu, 23 Aug 2018 08:44:45 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97203a9cc9c7050488e4e77525cb6224104dba3a90c7ed1f12b603be7b46a7d3`  
		Last Modified: Thu, 23 Aug 2018 08:46:53 GMT  
		Size: 8.4 MB (8399339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-git` - linux; s390x

```console
$ docker pull docker@sha256:524fdc0e65eefc506a372b3caf2a79fe2800df2d6146d52e77f9063ad9b65fff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56696592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3edbde3205b984ce3055643c70451be4b18384200319c3875f0fb565a4fd6a0f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Fri, 13 Jul 2018 11:41:31 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 13 Jul 2018 11:41:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 17 Aug 2018 11:43:08 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 23 Aug 2018 11:41:21 GMT
ENV DOCKER_VERSION=18.06.1-ce
# Thu, 23 Aug 2018 11:41:26 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Thu, 23 Aug 2018 11:41:26 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Thu, 23 Aug 2018 11:41:27 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Thu, 23 Aug 2018 11:41:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Aug 2018 11:41:27 GMT
CMD ["sh"]
# Thu, 23 Aug 2018 11:41:49 GMT
RUN apk add --no-cache 		git 		openssh-client
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5eeb143e96d53824ae8400edeaff13b2f662c7b1eabb1ea3f35b13606a43844`  
		Last Modified: Fri, 13 Jul 2018 11:46:08 GMT  
		Size: 309.4 KB (309440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d9e1e34325661474352d946155c6b35e9706f2ab12465bc084d780a7c2bb27`  
		Last Modified: Fri, 13 Jul 2018 11:46:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7cc8f98fa441b129dbfb071f6e1cc758ad54f1a4ffbf44b04ff69042c020ee9`  
		Last Modified: Thu, 23 Aug 2018 11:42:38 GMT  
		Size: 45.2 MB (45211782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c41a0e66d56985d34f6890b19770538b3ce15a1e3816b30649817b4420f5495f`  
		Last Modified: Thu, 23 Aug 2018 11:42:08 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ded0b648ebb90301349b3c4309032c03bfa3509c92bec1d219613f23d5aa585`  
		Last Modified: Thu, 23 Aug 2018 11:42:08 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a7fc93a7b52cea611a551180ae9a8e1f521a7dabaeec7c2928817ccbad1f96`  
		Last Modified: Thu, 23 Aug 2018 11:44:41 GMT  
		Size: 8.9 MB (8866285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
