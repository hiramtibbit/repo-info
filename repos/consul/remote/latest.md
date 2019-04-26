## `consul:latest`

```console
$ docker pull consul@sha256:bce60e9bf3e5bbbb943b13b870776354430eb19f83d9579d8a6d05f2ea69bccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:d7d11532ba6ad96715ad1058b60a0b137be7940313ab65352b1e400cb99a0694
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39146111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c997447125031923539648cce2ad3bb1df4ca59417635b922217ae8338037d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:39:55 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:39:56 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:39:56 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:39:56 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:01 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:02 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:02 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:03 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:03 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:03 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:03 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:03 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:04 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3d1f90fc600f9477b3847f0764a20907722592f55d7fca5ed0ac07d8d6a261`  
		Last Modified: Fri, 26 Apr 2019 21:41:11 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a756372895b248d40ad39c0eedea63e86c8b11802b3b07bac5228dbc5dfc8f`  
		Last Modified: Fri, 26 Apr 2019 21:41:18 GMT  
		Size: 36.4 MB (36385870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54efc599d7c786ff89bf087b3404b9dae526ea11af694cc535d00e6ee64def78`  
		Last Modified: Fri, 26 Apr 2019 21:41:11 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73d2c234fe14bb6a648482266c6f100234065b735642e86c6ed1cb95be7fb90f`  
		Last Modified: Fri, 26 Apr 2019 21:41:13 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf8018e609a64bbdd130afb5b0e91b1eb417a801883a3bc3257ca68ca06977a`  
		Last Modified: Fri, 26 Apr 2019 21:41:11 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm variant v6

```console
$ docker pull consul@sha256:f4d46f9a17bc0f1a86b8ec96ae8983c1a61f975d6ab4f6db0dcaf06c3c3ef55a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36941134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac6b347c48b6e016475aaa9e6607e746ff08175b9bb419892fddcbbf30862042`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:03 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:04 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:40:04 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:05 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:13 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:14 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:15 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:16 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:16 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:16 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:17 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:17 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:18 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db36081f6b97f213cf82a3ba5c283095459e972ebe60849cd772005fb11db7f2`  
		Last Modified: Fri, 26 Apr 2019 21:42:03 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63a59f1b6dedcd4241e594785512d8f025b7d1ced43c81127849bb177eae2edb`  
		Last Modified: Fri, 26 Apr 2019 21:42:13 GMT  
		Size: 34.4 MB (34394397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f829e08cef0d8ba1389464f360977c2646425c3dd8614fc259aae2801585b0d`  
		Last Modified: Fri, 26 Apr 2019 21:42:03 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f05a86309e7fa36a123e8c0359401fbfb7b0c12d7a7b2c24f98ecd57ae1908`  
		Last Modified: Fri, 26 Apr 2019 21:41:24 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89e9c9d96e187537c67f93ac3ecdefc7032a06f98ecdc71fcfd94dc202816957`  
		Last Modified: Fri, 26 Apr 2019 21:42:03 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:07d5be3515254bba521faf7a0cd85ef9dd4a12d070cc9e8aebce12b1c2578b53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36758092 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e0b9d5ae7ac47b66662abc7393c0a2944da86d5ab4bc5e66a4e720894812215`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:06 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:07 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:40:07 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:09 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:23 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:25 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:27 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:27 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:28 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:29 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:29 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:30 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:31 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a86cdada4c23a373b139a4b301358231f8231d02712c446d7ebad90bc87f2f`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:726fd2a6e45bc0e58e582bfa6d63e1dcc043c4f9c624042bb532b1ab4c0e7858`  
		Last Modified: Fri, 26 Apr 2019 21:43:14 GMT  
		Size: 34.1 MB (34066079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bbec09dfde152df059126168c1770001a0216809267bf3eb0aebd896f3b63e`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491957a5d104364d2879b5b439365bdfe02e4364e9b654f62bc6cfc2b8ba999d`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4108c14f1fc3d07ca9ba1dd64db76f36109f3ea0e0ccd96c2a6056276d9d32c`  
		Last Modified: Fri, 26 Apr 2019 21:43:03 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; 386

```console
$ docker pull consul@sha256:cc3b9b9292a5a93c47200407d14eabc1af67cc280fc0fdfc13f736f4a4bd5818
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38312326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc068268d1eefd9751cd02662c45bcedae6537dfcacca4e1e20804968d8fb8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Fri, 26 Apr 2019 21:40:09 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 26 Apr 2019 21:40:10 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 26 Apr 2019 21:40:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 26 Apr 2019 21:40:10 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 26 Apr 2019 21:40:17 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 26 Apr 2019 21:40:18 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 26 Apr 2019 21:40:19 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 26 Apr 2019 21:40:19 GMT
VOLUME [/consul/data]
# Fri, 26 Apr 2019 21:40:19 GMT
EXPOSE 8300
# Fri, 26 Apr 2019 21:40:19 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 26 Apr 2019 21:40:20 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 26 Apr 2019 21:40:20 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 26 Apr 2019 21:40:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 26 Apr 2019 21:40:20 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18c10f2f0e330d759a4bd2dfb5cfbaafb44ba501aec469e5e797da0ceb8ac40`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5486aa29c7409d2660e13f23533a4f3fc81b1c66a06027db4621ca662e62df52`  
		Last Modified: Fri, 26 Apr 2019 21:41:36 GMT  
		Size: 35.6 MB (35556933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859e0d23cb3550c97e9e57996a601e22f70a0d786f97ac29e902d86ae7892c1a`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663e825a95a0f20550790b95d96c70d7e98c5546196d3f11f62cc04a27533b73`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac66ff81eeb5a756ad6c82baa6376928d98391ef6f045196f67802463b85cf15`  
		Last Modified: Fri, 26 Apr 2019 21:41:27 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
