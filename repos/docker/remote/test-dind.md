## `docker:test-dind`

```console
$ docker pull docker@sha256:82b29645d2d4dd06a3a2e3c816e5b48931f99e9e70df76db470fdff8d51127a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:914eab70455bc0069ebf151bb7218603a713b5d6a87b76e6f89607a82b3ceee8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f63964f0d3ceb8b1a00c832b4d03120dbc36ba780d3d26c6b3cc2e895de3b012`
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
# Sat, 02 Mar 2019 01:19:23 GMT
ENV DOCKER_VERSION=18.09.3
# Sat, 02 Mar 2019 01:19:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 02 Mar 2019 01:19:28 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:29 GMT
CMD ["sh"]
# Sat, 02 Mar 2019 01:19:36 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Sat, 02 Mar 2019 01:19:37 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Sat, 02 Mar 2019 01:19:37 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Sat, 02 Mar 2019 01:19:38 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Sat, 02 Mar 2019 01:19:38 GMT
COPY file:8fa7199c70073054a7b943c52e969a2548c7f60c27b4aed162225222996db4a9 in /usr/local/bin/ 
# Sat, 02 Mar 2019 01:19:38 GMT
VOLUME [/var/lib/docker]
# Sat, 02 Mar 2019 01:19:38 GMT
EXPOSE 2375
# Sat, 02 Mar 2019 01:19:38 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Sat, 02 Mar 2019 01:19:38 GMT
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
	-	`sha256:b4d384ba2f7d42b6ba88730fbd8e651cf9b26f60d419104bab1644072441f805`  
		Last Modified: Sat, 02 Mar 2019 01:20:15 GMT  
		Size: 48.5 MB (48519505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e67cb15ddbed73713f8c3caad06fba2d59eb74e474072526bcb8b93911161d`  
		Last Modified: Sat, 02 Mar 2019 01:20:05 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078a1ba55df054fd3b6fd4916a243e402d7831cb122af7abd8a1c0a2b355582c`  
		Last Modified: Sat, 02 Mar 2019 01:20:04 GMT  
		Size: 739.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09840a071fed0d7b02da6758e56c0c9bf9afd423ec8eaa1d3273b3653386e4b4`  
		Last Modified: Sat, 02 Mar 2019 01:20:25 GMT  
		Size: 4.8 MB (4769760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31caf057d2dc0460f1fc68562da6bc9ec27f83f9e530c4be70c113741fc0f1da`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30baa17d0d2b8f66629af5e08975d43fcc19969da6a7eb545fb82f1da47fbd2`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 758.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c4191cd5d8e6647603f5c33da0932062c4e9f93a282e32f521ea0b70ecb475`  
		Last Modified: Sat, 02 Mar 2019 01:20:24 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
