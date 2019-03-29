## `docker:test-dind`

```console
$ docker pull docker@sha256:21c0de8e56dfbe31036a1dcab761b15fecd01189bb34ed0332b0e67b1188a218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:998e8af57e2387b7d198e273a69733f4f30844e304fa774443624727287ddea0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.4 MB (56368231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b90ec7b4590e2638ed18d0afff2467a5eea36947c69439a188ed67c3d47e2ef2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:17:19 GMT
ENV DOCKER_CHANNEL=stable
# Fri, 29 Mar 2019 21:19:27 GMT
ENV DOCKER_VERSION=18.09.4
# Fri, 29 Mar 2019 21:19:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Fri, 29 Mar 2019 21:19:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Fri, 29 Mar 2019 21:19:33 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Fri, 29 Mar 2019 21:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 29 Mar 2019 21:19:33 GMT
CMD ["sh"]
# Fri, 29 Mar 2019 21:19:37 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Fri, 29 Mar 2019 21:19:38 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Fri, 29 Mar 2019 21:19:38 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Fri, 29 Mar 2019 21:19:39 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Fri, 29 Mar 2019 21:19:39 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Fri, 29 Mar 2019 21:19:39 GMT
VOLUME [/var/lib/docker]
# Fri, 29 Mar 2019 21:19:39 GMT
EXPOSE 2375
# Fri, 29 Mar 2019 21:19:40 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 29 Mar 2019 21:19:40 GMT
CMD []
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce7779d8bfe3415e27ec3bf5950b2ab67a854c608595f0f2e49066fb5806fd12`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 301.9 KB (301875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1a1e452942df2228b914d2ce9be43f18b137f4ebc3dce9491bc08c2630a2ea`  
		Last Modified: Thu, 07 Mar 2019 23:18:31 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83465382163b5b99cfe605a77616870015335748133dcf7b6ab83a77ad3fbecd`  
		Last Modified: Fri, 29 Mar 2019 21:20:18 GMT  
		Size: 48.5 MB (48537782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d998591732df0b5988acf128108d26531aa59df9f3d7f3b3a0c9fd4164ac149c`  
		Last Modified: Fri, 29 Mar 2019 21:20:07 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968b299526c53a61095c8be427b4d01420e697a28451da21b6aa2e1ecdcf665a`  
		Last Modified: Fri, 29 Mar 2019 21:20:07 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906054554556aeba8015a576366d853fb6ff715829a44d53bd654881542db61b`  
		Last Modified: Fri, 29 Mar 2019 21:20:25 GMT  
		Size: 4.8 MB (4769793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412c7e8d77a65dffa6e09d91055188bd44e811d1cb07e62de392ae0885de2cae`  
		Last Modified: Fri, 29 Mar 2019 21:20:24 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8403c319bbb20f48c76086258da4dcf228d8b5ba8ba50efdd6f85bc3cdd045`  
		Last Modified: Fri, 29 Mar 2019 21:20:24 GMT  
		Size: 754.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee17887e771d6cd0753882572e114507b8172a6c218315a9245db4441559d318`  
		Last Modified: Fri, 29 Mar 2019 21:20:24 GMT  
		Size: 553.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
