## `docker:rc-dind`

```console
$ docker pull docker@sha256:0e4a18c0e021b4bb080ba9b536e35f06ee88fa593aff9175e9a896ea62ac2abc
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
$ docker pull docker@sha256:7942d729e643b652dfa803405f629a7521e68b31ba1eb1e21210d36b2fc888ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71620978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1517d42dd4c014da2307b5f61f082559ceb0e03aeb96132f5c65e8c6ecfa397b`
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
# Thu, 30 May 2019 21:19:33 GMT
ENV DOCKER_VERSION=19.03.0-beta5
# Thu, 30 May 2019 21:19:41 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 30 May 2019 21:19:41 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 30 May 2019 21:19:41 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 30 May 2019 21:19:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 May 2019 21:19:41 GMT
CMD ["sh"]
# Thu, 30 May 2019 21:19:47 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 30 May 2019 21:19:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 30 May 2019 21:19:48 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 30 May 2019 21:19:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 30 May 2019 21:19:49 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Thu, 30 May 2019 21:19:49 GMT
VOLUME [/var/lib/docker]
# Thu, 30 May 2019 21:19:49 GMT
EXPOSE 2375
# Thu, 30 May 2019 21:19:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 30 May 2019 21:19:49 GMT
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
	-	`sha256:10c183b6e6b9f798dfe3b20a0b8c1c92185df194452168f06fd8d9ffa54aea46`  
		Last Modified: Thu, 30 May 2019 21:20:49 GMT  
		Size: 63.8 MB (63788164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc45b6f61ce9b1e7a68e7fd19649b751adc71f9e61506e92272efcb193edc3b5`  
		Last Modified: Thu, 30 May 2019 21:20:32 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18f215569416588587a81a55c30d346bcaf1a3cfd7ff6f684c7038687403dd2e`  
		Last Modified: Thu, 30 May 2019 21:20:31 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f68288b3a08dc08fa136d49b10a957968c9406c463159c47f27697439087741f`  
		Last Modified: Thu, 30 May 2019 21:20:56 GMT  
		Size: 4.8 MB (4769801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75394f7d23f15c21b07f25de8a36a25a194a8d4a7cc1a9d5eb6cc2064bd547d`  
		Last Modified: Thu, 30 May 2019 21:20:55 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce1af3720e8d9313487243931aeb1694509dd3ba8e6a607d6be5737a71f28796`  
		Last Modified: Thu, 30 May 2019 21:20:55 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645b747a46f5af3273fe8ad46b98714e922fe93036bc7a2122595df4daebd6b2`  
		Last Modified: Thu, 30 May 2019 21:20:55 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:c2896199467c6452015105792bd8d67fe4837a1db39ce89d1f8e3ed5a7893b0c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.1 MB (65131026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a41fef59d9f741b3a233798a18ad55c0e1a4f7f335e0019b83c119ba92442a`
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
# Thu, 30 May 2019 21:49:20 GMT
ENV DOCKER_VERSION=19.03.0-beta5
# Thu, 30 May 2019 21:49:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 30 May 2019 21:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 30 May 2019 21:49:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 30 May 2019 21:49:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 May 2019 21:49:34 GMT
CMD ["sh"]
# Thu, 30 May 2019 21:49:39 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 30 May 2019 21:49:41 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 30 May 2019 21:49:42 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 30 May 2019 21:49:44 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 30 May 2019 21:49:44 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Thu, 30 May 2019 21:49:45 GMT
VOLUME [/var/lib/docker]
# Thu, 30 May 2019 21:49:46 GMT
EXPOSE 2375
# Thu, 30 May 2019 21:49:47 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 30 May 2019 21:49:47 GMT
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
	-	`sha256:21de9c48c6e6809aa8d7df2d018c47fd56daa381900a0b13d443b815bfb6720f`  
		Last Modified: Thu, 30 May 2019 21:51:03 GMT  
		Size: 59.5 MB (59516452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dafb62207b2a89885cd4f420196b2d3a905c317276fad970a21c53aa4b04bf63`  
		Last Modified: Thu, 30 May 2019 21:50:43 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b00915a06e3e577cec08600f86c6f7bec63a17768bec1a7e6ca876031449794`  
		Last Modified: Thu, 30 May 2019 21:50:43 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44a1aeebe04e2f67a64a2dea39277ad4758cfdae459f12c520bf50ee9ad1399`  
		Last Modified: Thu, 30 May 2019 21:51:18 GMT  
		Size: 2.8 MB (2764926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159be0eb9066c5959b8a446751e6b81ac71057b3f138fb8848fb20912af92abb`  
		Last Modified: Thu, 30 May 2019 21:51:17 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42371fe49c584fa28985c0574c6bd83e85808be70748d399033ed24cfaaa7f0b`  
		Last Modified: Thu, 30 May 2019 21:51:17 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2500357a739229c46a6ba2184aee5fa3db1515a59ab6392c5c16f1e46efeb49`  
		Last Modified: Thu, 30 May 2019 21:51:17 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:3b24d450729ee6566625e06085891794ac9b57fc56e91ff107c72506aa5df741
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64813235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:637e5a7cf06f83ff46091d9a108d9346eb332cf34e3bb6ea8472122af4de7bca`
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
# Thu, 30 May 2019 21:39:30 GMT
ENV DOCKER_VERSION=19.03.0-beta5
# Thu, 30 May 2019 21:39:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 30 May 2019 21:39:38 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 30 May 2019 21:39:39 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 30 May 2019 21:39:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 May 2019 21:39:39 GMT
CMD ["sh"]
# Thu, 30 May 2019 21:39:46 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 30 May 2019 21:39:48 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 30 May 2019 21:39:48 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 30 May 2019 21:39:50 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 30 May 2019 21:39:50 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Thu, 30 May 2019 21:39:50 GMT
VOLUME [/var/lib/docker]
# Thu, 30 May 2019 21:39:51 GMT
EXPOSE 2375
# Thu, 30 May 2019 21:39:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 30 May 2019 21:39:51 GMT
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
	-	`sha256:6bf5fa7862a69cd8bc2923e07f22bad35ba0c45940f8bc2bc2bcffa5f9de9e60`  
		Last Modified: Thu, 30 May 2019 21:41:03 GMT  
		Size: 57.0 MB (57007779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6196f171dd4b6c754de7834e06905ecf65938bce73638e19ee15f3b4b39697`  
		Last Modified: Thu, 30 May 2019 21:40:41 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa6ad6771e4be251eb1a47cdf4d7a9ddf6bc1b501c32dea68276adc24df2167`  
		Last Modified: Thu, 30 May 2019 21:40:41 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e828965db2274a1eb49d94bbea22a6fbf0d2141f9817c726b247f2b8e8119a2f`  
		Last Modified: Thu, 30 May 2019 21:41:20 GMT  
		Size: 4.8 MB (4810159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6b48e46ea093e76774ba6a840fcc180de159cd143ac3a454f37373d7ee6cae`  
		Last Modified: Thu, 30 May 2019 21:41:18 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0471a6a11784e5ae66b63aeec3030f117467f5fbafc220ad9cdf80643458a71`  
		Last Modified: Thu, 30 May 2019 21:41:18 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12b3bb323b2bfffbb119276ace7949cdaa7555cacd796630d52a41bbe522bdc1`  
		Last Modified: Thu, 30 May 2019 21:41:18 GMT  
		Size: 577.0 B  
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
