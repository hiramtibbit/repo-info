## `docker:test-dind`

```console
$ docker pull docker@sha256:ab093675009dbadfb1a3038a4ab47c2a9243bd3fece2f36506c8e60dbf0956c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

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

### `docker:test-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:d7e7bd859a0d6e16abef01fb76f5b7ff112d14a6da938427f698e0dfef52763f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.2 MB (42238763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2003284477a65440310ff2c3a8f7df368ac584c2ba37732424c6f356db2fa91b`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Fri, 26 Jan 2018 19:54:23 GMT
RUN apk add --no-cache 		ca-certificates
# Fri, 26 Jan 2018 19:54:24 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Jan 2018 19:54:24 GMT
ENV DOCKER_CHANNEL=test
# Wed, 04 Apr 2018 20:02:04 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc1
# Wed, 04 Apr 2018 20:02:12 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 04 Apr 2018 20:02:12 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 04 Apr 2018 20:02:13 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 04 Apr 2018 20:02:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Apr 2018 20:02:13 GMT
CMD ["sh"]
# Wed, 04 Apr 2018 20:02:25 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 04 Apr 2018 20:02:27 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Apr 2018 20:02:27 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Apr 2018 20:02:29 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 04 Apr 2018 20:02:30 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Wed, 04 Apr 2018 20:02:30 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Apr 2018 20:02:30 GMT
EXPOSE 2375/tcp
# Wed, 04 Apr 2018 20:02:31 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Apr 2018 20:02:31 GMT
CMD []
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bf7d76c39215a547858ef9260990b9b80c0e679bb2f6ceef942d7b6d0eeec3`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f62521d9bd1330f569376a49631bcc26a2035b1df21df724e5f21ef39c87aa`  
		Last Modified: Fri, 26 Jan 2018 19:56:58 GMT  
		Size: 308.8 KB (308784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517bef5a987b33a45ccd6533f0bc047c45ea8cce31cc6fc586e836b22dc07cbb`  
		Last Modified: Fri, 26 Jan 2018 19:56:58 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcdc6282db56003f244af808cc10e8165c6f96167686bb8163887687a7c9102a`  
		Last Modified: Wed, 04 Apr 2018 20:03:22 GMT  
		Size: 37.2 MB (37167953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638ccc100349ae72e6192361663868bd7805be87199058636c9647452fcfcac5`  
		Last Modified: Wed, 04 Apr 2018 20:03:10 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5786c2718f5e6a9ee07a0ef604e3fe29279c21f73741452b15fc70189f2280`  
		Last Modified: Wed, 04 Apr 2018 20:03:10 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51189529e8c672a3e5ca40cbb542bc6a866ae4dfdb04138768a8475d3ecdadbd`  
		Last Modified: Wed, 04 Apr 2018 20:03:32 GMT  
		Size: 2.7 MB (2699283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c84f3c385658b54770440936e500412c010088a84f47f1899c0b2f055ba6758`  
		Last Modified: Wed, 04 Apr 2018 20:03:32 GMT  
		Size: 1.3 KB (1333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc615afdbb5908184274ff2f8daa3f39f7f0c79d41eae527177c2a9fcb4bc28`  
		Last Modified: Wed, 04 Apr 2018 20:03:31 GMT  
		Size: 21.0 KB (21007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386dcb13313cecf21404c94991008835b9c3d675bf691b8e58753838559b2a5a`  
		Last Modified: Wed, 04 Apr 2018 20:03:32 GMT  
		Size: 484.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7fe5e86e5ed4c806a1c3a13e5818698fa2067c663cd86c9462871677ab2b01a9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.3 MB (42259536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00ffc0228fd0371f56eb36eb4b3c54f06464b85c5269193a676166ef34620e20`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 07:00:41 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 07:00:43 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 05 Jan 2018 07:00:40 GMT
ENV DOCKER_CHANNEL=test
# Wed, 04 Apr 2018 20:09:39 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc1
# Wed, 04 Apr 2018 20:09:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 04 Apr 2018 20:09:52 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 04 Apr 2018 20:09:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 04 Apr 2018 20:09:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Apr 2018 20:09:54 GMT
CMD ["sh"]
# Wed, 04 Apr 2018 20:10:49 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 04 Apr 2018 20:11:00 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Apr 2018 20:11:01 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Apr 2018 20:11:05 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 04 Apr 2018 20:11:21 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Wed, 04 Apr 2018 20:11:22 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Apr 2018 20:11:22 GMT
EXPOSE 2375/tcp
# Wed, 04 Apr 2018 20:11:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Apr 2018 20:11:24 GMT
CMD []
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e0b1d8a4679a04839bcedd494b39879dc202e375f6f74d26f6bd80edff0363`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 308.2 KB (308213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226bcca23678813260f44b3560835eb92c99b7a375b8f4dd0e264c06496a201d`  
		Last Modified: Thu, 28 Dec 2017 07:02:17 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0a494627ded6d03386950dbdc88f283b1d6a1885ce6c453bd04cae4459bdfc`  
		Last Modified: Wed, 04 Apr 2018 20:13:18 GMT  
		Size: 35.7 MB (35650452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6290713f840739d32003a7b8d3356ecdbfb6dbb40832ebc57ddef1d6fd8d11c2`  
		Last Modified: Wed, 04 Apr 2018 20:13:04 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be62de20dfb2925b683dd6b4af35377a88523f6d3ab8b3e10e65261f828a76a`  
		Last Modified: Wed, 04 Apr 2018 20:13:04 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fca0e08bb6ee1a3b21d0d4a0f0d351e277e23c5710842e1bdb78034c933191f`  
		Last Modified: Wed, 04 Apr 2018 20:14:48 GMT  
		Size: 4.3 MB (4282358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a28d9386186b8ccce1aaacc85175528aed869a9e6f06656eec8050d6a97cd2b`  
		Last Modified: Wed, 04 Apr 2018 20:14:48 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0128d97edd5067da2ca1d957699cbbf144d7716e74c2aa6455a4e29daa565493`  
		Last Modified: Wed, 04 Apr 2018 20:14:47 GMT  
		Size: 26.3 KB (26255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a2eede40005496f347345d9f892a77fb4cbc15c8cf81f6463ab731c594e9689`  
		Last Modified: Wed, 04 Apr 2018 20:14:47 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:c84820fb6707f4370062141f66b69e7fc9a005b17704481432cce4a999b8b86e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40333849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd38e13a41a89dc9879ef7e1399939b2a9c93654123bbdf80645df8f6d5ab8a1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Thu, 28 Dec 2017 11:36:30 GMT
RUN apk add --no-cache 		ca-certificates
# Thu, 28 Dec 2017 11:36:33 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 05 Jan 2018 11:36:26 GMT
ENV DOCKER_CHANNEL=test
# Wed, 04 Apr 2018 20:02:18 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc1
# Wed, 04 Apr 2018 20:02:40 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 04 Apr 2018 20:02:44 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 04 Apr 2018 20:02:48 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 04 Apr 2018 20:02:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Apr 2018 20:02:51 GMT
CMD ["sh"]
# Wed, 04 Apr 2018 20:03:20 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 04 Apr 2018 20:03:26 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Apr 2018 20:03:28 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Apr 2018 20:03:47 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 04 Apr 2018 20:03:52 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Wed, 04 Apr 2018 20:03:59 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Apr 2018 20:04:01 GMT
EXPOSE 2375/tcp
# Wed, 04 Apr 2018 20:04:03 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Apr 2018 20:04:04 GMT
CMD []
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe230e03b98ad6c09f4e89c524a8f39e17835ba689b3035c55bbbef18956540`  
		Last Modified: Thu, 28 Dec 2017 11:37:58 GMT  
		Size: 310.6 KB (310600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6307b533b9be0ac40a1422292494cdd1f448afb34ba047614c035d8ab361452`  
		Last Modified: Thu, 28 Dec 2017 11:37:58 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f9045f4cc71bf70ffc853a95e0c8c4a8500cb72faaee416bfd0d8e8958e165`  
		Last Modified: Wed, 04 Apr 2018 20:05:29 GMT  
		Size: 35.2 MB (35207766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04b5ee9c31613b1283d5338078d185aa58111a375aa238fbadfd7fbbba9d4995`  
		Last Modified: Wed, 04 Apr 2018 20:05:19 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed7002bc0a6dd3286cedf6e11aa9b4011d4ad00b32d0cd61b6f607fa0d2a4c37`  
		Last Modified: Wed, 04 Apr 2018 20:05:19 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47245a51f5725174fbcc6129c74b4002e26846e6aac4aab3e69eb1eb2b1af4a9`  
		Last Modified: Wed, 04 Apr 2018 20:06:06 GMT  
		Size: 2.7 MB (2709577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771012166d8dea59b0e4d132083b65ab0c99aa85ce0cce916fa85a3068c02c2f`  
		Last Modified: Wed, 04 Apr 2018 20:06:06 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7ba1098d0d7f3fdea50f153f7dc6288365c9b43cc5d906b7bd89c788a287b8`  
		Last Modified: Wed, 04 Apr 2018 20:06:05 GMT  
		Size: 21.0 KB (21001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f726ef72cbeecafeb4ba3c2f0b52fe8619db5f4b74dbb9b1065d88ba3159416`  
		Last Modified: Wed, 04 Apr 2018 20:06:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:test-dind` - linux; s390x

```console
$ docker pull docker@sha256:5d6856319f7d54659a7bef8f824169798cbe648aa3ac786773c4041076eeacc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45478738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bce895c7aef128878cb2d2050b34c3740f047a7025ae5f74f419466dcff840a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`
-	Default Command: `[]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 09:17:41 GMT
RUN apk add --no-cache 		ca-certificates
# Sun, 07 Jan 2018 09:17:42 GMT
RUN [ ! -e /etc/nsswitch.conf ] && echo 'hosts: files dns' > /etc/nsswitch.conf
# Sun, 07 Jan 2018 09:17:42 GMT
ENV DOCKER_CHANNEL=test
# Wed, 04 Apr 2018 20:02:24 GMT
ENV DOCKER_VERSION=18.04.0-ce-rc1
# Wed, 04 Apr 2018 20:02:51 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps 		curl 		tar 	; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		x86_64) dockerArch='x86_64' ;; 		armhf) dockerArch='armel' ;; 		aarch64) dockerArch='aarch64' ;; 		ppc64le) dockerArch='ppc64le' ;; 		s390x) dockerArch='s390x' ;; 		*) echo >&2 "error: unsupported architecture ($apkArch)"; exit 1 ;;	esac; 		if ! curl -fL -o docker.tgz "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/${dockerArch}/docker-${DOCKER_VERSION}.tgz"; then 		echo >&2 "error: failed to download 'docker-${DOCKER_VERSION}' from '${DOCKER_CHANNEL}' for '${dockerArch}'"; 		exit 1; 	fi; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 	; 	rm docker.tgz; 		apk del .fetch-deps; 		dockerd -v; 	docker -v
# Wed, 04 Apr 2018 20:02:52 GMT
COPY file:016ebcc5aefa6b28f6c484a299057d5b236e1d4f3baf44cc76eb4cd578821691 in /usr/local/bin/modprobe 
# Wed, 04 Apr 2018 20:02:52 GMT
COPY file:0d94e1cd679f133aab807891a1b00b6aef1a9f1f884108e7a17ddf50ab88f1fb in /usr/local/bin/ 
# Wed, 04 Apr 2018 20:02:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Apr 2018 20:02:53 GMT
CMD ["sh"]
# Wed, 04 Apr 2018 20:03:14 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		iptables 		xfsprogs 		xz 		pigz 	; 	if zfs="$(apk info --no-cache --quiet zfs)" && [ -n "$zfs" ]; then 		apk add --no-cache zfs; 	fi
# Wed, 04 Apr 2018 20:03:15 GMT
RUN set -x 	&& addgroup -S dockremap 	&& adduser -S -G dockremap dockremap 	&& echo 'dockremap:165536:65536' >> /etc/subuid 	&& echo 'dockremap:165536:65536' >> /etc/subgid
# Wed, 04 Apr 2018 20:03:15 GMT
ENV DIND_COMMIT=3b5fac462d21ca164b3778647420016315289034
# Wed, 04 Apr 2018 20:03:17 GMT
RUN set -ex; 	apk add --no-cache --virtual .fetch-deps libressl; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind; 	apk del .fetch-deps
# Wed, 04 Apr 2018 20:03:18 GMT
COPY file:14215a2b157618f9ff66709b019144b953b95bbd7273096e970306475e524820 in /usr/local/bin/ 
# Wed, 04 Apr 2018 20:03:18 GMT
VOLUME [/var/lib/docker]
# Wed, 04 Apr 2018 20:03:18 GMT
EXPOSE 2375/tcp
# Wed, 04 Apr 2018 20:03:18 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 04 Apr 2018 20:03:18 GMT
CMD []
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e086971261bceaf8aea6aa9962223fd5f1c0876f30d440dca2edce64bb2e6ea`  
		Last Modified: Sun, 07 Jan 2018 09:19:36 GMT  
		Size: 309.1 KB (309148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94801dbdd0e977fe92249d99be1d017b2b930177b6d3dd44105722b0233438b`  
		Last Modified: Sun, 07 Jan 2018 09:19:35 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651c55006e91314ce4896a3dc6041a2f972358735bf98475a3fb18df9acc2cae`  
		Last Modified: Wed, 04 Apr 2018 20:04:26 GMT  
		Size: 38.1 MB (38118060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:065d2e638898f48f5dcafb263d520e26f940455337cf977ca8f05339972e1339`  
		Last Modified: Wed, 04 Apr 2018 20:04:19 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a818cd8c29f938856425c339a12d42089d7f80d5e0ffcdc69cfd9c048ca141`  
		Last Modified: Wed, 04 Apr 2018 20:04:17 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c2886aa68abcb9b67ba2d6d3693969f278b716ed5e4894086ecceb58c3bf8c`  
		Last Modified: Wed, 04 Apr 2018 20:04:50 GMT  
		Size: 4.8 MB (4836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85357f6a4b0e9f914e157fec6cde5e97b227429fd3f8c9d5d0ba07080b0aaa7c`  
		Last Modified: Wed, 04 Apr 2018 20:04:51 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5852b8995e804108afbcc6ac1d67c9931217e136a5557c57b8c0588a2557555c`  
		Last Modified: Wed, 04 Apr 2018 20:04:48 GMT  
		Size: 26.3 KB (26266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ad323dc537c9f0e20ebf672f6882e9b27a522ba89668e8d3bb7ee4368e724d`  
		Last Modified: Wed, 04 Apr 2018 20:04:51 GMT  
		Size: 481.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
