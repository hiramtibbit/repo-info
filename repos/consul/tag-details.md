<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.0.5`](#consul105)
-	[`consul:latest`](#consullatest)

## `consul:1.0.5`

```console
$ docker pull consul@sha256:01d59fe0a6e5c113529c5bb9448fab084ad392ee06b0ea0e61bc4addb5b296d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:1.0.5` - linux; amd64

```console
$ docker pull consul@sha256:d03c672e5f9f248f2b239012715abdd8694cc25fbe25dd018f28eab2527b7aa0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14557320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad9b4c7fed5844e218021f49a28c59eb7d3afd82b677a029297ab93df5cb9ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 23:53:54 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Thu, 08 Feb 2018 02:53:21 GMT
ENV CONSUL_VERSION=1.0.5
# Thu, 08 Feb 2018 02:53:21 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 08 Feb 2018 02:53:22 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 08 Feb 2018 02:53:42 GMT
RUN apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 08 Feb 2018 02:53:46 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 08 Feb 2018 02:53:46 GMT
VOLUME [/consul/data]
# Thu, 08 Feb 2018 02:53:58 GMT
EXPOSE 8300/tcp
# Thu, 08 Feb 2018 02:53:58 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Thu, 08 Feb 2018 02:53:58 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Thu, 08 Feb 2018 02:53:59 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Thu, 08 Feb 2018 02:54:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Feb 2018 02:54:10 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2497b7a914b5fcf1758533e2b70d24a7e4175bcef100f2f343edda72069072`  
		Last Modified: Thu, 08 Feb 2018 02:54:36 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84151c268c05d7434d463a2fd3cb3f06b8e522358ae590aa55d8f9f4bb3b093`  
		Last Modified: Thu, 08 Feb 2018 02:54:38 GMT  
		Size: 12.5 MB (12488709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3665a54f9abdd162d6aa434703f2f7bdb5797159052f1fc56b0ba36fa642aa7a`  
		Last Modified: Thu, 08 Feb 2018 02:54:36 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef961ed6aa737f565d81a8a348a05a1173355dc363293a31229a1c5cad7f7184`  
		Last Modified: Thu, 08 Feb 2018 02:54:36 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:01d59fe0a6e5c113529c5bb9448fab084ad392ee06b0ea0e61bc4addb5b296d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:d03c672e5f9f248f2b239012715abdd8694cc25fbe25dd018f28eab2527b7aa0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14557320 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad9b4c7fed5844e218021f49a28c59eb7d3afd82b677a029297ab93df5cb9ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 23:53:54 GMT
MAINTAINER James Phillips <james@hashicorp.com> (@slackpad)
# Thu, 08 Feb 2018 02:53:21 GMT
ENV CONSUL_VERSION=1.0.5
# Thu, 08 Feb 2018 02:53:21 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 08 Feb 2018 02:53:22 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 08 Feb 2018 02:53:42 GMT
RUN apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_amd64.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_amd64.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg
# Thu, 08 Feb 2018 02:53:46 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 08 Feb 2018 02:53:46 GMT
VOLUME [/consul/data]
# Thu, 08 Feb 2018 02:53:58 GMT
EXPOSE 8300/tcp
# Thu, 08 Feb 2018 02:53:58 GMT
EXPOSE 8301/tcp 8301/udp 8302/tcp 8302/udp
# Thu, 08 Feb 2018 02:53:58 GMT
EXPOSE 8500/tcp 8600/tcp 8600/udp
# Thu, 08 Feb 2018 02:53:59 GMT
COPY file:4d7013a8316461b27eb7cb7d1002f1be6aa386a925388563c1989385ebf30c2c in /usr/local/bin/docker-entrypoint.sh 
# Thu, 08 Feb 2018 02:54:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Feb 2018 02:54:10 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2497b7a914b5fcf1758533e2b70d24a7e4175bcef100f2f343edda72069072`  
		Last Modified: Thu, 08 Feb 2018 02:54:36 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84151c268c05d7434d463a2fd3cb3f06b8e522358ae590aa55d8f9f4bb3b093`  
		Last Modified: Thu, 08 Feb 2018 02:54:38 GMT  
		Size: 12.5 MB (12488709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3665a54f9abdd162d6aa434703f2f7bdb5797159052f1fc56b0ba36fa642aa7a`  
		Last Modified: Thu, 08 Feb 2018 02:54:36 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef961ed6aa737f565d81a8a348a05a1173355dc363293a31229a1c5cad7f7184`  
		Last Modified: Thu, 08 Feb 2018 02:54:36 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
