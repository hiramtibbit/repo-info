## `vault:latest`

```console
$ docker pull vault@sha256:13baadcd489832a399a780f3af88a83b5fee907afee7334f6380bcf48d5931bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `vault:latest` - linux; amd64

```console
$ docker pull vault@sha256:55b098a828787a87fcdecf833116680259633bc80e316e269710667cdfc87686
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37346931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f25bbb6ff2efc54d7d238112c51bada79a5d2a836e9f0373c7e74f15aeafb79f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["server","-dev"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 14 Nov 2018 23:20:24 GMT
ENV VAULT_VERSION=0.11.5
# Wed, 14 Nov 2018 23:20:25 GMT
RUN addgroup vault &&     adduser -S -G vault vault
# Wed, 14 Nov 2018 23:20:31 GMT
RUN set -eux;     apk add --no-cache ca-certificates gnupg openssl libcap su-exec dumb-init &&     apkArch="$(apk --print-arch)";     case "$apkArch" in         armhf) ARCH='arm' ;;         aarch64) ARCH='arm64' ;;         x86_64) ARCH='amd64' ;;         x86) ARCH='386' ;;         *) echo >&2 "error: unsupported architecture: $apkArch"; exit 1 ;;     esac &&     VAULT_GPGKEY=91A6E7F85D05C65630BEF18951852D87348FFC4C;     found='';     for server in         hkp://p80.pool.sks-keyservers.net:80         hkp://keyserver.ubuntu.com:80         hkp://pgp.mit.edu:80     ; do         echo "Fetching GPG key $VAULT_GPGKEY from $server";         gpg --keyserver "$server" --recv-keys "$VAULT_GPGKEY" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch GPG key $VAULT_GPGKEY" && exit 1;     mkdir -p /tmp/build &&     cd /tmp/build &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS &&     wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify vault_${VAULT_VERSION}_SHA256SUMS.sig vault_${VAULT_VERSION}_SHA256SUMS &&     grep vault_${VAULT_VERSION}_linux_${ARCH}.zip vault_${VAULT_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin vault_${VAULT_VERSION}_linux_${ARCH}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     gpgconf --kill dirmngr &&     gpgconf --kill gpg-agent &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Wed, 14 Nov 2018 23:20:32 GMT
RUN mkdir -p /vault/logs &&     mkdir -p /vault/file &&     mkdir -p /vault/config &&     chown -R vault:vault /vault
# Wed, 14 Nov 2018 23:20:32 GMT
VOLUME [/vault/logs]
# Wed, 14 Nov 2018 23:20:32 GMT
VOLUME [/vault/file]
# Wed, 14 Nov 2018 23:20:32 GMT
EXPOSE 8200/tcp
# Wed, 14 Nov 2018 23:20:33 GMT
COPY file:71f93573d5097ef42f7373b359230a67d5c04db40151c9f350d7d9c881341c67 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 14 Nov 2018 23:20:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Nov 2018 23:20:33 GMT
CMD ["server" "-dev"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb2bd64f716026beea466ffc78a06151f7693e2a2d5b43bde58e11a129abdfb2`  
		Last Modified: Wed, 14 Nov 2018 23:21:17 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a915b4288c26592d55f25bbcc331494489b6d6dd21bf191c30dfb0d24f52f5e`  
		Last Modified: Wed, 14 Nov 2018 23:21:23 GMT  
		Size: 35.1 MB (35136802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93191a9a019b194130b69b262223a879720f80cac3b7d046851c2d20014a1fe`  
		Last Modified: Wed, 14 Nov 2018 23:21:17 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f65afd51374d97eb6ad188eef48d962fa9f5dfff395efa2f92b2ff15e4f622c`  
		Last Modified: Wed, 14 Nov 2018 23:21:17 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
