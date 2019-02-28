## `docker:test`

```console
$ docker pull docker@sha256:ef0ac6fc7a752e36b41a1f84915fd12d61e5b854b22a2dd68a33c47aa3bfcdae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `docker:test` - linux; amd64

```console
$ docker pull docker@sha256:2f8de8ac55d64c010b79d4fb15681c011e906e8b2a86439d996879c227fe6e62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.6 MB (51575438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:956a9d995ed50cd99c26e1b816cbd6820dfb7f9340d61b9c42edb2bc18c2f72e`
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
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 01:19:28 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 01:19:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 01:19:33 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 01:19:34 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 01:19:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 01:19:34 GMT
CMD ["sh"]
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
	-	`sha256:fc36c42dd7a1cc91b8af9dcd1974ce489c211d15eb776bf5b8b7ac1d1de658b9`  
		Last Modified: Thu, 28 Feb 2019 01:21:09 GMT  
		Size: 48.5 MB (48517388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1aacc3c84aaab8c04202b3d4e325010c5bccd846d301534a24cfae51770cf`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667f60de1e2176768864802c14165451c6c66e75dc243508e6fbcd479f81cd0e`  
		Last Modified: Thu, 28 Feb 2019 01:20:56 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm variant v6

```console
$ docker pull docker@sha256:d78c891512c3208d449f1cc80669db91ae6f4eda571a18163a4589ccd4cf43c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48561635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72389ebb18041498d08fce4a35e5ed9b41907d1990836976405b9dd93fe44937`
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
# Thu, 28 Feb 2019 08:49:22 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 08:49:23 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 08:49:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 08:49:32 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 08:49:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 08:49:33 GMT
CMD ["sh"]
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
	-	`sha256:7699a527fef78458aba0f169c578ad3bf45d9d56209d4744b2d460c8bb3cf608`  
		Last Modified: Thu, 28 Feb 2019 08:51:46 GMT  
		Size: 45.7 MB (45717190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41d7433ed7bd7d47b74ccd95e73407b5f7f0ea36fe7f51147e6842ee3aeb521`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dc646edb75306209594cad7049c7a645d01848895d0f371a38caf3422a3d2f6`  
		Last Modified: Thu, 28 Feb 2019 08:51:30 GMT  
		Size: 736.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:2e4f3fe637a2ccca876a078bba4e36ead31ad0033be11d2046d7ee2f73187025
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46629268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f8ca053926e7243aa74935d7795a0d0e602d66f48135686c4b734cc33e7310d`
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
# Thu, 28 Feb 2019 09:39:35 GMT
ENV DOCKER_CHANNEL=test
# Thu, 28 Feb 2019 09:39:36 GMT
ENV DOCKER_VERSION=18.09.3-rc1
# Thu, 28 Feb 2019 09:39:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Thu, 28 Feb 2019 09:39:47 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Thu, 28 Feb 2019 09:39:48 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Thu, 28 Feb 2019 09:39:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 28 Feb 2019 09:39:49 GMT
CMD ["sh"]
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
	-	`sha256:8665bb04aa4f9e4098742622df424f2ee400ffd0f3b67e7f1803930e6a8d861a`  
		Last Modified: Thu, 28 Feb 2019 09:43:03 GMT  
		Size: 43.6 MB (43637435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a6020e61b97c75b161bad5ad9340fa6190dbf95fbf8750e4da24a26c02317d`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 546.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e231f27c4d1c38ad76e01b32d0eb6d644d8f1ca6ab22f4f6cbd134962a903748`  
		Last Modified: Thu, 28 Feb 2019 09:42:43 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
