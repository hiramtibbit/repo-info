## `docker:18-dind`

```console
$ docker pull docker@sha256:699838c9f0a4396b56c1d946fea8d88a07e5224f11ccb743946a76b5947afd36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:18-dind` - linux; amd64

```console
$ docker pull docker@sha256:c924454d3ab7d62b0f3a01b33a4d07459ef074685940b9b52f46ae01ce064c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56320575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cde3243570821da492f8b1326745c97ef568c4a6ae2785f6cde2b6d8bc7afdb2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:19:38 GMT
RUN apk add --no-cache 		ca-certificates
# Tue, 05 Feb 2019 20:19:38 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 01:19:50 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 01:19:55 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:56 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:56 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 01:20:01 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 01:20:02 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 01:20:02 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 01:20:04 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 01:20:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:20:04 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 01:20:04 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 01:20:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 01:20:05 GMT
CMD []
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6d4c96fd308155315fc8f535227125342b8466a665fbf44eb87bd350de277`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 301.9 KB (301887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945d978b4f197a284150a58bc63f99c562080d67d3eb5ba8b97945b194d58235`  
		Last Modified: Tue, 05 Feb 2019 20:28:45 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa24c3bcf9ccca9ccc5f859c8a8b5e23037cd33e46f555ab5f03f8835165970`  
		Last Modified: Thu, 28 Feb 2019 01:21:40 GMT  
		Size: 48.5 MB (48490112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96e08b226bf4560034da76e2b58b2641455f96ba958271a90be3bc40cd783218`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6e0b2d656a0657b5f732fa5df502be55312fe353f10da4bf1fc4e0a69ea6ee`  
		Last Modified: Thu, 28 Feb 2019 01:21:29 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf8271b5d3fbb07ff2b22b367dc664be6d9cdc498003470fd8af86492aaec3f`  
		Last Modified: Thu, 28 Feb 2019 01:21:48 GMT  
		Size: 4.8 MB (4769797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec495682b2b3c9b17ce31de098fa1b7153484d3fc199c75fbafcd0ebb307e42`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6d09f7a9f69f939d901906080f4b8215d6778a9fb6e58813e348a3313e407b`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844c4b73f493dbea5a5efe5d27e1a15447231114f8b231244765689bca915ad0`  
		Last Modified: Thu, 28 Feb 2019 01:21:47 GMT  
		Size: 558.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:f8bed6633aca7fa0a1cff5b4e6abdd4fa76495d50b4471ad77f39a7ec3a9c8c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51297327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed002c7508b3fb6d610b95b02d40a9e9087e535034d5836ba1d281f31098ec22`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 08:56:40 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 08:56:41 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 08:49:57 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 08:49:58 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 08:50:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:50:07 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:08 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 08:50:15 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 08:50:16 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 08:50:17 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 08:50:19 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 08:50:19 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:50:20 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 08:50:20 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 08:50:21 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 08:50:21 GMT
CMD []
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febca98d02499769aafda3b753877e19487b5676a16cfcb8cc9cd663e6127421`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 302.1 KB (302095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5053a7aa5deab3e0c4bfc6db2c156d553c3edd217c9ba4aaff8ea2b9fad14977`  
		Last Modified: Wed, 06 Feb 2019 09:04:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c001068a2ca9a8dc3c157c780e57ebf7a4fcb430f675601542af256f58b3c50b`  
		Last Modified: Thu, 28 Feb 2019 08:52:31 GMT  
		Size: 45.7 MB (45685329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080c48fbe619e3d8c46d8dfc07736f6835c912fcbc58ab7a60430447cd2aab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636f6f63cf7fa2323d4afbfc70fd77f89b4e8333ec3f92a027bd08f781900bd9`  
		Last Modified: Thu, 28 Feb 2019 08:52:16 GMT  
		Size: 734.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafb14b88fc4630f7083d22d382063b29b94c1ed9760cc109bdd81b739d377d8`  
		Last Modified: Thu, 28 Feb 2019 08:52:46 GMT  
		Size: 2.8 MB (2764918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14660ff2fe9dc2ce463ed163b4a74376bc9a88a4c5e1ad999e176c2150b77ad8`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd114497ccf7df36062b3b50dd0b92525a34fdd9e4a93155d483d1649ad4eb5`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 755.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3290b9d105f8b001fd3728bd87ce5b08158b030204d5f0df0cf13fab54edab02`  
		Last Modified: Thu, 28 Feb 2019 08:52:45 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:18-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:4deafc0a05146987076925a3c1a5ea07818948458d10214af0df00f4117c63ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51417215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:317071b4b8fa32bc1be838e96673e2dd2cb2ea2ed039524e38532f30b741c2f5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 10:35:48 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 06 Feb 2019 10:35:53 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_CHANNEL=stable
# Thu, 28 Feb 2019 09:40:33 GMT
ENV DOCKER_VERSION=18.09.2
# Thu, 28 Feb 2019 09:40:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:40:46 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:40:48 GMT
CMD ["sh"]
# Thu, 28 Feb 2019 09:40:58 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 28 Feb 2019 09:41:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 28 Feb 2019 09:41:01 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 28 Feb 2019 09:41:03 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 28 Feb 2019 09:41:04 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:41:05 GMT
VOLUME [/var/lib/docker]
# Thu, 28 Feb 2019 09:41:06 GMT
EXPOSE 2375
# Thu, 28 Feb 2019 09:41:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 28 Feb 2019 09:41:07 GMT
CMD []
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5593484900d3703f8e48e8d8b2c655313cae960ef0f59e5a59bbea1736e29551`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 302.3 KB (302324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6682f3bac3bd3144b0abdab1a15d89b6c4921b3434f7507bff7a6b8c63d82a8e`  
		Last Modified: Wed, 06 Feb 2019 10:50:20 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787ee21498eb9e0ab7128778ec33d0eabcd282370d340fdf1f48b93aac73a470`  
		Last Modified: Thu, 28 Feb 2019 09:44:08 GMT  
		Size: 43.6 MB (43612983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adcc98dfa78c6ea1db3112a12210bc34512d921eedf4de891d375d0be36ce85`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d93044de9f875ca0c4611a24adf3221b966d3987c948460c567dab4790eff79`  
		Last Modified: Thu, 28 Feb 2019 09:43:49 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79438251dd0380ba88f2dbfe62a9a71d6e6e68ff18d4a662e07a8f0ac1f84b3`  
		Last Modified: Thu, 28 Feb 2019 09:44:26 GMT  
		Size: 4.8 MB (4809786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e4363d9157c551533716a9bee201af2edcd8962d89d0360462b0eb54fade7e`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30392ce49a90d31ffdddffe3bf7ffad11112ddfc93cf5cf2ab9b6645a07b259f`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 756.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f109538ab2844315cccc1917be324482f752b0d4b2431c1d711a5a240a98ac2b`  
		Last Modified: Thu, 28 Feb 2019 09:44:24 GMT  
		Size: 557.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
