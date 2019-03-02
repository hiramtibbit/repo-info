## `docker:test-git`

```console
$ docker pull docker@sha256:48e7f97f11962a82d3ad92549e6b292b040f8b1a4d82255ef2734f8d3aab914c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-git` - linux; amd64

```console
$ docker pull docker@sha256:690ce07cb0e2fc1e3d987f3ae6ede1c672886ff7d257ba64b42ff0c375d29101
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.8 MB (60848221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccb4c1db1e6d2076806d3e1565544d028eb0721eff3a0c25ab1c25e8c0d6fca`
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
# Sat, 02 Mar 2019 01:19:43 GMT
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
	-	`sha256:6d3c75fbb60b9659be16a3031b8f2d30c3e503e93ba3ec5f2b6d81d988321804`  
		Last Modified: Sat, 02 Mar 2019 01:20:33 GMT  
		Size: 9.3 MB (9270664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
