<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.9.5`](#vault095)
-	[`vault:latest`](#vaultlatest)

## `vault:0.9.5`

**does not exist** (yet?)

## `vault:latest`

```console
$ docker pull vault@sha256:c51a1745e3f0030cc11054d1a4dd4928ce32acc2466dabdf4c22d05ce48ec94e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386

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

### `vault:latest` - linux; arm variant v6

```console
$ docker pull vault@sha256:57719c55a71dca8940835de13e067c95147b1c656db5f34014cacb75bd516965
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22268929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1e9f973a5fef8e3be22b22427bdb9747ece88a8d0407da0b6de30e3329bfab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:45 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Fri, 01 Dec 2017 18:41:45 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:46 GMT
CMD ["/bin/sh"]
# Wed, 21 Feb 2018 22:07:59 GMT
ENV VAULT_VERSION=0.9.4
# Wed, 21 Feb 2018 22:08:03 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 21 Feb 2018 22:08:42 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 21 Feb 2018 22:08:45 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 21 Feb 2018 22:08:46 GMT
VOLUME [/vault/logs]
# Wed, 21 Feb 2018 22:08:47 GMT
VOLUME [/vault/file]
# Wed, 21 Feb 2018 22:08:48 GMT
EXPOSE 8200/tcp
# Wed, 21 Feb 2018 22:08:49 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 21 Feb 2018 22:08:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Feb 2018 22:08:51 GMT
CMD ["server" "-dev"]
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
	-	`sha256:f99ef1724108fe9d2143883a4b7a4fcaaa83cdfcc45ee52308d1603c77d6bb1a`  
		Last Modified: Wed, 21 Feb 2018 22:09:05 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2477971390f528983a7e3fe8f254ba544762888d8301cc05bb76fed28011ce3`  
		Last Modified: Wed, 21 Feb 2018 22:09:40 GMT  
		Size: 20.2 MB (20227191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8add3c317519fea728b5bd748ee10ea28974d79046aa655d170ae30cb24d3d1`  
		Last Modified: Wed, 21 Feb 2018 22:09:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9501d7e350e54fb969dba29889901a4f81a72403823f6c54218a5bc63ef2466`  
		Last Modified: Wed, 21 Feb 2018 22:09:05 GMT  
		Size: 1.8 KB (1795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `vault:latest` - linux; 386

```console
$ docker pull vault@sha256:35d6cd28ab0b0ab6edca53729c923cb7b3f2c960294813872e77c216eeeeb6ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.6 MB (22633016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:434d57a8b927ac217f5d017cab7d40366ad1dadbe1d3eb0c9d8009d14e88de3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Fri, 23 Feb 2018 06:13:02 GMT
ENV VAULT_VERSION=0.9.4
# Fri, 23 Feb 2018 06:13:03 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 23 Feb 2018 06:26:39 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 23 Feb 2018 06:26:40 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 23 Feb 2018 06:26:40 GMT
VOLUME [/vault/logs]
# Fri, 23 Feb 2018 06:26:40 GMT
VOLUME [/vault/file]
# Fri, 23 Feb 2018 06:26:41 GMT
EXPOSE 8200/tcp
# Fri, 23 Feb 2018 06:26:41 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 23 Feb 2018 06:26:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 23 Feb 2018 06:26:42 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d281866fc941edbc53297df0a9dd7a71ddf8cba00734f7de49f32f2bd644bf67`  
		Last Modified: Fri, 23 Feb 2018 06:33:50 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb45838134e81de1e66c2f31fe6c8abdd6d6f1e634ecd4f22bbb2c3cf7ce857b`  
		Last Modified: Fri, 23 Feb 2018 06:33:57 GMT  
		Size: 20.5 MB (20503420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01720ece80a9b33d55d893969bcfad3447382752079a4487288f2329539b79ef`  
		Last Modified: Fri, 23 Feb 2018 06:33:50 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b0b8d3628e0bfe16a9722e5b3e88aadee62b35426054789782485a4038404a`  
		Last Modified: Fri, 23 Feb 2018 06:33:51 GMT  
		Size: 1.8 KB (1796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
