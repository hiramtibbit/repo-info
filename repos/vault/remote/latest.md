## `vault:latest`

```console
$ docker pull vault@sha256:50925dc18545c22b5f8eaf0354472ea44a1c9b72a2132ef250805a1da869ced0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:2b8fcff0340e927bf621a518fa268093365c3e7e0f7c2f3c9895c75f1c3bc233
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24105429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d9787f3b75218942989a01cc09c9fef233f216aeddfa621f2ef0e5e99de105f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 10 Apr 2018 18:59:38 GMT
ENV VAULT_VERSION=0.10.0
# Tue, 10 Apr 2018 18:59:39 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Tue, 10 Apr 2018 19:20:35 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     gpg --keyserver hkp://pgp.mit.edu:80 --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Tue, 10 Apr 2018 19:20:36 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Tue, 10 Apr 2018 19:20:36 GMT
VOLUME [/vault/logs]
# Tue, 10 Apr 2018 19:20:36 GMT
VOLUME [/vault/file]
# Tue, 10 Apr 2018 19:20:36 GMT
EXPOSE 8200/tcp
# Tue, 10 Apr 2018 19:20:37 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 10 Apr 2018 19:20:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 10 Apr 2018 19:20:37 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c5ba8b46ebc6976eac75a3e578df076a04be0132815c90eae553e2c51b10fc`  
		Last Modified: Tue, 10 Apr 2018 19:21:02 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b4340e4c499b6302814a38cdef6757390d6dbb53ea85a18123f6eca622f464`  
		Last Modified: Tue, 10 Apr 2018 19:21:07 GMT  
		Size: 22.0 MB (22036691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463f2112d5af7cb86e3d859ddd29bfaaef15d6ec718e977403ab2d73120b11a1`  
		Last Modified: Tue, 10 Apr 2018 19:21:03 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a3b9222b44033342e2d03958d30bb166a3069711f9fe15832324f1b54e9fb3`  
		Last Modified: Tue, 10 Apr 2018 19:21:02 GMT  
		Size: 1.8 KB (1794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
