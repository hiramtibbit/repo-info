## `docker:test`

```console
$ docker pull docker@sha256:6ad51ce4ca3dc29ddec5e8d28da9eab650195d94252481f9c1aed522d4188aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:a046ca91ed7d4d0dd039c9d23eb5d0796e8eb729413b2587002e59953270f189
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66305166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e88dbd946db0fe7e4da3accb84c2d550c92069eceae5006564729f14d7b0fb09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Tue, 09 Apr 2019 23:20:33 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 09 Apr 2019 23:20:40 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_CHANNEL=test
# Tue, 09 Apr 2019 23:36:43 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Tue, 09 Apr 2019 23:36:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:36:51 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:36:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:36:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38f114998adb0933d6bd188536093008212eb087b211bbb06c806f5066d250a4`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 301.9 KB (301873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21134b1a9e68ce4374901b7a552e521e3860c228fe02de4d88f249f924fb1a28`  
		Last Modified: Tue, 09 Apr 2019 23:22:12 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd3632d43cce248b1578bd615adafb843192ec4e04152d6adbe7a826b79ea6`  
		Last Modified: Tue, 09 Apr 2019 23:38:32 GMT  
		Size: 63.2 MB (63244852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd760c6fedb5f385892b4babe3a2acf01e4bd5fd8e303f3e391532e421b08674`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:475113ce63a0ac48deaa7a1acb7243d54ef9b99909d45e634d555b79a944a6eb`  
		Last Modified: Tue, 09 Apr 2019 23:38:18 GMT  
		Size: 735.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm variant v6

```console
$ docker pull docker@sha256:0d2deaee2d5de01b2e29ba1dc54659aa8a76609953d07d56c3e088a4e7884f22
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 MB (61881770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c735ebe2c0b746b10a84ca6b728c9e974f5066af52ed5054882d1e944bc9ef87`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 07:50:15 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 07:50:17 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Apr 2019 08:05:44 GMT
ENV DOCKER_CHANNEL=test
# Wed, 10 Apr 2019 08:05:45 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Wed, 10 Apr 2019 08:05:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Wed, 10 Apr 2019 08:05:58 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Wed, 10 Apr 2019 08:05:58 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Wed, 10 Apr 2019 08:05:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 10 Apr 2019 08:05:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eaf18aa0ad2793a2358b7820ae250b479a353a42c5e330492e5bc688d1362ac`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 302.1 KB (302101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a21c36652b0310a7c1d62cec75356af2712fdafc37084ea42060aacac4d410e`  
		Last Modified: Wed, 10 Apr 2019 07:52:37 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd8f8cec9541da1f4aa940fc5c4c6512f702b0cf1f30b88272ae0514db6ced6`  
		Last Modified: Wed, 10 Apr 2019 08:08:04 GMT  
		Size: 59.0 MB (59034797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e65fcbb935b3eca892eb884f57c4cc0eee633181f786f8f8fd383203549319`  
		Last Modified: Wed, 10 Apr 2019 08:07:44 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7579fca4c7fdc15b8b26053bf80c30b192c28d98a95b94f397e919cc2ff87020`  
		Last Modified: Wed, 10 Apr 2019 08:07:44 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:58dc6c8bcbaeebc8bfe674d298d240dcd7d235b76fc4d18900a86b25ec714e26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59534941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a8c5034e299f9d634cd4d172db08892f009f4355a584ed05a4e9a709e8a6c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:18:47 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:18:49 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:15 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 08:39:33 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 08:39:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 08:39:49 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 08:39:50 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 08:39:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7809c1a4c8e2fd286895f69d067b1a68841f9311a5c0e1afc51e64e57d777919`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 302.3 KB (302317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c00b1d46f4493b4bfe8c94c6226da7c7c76820ecc2f4b70e6a482d4fdaaca34`  
		Last Modified: Fri, 08 Mar 2019 04:21:18 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003d7f2928706dbfbd3e6f60e528de8006ce76ba35145df2723604cb6914f36`  
		Last Modified: Sat, 06 Apr 2019 08:41:57 GMT  
		Size: 56.5 MB (56543251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e174c395be1c7be477ed283e6fc2290f51edbe9e99cfbb03f12ff0b15880b06`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dacfe77b5b693746d1998efc7e8d9325e8c55ec706597494346e524962707e`  
		Last Modified: Sat, 06 Apr 2019 08:41:30 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
