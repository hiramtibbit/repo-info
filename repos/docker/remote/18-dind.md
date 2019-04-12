## `docker:18-dind`

```console
$ docker pull docker@sha256:48ac96afd2f1bd331293b87a2f2b1a6b5a7968216f1757ef22b2e473bc183d6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `docker:18-dind` - linux; amd64

```console
$ docker pull docker@sha256:fef29be25e3400dc76364260c0118e7bb6b603838cec9ad7eafa3b2dc1121383
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56360893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc80b8fe9679a6e59c0709911092f73f74b65201ab55ce1f737196a114b4f25`
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
# Tue, 09 Apr 2019 23:20:40 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 12 Apr 2019 00:19:33 GMT
ENV DOCKER_VERSION=18.09.5
# Fri, 12 Apr 2019 00:19:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 12 Apr 2019 00:19:39 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 12 Apr 2019 00:19:39 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:19:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:19:39 GMT
CMD ["sh"]
# Fri, 12 Apr 2019 00:19:45 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 12 Apr 2019 00:19:47 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 12 Apr 2019 00:19:47 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 12 Apr 2019 00:19:48 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 12 Apr 2019 00:19:48 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 12 Apr 2019 00:19:49 GMT
VOLUME [/var/lib/docker]
# Fri, 12 Apr 2019 00:19:49 GMT
EXPOSE 2375
# Fri, 12 Apr 2019 00:19:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 12 Apr 2019 00:19:49 GMT
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
	-	`sha256:1826484332dc00e09873909a58888d4f58f8366437046e494b2c3494f8abaf4f`  
		Last Modified: Fri, 12 Apr 2019 00:20:34 GMT  
		Size: 48.5 MB (48528195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a124bc45399bfbfc7dca105757bffe8f2e50acb4d43078077f8c9afc94cdc2d7`  
		Last Modified: Fri, 12 Apr 2019 00:20:22 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1147593372b17dca1548ba1f36e33ac74e57ab4cbd1bb0fea67513e7cd12606`  
		Last Modified: Fri, 12 Apr 2019 00:20:22 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc097e0422be37d5f8378704e7c9fa6e740118c7a423242efe52a1d7f86fb67a`  
		Last Modified: Fri, 12 Apr 2019 00:20:41 GMT  
		Size: 4.8 MB (4769762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43324fff861721886f97aca5858873eac67f2a444d52973a17fe2576a4187617`  
		Last Modified: Fri, 12 Apr 2019 00:20:40 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa369f8238edad5a2600c2686b13418f4321a090f0b50ef93353f2f77578aaf9`  
		Last Modified: Fri, 12 Apr 2019 00:20:40 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08fd3e8ef00bf7653dce8635ef242ffb8437e92ded181b69aad493d0c772cc2`  
		Last Modified: Fri, 12 Apr 2019 00:20:40 GMT  
		Size: 554.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:45982b698104d3a47ce93b0e88ce2ae26811d69537b45a3ac8f170c5da120dcc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51341176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea064c3310ee8953a29a8eca168caf17309788c52beb4b4b87ba816a3809510`
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
# Wed, 10 Apr 2019 07:50:17 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 12 Apr 2019 07:49:36 GMT
ENV DOCKER_VERSION=18.09.5
# Fri, 12 Apr 2019 07:49:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 12 Apr 2019 07:49:45 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 12 Apr 2019 07:49:45 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 12 Apr 2019 07:49:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 12 Apr 2019 07:49:46 GMT
CMD ["sh"]
# Fri, 12 Apr 2019 07:49:52 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 12 Apr 2019 07:49:54 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 12 Apr 2019 07:49:54 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 12 Apr 2019 07:49:55 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 12 Apr 2019 07:49:56 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 12 Apr 2019 07:49:56 GMT
VOLUME [/var/lib/docker]
# Fri, 12 Apr 2019 07:49:56 GMT
EXPOSE 2375
# Fri, 12 Apr 2019 07:49:57 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 12 Apr 2019 07:49:57 GMT
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
	-	`sha256:f4f752bedf15ee9430c56a646d1b8064a509ff36f3c70f022b91604a230eed61`  
		Last Modified: Fri, 12 Apr 2019 07:51:03 GMT  
		Size: 45.7 MB (45726613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aaf66aa7836f474af85e74bde054838de7f6ecffc5b3eea9ef889afa72236f7`  
		Last Modified: Fri, 12 Apr 2019 07:50:46 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc90ee4d0bcc3ada6dfdee362d9b1c3e5cfc20271338a6524ebf61c7f32be2a`  
		Last Modified: Fri, 12 Apr 2019 07:50:46 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6502c038797261ab64bc86c6a5dc59de6a500e1338ee546d76b019cd2ebc4dc`  
		Last Modified: Fri, 12 Apr 2019 07:51:14 GMT  
		Size: 2.8 MB (2764936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5e483220e93a08734a348088fd1c9a64037a8cbbfc34493ddda251ff157b9e`  
		Last Modified: Fri, 12 Apr 2019 07:51:14 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798bc015f74d7de00f35bf0bf36bd54814238abd0db530b2fd867d55c00ff8f9`  
		Last Modified: Fri, 12 Apr 2019 07:51:13 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c871e929dbe4300c16e09252a65f875af8c7ce71b3cb4b828ed8e8bd885c64`  
		Last Modified: Fri, 12 Apr 2019 07:51:14 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
