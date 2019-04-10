## `docker:rc-dind`

```console
$ docker pull docker@sha256:d5561b476667ebacec530164d09d76536fe86f0537c273865cccb368353b4b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:77a91ba5ee4aa17940c4796c33ea7968f4f35527413ef2f215f5434e2b70323b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.1 MB (71077549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8f3746f7033ed1cfb0b25ffa73a04e38fcc898d5abd542df67b66efcd1fb019`
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
# Tue, 09 Apr 2019 23:36:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:37:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:37:00 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:37:01 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:37:01 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:37:02 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:37:02 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:37:02 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:37:02 GMT
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
	-	`sha256:eed6c333ad2e27d51fce8b3dad0aa31cf7c51256ac77dbf417ff716454f20671`  
		Last Modified: Tue, 09 Apr 2019 23:38:38 GMT  
		Size: 4.8 MB (4769764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c952cb42ffbcfba02026fa1bf0879ab70f1838c31fb496ef72c14c43b4f30422`  
		Last Modified: Tue, 09 Apr 2019 23:38:38 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e736896fe1ad5b09ff441efc429dec296fc7000c1d83e964c263927887d6042`  
		Last Modified: Tue, 09 Apr 2019 23:38:37 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af941b55a9c5f2506c398cada296cb302e8d68063e1e9219bd7b3407f470f85e`  
		Last Modified: Tue, 09 Apr 2019 23:38:37 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:278ce4b323e9263b4fd1b30ea577281d127c298871afc6257d75ad575a5bd62f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64646634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2237c362868daab678940bc3007d6da6b660d95b55b1124b653fd692af61f1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:53:19 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 03:53:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:23 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 07:49:24 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 07:49:57 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 07:49:58 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 07:49:59 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 07:49:59 GMT
CMD ["sh"]
# Sat, 06 Apr 2019 07:50:10 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Apr 2019 07:50:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Apr 2019 07:50:12 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 06 Apr 2019 07:50:13 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Apr 2019 07:50:14 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 07:50:14 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Apr 2019 07:50:15 GMT
EXPOSE 2375
# Sat, 06 Apr 2019 07:50:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Apr 2019 07:50:15 GMT
CMD []
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04291196b792b79f87314db65da48b82e78a6379cc0057d47bc1f1fba30a4cd`  
		Last Modified: Fri, 08 Mar 2019 03:54:44 GMT  
		Size: 302.1 KB (302104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbce9f121c7371de1a407eb91454621b8de8780f1fa69282905bdf2bf1c65766`  
		Last Modified: Fri, 08 Mar 2019 03:54:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201aec8314fb9b74d3c69e06c7beb0a37f2f00ec90a71bf46f87f59c99f86f0d`  
		Last Modified: Sat, 06 Apr 2019 07:51:33 GMT  
		Size: 59.0 MB (59034823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8937908152c0b7c1a124da0ef38194fc1f98c26494596bcaa4f6e2708ff1772`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98bf1c3f8b09d509bccf2c945fbdbf7b518eb1ca29c3843c3a0158396c8a97`  
		Last Modified: Sat, 06 Apr 2019 07:51:09 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c4778314398b119e77d913449c13a550206e52ae0fb69592b6f60bc39106a2`  
		Last Modified: Sat, 06 Apr 2019 07:51:42 GMT  
		Size: 2.8 MB (2764948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3fb9111b03d381f57bffea01e9a19d500b9b006e568654e91ad36f374075ad6`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb86b65f284d702843065f6e38ab2469feb09e05bbbd3c8b8cf603d3a0f90fb`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93ba283821e5ab41e8731c6dc901218d88b0e6e7c03190c78ed0699a25859340`  
		Last Modified: Sat, 06 Apr 2019 07:51:41 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ee36da39396b99e24b9c33449172318790fa3cff083eb9e85b10a0f7efd2b71f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.3 MB (64347420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5e71b6a3e72a05f8660715dbfd2fc5e0a2e3103c0dbbe867bd0bd4cb093ccb8`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

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
# Sat, 06 Apr 2019 08:40:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 06 Apr 2019 08:40:06 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 06 Apr 2019 08:40:07 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 06 Apr 2019 08:40:10 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 06 Apr 2019 08:40:11 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 06 Apr 2019 08:40:11 GMT
VOLUME [/var/lib/docker]
# Sat, 06 Apr 2019 08:40:12 GMT
EXPOSE 2375
# Sat, 06 Apr 2019 08:40:13 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 06 Apr 2019 08:40:14 GMT
CMD []
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
	-	`sha256:e4ae6e9b467132350228ddff01c8bfde47d99ffccbf1565f8402ada43d505397`  
		Last Modified: Sat, 06 Apr 2019 08:42:12 GMT  
		Size: 4.8 MB (4809852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434385bcfadd41f89e8968c25550d83fc3fde8237f29f7ba1402e9d8b6a35da1`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d107aabcdb1fcb124e0d100f8b3da147b60e7d2a33e782d54fc78d683f76f3`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7fd8516ccfc138f5cfe5021787b66c0ef468bfd077d30075bb0dd2b4aa73220`  
		Last Modified: Sat, 06 Apr 2019 08:42:10 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
