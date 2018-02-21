<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.9.4`](#vault094)
-	[`vault:latest`](#vaultlatest)

## `vault:0.9.4`

```console
$ docker pull vault@sha256:5b3b21570772850ccd2d1b72ce7396188a7bca9517b989fd19fc94c364e93d2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:0.9.4` - linux; amd64

```console
$ docker pull vault@sha256:6a713d59bd8b5af3fa20eab0855277927dc0eca88d6e67191c6ea2b8dfd626b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22934839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe0b6c2365e7d25982e16ba63943a58e1e0960aeec6dec8a9dd14a469ae3b04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 20 Feb 2018 23:21:16 GMT
ENV VAULT_VERSION=0.9.4
# Tue, 20 Feb 2018 23:21:17 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 20 Feb 2018 23:21:27 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 20 Feb 2018 23:21:27 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 20 Feb 2018 23:21:28 GMT
VOLUME [/vault/logs]
# Tue, 20 Feb 2018 23:21:28 GMT
VOLUME [/vault/file]
# Tue, 20 Feb 2018 23:21:28 GMT
EXPOSE 8200/tcp
# Tue, 20 Feb 2018 23:21:28 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 20 Feb 2018 23:21:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Feb 2018 23:21:29 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac96297b7a4582813cbd2131e9f37a62805e545a0d43c51de864386207cdfbf`  
		Last Modified: Tue, 20 Feb 2018 23:21:47 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba68dd5ea51c4cb98cd5ce2c1f94cde165168a6f6db652dde26d74cf06d9223`  
		Last Modified: Tue, 20 Feb 2018 23:21:52 GMT  
		Size: 20.9 MB (20866103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adc54c5600626b9c116d0611e954d514e3628d782945084f37d9fa2e37b5262`  
		Last Modified: Tue, 20 Feb 2018 23:21:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2f08eb422d3ec7b8179647b62e2dd5ed9583f7096456012938704083e6273f`  
		Last Modified: Tue, 20 Feb 2018 23:21:48 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `vault:latest`

```console
$ docker pull vault@sha256:5b3b21570772850ccd2d1b72ce7396188a7bca9517b989fd19fc94c364e93d2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:6a713d59bd8b5af3fa20eab0855277927dc0eca88d6e67191c6ea2b8dfd626b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22934839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe0b6c2365e7d25982e16ba63943a58e1e0960aeec6dec8a9dd14a469ae3b04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 20 Feb 2018 23:21:16 GMT
ENV VAULT_VERSION=0.9.4
# Tue, 20 Feb 2018 23:21:17 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 20 Feb 2018 23:21:27 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 20 Feb 2018 23:21:27 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 20 Feb 2018 23:21:28 GMT
VOLUME [/vault/logs]
# Tue, 20 Feb 2018 23:21:28 GMT
VOLUME [/vault/file]
# Tue, 20 Feb 2018 23:21:28 GMT
EXPOSE 8200/tcp
# Tue, 20 Feb 2018 23:21:28 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 20 Feb 2018 23:21:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 20 Feb 2018 23:21:29 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac96297b7a4582813cbd2131e9f37a62805e545a0d43c51de864386207cdfbf`  
		Last Modified: Tue, 20 Feb 2018 23:21:47 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ba68dd5ea51c4cb98cd5ce2c1f94cde165168a6f6db652dde26d74cf06d9223`  
		Last Modified: Tue, 20 Feb 2018 23:21:52 GMT  
		Size: 20.9 MB (20866103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8adc54c5600626b9c116d0611e954d514e3628d782945084f37d9fa2e37b5262`  
		Last Modified: Tue, 20 Feb 2018 23:21:47 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2f08eb422d3ec7b8179647b62e2dd5ed9583f7096456012938704083e6273f`  
		Last Modified: Tue, 20 Feb 2018 23:21:48 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
