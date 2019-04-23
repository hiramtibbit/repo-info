## `docker:rc-dind`

```console
$ docker pull docker@sha256:13f69df9398293df5d809208151af9d1ac05e80869fc29e1c63a8b1b5ddcaabe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:28b82d86f65dc7bdd584be634655badae0a1fdc987caf6b4f987efafdce82722
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71115215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7086033e28740607a6926b3eefcfe33c5804074e1dc2d3bb66de37d612ed5ef`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Mon, 22 Apr 2019 22:25:36 GMT
ENV DOCKER_VERSION=19.03.0-beta2
# Mon, 22 Apr 2019 22:25:43 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Mon, 22 Apr 2019 22:25:43 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Mon, 22 Apr 2019 22:25:43 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Mon, 22 Apr 2019 22:25:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Apr 2019 22:25:43 GMT
CMD ["sh"]
# Mon, 22 Apr 2019 22:25:48 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Mon, 22 Apr 2019 22:25:48 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Mon, 22 Apr 2019 22:25:49 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Mon, 22 Apr 2019 22:25:50 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Mon, 22 Apr 2019 22:25:50 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Mon, 22 Apr 2019 22:25:50 GMT
VOLUME [/var/lib/docker]
# Mon, 22 Apr 2019 22:25:50 GMT
EXPOSE 2375
# Mon, 22 Apr 2019 22:25:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 22 Apr 2019 22:25:50 GMT
CMD []
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
	-	`sha256:2af80cb5c48cab33ee9f4ec47939aad775067153cab7033b4caa8f7f983bc082`  
		Last Modified: Mon, 22 Apr 2019 22:26:42 GMT  
		Size: 63.3 MB (63282464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5ad82ca7bd5d5af037564c6e94d7dcb014aa52c47b952fb538acbc09742812`  
		Last Modified: Mon, 22 Apr 2019 22:26:28 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2237f0f1063824a0d7d1ed852030bbd224cdc2e7dc82a525134e8a383d230017`  
		Last Modified: Mon, 22 Apr 2019 22:26:28 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e505ce3c39f094e6c1adb005239b8b9b5a17b08961b5c232974d2c37996295`  
		Last Modified: Mon, 22 Apr 2019 22:26:48 GMT  
		Size: 4.8 MB (4769793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22e67eb70956fc9465de521fa46d2f5babadec57a66e1dcb0f4a8db0c16a9c9`  
		Last Modified: Mon, 22 Apr 2019 22:26:47 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c208d5332609196d5a4df89bc70466243bab9fa7372100696d8bf56be09f73`  
		Last Modified: Mon, 22 Apr 2019 22:26:47 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09277adc1ced3f7e974ebd2db392b158227c1427feb664a2262e1794a8bffba7`  
		Last Modified: Mon, 22 Apr 2019 22:26:47 GMT  
		Size: 576.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:d6f8b2c6e586622ab628a87cdf4e23287e5913f567c05fe3e5eae12f41ca4eff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64676611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56bd944956e8d4c3a04df2c25d0bd0f397e65cf800c091faab48fe9da3c45fe0`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Tue, 23 Apr 2019 07:58:42 GMT
ENV DOCKER_VERSION=19.03.0-beta2
# Tue, 23 Apr 2019 07:58:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 23 Apr 2019 07:58:54 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 23 Apr 2019 07:58:54 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 23 Apr 2019 07:58:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Apr 2019 07:58:55 GMT
CMD ["sh"]
# Tue, 23 Apr 2019 07:59:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 23 Apr 2019 07:59:03 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 23 Apr 2019 07:59:03 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 23 Apr 2019 07:59:05 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 23 Apr 2019 07:59:05 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Tue, 23 Apr 2019 07:59:06 GMT
VOLUME [/var/lib/docker]
# Tue, 23 Apr 2019 07:59:06 GMT
EXPOSE 2375
# Tue, 23 Apr 2019 07:59:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 23 Apr 2019 07:59:07 GMT
CMD []
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
	-	`sha256:43d9f723641c899148425eeeb2993d34349d6a62f5c5e6191a8cd141545c6cd0`  
		Last Modified: Tue, 23 Apr 2019 08:00:26 GMT  
		Size: 59.1 MB (59062040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22390fffc0a4ce278ae18a509025ccf7915de6764457ea292895f014d1dd2f61`  
		Last Modified: Tue, 23 Apr 2019 08:00:04 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:847bee0739d2e67101befbd13b0f1e9a4e2e486541c3633f312aa576c414373b`  
		Last Modified: Tue, 23 Apr 2019 08:00:04 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcac3f79dc6530bcd83aa5a6f37e934ea8a3d5835aef0ae82459de65caed2271`  
		Last Modified: Tue, 23 Apr 2019 08:00:36 GMT  
		Size: 2.8 MB (2764926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75c1ffaed046e498fd595d792b93e13d79d710482c7be1a7d016bc11844896e`  
		Last Modified: Tue, 23 Apr 2019 08:00:35 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1942bcc5992675f0ec5cd23eb85516f2bb7c97ea30c34fe6d55b0d191c258149`  
		Last Modified: Tue, 23 Apr 2019 08:00:35 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8331f563969bba8ef7a414c850fe85b6b40879a7a03e925e031337b9dc695e6`  
		Last Modified: Tue, 23 Apr 2019 08:00:35 GMT  
		Size: 577.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7310c0045dc157726cf0c5f9e987b6224f582321f776c11ad689c017bb6d1890
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.4 MB (64383376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feb34f104122282d3636e70800daf4db53ea2e7c40a10144cc09de54c49f7fe7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:49:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Apr 2019 08:49:34 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Apr 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=test
# Tue, 23 Apr 2019 08:40:03 GMT
ENV DOCKER_VERSION=19.03.0-beta2
# Tue, 23 Apr 2019 08:40:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 23 Apr 2019 08:40:18 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 23 Apr 2019 08:40:18 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 23 Apr 2019 08:40:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 23 Apr 2019 08:40:20 GMT
CMD ["sh"]
# Tue, 23 Apr 2019 08:40:30 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 23 Apr 2019 08:40:32 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 23 Apr 2019 08:40:33 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 23 Apr 2019 08:40:35 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 23 Apr 2019 08:40:36 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Tue, 23 Apr 2019 08:40:37 GMT
VOLUME [/var/lib/docker]
# Tue, 23 Apr 2019 08:40:37 GMT
EXPOSE 2375
# Tue, 23 Apr 2019 08:40:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 23 Apr 2019 08:40:39 GMT
CMD []
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624d8cd5989279cea7781d46cf9e54248dc5914b85a54e5f3dda694c3dc0aec4`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 302.3 KB (302320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecff0f4f34353de2916477d55f845eedaf0354998b8a77494fb80ae3c6c3aa36`  
		Last Modified: Wed, 10 Apr 2019 08:53:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554771a38a02587a17f9954c9298b5929f8612d0fd0ae7192096e96cd97508f6`  
		Last Modified: Tue, 23 Apr 2019 08:42:27 GMT  
		Size: 56.6 MB (56578355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3cfdc06b81f3687a91efa0c200218af153796e1ab1a746a530e490e2c593a6`  
		Last Modified: Tue, 23 Apr 2019 08:42:03 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c504164bf5e6e676bb20a96cf8fb8a3a8e1caa8525d39843ed33e57fc9a00e0`  
		Last Modified: Tue, 23 Apr 2019 08:42:03 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e577157bfca74b8622bd9f2dff9fd7234ffb341aa2028a0a32586743cc3a3a69`  
		Last Modified: Tue, 23 Apr 2019 08:42:41 GMT  
		Size: 4.8 MB (4809841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da55ba232ebd99d028972a2f75201ecf1fb6636a2161e3d0add481eb122991d`  
		Last Modified: Tue, 23 Apr 2019 08:42:40 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df21e6cd5b285097f784a1a95bc20c3fac244148c9dc29ffb3f6e7936538004d`  
		Last Modified: Tue, 23 Apr 2019 08:42:40 GMT  
		Size: 760.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2aa5bf08f6dc980062ad3b732d4da7b22e7227a8de5654a61dc1d464254eea`  
		Last Modified: Tue, 23 Apr 2019 08:42:40 GMT  
		Size: 581.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
