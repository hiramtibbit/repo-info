<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:1.4.3`](#consul143)
-	[`consul:latest`](#consullatest)

## `consul:1.4.3`

```console
$ docker pull consul@sha256:778f4c43c9669546988f6710abc23900ed77cc3222ca4f520038ddb3ef5d5281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.4.3` - linux; amd64

```console
$ docker pull consul@sha256:9f421059f3a95ba41c462d183f3d9f725bfdc739fd0afdcd3a4f99627d6cca5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38391671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c836e84db15484b60e5ebbf2422fd1b8b6eaa52dc82e728664739c14f0cda2af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:10 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 07 Mar 2019 23:09:11 GMT
ENV CONSUL_VERSION=1.4.3
# Thu, 07 Mar 2019 23:09:11 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 07 Mar 2019 23:09:11 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 07 Mar 2019 23:09:18 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 07 Mar 2019 23:09:18 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 07 Mar 2019 23:09:19 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:19 GMT
VOLUME [/consul/data]
# Thu, 07 Mar 2019 23:09:20 GMT
EXPOSE 8300
# Thu, 07 Mar 2019 23:09:20 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 07 Mar 2019 23:09:20 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 07 Mar 2019 23:09:20 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 07 Mar 2019 23:09:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:09:20 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c84632fec01a8fa7c68acfaec7a9ec0a234763a2d5d7565955bae9dab9075f`  
		Last Modified: Thu, 07 Mar 2019 23:09:29 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a163d1a51581854ab8631291216c4c586213998b172f8b1f570806ac95c82b`  
		Last Modified: Thu, 07 Mar 2019 23:09:35 GMT  
		Size: 36.3 MB (36281337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a6737da7863a7d25a1b25a5fb56e45debba8a57d954b899b429a01b13fc7c0`  
		Last Modified: Thu, 07 Mar 2019 23:09:29 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e359be04f0bbb3fcc244706989974f33ca3379a43e8972c3720e43cb2ac9547f`  
		Last Modified: Thu, 07 Mar 2019 23:09:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b044b709e58ef76a7b3e6a6c52611a24e50312107474fa2ec928d6b42c8bc874`  
		Last Modified: Thu, 07 Mar 2019 23:09:29 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.3` - linux; arm variant v6

```console
$ docker pull consul@sha256:3a9d8304e034b4cfe052c315d7986e4359b77be9b2e44d1d1b04321ca7833d31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36349914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c52712cb2331fd223c1aa7f4dc089ccd8c63b50923e4dd5587320bfc9f62db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:21 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 08 Mar 2019 03:52:21 GMT
ENV CONSUL_VERSION=1.4.3
# Fri, 08 Mar 2019 03:52:21 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 08 Mar 2019 03:52:23 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 08 Mar 2019 03:52:33 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 08 Mar 2019 03:52:34 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 08 Mar 2019 03:52:36 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:52:36 GMT
VOLUME [/consul/data]
# Fri, 08 Mar 2019 03:52:37 GMT
EXPOSE 8300
# Fri, 08 Mar 2019 03:52:37 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 08 Mar 2019 03:52:37 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 08 Mar 2019 03:52:38 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:52:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:52:38 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ea00ed1797a9284c7dfae3d819052e0f490d383e777cc22873b67cff4b54c10`  
		Last Modified: Fri, 08 Mar 2019 03:52:48 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68c588727f84f3b70e738cb6ef8a452cc1e17d88bf233aa8e6c86e472d76ec2`  
		Last Modified: Fri, 08 Mar 2019 03:52:58 GMT  
		Size: 34.3 MB (34296378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301ffb1fc945a037f42652b6615c4848b7d2f3f2718afc69263e55a11722d6ab`  
		Last Modified: Fri, 08 Mar 2019 03:52:48 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d30fc981b9078dac6a0557ed78244386b70485df200b65e37b41da8fd2cee37`  
		Last Modified: Fri, 08 Mar 2019 03:52:48 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3b66e7f70231e6358f5ce84f1d730e3186f3f34cd582a25855a14ce7b07493`  
		Last Modified: Fri, 08 Mar 2019 03:52:48 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.3` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:0a836b687ced7a0173e05f00155d173c44b20632a6c8ae54da92cfa1ca027575
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35877987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa37806a2bf36dd74558f660ce36b051d7c7ae35432f752ad04d94e28380abb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 08 Mar 2019 07:55:24 GMT
ENV CONSUL_VERSION=1.4.3
# Fri, 08 Mar 2019 07:55:25 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 08 Mar 2019 07:55:28 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 08 Mar 2019 07:55:43 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 08 Mar 2019 07:55:46 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 08 Mar 2019 07:55:49 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 07:55:50 GMT
VOLUME [/consul/data]
# Fri, 08 Mar 2019 07:55:51 GMT
EXPOSE 8300
# Fri, 08 Mar 2019 07:55:52 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 08 Mar 2019 07:55:53 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 08 Mar 2019 07:55:53 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Mar 2019 07:55:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:55:56 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60783ab867023ad9bf7c792d297d3392353cddcd806dbf4f2f5bf9239f1be59a`  
		Last Modified: Fri, 08 Mar 2019 07:56:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab02c80309c2b1d537b4fd84c55558502b0b67381ab887212fba82468d916409`  
		Last Modified: Fri, 08 Mar 2019 07:56:19 GMT  
		Size: 33.9 MB (33875765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa0c91d5a7a72b45a24e90caa839c3cfd5e6eb97cc03596ae5a5b1d2aa6a7a1`  
		Last Modified: Fri, 08 Mar 2019 07:56:05 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e161ce5844fcda0a2da3213a0cfb3a0d3fae165ba9dc5f200891ccf65cd4bd08`  
		Last Modified: Fri, 08 Mar 2019 07:56:05 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79673b3a0249f973062440a6d6cbf6031259fb564467b790145b3063422ef03`  
		Last Modified: Fri, 08 Mar 2019 07:56:05 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.3` - linux; 386

```console
$ docker pull consul@sha256:3ae74c72920a9774eea8604f75dceee10c34954787e3ea9139f6f4a8a123e07d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37593106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d3053d4924c7ac098e8bec44c4c11365eec7f786f47d1c7a1ea9be8f8ba0c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:06 GMT
ADD file:eca24f9ef61dc86fee19b7e25d939a4ce663b5c36d7ed6b8553a4b4f5784d14b in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:09:41 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 08 Mar 2019 04:09:41 GMT
ENV CONSUL_VERSION=1.4.3
# Fri, 08 Mar 2019 04:09:41 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 08 Mar 2019 04:09:42 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 08 Mar 2019 04:09:50 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 08 Mar 2019 04:09:51 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 08 Mar 2019 04:09:51 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:09:52 GMT
VOLUME [/consul/data]
# Fri, 08 Mar 2019 04:09:52 GMT
EXPOSE 8300
# Fri, 08 Mar 2019 04:09:52 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 08 Mar 2019 04:09:52 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 08 Mar 2019 04:09:52 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Mar 2019 04:09:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:09:53 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aefea79d2300fff07c38505e077fe3dd5057323f7073024e51b0f3ac80f4c49d`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.2 MB (2168969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790ac626f36b320d8d72f07f260d2a9308d7a8a4e4d58808cb865077dda52e99`  
		Last Modified: Fri, 08 Mar 2019 04:10:01 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d1594269a886822e591494f55cad657208f56d0ef865c7d232c9ba1f18e50c`  
		Last Modified: Fri, 08 Mar 2019 04:10:09 GMT  
		Size: 35.4 MB (35420905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509d9cce490a02fd8ab2092180e0cc50f66d9e7765791951a92dcc465c841a52`  
		Last Modified: Fri, 08 Mar 2019 04:10:01 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bec78d1d5556c81ef840f2cd80a993c37fddb796f6c025052cddfe05a83f1fd`  
		Last Modified: Fri, 08 Mar 2019 04:10:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba59fd9f5a1440a34fc299e6fa1ff81695006b4d086bfc5f0c707d4475a225da`  
		Last Modified: Fri, 08 Mar 2019 04:10:01 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:778f4c43c9669546988f6710abc23900ed77cc3222ca4f520038ddb3ef5d5281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:9f421059f3a95ba41c462d183f3d9f725bfdc739fd0afdcd3a4f99627d6cca5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.4 MB (38391671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c836e84db15484b60e5ebbf2422fd1b8b6eaa52dc82e728664739c14f0cda2af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:10 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 07 Mar 2019 23:09:11 GMT
ENV CONSUL_VERSION=1.4.3
# Thu, 07 Mar 2019 23:09:11 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 07 Mar 2019 23:09:11 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 07 Mar 2019 23:09:18 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 07 Mar 2019 23:09:18 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 07 Mar 2019 23:09:19 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:19 GMT
VOLUME [/consul/data]
# Thu, 07 Mar 2019 23:09:20 GMT
EXPOSE 8300
# Thu, 07 Mar 2019 23:09:20 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 07 Mar 2019 23:09:20 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 07 Mar 2019 23:09:20 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 07 Mar 2019 23:09:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Mar 2019 23:09:20 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c84632fec01a8fa7c68acfaec7a9ec0a234763a2d5d7565955bae9dab9075f`  
		Last Modified: Thu, 07 Mar 2019 23:09:29 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a163d1a51581854ab8631291216c4c586213998b172f8b1f570806ac95c82b`  
		Last Modified: Thu, 07 Mar 2019 23:09:35 GMT  
		Size: 36.3 MB (36281337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a6737da7863a7d25a1b25a5fb56e45debba8a57d954b899b429a01b13fc7c0`  
		Last Modified: Thu, 07 Mar 2019 23:09:29 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e359be04f0bbb3fcc244706989974f33ca3379a43e8972c3720e43cb2ac9547f`  
		Last Modified: Thu, 07 Mar 2019 23:09:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b044b709e58ef76a7b3e6a6c52611a24e50312107474fa2ec928d6b42c8bc874`  
		Last Modified: Thu, 07 Mar 2019 23:09:29 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm variant v6

```console
$ docker pull consul@sha256:3a9d8304e034b4cfe052c315d7986e4359b77be9b2e44d1d1b04321ca7833d31
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36349914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c52712cb2331fd223c1aa7f4dc089ccd8c63b50923e4dd5587320bfc9f62db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:21 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 08 Mar 2019 03:52:21 GMT
ENV CONSUL_VERSION=1.4.3
# Fri, 08 Mar 2019 03:52:21 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 08 Mar 2019 03:52:23 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 08 Mar 2019 03:52:33 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 08 Mar 2019 03:52:34 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 08 Mar 2019 03:52:36 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 03:52:36 GMT
VOLUME [/consul/data]
# Fri, 08 Mar 2019 03:52:37 GMT
EXPOSE 8300
# Fri, 08 Mar 2019 03:52:37 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 08 Mar 2019 03:52:37 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 08 Mar 2019 03:52:38 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Mar 2019 03:52:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 03:52:38 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ea00ed1797a9284c7dfae3d819052e0f490d383e777cc22873b67cff4b54c10`  
		Last Modified: Fri, 08 Mar 2019 03:52:48 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68c588727f84f3b70e738cb6ef8a452cc1e17d88bf233aa8e6c86e472d76ec2`  
		Last Modified: Fri, 08 Mar 2019 03:52:58 GMT  
		Size: 34.3 MB (34296378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301ffb1fc945a037f42652b6615c4848b7d2f3f2718afc69263e55a11722d6ab`  
		Last Modified: Fri, 08 Mar 2019 03:52:48 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d30fc981b9078dac6a0557ed78244386b70485df200b65e37b41da8fd2cee37`  
		Last Modified: Fri, 08 Mar 2019 03:52:48 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b3b66e7f70231e6358f5ce84f1d730e3186f3f34cd582a25855a14ce7b07493`  
		Last Modified: Fri, 08 Mar 2019 03:52:48 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:0a836b687ced7a0173e05f00155d173c44b20632a6c8ae54da92cfa1ca027575
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35877987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa37806a2bf36dd74558f660ce36b051d7c7ae35432f752ad04d94e28380abb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 08 Mar 2019 07:55:24 GMT
ENV CONSUL_VERSION=1.4.3
# Fri, 08 Mar 2019 07:55:25 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 08 Mar 2019 07:55:28 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 08 Mar 2019 07:55:43 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 08 Mar 2019 07:55:46 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 08 Mar 2019 07:55:49 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 07:55:50 GMT
VOLUME [/consul/data]
# Fri, 08 Mar 2019 07:55:51 GMT
EXPOSE 8300
# Fri, 08 Mar 2019 07:55:52 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 08 Mar 2019 07:55:53 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 08 Mar 2019 07:55:53 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Mar 2019 07:55:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 07:55:56 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60783ab867023ad9bf7c792d297d3392353cddcd806dbf4f2f5bf9239f1be59a`  
		Last Modified: Fri, 08 Mar 2019 07:56:05 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab02c80309c2b1d537b4fd84c55558502b0b67381ab887212fba82468d916409`  
		Last Modified: Fri, 08 Mar 2019 07:56:19 GMT  
		Size: 33.9 MB (33875765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa0c91d5a7a72b45a24e90caa839c3cfd5e6eb97cc03596ae5a5b1d2aa6a7a1`  
		Last Modified: Fri, 08 Mar 2019 07:56:05 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e161ce5844fcda0a2da3213a0cfb3a0d3fae165ba9dc5f200891ccf65cd4bd08`  
		Last Modified: Fri, 08 Mar 2019 07:56:05 GMT  
		Size: 152.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e79673b3a0249f973062440a6d6cbf6031259fb564467b790145b3063422ef03`  
		Last Modified: Fri, 08 Mar 2019 07:56:05 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; 386

```console
$ docker pull consul@sha256:3ae74c72920a9774eea8604f75dceee10c34954787e3ea9139f6f4a8a123e07d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37593106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62d3053d4924c7ac098e8bec44c4c11365eec7f786f47d1c7a1ea9be8f8ba0c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:06 GMT
ADD file:eca24f9ef61dc86fee19b7e25d939a4ce663b5c36d7ed6b8553a4b4f5784d14b in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:09:41 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 08 Mar 2019 04:09:41 GMT
ENV CONSUL_VERSION=1.4.3
# Fri, 08 Mar 2019 04:09:41 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 08 Mar 2019 04:09:42 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 08 Mar 2019 04:09:50 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 08 Mar 2019 04:09:51 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 08 Mar 2019 04:09:51 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 08 Mar 2019 04:09:52 GMT
VOLUME [/consul/data]
# Fri, 08 Mar 2019 04:09:52 GMT
EXPOSE 8300
# Fri, 08 Mar 2019 04:09:52 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 08 Mar 2019 04:09:52 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 08 Mar 2019 04:09:52 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 08 Mar 2019 04:09:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:09:53 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aefea79d2300fff07c38505e077fe3dd5057323f7073024e51b0f3ac80f4c49d`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.2 MB (2168969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790ac626f36b320d8d72f07f260d2a9308d7a8a4e4d58808cb865077dda52e99`  
		Last Modified: Fri, 08 Mar 2019 04:10:01 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d1594269a886822e591494f55cad657208f56d0ef865c7d232c9ba1f18e50c`  
		Last Modified: Fri, 08 Mar 2019 04:10:09 GMT  
		Size: 35.4 MB (35420905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509d9cce490a02fd8ab2092180e0cc50f66d9e7765791951a92dcc465c841a52`  
		Last Modified: Fri, 08 Mar 2019 04:10:01 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bec78d1d5556c81ef840f2cd80a993c37fddb796f6c025052cddfe05a83f1fd`  
		Last Modified: Fri, 08 Mar 2019 04:10:01 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba59fd9f5a1440a34fc299e6fa1ff81695006b4d086bfc5f0c707d4475a225da`  
		Last Modified: Fri, 08 Mar 2019 04:10:01 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
