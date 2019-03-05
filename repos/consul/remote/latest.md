## `consul:latest`

```console
$ docker pull consul@sha256:e1233186d40a1b459a5a913613f8420679bcf594fe1777ab3d581ba48c2522dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:52262a5382f1c77f4ee3311ea24e3608dea664236fc1e33451311be7124f367a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38391726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177eccb279885e0167cd15054bb4b82fb75e6a719641d312d5f883942e1b9619`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:15:25 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Tue, 05 Mar 2019 22:20:19 GMT
ENV CONSUL_VERSION=1.4.3
# Tue, 05 Mar 2019 22:20:19 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Tue, 05 Mar 2019 22:20:20 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Tue, 05 Mar 2019 22:20:28 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Tue, 05 Mar 2019 22:20:30 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Tue, 05 Mar 2019 22:20:31 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Tue, 05 Mar 2019 22:20:32 GMT
VOLUME [/consul/data]
# Tue, 05 Mar 2019 22:20:32 GMT
EXPOSE 8300
# Tue, 05 Mar 2019 22:20:33 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Tue, 05 Mar 2019 22:20:33 GMT
EXPOSE 8500 8600 8600/udp
# Tue, 05 Mar 2019 22:20:34 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 05 Mar 2019 22:20:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 22:20:35 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9ac361e3f06f864f1e6dbc477a640499d614164c204ef39d1e3389a9d89e65`  
		Last Modified: Tue, 05 Mar 2019 22:20:42 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:505306b432b2e4dc11879edd89b072cb77ff268412d0d66e11d581e04485f69f`  
		Last Modified: Tue, 05 Mar 2019 22:20:48 GMT  
		Size: 36.3 MB (36281327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e571b531eb5d968c2105e37a60d8b67931ae3df1bb492d6d631f60e121b34f88`  
		Last Modified: Tue, 05 Mar 2019 22:20:42 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a09153a79d5c769a13289266839b5048a0d0cb0a7dff604ad2c2a20a521c4d3`  
		Last Modified: Tue, 05 Mar 2019 22:20:42 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48e92f7a5b00a6024a7c677db3134fb7e61686662f49a73d29fa17cf98462d0`  
		Last Modified: Tue, 05 Mar 2019 22:20:42 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
