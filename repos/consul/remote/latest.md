## `consul:latest`

```console
$ docker pull consul@sha256:9d07b458cbd9ac17df2af3cf2c1695e5165e5ee988fd0fe9feef9111f6902ef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:00267a3e84c9620c99a2e10bc773f4bd128c231863c8596f71cc3cdd62e4f427
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38375213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df36de474d545697ce640b80e381694fce93fbbf965475b694141ba1f62ad9cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:10 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 21 Mar 2019 17:19:22 GMT
ENV CONSUL_VERSION=1.4.4
# Thu, 21 Mar 2019 17:19:22 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 21 Mar 2019 17:19:23 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 21 Mar 2019 17:19:30 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 21 Mar 2019 17:19:31 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 21 Mar 2019 17:19:32 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 21 Mar 2019 17:19:32 GMT
VOLUME [/consul/data]
# Thu, 21 Mar 2019 17:19:32 GMT
EXPOSE 8300
# Thu, 21 Mar 2019 17:19:32 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 21 Mar 2019 17:19:32 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 21 Mar 2019 17:19:33 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 21 Mar 2019 17:19:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 21 Mar 2019 17:19:33 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ded83912d17e447e65e8708521c2d9a036fb2a7faa9dfacd6d1401b2333348bb`  
		Last Modified: Thu, 21 Mar 2019 17:19:40 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7fbb7ddd3ea124f89b5be1ef21d32a21543dd8540c2b6e91b4b906128e7a8db`  
		Last Modified: Thu, 21 Mar 2019 17:19:46 GMT  
		Size: 36.3 MB (36264881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cdcd1f7ea4222d650578443930a488b85561701f3f0319f73f66c21947fcc89`  
		Last Modified: Thu, 21 Mar 2019 17:19:40 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ea9ef64acd0cb4c7d9416901ba108da4bded5441fa502bb0c5b6fe9557dbea`  
		Last Modified: Thu, 21 Mar 2019 17:19:40 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267ee3fb0b30a208b0660d1503d45827dc8cae7b6305622e17439a8f2e9a821c`  
		Last Modified: Thu, 21 Mar 2019 17:19:40 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
