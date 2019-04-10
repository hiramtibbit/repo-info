## `docker:edge-dind`

```console
$ docker pull docker@sha256:c4da5b268079eb5bf04d77d7aff0082a3d2c795000d9da3d4c4f27511cd205a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `docker:edge-dind` - linux; amd64

```console
$ docker pull docker@sha256:ab8458865018a06596a8727fd9371ac858a3319d647ceb33f58198ade71e5789
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52150071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:765266e8f69ae70d04d51f180ddc0e552ca562d737aa1d9811a8255c04b14eb7`
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
# Tue, 09 Apr 2019 23:21:06 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Tue, 09 Apr 2019 23:21:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Tue, 09 Apr 2019 23:21:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:14 GMT
CMD ["sh"]
# Tue, 09 Apr 2019 23:21:19 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Tue, 09 Apr 2019 23:21:19 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Tue, 09 Apr 2019 23:21:20 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Tue, 09 Apr 2019 23:21:20 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Tue, 09 Apr 2019 23:21:21 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Tue, 09 Apr 2019 23:21:21 GMT
VOLUME [/var/lib/docker]
# Tue, 09 Apr 2019 23:21:21 GMT
EXPOSE 2375
# Tue, 09 Apr 2019 23:21:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Tue, 09 Apr 2019 23:21:21 GMT
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
	-	`sha256:1f6f7f6e03b3295902c37823308c8ef5ece1ec8701738e50598539e0a5a83087`  
		Last Modified: Tue, 09 Apr 2019 23:23:08 GMT  
		Size: 44.3 MB (44317363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbb185c156f5598f505011de8a9609630d6ec0ef3d6423eeb7d25e9387dbe8ef`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ca6c25eb67fa160fe4218c652fa173b533d8e6c86598578499e00ed6240737`  
		Last Modified: Tue, 09 Apr 2019 23:22:57 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec858ab88f563c6207ba63ea2e785e529265d4f192fecfdf9774800f15989447`  
		Last Modified: Tue, 09 Apr 2019 23:23:14 GMT  
		Size: 4.8 MB (4769772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5daf53978d3cd7d7156e2e57f278be4c3576b1e8b34e7fb295ab20f7aac81020`  
		Last Modified: Tue, 09 Apr 2019 23:23:14 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:297ba1f3dd4cdf48b70f0710b851f549e3c82bdd8947800a37d260f08ba69ae1`  
		Last Modified: Tue, 09 Apr 2019 23:23:13 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfd3f51b70a0c95d820b331dc6760464a22319971f6347dd54663ff9ca78917`  
		Last Modified: Tue, 09 Apr 2019 23:23:13 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:255d6219fa750ef68af32bec25ca1d584175a841c722a8d3a817f35c502da346
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48724747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121eeced307caa3b28e41d4868cd7d1fb58eeebec4b829f042c579a58d1a8477`
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
# Fri, 08 Mar 2019 03:53:20 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 03:53:54 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 03:54:02 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 03:54:03 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:04 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 03:54:10 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 03:54:12 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 03:54:12 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 03:54:14 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 03:54:14 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 03:54:15 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 03:54:15 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 03:54:15 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 03:54:16 GMT
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
	-	`sha256:54bba615cbd58014ad2e1e338dc8856de4cc50ba844d7ce99e3e655fd334705f`  
		Last Modified: Fri, 08 Mar 2019 03:55:57 GMT  
		Size: 43.1 MB (43112970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707a010de5794e5362456ef028cf7d1941ee84ec84a6ea1722c7e0d7fea5ec90`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d747575eaf154f816810a56a724467b7f4d37654019548c1a8eab297b3c2f08`  
		Last Modified: Fri, 08 Mar 2019 03:55:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3a1286cfbc486936841f486fe94f2f4734422de199024d8cc62b2db320fdf2`  
		Last Modified: Fri, 08 Mar 2019 03:56:08 GMT  
		Size: 2.8 MB (2764919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2f5a067f69655d6f2216aa9152d3d5764ce7aa5edf1518a96658dce70705bd`  
		Last Modified: Fri, 08 Mar 2019 03:56:08 GMT  
		Size: 1.3 KB (1335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f69c7f8da525ae777149cc23a060c44448fb30456a203db733a0431df93a34`  
		Last Modified: Fri, 08 Mar 2019 03:56:07 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449065dcd25d2c306d3f2858dc218f5e141ff13cf2788c19d7db29fcc1dd79c3`  
		Last Modified: Fri, 08 Mar 2019 03:56:07 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2f9d39c1f55035dbbec7a68a759d94899ef96737d828be889d278630d0e182e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49020861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b39b2d5122d5c960d814e12274d367b8825931ddb4ebf51ca7af1f7fd0601fc0`
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
# Fri, 08 Mar 2019 04:18:50 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:20:01 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:20:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:20:13 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:20:24 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:20:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:20:28 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:20:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:20:31 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:20:31 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:20:32 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:20:33 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:20:34 GMT
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
	-	`sha256:737848159150b12e251e027f08f9630263d9958933a38867038eb85d88aa7ec3`  
		Last Modified: Fri, 08 Mar 2019 04:23:02 GMT  
		Size: 41.2 MB (41216781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b49bb6bf59b4c7b39b8605bb0cece560ac15a89fa5ece9fadc4a952debabfd1`  
		Last Modified: Fri, 08 Mar 2019 04:22:43 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8977d76a7d8964f378ed101936eb8c721cc4da9caba979d90762b84080e16b30`  
		Last Modified: Fri, 08 Mar 2019 04:22:42 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48f4e9f7c018ba67fd5578d993b8efde330e6ec8be40fb4257be311c87dd84ec`  
		Last Modified: Fri, 08 Mar 2019 04:23:19 GMT  
		Size: 4.8 MB (4809769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a270647959b165a9a04e9c29fdd595ee660afc9183e7becb58334b990e673fca`  
		Last Modified: Fri, 08 Mar 2019 04:23:17 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7ac5e83b7e40652969f02dee758199a2d9cd5aa6d76ddea829bee3982932c8`  
		Last Modified: Fri, 08 Mar 2019 04:23:17 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a4b69da51b6b91793511a7c9bea238ff94555d4b6bea9f8870e1d61c5bdb8c6`  
		Last Modified: Fri, 08 Mar 2019 04:23:18 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a6252c5aabf817829309273f21e7535c06e97b83ea6208e451624c3c7a208fe8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49035215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94088c7f25288581ede88a418bdbb8c732c99e31661ddd063cf5aca2bc176f36`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:41:26 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:41:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:41:41 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:42:12 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:42:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:42:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:42:29 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:42:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:42:35 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:42:52 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:43:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:43:05 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:43:11 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:43:12 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:43:15 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:43:18 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:43:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:43:27 GMT
CMD []
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45855637bcec1d742e3fc418c5581954fd68a915937c39da7985238222e751a`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 304.5 KB (304528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff135c45d9f9bddd607c991868caeedda98ce373bb704cf933b6c628f87b9396`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb384d8627dc33cf9f29ff1c4790f79f4050206ac8860dc0cdb5ae8cdf16f41`  
		Last Modified: Fri, 08 Mar 2019 04:44:15 GMT  
		Size: 40.8 MB (40802874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a15620148e653b993c16ddfb56daea2006d476f534797d87c07105d40cc86c`  
		Last Modified: Fri, 08 Mar 2019 04:44:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288a653a5066e0b1ec9ac62918a27bcdcc265d5986dc6d09875428b9f1348482`  
		Last Modified: Fri, 08 Mar 2019 04:44:06 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069cd5869667867b64a17e5ac0828679fdfc4736a57c4c68b9fea731f553f396`  
		Last Modified: Fri, 08 Mar 2019 04:44:32 GMT  
		Size: 5.1 MB (5145080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08145056ca3bb28993caf6960c9f64e4a259abdbceb7b069eaad171d34fad940`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 1.3 KB (1341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6f46e7d294640f80843b94af76f4d6aba417beb21123e47db82faacb0fe44c`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7aa15ee2f21624d003e17b08f808ade7b89ace124c251862cf53359c364788`  
		Last Modified: Fri, 08 Mar 2019 04:44:30 GMT  
		Size: 559.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:edge-dind` - linux; s390x

```console
$ docker pull docker@sha256:7370ef26f3f8cf645c32e63225dc0e01e9c4d240c129e9f34507b67897d5dbaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51696506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b25c9207c3cf7b25f938929a7cb796870ba88274f536b9bbe8fcc8f10d9e7fb`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:05:55 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 08 Mar 2019 04:05:56 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:05:56 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 08 Mar 2019 04:06:09 GMT
ENV DOCKER_VERSION=18.06.3-ce
# Fri, 08 Mar 2019 04:06:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 08 Mar 2019 04:06:14 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:14 GMT
CMD ["sh"]
# Fri, 08 Mar 2019 04:06:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 08 Mar 2019 04:06:25 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 08 Mar 2019 04:06:25 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 08 Mar 2019 04:06:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 08 Mar 2019 04:06:27 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 08 Mar 2019 04:06:27 GMT
VOLUME [/var/lib/docker]
# Fri, 08 Mar 2019 04:06:27 GMT
EXPOSE 2375
# Fri, 08 Mar 2019 04:06:27 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 08 Mar 2019 04:06:27 GMT
CMD []
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c12d3dbd7380bfedcd015572c35c1dce283417c0c2b631ac99f2161b040271`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 302.4 KB (302400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7ad92bf9a398037815abc4ee32c231115e14a1ae723edc9f817d06fd3937a6a`  
		Last Modified: Fri, 08 Mar 2019 04:06:45 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a5a4db3af5e03ae5e5aafac01f27d321a0a8121dbd831cade7afdaeace4aa8`  
		Last Modified: Fri, 08 Mar 2019 04:06:56 GMT  
		Size: 44.0 MB (43986008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce9338c5150d2c655d5e00505012a0bc70772dc56c70890046fefb9fe184bbcc`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32d8b3be5302a1c03baea2ddc229665f3c19d7c22214bc9d5cf5cad547ded470`  
		Last Modified: Fri, 08 Mar 2019 04:06:46 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e851a97c3103596b37130beba6c254391e33024714ac0eb3d1647995fdadfb`  
		Last Modified: Fri, 08 Mar 2019 04:07:05 GMT  
		Size: 4.9 MB (4862738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97eb285fea6c35f637d016f7adf40ef729818c43565faf0a74008f337b376448`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820d630667eaa3e311de2aaa0f58ce23a5f9f60bc077896519c4a82ed8b0004c`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 757.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b927938b74544ebb2b74735d168b9963e32e8ee02d7470346f0c1a0918e3af1`  
		Last Modified: Fri, 08 Mar 2019 04:07:04 GMT  
		Size: 555.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
