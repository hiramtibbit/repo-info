## `consul:latest`

```console
$ docker pull consul@sha256:2af5df348ad7e0a88a8778b120dea45d1dc4048d9f9b39fea318ffe018919541
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:bc9d34667ac1234d38f7476d94d6341d264698a45ccb7ea65c094fc5915f2257
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43075982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee768a1be22a13b9f93bad6880c9edce496ae73731f115d2c838abacd7d4b917`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 08 May 2019 22:19:29 GMT
ENV CONSUL_VERSION=1.5.0
# Wed, 08 May 2019 22:19:29 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 08 May 2019 22:19:31 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 08 May 2019 22:19:37 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 08 May 2019 22:19:39 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 08 May 2019 22:19:41 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 08 May 2019 22:19:41 GMT
VOLUME [/consul/data]
# Wed, 08 May 2019 22:19:42 GMT
EXPOSE 8300
# Wed, 08 May 2019 22:19:42 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 08 May 2019 22:19:43 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 08 May 2019 22:19:43 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 08 May 2019 22:19:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 22:19:44 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c56c506024892be42fcf13368116b29a2110cfe13a0c680c13c4e0b02a185eba`  
		Last Modified: Wed, 08 May 2019 22:20:11 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052814bbd774b5321395f58fd54da285bcfdc5246f9c51955dea02b9ddfb9c02`  
		Last Modified: Wed, 08 May 2019 22:20:19 GMT  
		Size: 40.3 MB (40315741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd6f551ba378b9f87b43edbf109d26e6688e6caf31e1f284dae047ebc1aada9b`  
		Last Modified: Wed, 08 May 2019 22:20:11 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3422c9dc98fdfdba4aa877c58fc091ab2d18da7d6274b6dfce0d1812decbe387`  
		Last Modified: Wed, 08 May 2019 22:20:11 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6c932f9fa7570b685053e74cb08ace6a7ddc54cba825295a908dcffd47d8811`  
		Last Modified: Wed, 08 May 2019 22:20:11 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
