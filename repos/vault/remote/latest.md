## `vault:latest`

```console
$ docker pull vault@sha256:0215ce6216983c3460966c1677ecc951d42525e8fd027c4ead3cb9d4bbf8e46e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:de92ad538a5636e6c3a26f174235f6641d89e6f6fce5f43ff463e7a5021788e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.1 MB (36062272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87b044e948916eaab8506ffd624d485ed710da1ade568f629ed3910b0b5a5709`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Mon, 08 Oct 2018 23:32:39 GMT
ENV VAULT_VERSION=0.11.3
# Mon, 08 Oct 2018 23:32:40 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Mon, 08 Oct 2018 23:32:47 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Mon, 08 Oct 2018 23:32:48 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Mon, 08 Oct 2018 23:32:48 GMT
VOLUME [/vault/logs]
# Mon, 08 Oct 2018 23:32:48 GMT
VOLUME [/vault/file]
# Mon, 08 Oct 2018 23:32:48 GMT
EXPOSE 8200/tcp
# Mon, 08 Oct 2018 23:32:48 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 08 Oct 2018 23:32:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 08 Oct 2018 23:32:49 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b75e5c84f056baf6792190f312c69bcdb7b032036a4ea78911f92124084f6224`  
		Last Modified: Mon, 08 Oct 2018 23:33:01 GMT  
		Size: 1.2 KB (1248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8281c995c3283f162c6013cd8ec73038aab3c8f350774934a9e5a259a4f0ba54`  
		Last Modified: Mon, 08 Oct 2018 23:33:08 GMT  
		Size: 33.9 MB (33852141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf9cbe4a7a68cf2ce9c6d53056cb9fbea07876453c6515218fa69d63d524f87`  
		Last Modified: Mon, 08 Oct 2018 23:33:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d79963f0cd531b52617c0f69eec619cd1d8b8b70d34fa0c0d2213f013fc1ba`  
		Last Modified: Mon, 08 Oct 2018 23:33:01 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
