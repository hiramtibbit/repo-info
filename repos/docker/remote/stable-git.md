## `docker:stable-git`

```console
$ docker pull docker@sha256:99240c584aacef5019559d0351a3017f1911f9bb618167306c490c5938bd6b77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:stable-git` - linux; amd64

```console
$ docker pull docker@sha256:2f4555d6884d605dcff7e3deb152d971b416ce5dc48ffc8d8e23f4f931741d3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60818855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb07723b61d71f25a620de2be6972d1b4c414d6e5933d30a8a0a0a0c99647d1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 28 Feb 2019 01:20:11 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:7a2a116a7c9f337005d3dc7bd4d4192e7074dde5d7dcddc1986a524dcc7e2290`  
		Last Modified: Thu, 28 Feb 2019 01:21:56 GMT  
		Size: 9.3 MB (9270692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm variant v6

```console
$ docker pull docker@sha256:99786077e608c30c1ca1045ad54e9de4b62a8ed00ef94aca47d8bb8e8d4c69d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57296558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b051ce505dc1e14f001fe1d20069278f873996b448ac4771d1138c6ab2694600`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 28 Feb 2019 08:50:29 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:e08551d647628adddb18e37493d0674aba8cbd1813ef2e4fa41d89a1aa80b2f2`  
		Last Modified: Thu, 28 Feb 2019 08:53:00 GMT  
		Size: 8.8 MB (8766785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:stable-git` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:06ad4de5fba8aef01ae45f149052ffdbe2f86ab33406b392d8c43769c9f4a2fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.1 MB (56122242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28194f04b9ad3649cd04e72f3b2624a90c5ad4c1edff0e0c252c11038fcf3127`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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
# Thu, 28 Feb 2019 09:41:17 GMT
RUN apk add --no-cache 		git 		openssh-client
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
	-	`sha256:84f3513d5b2b3e9c313aac4fe1d06901613c7115bba499be9bdfa344dfa8cf62`  
		Last Modified: Thu, 28 Feb 2019 09:44:44 GMT  
		Size: 9.5 MB (9517425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
