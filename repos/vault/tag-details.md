<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `vault`

-	[`vault:0.9.3`](#vault093)
-	[`vault:latest`](#vaultlatest)

## `vault:0.9.3`

**does not exist** (yet?)

## `vault:latest`

```console
$ docker pull vault@sha256:bbd4a79c7e8b0d4ea44cdc54d21493a83899af6bf73a1c6f2dcfa4d275848de4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:8376914ed79a32cb248ca83f82540548f029a57ae0ba77b2fa5178651ccd918a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20619726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f876feff1c6488e38a2e0135811eb9d4c6ae68b9831ab79844b4a7d210d5f5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 26 Jan 2018 22:57:12 GMT
MAINTAINER Jeff Mitchell <jeff@hashicorp.com> (@jefferai)
# Fri, 26 Jan 2018 22:57:12 GMT
ENV VAULT_VERSION=0.9.2
# Fri, 26 Jan 2018 22:57:13 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Fri, 26 Jan 2018 22:57:32 GMT
RUN apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_amd64.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Fri, 26 Jan 2018 22:57:36 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Fri, 26 Jan 2018 22:57:36 GMT
VOLUME [/vault/logs]
# Fri, 26 Jan 2018 22:57:48 GMT
VOLUME [/vault/file]
# Fri, 26 Jan 2018 22:57:48 GMT
EXPOSE 8200/tcp
# Fri, 26 Jan 2018 22:57:48 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Jan 2018 22:57:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Jan 2018 22:57:49 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076deb40ab6fb30d1603f7dfe3553e1749cbfc61bc50a283a0fee52ce1c54771`  
		Last Modified: Fri, 26 Jan 2018 22:58:06 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b084a26a099d8e892eb1ca06bc981167bc06c68df7aa53ca36f718e9da7c900d`  
		Last Modified: Fri, 26 Jan 2018 22:58:12 GMT  
		Size: 18.6 MB (18550991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b80873d5736c917c0ff60d7b8d6ca0b79c196ae6d969ff4d5dd8a71160676a`  
		Last Modified: Fri, 26 Jan 2018 22:58:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d38fd5c63999dfc566a7705272bbc7d72ee11688f419daadbe3a1339bec05d`  
		Last Modified: Fri, 26 Jan 2018 22:58:06 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
