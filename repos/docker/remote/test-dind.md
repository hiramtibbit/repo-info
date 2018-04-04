## `docker:test-dind`

```console
$ docker pull docker@sha256:f1c669bca32e1d32d55b6795ecce492acff28f6d5a9fdc916772e9e771c1b0bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `docker:test-dind` - linux; amd64

```console
$ docker pull docker@sha256:dab907dd5b1047a8c18ee2c49b85d1f9d0e5e823a70e1413d003d0ff0cf4c089
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46190479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ce76237e09fe6f527d7d1a303d7702030204605995fc1e2bf846efcdc783e9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 00:46:19 GMT
RUN apk add --no-cache 		ca-certificates
# Wed, 10 Jan 2018 00:46:20 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 10 Jan 2018 00:46:21 GMT
ENV DOCKER_CHANNEL=test
# Wed, 04 Apr 2018 17:23:26 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc1
# Wed, 04 Apr 2018 17:23:33 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 04 Apr 2018 17:23:33 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 04 Apr 2018 17:23:34 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 04 Apr 2018 17:23:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Apr 2018 17:23:34 GMT
CMD ["sh"]
# Wed, 04 Apr 2018 17:26:16 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 04 Apr 2018 17:26:17 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Apr 2018 17:26:18 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Apr 2018 17:26:23 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 04 Apr 2018 17:26:23 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Wed, 04 Apr 2018 17:26:23 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Apr 2018 17:26:24 GMT
EXPOSE 2375/tcp
# Wed, 04 Apr 2018 17:26:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Apr 2018 17:26:24 GMT
CMD []
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a649ea86bcaa0acdca25d22520d9d7b6d6373c3e4a385a21b48c2757e8ec6ac`  
		Last Modified: Wed, 10 Jan 2018 01:16:13 GMT  
		Size: 308.0 KB (308013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce35f4d5f86ae68ae9e5cb6590ecdcca2ae5257cbedb85fe4bfd2efa05f73b2f`  
		Last Modified: Wed, 10 Jan 2018 01:16:12 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6519bbbf7f5b0512a07efbe0614ce7129a98062493d281b64e74da873706e5fd`  
		Last Modified: Wed, 04 Apr 2018 17:45:41 GMT  
		Size: 39.2 MB (39179643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca2d3de55add949a519f927682fccc3cf5ee4c0f535252ecb6e90f508318b493`  
		Last Modified: Wed, 04 Apr 2018 17:45:32 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ba3e773796737729c3b2cc0f55df8369d42dfcdaa53a646027e6f6316d7e51`  
		Last Modified: Wed, 04 Apr 2018 17:45:32 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8313f99a0fe263db9b17ce9dc55cb9def919c0b80e4847582731e691a8502d5`  
		Last Modified: Wed, 04 Apr 2018 17:48:24 GMT  
		Size: 4.6 MB (4607771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f05c5f7de165747e39cec03ba05a4cf60890dc102d043877113d838895ec0c2`  
		Last Modified: Wed, 04 Apr 2018 17:48:23 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9555e8d2c32d6b551f989c6b50d10a52e9bf58b2d78a275c9f842d825c044886`  
		Last Modified: Wed, 04 Apr 2018 17:48:24 GMT  
		Size: 26.3 KB (26286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e864e9d45a935d605f0e8f0c61c91ba01b1eb84959c6762e73b7a11f0d72fb0`  
		Last Modified: Wed, 04 Apr 2018 17:48:23 GMT  
		Size: 480.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
