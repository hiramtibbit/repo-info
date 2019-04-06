## `docker:rc`

```console
$ docker pull docker@sha256:68195580baf53a92f24ed4faa151896287993d70204ecc11ba430a86f9fc93b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:rc` - linux; amd64

```console
$ docker pull docker@sha256:14db806db853a0dda2750d4d6d5781bd2f5779960459bbd02b22b86290139653
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66302894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344f27c287133cffd3b107620cb197d473a6c2f1c32feb44924fb682abcee9b3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:17:18 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 07 Mar 2019 23:17:19 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 00:19:27 GMT
ENV DOCKER_CHANNEL=test
# Sat, 06 Apr 2019 00:19:24 GMT
ENV DOCKER_VERSION=19.03.0-beta1
# Sat, 06 Apr 2019 00:19:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! wget -O docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		dockerd --version; 	docker --version
# Sat, 06 Apr 2019 00:19:31 GMT
COPY file:abb137d24130e7fa2bdd38694af607361ecb688521e60965681e49460964a204 in /usr/local/bin/modprobe 
# Sat, 06 Apr 2019 00:19:31 GMT
COPY file:232c7644a72835c769a24023d9195c15e9ea7dbe3b01f641c800526aecd5676b in /usr/local/bin/ 
# Sat, 06 Apr 2019 00:19:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 06 Apr 2019 00:19:32 GMT
CMD ["sh"]
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
	-	`sha256:232f24f9ca42ff4f76607212fee59b2cc99c6c3cd838998f0ad352980ce4954a`  
		Last Modified: Sat, 06 Apr 2019 00:20:33 GMT  
		Size: 63.2 MB (63244855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b465af33dae269ab87d72affa21ea5b126c6a2596de05ea01dc71939323dec83`  
		Last Modified: Sat, 06 Apr 2019 00:20:18 GMT  
		Size: 543.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83317d64dbfb2fcec03abb4d9f644a3eb066bad8035da842853dfeef7175d83c`  
		Last Modified: Sat, 06 Apr 2019 00:20:18 GMT  
		Size: 738.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
