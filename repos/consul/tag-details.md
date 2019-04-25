<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `consul`

-	[`consul:0.9`](#consul09)
-	[`consul:0.9.4`](#consul094)
-	[`consul:1.0`](#consul10)
-	[`consul:1.0.8`](#consul108)
-	[`consul:1.1`](#consul11)
-	[`consul:1.1.1`](#consul111)
-	[`consul:1.2`](#consul12)
-	[`consul:1.2.4`](#consul124)
-	[`consul:1.4`](#consul14)
-	[`consul:1.4.4`](#consul144)
-	[`consul:latest`](#consullatest)

## `consul:0.9`

```console
$ docker pull consul@sha256:6194e6379541998d391520594a004e9dc991d1b9464142f43ce729fe333d7e72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:0.9` - linux; amd64

```console
$ docker pull consul@sha256:06b3d572d868d5e832749258e69b62b9d60a6a228eabb5e38b6f30bdcc626123
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13372091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8db3f57c96471f71104676e0a4a610b6435899828e11575c60312284cc32be9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:10 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 24 Apr 2019 21:20:55 GMT
ENV CONSUL_VERSION=0.9.4
# Wed, 24 Apr 2019 21:21:03 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 24 Apr 2019 21:21:04 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 24 Apr 2019 21:21:09 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 24 Apr 2019 21:21:10 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 24 Apr 2019 21:21:11 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 24 Apr 2019 21:21:11 GMT
VOLUME [/consul/data]
# Wed, 24 Apr 2019 21:21:11 GMT
EXPOSE 8300
# Wed, 24 Apr 2019 21:21:11 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 24 Apr 2019 21:21:12 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 24 Apr 2019 21:21:12 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Apr 2019 21:21:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Apr 2019 21:21:12 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f712ff270e33a5474fe937fc7aee09239574926d368191a6f01acf194aed8d25`  
		Last Modified: Wed, 24 Apr 2019 21:21:53 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157115d6dce634c524cc6c7fa051d985b6c3ec8df0925b6dfb555318e7570e2e`  
		Last Modified: Wed, 24 Apr 2019 21:21:54 GMT  
		Size: 11.3 MB (11261758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a763091cf4ee5aa12b7235c8e837e0ddb96b8043a1ba040e140331e40aaf24`  
		Last Modified: Wed, 24 Apr 2019 21:21:51 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7592c74e9f5a452570a2a110f8a575219e4c61dc89e60cc983b6d73205ea550`  
		Last Modified: Wed, 24 Apr 2019 21:21:51 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bec0cbdef8eddd76df8a81140ed979b851cf8fa4d559241ddf9e83649572af5`  
		Last Modified: Wed, 24 Apr 2019 21:21:51 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9` - linux; arm variant v6

```console
$ docker pull consul@sha256:484f42b0860b3a364e80df3ee70598d06ac2c07c1439224f380cb8571c402ddd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12719383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:943bdd34faa18c8adcf6db6ad0c840799a7e2724951f2893d6b1f7b0565475e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:21 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 07:50:34 GMT
ENV CONSUL_VERSION=0.9.4
# Thu, 25 Apr 2019 07:50:35 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 07:50:37 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 07:50:45 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 07:50:47 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 07:50:48 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 07:50:49 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 07:50:49 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 07:50:50 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 07:50:50 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 07:50:50 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 07:50:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 07:50:51 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491f24b4e973912e9fe2be1f4ff29c77633d7cd861a41427a2df46376894291d`  
		Last Modified: Thu, 25 Apr 2019 07:51:46 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491a512028f65ca6514b246f179f82a8fdb9a6e54025b91ee56b67d816816247`  
		Last Modified: Thu, 25 Apr 2019 07:51:50 GMT  
		Size: 10.7 MB (10665844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997946acb635f0d7c374ccfa731a5b30ff3bc47efbdde3e4bc5a2207e7fd1c36`  
		Last Modified: Thu, 25 Apr 2019 07:51:46 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae0c802b2c2e2f244450c5436a6dadf2b0eb79cffdb58c434c636f2165aba3f`  
		Last Modified: Thu, 25 Apr 2019 07:51:46 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b02d714af16ef77e7434caec41dff571423b31038a2436b5be2ee9cc4451f20`  
		Last Modified: Thu, 25 Apr 2019 07:51:46 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:cf995f2c15d097ea921183f102a7e76e1f4bd2d26baca353c0e807cb83257330
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.5 MB (12523557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77bad2848dbc7ec637ac700ad8434ae892f1a200782f2d23b437d1830e05cae5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 08:41:43 GMT
ENV CONSUL_VERSION=0.9.4
# Thu, 25 Apr 2019 08:41:45 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 08:41:49 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 08:42:00 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 08:42:02 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 08:42:04 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 08:42:04 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 08:42:05 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 08:42:13 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 08:42:14 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 08:42:15 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 08:42:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 08:42:17 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fc655915e88a0b27dbb32354589d16d877f04f7d74373a59d3da5cebf50fd2`  
		Last Modified: Thu, 25 Apr 2019 08:43:32 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5210b9a00739e9e1c162c755dd0623514b38bf8f2800ea551617ecd2db5537`  
		Last Modified: Thu, 25 Apr 2019 08:43:34 GMT  
		Size: 10.5 MB (10521335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea0a4da191c81ed5bc4c24c600bcb63f7cceccd4cd3a88ec59c2057e16278b2`  
		Last Modified: Thu, 25 Apr 2019 08:43:30 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37265a22d4be6f9aa4df26eaa17879b845bd0cb81f63b2f357faa5e09c394936`  
		Last Modified: Thu, 25 Apr 2019 08:43:30 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c52233e5203e235cd299c6fb7b42e54c44b723f7c2a807512efddc2d55cf62`  
		Last Modified: Thu, 25 Apr 2019 08:43:30 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9` - linux; 386

```console
$ docker pull consul@sha256:13f7b671b299a90c759b276f279941d169d182e898c0efb41cc3b4bcfc68dba2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13025352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de86169d48241b05a6b86dfa4a3e72197a7a77196d7b05e6d6a9a83126ecbeba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:44:59 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 15:44:59 GMT
ENV CONSUL_VERSION=0.9.4
# Fri, 21 Dec 2018 15:44:59 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 15:45:00 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 15:45:05 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 15:45:06 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 15:45:07 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 15:45:07 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 15:45:07 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 15:45:07 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 15:45:08 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 15:45:08 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 15:45:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:45:08 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07d3d89b2e52cb1d3be5e33cbcfe1d5e68f79a636b683600f41875ffb12fffd`  
		Last Modified: Fri, 21 Dec 2018 15:46:09 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ddc1da973486a9bfe67e2c400c5e6511ab70a12909e060087dd6e237ed0ca7`  
		Last Modified: Fri, 21 Dec 2018 15:46:12 GMT  
		Size: 10.9 MB (10852932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2ed0cec3b68b7379e229fbd6b6349666d94caf67219e6c17e54b95b435014d`  
		Last Modified: Fri, 21 Dec 2018 15:46:09 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0a48189ac3e2a8f2d0bd7a9f14d92964446665841a76cdff927fbfa86204e7`  
		Last Modified: Fri, 21 Dec 2018 15:46:09 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642cf09a37ae5baa646c9d002f42bd141bf51cab94d9d3b460a1fb29ff9af83c`  
		Last Modified: Fri, 21 Dec 2018 15:46:09 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:0.9.4`

```console
$ docker pull consul@sha256:6194e6379541998d391520594a004e9dc991d1b9464142f43ce729fe333d7e72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:0.9.4` - linux; amd64

```console
$ docker pull consul@sha256:06b3d572d868d5e832749258e69b62b9d60a6a228eabb5e38b6f30bdcc626123
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13372091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8db3f57c96471f71104676e0a4a610b6435899828e11575c60312284cc32be9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:10 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 24 Apr 2019 21:20:55 GMT
ENV CONSUL_VERSION=0.9.4
# Wed, 24 Apr 2019 21:21:03 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 24 Apr 2019 21:21:04 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 24 Apr 2019 21:21:09 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 24 Apr 2019 21:21:10 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 24 Apr 2019 21:21:11 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 24 Apr 2019 21:21:11 GMT
VOLUME [/consul/data]
# Wed, 24 Apr 2019 21:21:11 GMT
EXPOSE 8300
# Wed, 24 Apr 2019 21:21:11 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 24 Apr 2019 21:21:12 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 24 Apr 2019 21:21:12 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Apr 2019 21:21:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Apr 2019 21:21:12 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f712ff270e33a5474fe937fc7aee09239574926d368191a6f01acf194aed8d25`  
		Last Modified: Wed, 24 Apr 2019 21:21:53 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:157115d6dce634c524cc6c7fa051d985b6c3ec8df0925b6dfb555318e7570e2e`  
		Last Modified: Wed, 24 Apr 2019 21:21:54 GMT  
		Size: 11.3 MB (11261758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a763091cf4ee5aa12b7235c8e837e0ddb96b8043a1ba040e140331e40aaf24`  
		Last Modified: Wed, 24 Apr 2019 21:21:51 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7592c74e9f5a452570a2a110f8a575219e4c61dc89e60cc983b6d73205ea550`  
		Last Modified: Wed, 24 Apr 2019 21:21:51 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bec0cbdef8eddd76df8a81140ed979b851cf8fa4d559241ddf9e83649572af5`  
		Last Modified: Wed, 24 Apr 2019 21:21:51 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:484f42b0860b3a364e80df3ee70598d06ac2c07c1439224f380cb8571c402ddd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.7 MB (12719383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:943bdd34faa18c8adcf6db6ad0c840799a7e2724951f2893d6b1f7b0565475e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:21 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 07:50:34 GMT
ENV CONSUL_VERSION=0.9.4
# Thu, 25 Apr 2019 07:50:35 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 07:50:37 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 07:50:45 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 07:50:47 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 07:50:48 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 07:50:49 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 07:50:49 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 07:50:50 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 07:50:50 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 07:50:50 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 07:50:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 07:50:51 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491f24b4e973912e9fe2be1f4ff29c77633d7cd861a41427a2df46376894291d`  
		Last Modified: Thu, 25 Apr 2019 07:51:46 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491a512028f65ca6514b246f179f82a8fdb9a6e54025b91ee56b67d816816247`  
		Last Modified: Thu, 25 Apr 2019 07:51:50 GMT  
		Size: 10.7 MB (10665844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:997946acb635f0d7c374ccfa731a5b30ff3bc47efbdde3e4bc5a2207e7fd1c36`  
		Last Modified: Thu, 25 Apr 2019 07:51:46 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae0c802b2c2e2f244450c5436a6dadf2b0eb79cffdb58c434c636f2165aba3f`  
		Last Modified: Thu, 25 Apr 2019 07:51:46 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b02d714af16ef77e7434caec41dff571423b31038a2436b5be2ee9cc4451f20`  
		Last Modified: Thu, 25 Apr 2019 07:51:46 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9.4` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:cf995f2c15d097ea921183f102a7e76e1f4bd2d26baca353c0e807cb83257330
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.5 MB (12523557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77bad2848dbc7ec637ac700ad8434ae892f1a200782f2d23b437d1830e05cae5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 08:41:43 GMT
ENV CONSUL_VERSION=0.9.4
# Thu, 25 Apr 2019 08:41:45 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 08:41:49 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 08:42:00 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 08:42:02 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 08:42:04 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 08:42:04 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 08:42:05 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 08:42:13 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 08:42:14 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 08:42:15 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 08:42:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 08:42:17 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fc655915e88a0b27dbb32354589d16d877f04f7d74373a59d3da5cebf50fd2`  
		Last Modified: Thu, 25 Apr 2019 08:43:32 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5210b9a00739e9e1c162c755dd0623514b38bf8f2800ea551617ecd2db5537`  
		Last Modified: Thu, 25 Apr 2019 08:43:34 GMT  
		Size: 10.5 MB (10521335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea0a4da191c81ed5bc4c24c600bcb63f7cceccd4cd3a88ec59c2057e16278b2`  
		Last Modified: Thu, 25 Apr 2019 08:43:30 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37265a22d4be6f9aa4df26eaa17879b845bd0cb81f63b2f357faa5e09c394936`  
		Last Modified: Thu, 25 Apr 2019 08:43:30 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c52233e5203e235cd299c6fb7b42e54c44b723f7c2a807512efddc2d55cf62`  
		Last Modified: Thu, 25 Apr 2019 08:43:30 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9.4` - linux; 386

```console
$ docker pull consul@sha256:13f7b671b299a90c759b276f279941d169d182e898c0efb41cc3b4bcfc68dba2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.0 MB (13025352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de86169d48241b05a6b86dfa4a3e72197a7a77196d7b05e6d6a9a83126ecbeba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:44:59 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 15:44:59 GMT
ENV CONSUL_VERSION=0.9.4
# Fri, 21 Dec 2018 15:44:59 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 15:45:00 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 15:45:05 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 15:45:06 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 15:45:07 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 15:45:07 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 15:45:07 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 15:45:07 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 15:45:08 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 15:45:08 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 15:45:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:45:08 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07d3d89b2e52cb1d3be5e33cbcfe1d5e68f79a636b683600f41875ffb12fffd`  
		Last Modified: Fri, 21 Dec 2018 15:46:09 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ddc1da973486a9bfe67e2c400c5e6511ab70a12909e060087dd6e237ed0ca7`  
		Last Modified: Fri, 21 Dec 2018 15:46:12 GMT  
		Size: 10.9 MB (10852932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2ed0cec3b68b7379e229fbd6b6349666d94caf67219e6c17e54b95b435014d`  
		Last Modified: Fri, 21 Dec 2018 15:46:09 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0a48189ac3e2a8f2d0bd7a9f14d92964446665841a76cdff927fbfa86204e7`  
		Last Modified: Fri, 21 Dec 2018 15:46:09 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642cf09a37ae5baa646c9d002f42bd141bf51cab94d9d3b460a1fb29ff9af83c`  
		Last Modified: Fri, 21 Dec 2018 15:46:09 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.0`

```console
$ docker pull consul@sha256:27fa583c0363ac3717f9a8d33a6c6045fafdcde8d8014d094626f93e885a960a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.0` - linux; amd64

```console
$ docker pull consul@sha256:e2a79d1805a612dcd5698e2543ff77e81e3c4ecd778e858ad036caae118dd0eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15387059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2d5d45545d3522f742e12ace96b1145ded9552efb5403b4a2f561ff3193c6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:10 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 24 Apr 2019 21:20:43 GMT
ENV CONSUL_VERSION=1.0.8
# Wed, 24 Apr 2019 21:20:43 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 24 Apr 2019 21:20:44 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 24 Apr 2019 21:20:49 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 24 Apr 2019 21:20:50 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 24 Apr 2019 21:20:50 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 24 Apr 2019 21:20:51 GMT
VOLUME [/consul/data]
# Wed, 24 Apr 2019 21:20:51 GMT
EXPOSE 8300
# Wed, 24 Apr 2019 21:20:51 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 24 Apr 2019 21:20:51 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 24 Apr 2019 21:20:51 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Apr 2019 21:20:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Apr 2019 21:20:52 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdbcfd099787f80b584f64840821ee994805f07570cb4f53937ffec19dcef92`  
		Last Modified: Wed, 24 Apr 2019 21:21:45 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71795abdd850a6d589acbaead9c8035e5928fddf7669c1f67e4fbfb9411e1bf4`  
		Last Modified: Wed, 24 Apr 2019 21:21:47 GMT  
		Size: 13.3 MB (13276727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec9323b2c4b9dcd828ea6fa07654c6e40b089b6649aec475f47565f4c158482`  
		Last Modified: Wed, 24 Apr 2019 21:21:44 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92d3c947f535b06691bdda95cc745154d898ff7931e8a91d9a11fb6db8f4ed6`  
		Last Modified: Wed, 24 Apr 2019 21:21:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7391e5e20e80c014851d0bfcde55d4de38b158cddf151cd57a852f792a2c3ca`  
		Last Modified: Wed, 24 Apr 2019 21:21:44 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0` - linux; arm variant v6

```console
$ docker pull consul@sha256:b1cc96730ce379297c893ef2eaea67313119d8d024ce55cb878b861124fb3773
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14901780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7661a94471e803d92917e8cb9f398eb991fcd902de80c81d473ec7bb2b708eab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:21 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 07:50:11 GMT
ENV CONSUL_VERSION=1.0.8
# Thu, 25 Apr 2019 07:50:11 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 07:50:13 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 07:50:21 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 07:50:23 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 07:50:25 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 07:50:26 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 07:50:26 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 07:50:26 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 07:50:27 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 07:50:28 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 07:50:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 07:50:29 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167e9a1839fc92bb2786251a7662eb8f55b59d4bb8991a997387b050dd56cda`  
		Last Modified: Thu, 25 Apr 2019 07:51:37 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190a472fde226e2e85ce49fadc99e83d61d3c97c6427a5b12c5c7ed9b503edc`  
		Last Modified: Thu, 25 Apr 2019 07:51:41 GMT  
		Size: 12.8 MB (12848237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2853855bec659fdbf0f83fd183c0e2fa10258ef3af80eeb948b01abcc0aa48`  
		Last Modified: Thu, 25 Apr 2019 07:51:36 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52600ca4cb9656e339a498cf46eeffcd58c6be22ed8fcd2b1e9a1dd603c9a1b`  
		Last Modified: Thu, 25 Apr 2019 07:51:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281f58ead58cc95c9a5500b2296797d2c716bb4a3169a9d1f7c7a9f33740fd14`  
		Last Modified: Thu, 25 Apr 2019 07:51:36 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:116fca802d8fc0c69a0116ea147cd25dac7351bbd44d1cf0b1db49dcad81db9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14670242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49c092a5465c69247e44c1e9abc6ea8b99daca4614d564f056afdeb78d687d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:47 GMT
ADD file:7278e4df49d628c2bbb27c53665e671f57cd2db003e030b1be93eb81c5d28303 in / 
# Fri, 21 Dec 2018 09:42:48 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:59:29 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 10:00:02 GMT
ENV CONSUL_VERSION=1.0.8
# Fri, 21 Dec 2018 10:00:02 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 10:00:06 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 10:00:16 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 10:00:18 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 10:00:19 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:00:20 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 10:00:21 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 10:00:22 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 10:00:22 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 10:00:23 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 10:00:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:00:24 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe4843495e56e3546d4d49cf476ee7bc1650156062151aa38cf3e2fb397a70`  
		Last Modified: Fri, 21 Dec 2018 09:43:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749a0356fa16de3e90296c77e47b0ea34c3b44133106d7e7b54ec9e3ae3dcb01`  
		Last Modified: Fri, 21 Dec 2018 10:02:33 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f0d1531ded4a73be04002f28868f1660c46d74be415c95e1d62241eb36e232`  
		Last Modified: Fri, 21 Dec 2018 10:02:39 GMT  
		Size: 12.7 MB (12667663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104c9f2660566f988c8c0356c1920af170d0acbd0fc98a907890dcf7879ca1c5`  
		Last Modified: Fri, 21 Dec 2018 10:02:33 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f85ea20df620d4899e5bcf540594d81dd11ea79c1c682cba072c9744f138a3`  
		Last Modified: Fri, 21 Dec 2018 10:02:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a005a9834b3bb4bb38121e6c18c66f577b0f8ed613a2b18975fa49d39740b50e`  
		Last Modified: Fri, 21 Dec 2018 10:02:33 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0` - linux; 386

```console
$ docker pull consul@sha256:4f989d5e2ad4793cbd42b82782c9f252367e65ad2d9f814e1e2a58c2048787cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15247514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fbc6dae6cc212bef871b00fba02111a32c95bacef9b4fd4ed9864f613a4fb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:44:59 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 15:45:11 GMT
ENV CONSUL_VERSION=1.0.8
# Fri, 21 Dec 2018 15:45:12 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 15:45:12 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 15:45:18 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 15:45:18 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 15:45:19 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 15:45:19 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 15:45:19 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 15:45:20 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 15:45:20 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 15:45:20 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 15:45:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:45:20 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a30bea08a5bfb974ddae7967756b8645f96c3122bb822a2126fd2e94a606860`  
		Last Modified: Fri, 21 Dec 2018 15:46:15 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf88819320605557cb3819b63fb1be7246d471451b17d87c3ba8db24ebf18e0`  
		Last Modified: Fri, 21 Dec 2018 15:46:18 GMT  
		Size: 13.1 MB (13075091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef8193e01146890b25fd96085393b4c45d62f900751aa5e3c4e868510bee689`  
		Last Modified: Fri, 21 Dec 2018 15:46:15 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3d6d271fff8aa318dd6c1c45e3588909fe8008b188342915fedb54049e9374`  
		Last Modified: Fri, 21 Dec 2018 15:46:15 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de572f48fffcf9ea84114accd92a63d4b1cae2082a511876d75ae5bfca7df46f`  
		Last Modified: Fri, 21 Dec 2018 15:46:15 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.0.8`

```console
$ docker pull consul@sha256:27fa583c0363ac3717f9a8d33a6c6045fafdcde8d8014d094626f93e885a960a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.0.8` - linux; amd64

```console
$ docker pull consul@sha256:e2a79d1805a612dcd5698e2543ff77e81e3c4ecd778e858ad036caae118dd0eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15387059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2d5d45545d3522f742e12ace96b1145ded9552efb5403b4a2f561ff3193c6d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:10 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 24 Apr 2019 21:20:43 GMT
ENV CONSUL_VERSION=1.0.8
# Wed, 24 Apr 2019 21:20:43 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 24 Apr 2019 21:20:44 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 24 Apr 2019 21:20:49 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 24 Apr 2019 21:20:50 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 24 Apr 2019 21:20:50 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 24 Apr 2019 21:20:51 GMT
VOLUME [/consul/data]
# Wed, 24 Apr 2019 21:20:51 GMT
EXPOSE 8300
# Wed, 24 Apr 2019 21:20:51 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 24 Apr 2019 21:20:51 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 24 Apr 2019 21:20:51 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Apr 2019 21:20:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Apr 2019 21:20:52 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdbcfd099787f80b584f64840821ee994805f07570cb4f53937ffec19dcef92`  
		Last Modified: Wed, 24 Apr 2019 21:21:45 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71795abdd850a6d589acbaead9c8035e5928fddf7669c1f67e4fbfb9411e1bf4`  
		Last Modified: Wed, 24 Apr 2019 21:21:47 GMT  
		Size: 13.3 MB (13276727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec9323b2c4b9dcd828ea6fa07654c6e40b089b6649aec475f47565f4c158482`  
		Last Modified: Wed, 24 Apr 2019 21:21:44 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92d3c947f535b06691bdda95cc745154d898ff7931e8a91d9a11fb6db8f4ed6`  
		Last Modified: Wed, 24 Apr 2019 21:21:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7391e5e20e80c014851d0bfcde55d4de38b158cddf151cd57a852f792a2c3ca`  
		Last Modified: Wed, 24 Apr 2019 21:21:44 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0.8` - linux; arm variant v6

```console
$ docker pull consul@sha256:b1cc96730ce379297c893ef2eaea67313119d8d024ce55cb878b861124fb3773
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.9 MB (14901780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7661a94471e803d92917e8cb9f398eb991fcd902de80c81d473ec7bb2b708eab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:21 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 07:50:11 GMT
ENV CONSUL_VERSION=1.0.8
# Thu, 25 Apr 2019 07:50:11 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 07:50:13 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 07:50:21 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 07:50:23 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 07:50:25 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 07:50:26 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 07:50:26 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 07:50:26 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 07:50:27 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 07:50:28 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 07:50:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 07:50:29 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2167e9a1839fc92bb2786251a7662eb8f55b59d4bb8991a997387b050dd56cda`  
		Last Modified: Thu, 25 Apr 2019 07:51:37 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7190a472fde226e2e85ce49fadc99e83d61d3c97c6427a5b12c5c7ed9b503edc`  
		Last Modified: Thu, 25 Apr 2019 07:51:41 GMT  
		Size: 12.8 MB (12848237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2853855bec659fdbf0f83fd183c0e2fa10258ef3af80eeb948b01abcc0aa48`  
		Last Modified: Thu, 25 Apr 2019 07:51:36 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52600ca4cb9656e339a498cf46eeffcd58c6be22ed8fcd2b1e9a1dd603c9a1b`  
		Last Modified: Thu, 25 Apr 2019 07:51:36 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:281f58ead58cc95c9a5500b2296797d2c716bb4a3169a9d1f7c7a9f33740fd14`  
		Last Modified: Thu, 25 Apr 2019 07:51:36 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0.8` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:116fca802d8fc0c69a0116ea147cd25dac7351bbd44d1cf0b1db49dcad81db9a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.7 MB (14670242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c49c092a5465c69247e44c1e9abc6ea8b99daca4614d564f056afdeb78d687d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 09:42:47 GMT
ADD file:7278e4df49d628c2bbb27c53665e671f57cd2db003e030b1be93eb81c5d28303 in / 
# Fri, 21 Dec 2018 09:42:48 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:42:48 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:59:29 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 10:00:02 GMT
ENV CONSUL_VERSION=1.0.8
# Fri, 21 Dec 2018 10:00:02 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 10:00:06 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 10:00:16 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 10:00:18 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 10:00:19 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 10:00:20 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 10:00:21 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 10:00:22 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 10:00:22 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 10:00:23 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 10:00:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 10:00:24 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bfe4843495e56e3546d4d49cf476ee7bc1650156062151aa38cf3e2fb397a70`  
		Last Modified: Fri, 21 Dec 2018 09:43:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749a0356fa16de3e90296c77e47b0ea34c3b44133106d7e7b54ec9e3ae3dcb01`  
		Last Modified: Fri, 21 Dec 2018 10:02:33 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95f0d1531ded4a73be04002f28868f1660c46d74be415c95e1d62241eb36e232`  
		Last Modified: Fri, 21 Dec 2018 10:02:39 GMT  
		Size: 12.7 MB (12667663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104c9f2660566f988c8c0356c1920af170d0acbd0fc98a907890dcf7879ca1c5`  
		Last Modified: Fri, 21 Dec 2018 10:02:33 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f85ea20df620d4899e5bcf540594d81dd11ea79c1c682cba072c9744f138a3`  
		Last Modified: Fri, 21 Dec 2018 10:02:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a005a9834b3bb4bb38121e6c18c66f577b0f8ed613a2b18975fa49d39740b50e`  
		Last Modified: Fri, 21 Dec 2018 10:02:33 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0.8` - linux; 386

```console
$ docker pull consul@sha256:4f989d5e2ad4793cbd42b82782c9f252367e65ad2d9f814e1e2a58c2048787cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15247514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56fbc6dae6cc212bef871b00fba02111a32c95bacef9b4fd4ed9864f613a4fb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:44:59 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 15:45:11 GMT
ENV CONSUL_VERSION=1.0.8
# Fri, 21 Dec 2018 15:45:12 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 15:45:12 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 15:45:18 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 15:45:18 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 15:45:19 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 15:45:19 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 15:45:19 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 15:45:20 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 15:45:20 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 15:45:20 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 15:45:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:45:20 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a30bea08a5bfb974ddae7967756b8645f96c3122bb822a2126fd2e94a606860`  
		Last Modified: Fri, 21 Dec 2018 15:46:15 GMT  
		Size: 1.3 KB (1251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf88819320605557cb3819b63fb1be7246d471451b17d87c3ba8db24ebf18e0`  
		Last Modified: Fri, 21 Dec 2018 15:46:18 GMT  
		Size: 13.1 MB (13075091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef8193e01146890b25fd96085393b4c45d62f900751aa5e3c4e868510bee689`  
		Last Modified: Fri, 21 Dec 2018 15:46:15 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de3d6d271fff8aa318dd6c1c45e3588909fe8008b188342915fedb54049e9374`  
		Last Modified: Fri, 21 Dec 2018 15:46:15 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de572f48fffcf9ea84114accd92a63d4b1cae2082a511876d75ae5bfca7df46f`  
		Last Modified: Fri, 21 Dec 2018 15:46:15 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.1`

```console
$ docker pull consul@sha256:1c407ba1879b61ddebc8418556f41e2dd4720b8ab53f636ce840f1c392de11c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.1` - linux; amd64

```console
$ docker pull consul@sha256:9ebc4cd51947772df854c1d192a85d20b9cb738562980f3e01ef5375d811fa24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16853536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4350116f4ef3993cf4f881d7acd059d36ddbeed91fc2548ae923a1d3cb44ec2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:10 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 24 Apr 2019 21:19:41 GMT
ENV CONSUL_VERSION=1.1.1
# Wed, 24 Apr 2019 21:19:41 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 24 Apr 2019 21:19:42 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 24 Apr 2019 21:19:47 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 24 Apr 2019 21:19:48 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 24 Apr 2019 21:20:34 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 24 Apr 2019 21:20:34 GMT
VOLUME [/consul/data]
# Wed, 24 Apr 2019 21:20:34 GMT
EXPOSE 8300
# Wed, 24 Apr 2019 21:20:34 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 24 Apr 2019 21:20:34 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 24 Apr 2019 21:20:35 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Apr 2019 21:20:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Apr 2019 21:20:35 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3799e5dc7c0d8e70f653cc2bcfe2823883f6e0e0170ec0dcb6d890191b5a2337`  
		Last Modified: Wed, 24 Apr 2019 21:21:34 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82015171ed18cd54b2c2424d784b3c0bb25b2d59723f9c185d4f4dc557c79fa9`  
		Last Modified: Wed, 24 Apr 2019 21:21:37 GMT  
		Size: 14.7 MB (14743202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0858fcbd98700d20eb468cf2b0009058bc442b029f8f4a6d2c8222d0d2f67eb9`  
		Last Modified: Wed, 24 Apr 2019 21:21:33 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed60e2e6a80906b4f126b02620f52468a320dc53b41f93150a10520cec86597d`  
		Last Modified: Wed, 24 Apr 2019 21:21:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47285eb5e157ab91ddc5ff31303f2f075d0e9f32fbc69c8427192281d200ea6f`  
		Last Modified: Wed, 24 Apr 2019 21:21:33 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1` - linux; arm variant v6

```console
$ docker pull consul@sha256:6cb34061a2f1899a6944554b7a6a68acca67c999b09b04fa73a5b961b1a7531b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16365340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb10224d965116126dced1f9f9420e409497161804ca32c037e9cf0da3cfcaf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:21 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 07:49:47 GMT
ENV CONSUL_VERSION=1.1.1
# Thu, 25 Apr 2019 07:49:47 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 07:49:50 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 07:49:58 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 07:50:00 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 07:50:01 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 07:50:02 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 07:50:02 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 07:50:03 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 07:50:04 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 07:50:04 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 07:50:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 07:50:05 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9418eee2218ffc9000e10da12b8191da290683a82feca1c50116d490ad07b8ef`  
		Last Modified: Thu, 25 Apr 2019 07:51:25 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345de489c6810fa5e66af63d565a30305d890e7f930275d19b54b5ce892c7cd2`  
		Last Modified: Thu, 25 Apr 2019 07:51:31 GMT  
		Size: 14.3 MB (14311798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e231c957de286349cc736bd885536f7886999b91de841e38fcc4a9e9584466`  
		Last Modified: Thu, 25 Apr 2019 07:51:26 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99347914c0c473aad1ac0acdad92ff791bf71502d6d60cb4881f55fdef1b8954`  
		Last Modified: Thu, 25 Apr 2019 07:51:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c524b7dcf83f42422578c067ef1c3f5cc9e3c1cf1192d6f26436c9acd14fa2d`  
		Last Modified: Thu, 25 Apr 2019 07:51:26 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:61baf842525c8739e5c0c5bdcba58da35ae93058d009f11b0b36cc5cef31f0a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16107293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc48aa3712e51758009a0c2b583d8e3955988286721a4faad759ad8db5ced85f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 08:40:13 GMT
ENV CONSUL_VERSION=1.1.1
# Thu, 25 Apr 2019 08:40:13 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 08:40:16 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 08:40:28 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 08:40:33 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 08:40:35 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 08:40:36 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 08:40:37 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 08:40:39 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 08:40:40 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 08:40:41 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 08:40:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 08:40:49 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71274c66045362f07fd1e8a124d4729056e7a0d2a5c18fd2224b1132f3a5b2c9`  
		Last Modified: Thu, 25 Apr 2019 08:43:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093c6df8cece24bf228b22f5164a7c436f7e43059f3a430d2b15c4d85520735b`  
		Last Modified: Thu, 25 Apr 2019 08:43:06 GMT  
		Size: 14.1 MB (14105071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d8654092f9971a03798a40e5dae0f5a917a37ff551e3c56a4ba0fef95ae319`  
		Last Modified: Thu, 25 Apr 2019 08:42:57 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a7894c9738096bb61eddac4ebe8aafcde7d7836949c4ed2203edaaab2370f1`  
		Last Modified: Thu, 25 Apr 2019 08:42:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a6c412117f25d9ab4483c044014db59f727ef534f0d0135e512addbd625aa7`  
		Last Modified: Thu, 25 Apr 2019 08:42:58 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1` - linux; 386

```console
$ docker pull consul@sha256:c9a5ef3fa9c96dda7f6771bb1c539175829e599672bb94fa99b61633eb590028
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16719631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07059c60155a957a48d86e2cd7e85a0bcc27f0f846d1834329dedd365470fa66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:44:59 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 15:45:24 GMT
ENV CONSUL_VERSION=1.1.1
# Fri, 21 Dec 2018 15:45:24 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 15:45:24 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 15:45:30 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 15:45:31 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 15:45:32 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 15:45:32 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 15:45:32 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 15:45:32 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 15:45:32 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 15:45:33 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 15:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:45:33 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64c35744042159722ce8377cbccccc1fd82aff68b378b9b1623ba7f0107f342`  
		Last Modified: Fri, 21 Dec 2018 15:46:21 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb8708b53be268652ac7b8f1153830005af254a541f4418a975fe588a1f9b65`  
		Last Modified: Fri, 21 Dec 2018 15:46:24 GMT  
		Size: 14.5 MB (14547208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d513fc0b7d25eac187da17fad32e4541f96d2b836d9553f98cdc82d3690f94dc`  
		Last Modified: Fri, 21 Dec 2018 15:46:21 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dc4715e3bc009c661ea7bb3b3080373ed9c4d6a301adcc8aa1ec054d401a7e`  
		Last Modified: Fri, 21 Dec 2018 15:46:21 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15e95bfab5bf835e277d0e04dbbf293cf0375e929bd2a979ac546d77d138fa7`  
		Last Modified: Fri, 21 Dec 2018 15:46:21 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.1.1`

```console
$ docker pull consul@sha256:1c407ba1879b61ddebc8418556f41e2dd4720b8ab53f636ce840f1c392de11c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.1.1` - linux; amd64

```console
$ docker pull consul@sha256:9ebc4cd51947772df854c1d192a85d20b9cb738562980f3e01ef5375d811fa24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16853536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4350116f4ef3993cf4f881d7acd059d36ddbeed91fc2548ae923a1d3cb44ec2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:10 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 24 Apr 2019 21:19:41 GMT
ENV CONSUL_VERSION=1.1.1
# Wed, 24 Apr 2019 21:19:41 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 24 Apr 2019 21:19:42 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 24 Apr 2019 21:19:47 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 24 Apr 2019 21:19:48 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 24 Apr 2019 21:20:34 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 24 Apr 2019 21:20:34 GMT
VOLUME [/consul/data]
# Wed, 24 Apr 2019 21:20:34 GMT
EXPOSE 8300
# Wed, 24 Apr 2019 21:20:34 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 24 Apr 2019 21:20:34 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 24 Apr 2019 21:20:35 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Apr 2019 21:20:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Apr 2019 21:20:35 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3799e5dc7c0d8e70f653cc2bcfe2823883f6e0e0170ec0dcb6d890191b5a2337`  
		Last Modified: Wed, 24 Apr 2019 21:21:34 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82015171ed18cd54b2c2424d784b3c0bb25b2d59723f9c185d4f4dc557c79fa9`  
		Last Modified: Wed, 24 Apr 2019 21:21:37 GMT  
		Size: 14.7 MB (14743202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0858fcbd98700d20eb468cf2b0009058bc442b029f8f4a6d2c8222d0d2f67eb9`  
		Last Modified: Wed, 24 Apr 2019 21:21:33 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed60e2e6a80906b4f126b02620f52468a320dc53b41f93150a10520cec86597d`  
		Last Modified: Wed, 24 Apr 2019 21:21:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47285eb5e157ab91ddc5ff31303f2f075d0e9f32fbc69c8427192281d200ea6f`  
		Last Modified: Wed, 24 Apr 2019 21:21:33 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1.1` - linux; arm variant v6

```console
$ docker pull consul@sha256:6cb34061a2f1899a6944554b7a6a68acca67c999b09b04fa73a5b961b1a7531b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16365340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb10224d965116126dced1f9f9420e409497161804ca32c037e9cf0da3cfcaf5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:21 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 07:49:47 GMT
ENV CONSUL_VERSION=1.1.1
# Thu, 25 Apr 2019 07:49:47 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 07:49:50 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 07:49:58 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 07:50:00 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 07:50:01 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 07:50:02 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 07:50:02 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 07:50:03 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 07:50:04 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 07:50:04 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 07:50:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 07:50:05 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9418eee2218ffc9000e10da12b8191da290683a82feca1c50116d490ad07b8ef`  
		Last Modified: Thu, 25 Apr 2019 07:51:25 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345de489c6810fa5e66af63d565a30305d890e7f930275d19b54b5ce892c7cd2`  
		Last Modified: Thu, 25 Apr 2019 07:51:31 GMT  
		Size: 14.3 MB (14311798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e231c957de286349cc736bd885536f7886999b91de841e38fcc4a9e9584466`  
		Last Modified: Thu, 25 Apr 2019 07:51:26 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99347914c0c473aad1ac0acdad92ff791bf71502d6d60cb4881f55fdef1b8954`  
		Last Modified: Thu, 25 Apr 2019 07:51:26 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c524b7dcf83f42422578c067ef1c3f5cc9e3c1cf1192d6f26436c9acd14fa2d`  
		Last Modified: Thu, 25 Apr 2019 07:51:26 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1.1` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:61baf842525c8739e5c0c5bdcba58da35ae93058d009f11b0b36cc5cef31f0a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16107293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc48aa3712e51758009a0c2b583d8e3955988286721a4faad759ad8db5ced85f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 08:40:13 GMT
ENV CONSUL_VERSION=1.1.1
# Thu, 25 Apr 2019 08:40:13 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 08:40:16 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 08:40:28 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 08:40:33 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 08:40:35 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 08:40:36 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 08:40:37 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 08:40:39 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 08:40:40 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 08:40:41 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 08:40:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 08:40:49 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71274c66045362f07fd1e8a124d4729056e7a0d2a5c18fd2224b1132f3a5b2c9`  
		Last Modified: Thu, 25 Apr 2019 08:43:02 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093c6df8cece24bf228b22f5164a7c436f7e43059f3a430d2b15c4d85520735b`  
		Last Modified: Thu, 25 Apr 2019 08:43:06 GMT  
		Size: 14.1 MB (14105071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d8654092f9971a03798a40e5dae0f5a917a37ff551e3c56a4ba0fef95ae319`  
		Last Modified: Thu, 25 Apr 2019 08:42:57 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a7894c9738096bb61eddac4ebe8aafcde7d7836949c4ed2203edaaab2370f1`  
		Last Modified: Thu, 25 Apr 2019 08:42:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a6c412117f25d9ab4483c044014db59f727ef534f0d0135e512addbd625aa7`  
		Last Modified: Thu, 25 Apr 2019 08:42:58 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1.1` - linux; 386

```console
$ docker pull consul@sha256:c9a5ef3fa9c96dda7f6771bb1c539175829e599672bb94fa99b61633eb590028
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16719631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07059c60155a957a48d86e2cd7e85a0bcc27f0f846d1834329dedd365470fa66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:44:59 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 15:45:24 GMT
ENV CONSUL_VERSION=1.1.1
# Fri, 21 Dec 2018 15:45:24 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 15:45:24 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 15:45:30 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 15:45:31 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 15:45:32 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 15:45:32 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 15:45:32 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 15:45:32 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 15:45:32 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 15:45:33 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 15:45:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:45:33 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64c35744042159722ce8377cbccccc1fd82aff68b378b9b1623ba7f0107f342`  
		Last Modified: Fri, 21 Dec 2018 15:46:21 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb8708b53be268652ac7b8f1153830005af254a541f4418a975fe588a1f9b65`  
		Last Modified: Fri, 21 Dec 2018 15:46:24 GMT  
		Size: 14.5 MB (14547208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d513fc0b7d25eac187da17fad32e4541f96d2b836d9553f98cdc82d3690f94dc`  
		Last Modified: Fri, 21 Dec 2018 15:46:21 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79dc4715e3bc009c661ea7bb3b3080373ed9c4d6a301adcc8aa1ec054d401a7e`  
		Last Modified: Fri, 21 Dec 2018 15:46:21 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15e95bfab5bf835e277d0e04dbbf293cf0375e929bd2a979ac546d77d138fa7`  
		Last Modified: Fri, 21 Dec 2018 15:46:21 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.2`

```console
$ docker pull consul@sha256:9167566b9453c2ef6a61bee5fe65e03d2d73b3f28f89a11fb4c02a9c5a05bbce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.2` - linux; amd64

```console
$ docker pull consul@sha256:daf49e27b49ee8340f2cf3325449dba8ae4404b1a1033fcebeafdcd5a6ee29f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27150860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6672b74354194689a1ff8fee79c0141ad01a7ecb8c81f2e8320ad73a154783d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:10 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 24 Apr 2019 21:19:26 GMT
ENV CONSUL_VERSION=1.2.4
# Wed, 24 Apr 2019 21:19:26 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 24 Apr 2019 21:19:27 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 24 Apr 2019 21:19:34 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 24 Apr 2019 21:19:35 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 24 Apr 2019 21:19:36 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 24 Apr 2019 21:19:36 GMT
VOLUME [/consul/data]
# Wed, 24 Apr 2019 21:19:36 GMT
EXPOSE 8300
# Wed, 24 Apr 2019 21:19:36 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 24 Apr 2019 21:19:36 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 24 Apr 2019 21:19:37 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Apr 2019 21:19:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Apr 2019 21:19:37 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a6bc9a4c4757d8112d44cce86bce73b8090eb47c05f56f51040b4e5ac1198f`  
		Last Modified: Wed, 24 Apr 2019 21:21:24 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c83f2335a70dacf7c9bbc095df81cbaad52ffb0c544960d7f343e4e5ae1629`  
		Last Modified: Wed, 24 Apr 2019 21:21:29 GMT  
		Size: 25.0 MB (25040527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab14cec8a87256491328219cfe9176cfa15c4dc3247fd548d16c93e7009e6fb1`  
		Last Modified: Wed, 24 Apr 2019 21:21:23 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5196a963a5f9ff14b5c54cbefa48f9bf61ede2f83911f878506180187757db79`  
		Last Modified: Wed, 24 Apr 2019 21:21:23 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32e2c29c643cd02478a8fddfd07a98ae727d1a7450b4e24d644a08ff2047d26`  
		Last Modified: Wed, 24 Apr 2019 21:21:23 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2` - linux; arm variant v6

```console
$ docker pull consul@sha256:4cce6dfe8a3e00a46056a510e1a612fe6c6149652fd8cb3433070e2e954c8cd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26320200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0ddf288b5a244ae70fd009a5b2097b1425e94fdf938b386fa250f7cd373e82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:21 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 07:49:22 GMT
ENV CONSUL_VERSION=1.2.4
# Thu, 25 Apr 2019 07:49:23 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 07:49:25 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 07:49:35 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 07:49:37 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 07:49:38 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 07:49:39 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 07:49:39 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 07:49:40 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 07:49:40 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 07:49:41 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 07:49:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 07:49:41 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa29f9de8caa58cf590e9827ee5593b40cffa08159cb73c7e1bb5177814810d8`  
		Last Modified: Thu, 25 Apr 2019 07:51:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223ffdce40c47449af7219fc8cb54110d4a03f73433cffa61ecc252c10e2c588`  
		Last Modified: Thu, 25 Apr 2019 07:51:20 GMT  
		Size: 24.3 MB (24266659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5954537dbc9f31b86e67b6daa6b992f3657deb5aad8b5a36c405cc32079933cb`  
		Last Modified: Thu, 25 Apr 2019 07:51:10 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226a1b4a2d2939c1b36d94a179a5d3f8bc050ff5a2917f8ba6e76c44d4a9463d`  
		Last Modified: Thu, 25 Apr 2019 07:51:10 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028fa1fc413c5daa51cd3372ea7f5e43eda2c8304881a26f60b0c1b63c71261c`  
		Last Modified: Thu, 25 Apr 2019 07:51:10 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:19f2e241778b66c97cee0b93b1c02e018ef76deaa0ce95a134d3bf2fdd7243cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25878381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225929514acda8c504f64a125b4a7b8cb76ac6180b07481f0212fb02f6b197df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 08:39:39 GMT
ENV CONSUL_VERSION=1.2.4
# Thu, 25 Apr 2019 08:39:39 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 08:39:42 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 08:39:57 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 08:39:59 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 08:40:00 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 08:40:01 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 08:40:02 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 08:40:02 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 08:40:03 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 08:40:04 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 08:40:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 08:40:05 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66044447f3b5642cb6180794407af3166b00f3706eb4cde554fa791be4ac913e`  
		Last Modified: Thu, 25 Apr 2019 08:42:38 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cdf020979aee1beff17dc2aa2568ef41363e8daadde4831faa27693327ccbb`  
		Last Modified: Thu, 25 Apr 2019 08:42:49 GMT  
		Size: 23.9 MB (23876163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3872224e49b70823a380289fd1b72ffc2731727f3df4c771c990eb0550460197`  
		Last Modified: Thu, 25 Apr 2019 08:42:38 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929619879566745f2e435d216bf6cceca0e29d2b6da530e58a4afc95dfb4e496`  
		Last Modified: Thu, 25 Apr 2019 08:42:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89323de6c1a82fba4113ff36d8b8d6fec32d175124fade4815fb085453271428`  
		Last Modified: Thu, 25 Apr 2019 08:42:38 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2` - linux; 386

```console
$ docker pull consul@sha256:68276f4598fae7ceeac975848fc9fd7c9eb6f8f3adf1c876bce4647736959fc2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26861492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:752c4f8c8e79298e2383a965db19b1ecc51a1393d415d747c5e5998c04035750`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:44:59 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 15:45:36 GMT
ENV CONSUL_VERSION=1.2.4
# Fri, 21 Dec 2018 15:45:36 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 15:45:37 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 15:45:44 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 15:45:44 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 15:45:45 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 15:45:45 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 15:45:45 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 15:45:46 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 15:45:46 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 15:45:46 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 15:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:45:46 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e21b4a4ed35efde5616fd614d2cf1f52be97c8bfe6823ac97476b7003288589`  
		Last Modified: Fri, 21 Dec 2018 15:46:27 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae768e587a422e55ff07bd621fa51e69dd2e3b1c925494974dd0218ab9e210fa`  
		Last Modified: Fri, 21 Dec 2018 15:46:33 GMT  
		Size: 24.7 MB (24689072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed74f41be0918b644838b37359d366733922d973ddcdf1bc831e7f2d8da7fc28`  
		Last Modified: Fri, 21 Dec 2018 15:46:27 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaab01d431e4c34323515c6ca716bcaf240cf3a35810571665f90214fedfab6c`  
		Last Modified: Fri, 21 Dec 2018 15:46:27 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c60c54e0a7e365e011b9d7a9edf28d2e67d973af3263e76d6054f9e28d304d7`  
		Last Modified: Fri, 21 Dec 2018 15:46:27 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.2.4`

```console
$ docker pull consul@sha256:9167566b9453c2ef6a61bee5fe65e03d2d73b3f28f89a11fb4c02a9c5a05bbce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.2.4` - linux; amd64

```console
$ docker pull consul@sha256:daf49e27b49ee8340f2cf3325449dba8ae4404b1a1033fcebeafdcd5a6ee29f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27150860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6672b74354194689a1ff8fee79c0141ad01a7ecb8c81f2e8320ad73a154783d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:10 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Wed, 24 Apr 2019 21:19:26 GMT
ENV CONSUL_VERSION=1.2.4
# Wed, 24 Apr 2019 21:19:26 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Wed, 24 Apr 2019 21:19:27 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Wed, 24 Apr 2019 21:19:34 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Wed, 24 Apr 2019 21:19:35 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Wed, 24 Apr 2019 21:19:36 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Wed, 24 Apr 2019 21:19:36 GMT
VOLUME [/consul/data]
# Wed, 24 Apr 2019 21:19:36 GMT
EXPOSE 8300
# Wed, 24 Apr 2019 21:19:36 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Wed, 24 Apr 2019 21:19:36 GMT
EXPOSE 8500 8600 8600/udp
# Wed, 24 Apr 2019 21:19:37 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 24 Apr 2019 21:19:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Apr 2019 21:19:37 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a6bc9a4c4757d8112d44cce86bce73b8090eb47c05f56f51040b4e5ac1198f`  
		Last Modified: Wed, 24 Apr 2019 21:21:24 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c83f2335a70dacf7c9bbc095df81cbaad52ffb0c544960d7f343e4e5ae1629`  
		Last Modified: Wed, 24 Apr 2019 21:21:29 GMT  
		Size: 25.0 MB (25040527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab14cec8a87256491328219cfe9176cfa15c4dc3247fd548d16c93e7009e6fb1`  
		Last Modified: Wed, 24 Apr 2019 21:21:23 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5196a963a5f9ff14b5c54cbefa48f9bf61ede2f83911f878506180187757db79`  
		Last Modified: Wed, 24 Apr 2019 21:21:23 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32e2c29c643cd02478a8fddfd07a98ae727d1a7450b4e24d644a08ff2047d26`  
		Last Modified: Wed, 24 Apr 2019 21:21:23 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:4cce6dfe8a3e00a46056a510e1a612fe6c6149652fd8cb3433070e2e954c8cd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26320200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0ddf288b5a244ae70fd009a5b2097b1425e94fdf938b386fa250f7cd373e82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:21 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 07:49:22 GMT
ENV CONSUL_VERSION=1.2.4
# Thu, 25 Apr 2019 07:49:23 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 07:49:25 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 07:49:35 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 07:49:37 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 07:49:38 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 07:49:39 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 07:49:39 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 07:49:40 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 07:49:40 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 07:49:41 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 07:49:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 07:49:41 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa29f9de8caa58cf590e9827ee5593b40cffa08159cb73c7e1bb5177814810d8`  
		Last Modified: Thu, 25 Apr 2019 07:51:10 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223ffdce40c47449af7219fc8cb54110d4a03f73433cffa61ecc252c10e2c588`  
		Last Modified: Thu, 25 Apr 2019 07:51:20 GMT  
		Size: 24.3 MB (24266659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5954537dbc9f31b86e67b6daa6b992f3657deb5aad8b5a36c405cc32079933cb`  
		Last Modified: Thu, 25 Apr 2019 07:51:10 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226a1b4a2d2939c1b36d94a179a5d3f8bc050ff5a2917f8ba6e76c44d4a9463d`  
		Last Modified: Thu, 25 Apr 2019 07:51:10 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028fa1fc413c5daa51cd3372ea7f5e43eda2c8304881a26f60b0c1b63c71261c`  
		Last Modified: Thu, 25 Apr 2019 07:51:10 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.4` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:19f2e241778b66c97cee0b93b1c02e018ef76deaa0ce95a134d3bf2fdd7243cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25878381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225929514acda8c504f64a125b4a7b8cb76ac6180b07481f0212fb02f6b197df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 25 Apr 2019 08:39:39 GMT
ENV CONSUL_VERSION=1.2.4
# Thu, 25 Apr 2019 08:39:39 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 25 Apr 2019 08:39:42 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 25 Apr 2019 08:39:57 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 25 Apr 2019 08:39:59 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 25 Apr 2019 08:40:00 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 25 Apr 2019 08:40:01 GMT
VOLUME [/consul/data]
# Thu, 25 Apr 2019 08:40:02 GMT
EXPOSE 8300
# Thu, 25 Apr 2019 08:40:02 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 25 Apr 2019 08:40:03 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 25 Apr 2019 08:40:04 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 25 Apr 2019 08:40:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 08:40:05 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66044447f3b5642cb6180794407af3166b00f3706eb4cde554fa791be4ac913e`  
		Last Modified: Thu, 25 Apr 2019 08:42:38 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cdf020979aee1beff17dc2aa2568ef41363e8daadde4831faa27693327ccbb`  
		Last Modified: Thu, 25 Apr 2019 08:42:49 GMT  
		Size: 23.9 MB (23876163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3872224e49b70823a380289fd1b72ffc2731727f3df4c771c990eb0550460197`  
		Last Modified: Thu, 25 Apr 2019 08:42:38 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929619879566745f2e435d216bf6cceca0e29d2b6da530e58a4afc95dfb4e496`  
		Last Modified: Thu, 25 Apr 2019 08:42:38 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89323de6c1a82fba4113ff36d8b8d6fec32d175124fade4815fb085453271428`  
		Last Modified: Thu, 25 Apr 2019 08:42:38 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.4` - linux; 386

```console
$ docker pull consul@sha256:68276f4598fae7ceeac975848fc9fd7c9eb6f8f3adf1c876bce4647736959fc2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26861492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:752c4f8c8e79298e2383a965db19b1ecc51a1393d415d747c5e5998c04035750`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 21 Dec 2018 11:39:54 GMT
ADD file:b2b8059d0cd5b8582648bf5cbdd2ad66e2519582281f0fa6ab560c1a85398c3c in / 
# Fri, 21 Dec 2018 11:39:54 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:39:54 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 15:44:59 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 21 Dec 2018 15:45:36 GMT
ENV CONSUL_VERSION=1.2.4
# Fri, 21 Dec 2018 15:45:36 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 21 Dec 2018 15:45:37 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 21 Dec 2018 15:45:44 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 21 Dec 2018 15:45:44 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 21 Dec 2018 15:45:45 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 21 Dec 2018 15:45:45 GMT
VOLUME [/consul/data]
# Fri, 21 Dec 2018 15:45:45 GMT
EXPOSE 8300
# Fri, 21 Dec 2018 15:45:46 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 21 Dec 2018 15:45:46 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 21 Dec 2018 15:45:46 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 21 Dec 2018 15:45:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Dec 2018 15:45:46 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0a615535caf92b95d6aefc87792c439acc9382c9f2e6e6c4b3e03cbdb6dbf780`  
		Last Modified: Wed, 12 Sep 2018 10:39:21 GMT  
		Size: 2.2 MB (2169016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8fd280f9a42e33caddacaf364c842da7b3b726b15cf2a4051b8e83e1b06a0c`  
		Last Modified: Fri, 21 Dec 2018 11:40:43 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e21b4a4ed35efde5616fd614d2cf1f52be97c8bfe6823ac97476b7003288589`  
		Last Modified: Fri, 21 Dec 2018 15:46:27 GMT  
		Size: 1.2 KB (1250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae768e587a422e55ff07bd621fa51e69dd2e3b1c925494974dd0218ab9e210fa`  
		Last Modified: Fri, 21 Dec 2018 15:46:33 GMT  
		Size: 24.7 MB (24689072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed74f41be0918b644838b37359d366733922d973ddcdf1bc831e7f2d8da7fc28`  
		Last Modified: Fri, 21 Dec 2018 15:46:27 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaab01d431e4c34323515c6ca716bcaf240cf3a35810571665f90214fedfab6c`  
		Last Modified: Fri, 21 Dec 2018 15:46:27 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c60c54e0a7e365e011b9d7a9edf28d2e67d973af3263e76d6054f9e28d304d7`  
		Last Modified: Fri, 21 Dec 2018 15:46:27 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.4`

```console
$ docker pull consul@sha256:9113b1043308b4193d2be8516c64fcdc2e9740e3c626be058076de697c407be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.4` - linux; amd64

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

### `consul:1.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:9eb76e7231ef84acaeac9e17cb4510f6baa2ff74e77c53ff266e0c6d85970365
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36350584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87429630e3c38e9b4253cfa5e4882a84a762cdc6ea77e88090ee8a682968a549`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:21 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 22 Mar 2019 07:49:22 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 22 Mar 2019 07:49:22 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 22 Mar 2019 07:49:23 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 22 Mar 2019 07:49:34 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 22 Mar 2019 07:49:35 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 22 Mar 2019 07:49:37 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:37 GMT
VOLUME [/consul/data]
# Fri, 22 Mar 2019 07:49:37 GMT
EXPOSE 8300
# Fri, 22 Mar 2019 07:49:38 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 22 Mar 2019 07:49:38 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 22 Mar 2019 07:49:38 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 22 Mar 2019 07:49:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Mar 2019 07:49:39 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a6637d586d45ac147959b10082b0a420b8f8b9fca501783bfd408b2fb5d660`  
		Last Modified: Fri, 22 Mar 2019 07:49:49 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc18d8cc2fe24223c6a5b1c7652fc198b6cd5ede76cd60cced17099343dbaa76`  
		Last Modified: Fri, 22 Mar 2019 07:49:59 GMT  
		Size: 34.3 MB (34297048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb80cab2745b42c48bb7dd5007a44bca9984a540facdf0818fb84ce9889092`  
		Last Modified: Fri, 22 Mar 2019 07:49:49 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae9445bc24374a383fba166b9a37b1ef23aa0fdef83a4accdd3f5b94d1106fb`  
		Last Modified: Fri, 22 Mar 2019 07:49:49 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c071235d977ef06f5b0ed2f0eafba446ae3fc39072748a8381c88d55e114ca`  
		Last Modified: Fri, 22 Mar 2019 07:49:49 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:331daaee943efe250b19b99364ec044fa94ff9ea656f194714c75a546f864b1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35887819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eac76ceb68801014c0645e0d0787ce4a5f83bad70962663c7f6786e46e966fad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 22 Mar 2019 08:42:15 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 22 Mar 2019 08:42:16 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 22 Mar 2019 08:42:20 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 22 Mar 2019 08:42:35 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 22 Mar 2019 08:42:37 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 22 Mar 2019 08:42:39 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:40 GMT
VOLUME [/consul/data]
# Fri, 22 Mar 2019 08:42:41 GMT
EXPOSE 8300
# Fri, 22 Mar 2019 08:42:41 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 22 Mar 2019 08:42:42 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 22 Mar 2019 08:42:43 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 22 Mar 2019 08:42:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Mar 2019 08:42:45 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ef9adcfee5a91afd9e4fa5537466d640f1cfcce63bb4c639cfc3ee7eb39dae`  
		Last Modified: Fri, 22 Mar 2019 08:42:57 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a49e740baae76c86940a9ffe6ce6d429bf658902baf5497bc358d9d8b8617e`  
		Last Modified: Fri, 22 Mar 2019 08:43:08 GMT  
		Size: 33.9 MB (33885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc601851c6a4120868a1fc80a22d3a0483606c453a2e5dc0cc12a8ec75a5a4f`  
		Last Modified: Fri, 22 Mar 2019 08:42:56 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bf2905a4e0923cc3a22203cc10fc83871ba881a3da4e6deb79d1991f7cad70`  
		Last Modified: Fri, 22 Mar 2019 08:42:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829aa6be1478f46f023550e39985218f393c7617739966f837f703580619b893`  
		Last Modified: Fri, 22 Mar 2019 08:42:56 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4` - linux; 386

```console
$ docker pull consul@sha256:43382545030b547748f2332f1b913c75e44e6656f4c818959b715d5c0a932fab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37592137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba984863417ec78defe3889ca08eced9fbdc0a031537aabaad2bf2b907e667e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:06 GMT
ADD file:eca24f9ef61dc86fee19b7e25d939a4ce663b5c36d7ed6b8553a4b4f5784d14b in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:09:41 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 22 Mar 2019 10:38:20 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 22 Mar 2019 10:38:20 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 22 Mar 2019 10:38:21 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 22 Mar 2019 10:38:29 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 22 Mar 2019 10:38:29 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 22 Mar 2019 10:38:30 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 10:38:30 GMT
VOLUME [/consul/data]
# Fri, 22 Mar 2019 10:38:30 GMT
EXPOSE 8300
# Fri, 22 Mar 2019 10:38:30 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 22 Mar 2019 10:38:31 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 22 Mar 2019 10:38:31 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 22 Mar 2019 10:38:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Mar 2019 10:38:31 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aefea79d2300fff07c38505e077fe3dd5057323f7073024e51b0f3ac80f4c49d`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.2 MB (2168969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e12843b26b992a68aad39d58d39115c6e83dab92555241deeff175fcb51be57`  
		Last Modified: Fri, 22 Mar 2019 10:38:38 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de90c2cbfe9d990723ec2f230891e0501bbd7c74cecd10abd88cdf693335ee8`  
		Last Modified: Fri, 22 Mar 2019 10:38:44 GMT  
		Size: 35.4 MB (35419938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c5e19a02452ab8b51ef343f61e05b6aad281ba3c9f22a94cf4fb7466676408`  
		Last Modified: Fri, 22 Mar 2019 10:38:38 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681ea30dd19f2b2668d4208a54adb6d7c4213541c49c422a2e059bc2fae6884f`  
		Last Modified: Fri, 22 Mar 2019 10:38:38 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543ae41050f1ac3cd3f8e3064dc1edb111c4e04afbb7b4f6b3dd9ceec1148763`  
		Last Modified: Fri, 22 Mar 2019 10:38:38 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.4.4`

```console
$ docker pull consul@sha256:9113b1043308b4193d2be8516c64fcdc2e9740e3c626be058076de697c407be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.4.4` - linux; amd64

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

### `consul:1.4.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:9eb76e7231ef84acaeac9e17cb4510f6baa2ff74e77c53ff266e0c6d85970365
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36350584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87429630e3c38e9b4253cfa5e4882a84a762cdc6ea77e88090ee8a682968a549`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:21 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 22 Mar 2019 07:49:22 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 22 Mar 2019 07:49:22 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 22 Mar 2019 07:49:23 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 22 Mar 2019 07:49:34 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 22 Mar 2019 07:49:35 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 22 Mar 2019 07:49:37 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:37 GMT
VOLUME [/consul/data]
# Fri, 22 Mar 2019 07:49:37 GMT
EXPOSE 8300
# Fri, 22 Mar 2019 07:49:38 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 22 Mar 2019 07:49:38 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 22 Mar 2019 07:49:38 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 22 Mar 2019 07:49:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Mar 2019 07:49:39 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a6637d586d45ac147959b10082b0a420b8f8b9fca501783bfd408b2fb5d660`  
		Last Modified: Fri, 22 Mar 2019 07:49:49 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc18d8cc2fe24223c6a5b1c7652fc198b6cd5ede76cd60cced17099343dbaa76`  
		Last Modified: Fri, 22 Mar 2019 07:49:59 GMT  
		Size: 34.3 MB (34297048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb80cab2745b42c48bb7dd5007a44bca9984a540facdf0818fb84ce9889092`  
		Last Modified: Fri, 22 Mar 2019 07:49:49 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae9445bc24374a383fba166b9a37b1ef23aa0fdef83a4accdd3f5b94d1106fb`  
		Last Modified: Fri, 22 Mar 2019 07:49:49 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c071235d977ef06f5b0ed2f0eafba446ae3fc39072748a8381c88d55e114ca`  
		Last Modified: Fri, 22 Mar 2019 07:49:49 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.4` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:331daaee943efe250b19b99364ec044fa94ff9ea656f194714c75a546f864b1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35887819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eac76ceb68801014c0645e0d0787ce4a5f83bad70962663c7f6786e46e966fad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 22 Mar 2019 08:42:15 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 22 Mar 2019 08:42:16 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 22 Mar 2019 08:42:20 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 22 Mar 2019 08:42:35 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 22 Mar 2019 08:42:37 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 22 Mar 2019 08:42:39 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:40 GMT
VOLUME [/consul/data]
# Fri, 22 Mar 2019 08:42:41 GMT
EXPOSE 8300
# Fri, 22 Mar 2019 08:42:41 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 22 Mar 2019 08:42:42 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 22 Mar 2019 08:42:43 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 22 Mar 2019 08:42:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Mar 2019 08:42:45 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ef9adcfee5a91afd9e4fa5537466d640f1cfcce63bb4c639cfc3ee7eb39dae`  
		Last Modified: Fri, 22 Mar 2019 08:42:57 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a49e740baae76c86940a9ffe6ce6d429bf658902baf5497bc358d9d8b8617e`  
		Last Modified: Fri, 22 Mar 2019 08:43:08 GMT  
		Size: 33.9 MB (33885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc601851c6a4120868a1fc80a22d3a0483606c453a2e5dc0cc12a8ec75a5a4f`  
		Last Modified: Fri, 22 Mar 2019 08:42:56 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bf2905a4e0923cc3a22203cc10fc83871ba881a3da4e6deb79d1991f7cad70`  
		Last Modified: Fri, 22 Mar 2019 08:42:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829aa6be1478f46f023550e39985218f393c7617739966f837f703580619b893`  
		Last Modified: Fri, 22 Mar 2019 08:42:56 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.4` - linux; 386

```console
$ docker pull consul@sha256:43382545030b547748f2332f1b913c75e44e6656f4c818959b715d5c0a932fab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37592137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba984863417ec78defe3889ca08eced9fbdc0a031537aabaad2bf2b907e667e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:06 GMT
ADD file:eca24f9ef61dc86fee19b7e25d939a4ce663b5c36d7ed6b8553a4b4f5784d14b in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:09:41 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 22 Mar 2019 10:38:20 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 22 Mar 2019 10:38:20 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 22 Mar 2019 10:38:21 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 22 Mar 2019 10:38:29 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 22 Mar 2019 10:38:29 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 22 Mar 2019 10:38:30 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 10:38:30 GMT
VOLUME [/consul/data]
# Fri, 22 Mar 2019 10:38:30 GMT
EXPOSE 8300
# Fri, 22 Mar 2019 10:38:30 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 22 Mar 2019 10:38:31 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 22 Mar 2019 10:38:31 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 22 Mar 2019 10:38:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Mar 2019 10:38:31 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aefea79d2300fff07c38505e077fe3dd5057323f7073024e51b0f3ac80f4c49d`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.2 MB (2168969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e12843b26b992a68aad39d58d39115c6e83dab92555241deeff175fcb51be57`  
		Last Modified: Fri, 22 Mar 2019 10:38:38 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de90c2cbfe9d990723ec2f230891e0501bbd7c74cecd10abd88cdf693335ee8`  
		Last Modified: Fri, 22 Mar 2019 10:38:44 GMT  
		Size: 35.4 MB (35419938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c5e19a02452ab8b51ef343f61e05b6aad281ba3c9f22a94cf4fb7466676408`  
		Last Modified: Fri, 22 Mar 2019 10:38:38 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681ea30dd19f2b2668d4208a54adb6d7c4213541c49c422a2e059bc2fae6884f`  
		Last Modified: Fri, 22 Mar 2019 10:38:38 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543ae41050f1ac3cd3f8e3064dc1edb111c4e04afbb7b4f6b3dd9ceec1148763`  
		Last Modified: Fri, 22 Mar 2019 10:38:38 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:9113b1043308b4193d2be8516c64fcdc2e9740e3c626be058076de697c407be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

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

### `consul:latest` - linux; arm variant v6

```console
$ docker pull consul@sha256:9eb76e7231ef84acaeac9e17cb4510f6baa2ff74e77c53ff266e0c6d85970365
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36350584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87429630e3c38e9b4253cfa5e4882a84a762cdc6ea77e88090ee8a682968a549`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:19 GMT
ADD file:81d5fd270fcda0eebec04e6f74f4834e629c70ffe142ec40611caf179e34d4c1 in / 
# Fri, 08 Mar 2019 03:36:20 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 03:52:21 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 22 Mar 2019 07:49:22 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 22 Mar 2019 07:49:22 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 22 Mar 2019 07:49:23 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 22 Mar 2019 07:49:34 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 22 Mar 2019 07:49:35 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 22 Mar 2019 07:49:37 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 07:49:37 GMT
VOLUME [/consul/data]
# Fri, 22 Mar 2019 07:49:37 GMT
EXPOSE 8300
# Fri, 22 Mar 2019 07:49:38 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 22 Mar 2019 07:49:38 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 22 Mar 2019 07:49:38 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 22 Mar 2019 07:49:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Mar 2019 07:49:39 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:1debd7fe5349ada802e5b176f99ddbfdf432a51a67897f0000ec665d31a33293`  
		Last Modified: Fri, 08 Mar 2019 03:36:57 GMT  
		Size: 2.1 MB (2050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a6637d586d45ac147959b10082b0a420b8f8b9fca501783bfd408b2fb5d660`  
		Last Modified: Fri, 22 Mar 2019 07:49:49 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc18d8cc2fe24223c6a5b1c7652fc198b6cd5ede76cd60cced17099343dbaa76`  
		Last Modified: Fri, 22 Mar 2019 07:49:59 GMT  
		Size: 34.3 MB (34297048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb80cab2745b42c48bb7dd5007a44bca9984a540facdf0818fb84ce9889092`  
		Last Modified: Fri, 22 Mar 2019 07:49:49 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ae9445bc24374a383fba166b9a37b1ef23aa0fdef83a4accdd3f5b94d1106fb`  
		Last Modified: Fri, 22 Mar 2019 07:49:49 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c071235d977ef06f5b0ed2f0eafba446ae3fc39072748a8381c88d55e114ca`  
		Last Modified: Fri, 22 Mar 2019 07:49:49 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:331daaee943efe250b19b99364ec044fa94ff9ea656f194714c75a546f864b1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35887819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eac76ceb68801014c0645e0d0787ce4a5f83bad70962663c7f6786e46e966fad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:21 GMT
ADD file:593fdff46d6e2edf7fc03d568a8d8d4149ef13f8c2b1af554299a8d0d0e06e2f in / 
# Fri, 08 Mar 2019 03:37:22 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 07:55:23 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 22 Mar 2019 08:42:15 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 22 Mar 2019 08:42:16 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 22 Mar 2019 08:42:20 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 22 Mar 2019 08:42:35 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 22 Mar 2019 08:42:37 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 22 Mar 2019 08:42:39 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 08:42:40 GMT
VOLUME [/consul/data]
# Fri, 22 Mar 2019 08:42:41 GMT
EXPOSE 8300
# Fri, 22 Mar 2019 08:42:41 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 22 Mar 2019 08:42:42 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 22 Mar 2019 08:42:43 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 22 Mar 2019 08:42:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Mar 2019 08:42:45 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:40223db5366fa5aa8fd6b2c2b3f97d1daf156cef4d139adf144f36b165d85afe`  
		Last Modified: Fri, 08 Mar 2019 03:38:13 GMT  
		Size: 2.0 MB (1998986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ef9adcfee5a91afd9e4fa5537466d640f1cfcce63bb4c639cfc3ee7eb39dae`  
		Last Modified: Fri, 22 Mar 2019 08:42:57 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00a49e740baae76c86940a9ffe6ce6d429bf658902baf5497bc358d9d8b8617e`  
		Last Modified: Fri, 22 Mar 2019 08:43:08 GMT  
		Size: 33.9 MB (33885595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc601851c6a4120868a1fc80a22d3a0483606c453a2e5dc0cc12a8ec75a5a4f`  
		Last Modified: Fri, 22 Mar 2019 08:42:56 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24bf2905a4e0923cc3a22203cc10fc83871ba881a3da4e6deb79d1991f7cad70`  
		Last Modified: Fri, 22 Mar 2019 08:42:56 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:829aa6be1478f46f023550e39985218f393c7617739966f837f703580619b893`  
		Last Modified: Fri, 22 Mar 2019 08:42:56 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; 386

```console
$ docker pull consul@sha256:43382545030b547748f2332f1b913c75e44e6656f4c818959b715d5c0a932fab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.6 MB (37592137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ba984863417ec78defe3889ca08eced9fbdc0a031537aabaad2bf2b907e667e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:06 GMT
ADD file:eca24f9ef61dc86fee19b7e25d939a4ce663b5c36d7ed6b8553a4b4f5784d14b in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:09:41 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Fri, 22 Mar 2019 10:38:20 GMT
ENV CONSUL_VERSION=1.4.4
# Fri, 22 Mar 2019 10:38:20 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Fri, 22 Mar 2019 10:38:21 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Fri, 22 Mar 2019 10:38:29 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Fri, 22 Mar 2019 10:38:29 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Fri, 22 Mar 2019 10:38:30 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Fri, 22 Mar 2019 10:38:30 GMT
VOLUME [/consul/data]
# Fri, 22 Mar 2019 10:38:30 GMT
EXPOSE 8300
# Fri, 22 Mar 2019 10:38:30 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Fri, 22 Mar 2019 10:38:31 GMT
EXPOSE 8500 8600 8600/udp
# Fri, 22 Mar 2019 10:38:31 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 22 Mar 2019 10:38:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 22 Mar 2019 10:38:31 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:aefea79d2300fff07c38505e077fe3dd5057323f7073024e51b0f3ac80f4c49d`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.2 MB (2168969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e12843b26b992a68aad39d58d39115c6e83dab92555241deeff175fcb51be57`  
		Last Modified: Fri, 22 Mar 2019 10:38:38 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de90c2cbfe9d990723ec2f230891e0501bbd7c74cecd10abd88cdf693335ee8`  
		Last Modified: Fri, 22 Mar 2019 10:38:44 GMT  
		Size: 35.4 MB (35419938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c5e19a02452ab8b51ef343f61e05b6aad281ba3c9f22a94cf4fb7466676408`  
		Last Modified: Fri, 22 Mar 2019 10:38:38 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681ea30dd19f2b2668d4208a54adb6d7c4213541c49c422a2e059bc2fae6884f`  
		Last Modified: Fri, 22 Mar 2019 10:38:38 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543ae41050f1ac3cd3f8e3064dc1edb111c4e04afbb7b4f6b3dd9ceec1148763`  
		Last Modified: Fri, 22 Mar 2019 10:38:38 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
