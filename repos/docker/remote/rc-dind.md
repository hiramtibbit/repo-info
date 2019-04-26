## `docker:rc-dind`

```console
$ docker pull docker@sha256:398feeeba7eb94f5efabdabb7f5a4071228e11cda57300c19edfb382fe0669e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:c3c6407f1a03c9729aae32600a9ee8f5b11283fac4659ac25d69e21d1a5f577b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71158285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1539fd48868ca51d7a0172d7b8c275a53933af810aa24a226182c9832e0dc303`
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
# Thu, 25 Apr 2019 23:19:40 GMT
ENV DOCKER_VERSION=19.03.0-beta3
# Thu, 25 Apr 2019 23:19:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 25 Apr 2019 23:19:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 25 Apr 2019 23:19:47 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 25 Apr 2019 23:19:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:19:47 GMT
CMD ["sh"]
# Thu, 25 Apr 2019 23:19:51 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Thu, 25 Apr 2019 23:19:52 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Thu, 25 Apr 2019 23:19:52 GMT
ENV DIND_COMMIT=37498f009d8bf25fbb6199e8ccd34bed84f2874b
# Thu, 25 Apr 2019 23:19:53 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind
# Thu, 25 Apr 2019 23:19:53 GMT
COPY file:779dca3bbfbd33f9223bd74feaf003513d1936b73cdbfb2a8e52d9a12505d90c in /usr/local/bin/ 
# Thu, 25 Apr 2019 23:19:54 GMT
VOLUME [/var/lib/docker]
# Thu, 25 Apr 2019 23:19:54 GMT
EXPOSE 2375
# Thu, 25 Apr 2019 23:19:54 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 25 Apr 2019 23:19:54 GMT
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
	-	`sha256:21f1f19a7572eebd4c20a357e39ec4742ce602676a749c2097d3794c84e8a066`  
		Last Modified: Thu, 25 Apr 2019 23:20:47 GMT  
		Size: 63.3 MB (63325571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5733205a86a562fa9d477acb5a2f4c5d8600a8ba8d2f93d05f6cb61c39a8538e`  
		Last Modified: Thu, 25 Apr 2019 23:20:33 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69fd1bd3d00ac96978fd84ab7f780ee96446f76b2b9e9996286c0d465484457`  
		Last Modified: Thu, 25 Apr 2019 23:20:33 GMT  
		Size: 737.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822bd7c636b141ed8802f820f9a7a7b15330b6bc4f847c26b097060e61f8141c`  
		Last Modified: Thu, 25 Apr 2019 23:20:54 GMT  
		Size: 4.8 MB (4769752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0a842cb1565ab9afa4225ad227a08b682da93aff80f571befd6240248abd22`  
		Last Modified: Thu, 25 Apr 2019 23:20:53 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279c794914cdc3a3319ab0a263ebfc183817dc758449efc2bee9c7e9f90e5449`  
		Last Modified: Thu, 25 Apr 2019 23:20:53 GMT  
		Size: 759.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3cd062db1e1b390c8fd0a0833ba47b02845c69a55c99ced9bd923d4cc872e`  
		Last Modified: Thu, 25 Apr 2019 23:20:53 GMT  
		Size: 579.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
