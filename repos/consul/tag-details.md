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
-	[`consul:1.3`](#consul13)
-	[`consul:1.3.1`](#consul131)
-	[`consul:1.4`](#consul14)
-	[`consul:1.4.5`](#consul145)
-	[`consul:1.5`](#consul15)
-	[`consul:1.5.1`](#consul151)
-	[`consul:latest`](#consullatest)

## `consul:0.9`

```console
$ docker pull consul@sha256:eedd0965667338113ed9423dc691d9e381f84cdd23fa4e962de131fcf7423556
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:0.9` - linux; amd64

```console
$ docker pull consul@sha256:26a8e189f94dc486d6595d490b302ca28b50712f6282bfd6730890624d95816d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14537895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6bea540ff80d0b84f947fd5c307b8b9699f29a6ac1742bfd3a182f5171e0565`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 01:41:07 GMT
ENV CONSUL_VERSION=0.9.4
# Sat, 11 May 2019 01:41:07 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 01:41:08 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 01:41:13 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 01:41:14 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 01:41:15 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 01:41:15 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 01:41:15 GMT
EXPOSE 8300
# Sat, 11 May 2019 01:41:16 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 01:41:16 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 01:41:16 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 01:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:41:17 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24142b7f5a75a089f9e509ee48d24da28491c45e81b6f7751aff0c0769d32e3e`  
		Last Modified: Sat, 11 May 2019 01:42:57 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ebad7b8e652aa76ba388a7f7bb34d288965de51b49e2f6a11ca982c4226bed`  
		Last Modified: Sat, 11 May 2019 01:43:01 GMT  
		Size: 11.8 MB (11777634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd27ac5244364a44876d11659673f7fca21e73545cff13f4dc052c9bb4794fe9`  
		Last Modified: Sat, 11 May 2019 01:42:57 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d16f2e526882277b9b927e04f85576fae2725594c54335888b60e849e142a37`  
		Last Modified: Sat, 11 May 2019 01:42:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320091ae2479e520cf8cd4660cd5f4971d74c89727b4dca258d6d653f7972c87`  
		Last Modified: Sat, 11 May 2019 01:42:57 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9` - linux; arm variant v6

```console
$ docker pull consul@sha256:f03040188b9c9a3c6e3c41927341dd6ec7ffde106fe9ece36c50d95331a13519
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13708636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97c715f4e21b3b33529c52be7445de79bfdceb0e655ac476bc0631718f487a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 08:08:15 GMT
ENV CONSUL_VERSION=0.9.4
# Sat, 11 May 2019 08:08:15 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 08:08:16 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 08:08:21 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 08:08:22 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 08:08:24 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:08:24 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 08:08:24 GMT
EXPOSE 8300
# Sat, 11 May 2019 08:08:25 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 08:08:25 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 08:08:26 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 08:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:08:27 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e24813f89efa79c0e0b6168b9e0bff65634ecc142fcb30e8f8b419b7da1556`  
		Last Modified: Sat, 11 May 2019 08:10:06 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b1c85a8cca077315950d8527632109d6834e9fb9cf976c09c98b8bcd69856d`  
		Last Modified: Sat, 11 May 2019 08:10:09 GMT  
		Size: 11.2 MB (11161916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452f416aca6ed95540f34474021e4633ae8532fca6de892890fbb911cbac9735`  
		Last Modified: Sat, 11 May 2019 08:10:06 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5661a9251cdeb31743c56500665236dd3145f96a61906c2c29db1da36a7a1d`  
		Last Modified: Sat, 11 May 2019 08:10:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503303132a392be7fadbcd95f59ceef11872414ba98b5af2aead29e4a21fce9d`  
		Last Modified: Sat, 11 May 2019 08:10:06 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:b6f86518ae5c36ab3ef735493e3f4b17c626be5c504eb6eb762897736f871a8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13751599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecf9c8cd09afa5a1ba2261ce697300f5ec093aa619c887953ab60354804e717a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:43:19 GMT
ENV CONSUL_VERSION=0.9.4
# Thu, 23 May 2019 22:43:19 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:43:21 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:43:25 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:43:27 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:43:28 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:43:28 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:43:28 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:43:29 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:43:29 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:43:29 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:43:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:43:30 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f6a9962902d327b6a905a5a28859c49c5b1dc24b59ed5418682ba3fe9f2112`  
		Last Modified: Thu, 23 May 2019 22:45:17 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980f568d02d7e9f6e7aa5750c955743823496664278db6f392d822c462feda57`  
		Last Modified: Thu, 23 May 2019 22:45:21 GMT  
		Size: 11.1 MB (11059527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bef94959488295afc6e92edae1ff712657dd125adab8b1d703b22521cdcea8a`  
		Last Modified: Thu, 23 May 2019 22:45:17 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736cb98603e7d7e43df4e2013764ff934468009f4bc2cca40d28726543aa451b`  
		Last Modified: Thu, 23 May 2019 22:45:17 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d77b9f9b7f5d3d8bd681b3ef98a378bf066930504c5590b6fc752f2f7aa3ede`  
		Last Modified: Thu, 23 May 2019 22:45:17 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9` - linux; 386

```console
$ docker pull consul@sha256:24d96bb550055798d47692a5661461979eecbd6d2cd0be20f7f2c91662655ce8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14210752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467a1e59fc5aa0461fd0a2db91dd96bcf5a43311fd16f2347e5b89a4b7289624`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 10:58:02 GMT
ENV CONSUL_VERSION=0.9.4
# Sat, 11 May 2019 10:58:02 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 10:58:03 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 10:58:06 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 10:58:06 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 10:58:07 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:58:07 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 10:58:07 GMT
EXPOSE 8300
# Sat, 11 May 2019 10:58:08 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 10:58:08 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 10:58:08 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 10:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 10:58:08 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae81510e9b5ee373e0ec89740a2c8ee9213080a811d6fc44b714b1fd76be4273`  
		Last Modified: Sat, 11 May 2019 10:59:13 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda0841443adacfa11d61f70dd0dadc9a34a1f4ce51c5168be1475d55307aa88`  
		Last Modified: Sat, 11 May 2019 10:59:16 GMT  
		Size: 11.5 MB (11455434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7604fb9d719a579c5d334ff24ce033d1296a69d4de82250199884bd0d432ae6c`  
		Last Modified: Sat, 11 May 2019 10:59:13 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c84eed42baa03d8a0a1a2fe786d52f51938d341b7f4a9eb43b9ed4d3e02f11`  
		Last Modified: Sat, 11 May 2019 10:59:13 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12a8488114b4614486e8a218ac763ac80cc2bdb5aae070bb1613902c86c7e4a`  
		Last Modified: Sat, 11 May 2019 10:59:13 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:0.9.4`

```console
$ docker pull consul@sha256:eedd0965667338113ed9423dc691d9e381f84cdd23fa4e962de131fcf7423556
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:0.9.4` - linux; amd64

```console
$ docker pull consul@sha256:26a8e189f94dc486d6595d490b302ca28b50712f6282bfd6730890624d95816d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14537895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6bea540ff80d0b84f947fd5c307b8b9699f29a6ac1742bfd3a182f5171e0565`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 01:41:07 GMT
ENV CONSUL_VERSION=0.9.4
# Sat, 11 May 2019 01:41:07 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 01:41:08 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 01:41:13 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 01:41:14 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 01:41:15 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 01:41:15 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 01:41:15 GMT
EXPOSE 8300
# Sat, 11 May 2019 01:41:16 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 01:41:16 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 01:41:16 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 01:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:41:17 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24142b7f5a75a089f9e509ee48d24da28491c45e81b6f7751aff0c0769d32e3e`  
		Last Modified: Sat, 11 May 2019 01:42:57 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ebad7b8e652aa76ba388a7f7bb34d288965de51b49e2f6a11ca982c4226bed`  
		Last Modified: Sat, 11 May 2019 01:43:01 GMT  
		Size: 11.8 MB (11777634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd27ac5244364a44876d11659673f7fca21e73545cff13f4dc052c9bb4794fe9`  
		Last Modified: Sat, 11 May 2019 01:42:57 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d16f2e526882277b9b927e04f85576fae2725594c54335888b60e849e142a37`  
		Last Modified: Sat, 11 May 2019 01:42:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:320091ae2479e520cf8cd4660cd5f4971d74c89727b4dca258d6d653f7972c87`  
		Last Modified: Sat, 11 May 2019 01:42:57 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:f03040188b9c9a3c6e3c41927341dd6ec7ffde106fe9ece36c50d95331a13519
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13708636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c97c715f4e21b3b33529c52be7445de79bfdceb0e655ac476bc0631718f487a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 08:08:15 GMT
ENV CONSUL_VERSION=0.9.4
# Sat, 11 May 2019 08:08:15 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 08:08:16 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 08:08:21 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 08:08:22 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 08:08:24 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:08:24 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 08:08:24 GMT
EXPOSE 8300
# Sat, 11 May 2019 08:08:25 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 08:08:25 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 08:08:26 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 08:08:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:08:27 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e24813f89efa79c0e0b6168b9e0bff65634ecc142fcb30e8f8b419b7da1556`  
		Last Modified: Sat, 11 May 2019 08:10:06 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b1c85a8cca077315950d8527632109d6834e9fb9cf976c09c98b8bcd69856d`  
		Last Modified: Sat, 11 May 2019 08:10:09 GMT  
		Size: 11.2 MB (11161916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:452f416aca6ed95540f34474021e4633ae8532fca6de892890fbb911cbac9735`  
		Last Modified: Sat, 11 May 2019 08:10:06 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5661a9251cdeb31743c56500665236dd3145f96a61906c2c29db1da36a7a1d`  
		Last Modified: Sat, 11 May 2019 08:10:06 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503303132a392be7fadbcd95f59ceef11872414ba98b5af2aead29e4a21fce9d`  
		Last Modified: Sat, 11 May 2019 08:10:06 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9.4` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:b6f86518ae5c36ab3ef735493e3f4b17c626be5c504eb6eb762897736f871a8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.8 MB (13751599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecf9c8cd09afa5a1ba2261ce697300f5ec093aa619c887953ab60354804e717a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:43:19 GMT
ENV CONSUL_VERSION=0.9.4
# Thu, 23 May 2019 22:43:19 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:43:21 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:43:25 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:43:27 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:43:28 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:43:28 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:43:28 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:43:29 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:43:29 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:43:29 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:43:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:43:30 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f6a9962902d327b6a905a5a28859c49c5b1dc24b59ed5418682ba3fe9f2112`  
		Last Modified: Thu, 23 May 2019 22:45:17 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980f568d02d7e9f6e7aa5750c955743823496664278db6f392d822c462feda57`  
		Last Modified: Thu, 23 May 2019 22:45:21 GMT  
		Size: 11.1 MB (11059527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bef94959488295afc6e92edae1ff712657dd125adab8b1d703b22521cdcea8a`  
		Last Modified: Thu, 23 May 2019 22:45:17 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736cb98603e7d7e43df4e2013764ff934468009f4bc2cca40d28726543aa451b`  
		Last Modified: Thu, 23 May 2019 22:45:17 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d77b9f9b7f5d3d8bd681b3ef98a378bf066930504c5590b6fc752f2f7aa3ede`  
		Last Modified: Thu, 23 May 2019 22:45:17 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:0.9.4` - linux; 386

```console
$ docker pull consul@sha256:24d96bb550055798d47692a5661461979eecbd6d2cd0be20f7f2c91662655ce8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14210752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467a1e59fc5aa0461fd0a2db91dd96bcf5a43311fd16f2347e5b89a4b7289624`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 10:58:02 GMT
ENV CONSUL_VERSION=0.9.4
# Sat, 11 May 2019 10:58:02 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 10:58:03 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 10:58:06 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 10:58:06 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 10:58:07 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:58:07 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 10:58:07 GMT
EXPOSE 8300
# Sat, 11 May 2019 10:58:08 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 10:58:08 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 10:58:08 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 10:58:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 10:58:08 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae81510e9b5ee373e0ec89740a2c8ee9213080a811d6fc44b714b1fd76be4273`  
		Last Modified: Sat, 11 May 2019 10:59:13 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda0841443adacfa11d61f70dd0dadc9a34a1f4ce51c5168be1475d55307aa88`  
		Last Modified: Sat, 11 May 2019 10:59:16 GMT  
		Size: 11.5 MB (11455434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7604fb9d719a579c5d334ff24ce033d1296a69d4de82250199884bd0d432ae6c`  
		Last Modified: Sat, 11 May 2019 10:59:13 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c84eed42baa03d8a0a1a2fe786d52f51938d341b7f4a9eb43b9ed4d3e02f11`  
		Last Modified: Sat, 11 May 2019 10:59:13 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12a8488114b4614486e8a218ac763ac80cc2bdb5aae070bb1613902c86c7e4a`  
		Last Modified: Sat, 11 May 2019 10:59:13 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.0`

```console
$ docker pull consul@sha256:98069877d4322fec17890238c2d00267941f4946e28d811187470e20fdd567fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.0` - linux; amd64

```console
$ docker pull consul@sha256:0e62e5e7c05b689526a99ee89cfe44b79f60787c719a6e67e82be9eb9833bffb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16552454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e62e48cb4ac978b9e85f1a1b0078071cab05536edeb310611e847ecdcb70bab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 01:40:52 GMT
ENV CONSUL_VERSION=1.0.8
# Sat, 11 May 2019 01:40:52 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 01:40:53 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 01:40:58 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 01:40:59 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 01:41:00 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 01:41:01 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 01:41:01 GMT
EXPOSE 8300
# Sat, 11 May 2019 01:41:01 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 01:41:01 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 01:41:02 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 01:41:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:41:02 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce499269bb6815c448469cc5aaa72d34e3f79695cca7e9f123390cbf40bf9d`  
		Last Modified: Sat, 11 May 2019 01:42:48 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e5a58e35cf5ce10aef5739732872b1e3ac78339e71e723049ed62b02dce56d`  
		Last Modified: Sat, 11 May 2019 01:42:53 GMT  
		Size: 13.8 MB (13792190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d86852458e4d114cd15a4de21987483041bc2323b024d2a049edac10651421b`  
		Last Modified: Sat, 11 May 2019 01:42:48 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536fb7c55301641baaab467d7b104219f2047f6031f3d40b1ec862ee4ee3ec1c`  
		Last Modified: Sat, 11 May 2019 01:42:48 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6648e1847f170349c7a89bd2dd34be59dd5968a35e122a8f226acec67d5c82b3`  
		Last Modified: Sat, 11 May 2019 01:42:48 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0` - linux; arm variant v6

```console
$ docker pull consul@sha256:aac9315a78c28954e67d81f5606afe9c5f3137c47c3ec5ff1a10737cceaf013c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15890194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c8eda35a4b592eca25e993954dfee68a782230f6e57b5016bfc19f3b8af1ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 08:07:57 GMT
ENV CONSUL_VERSION=1.0.8
# Sat, 11 May 2019 08:07:57 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 08:07:59 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 08:08:04 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 08:08:05 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 08:08:07 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:08:07 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 08:08:07 GMT
EXPOSE 8300
# Sat, 11 May 2019 08:08:08 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 08:08:08 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 08:08:09 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 08:08:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:08:09 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83eb4f64a12eea44ac8a2c527e282b246464b80b9f09828f46e083369c22edb8`  
		Last Modified: Sat, 11 May 2019 08:09:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994c8d2623d179ad80617430f4e97e41d242d580cd3682f9afb0d023bf29eee8`  
		Last Modified: Sat, 11 May 2019 08:10:00 GMT  
		Size: 13.3 MB (13343480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8e184325aea43a3ea7f781f0824211ee0ce43a291292366368446375ff28f0`  
		Last Modified: Sat, 11 May 2019 08:09:55 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fb9d1ee013a1f52153b393ccdce41dca83c5f480d1752188363a77b365bca8`  
		Last Modified: Sat, 11 May 2019 08:09:55 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e4a22c76976337516b87d517fe0d9ecd16890b2f40b5264a4f2fcbd241d0cf`  
		Last Modified: Sat, 11 May 2019 08:09:55 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:5d2e04e3e553dd6c6f677ff050b28665143f7fe96772efee1408dfe5345c2a33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15899754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:218bc05f90de7ef744b29675ed10e876710d90d9bb74fa1a1056462c70d263e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:43:04 GMT
ENV CONSUL_VERSION=1.0.8
# Thu, 23 May 2019 22:43:04 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:43:06 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:43:10 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:43:11 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:43:13 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:43:13 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:43:13 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:43:14 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:43:14 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:43:14 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:43:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:43:15 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe965c298e045274d3207f9a9f1ffe123186503c7eeb29d0ac7b4f028320aef6`  
		Last Modified: Thu, 23 May 2019 22:45:07 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a8e062616e6639ade9f9fc0fa08a6921b5ebaa14a9754caa8ade441734084b`  
		Last Modified: Thu, 23 May 2019 22:45:12 GMT  
		Size: 13.2 MB (13207679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176df496505cca1d707037008db2bbe24e0c4919ad3dcf71fd66e5bf85ddd088`  
		Last Modified: Thu, 23 May 2019 22:45:07 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e8ed7747ad033396a47c77805d87c0b48d9c4129a497337e223218277c381a`  
		Last Modified: Thu, 23 May 2019 22:45:07 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543e87b06f346eb7868a03f0d05af20d0393357696b4fc36d375cf69e61bd1dd`  
		Last Modified: Thu, 23 May 2019 22:45:07 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0` - linux; 386

```console
$ docker pull consul@sha256:2967a4764853398cb77b42c79043bfa31057ae927cdc29f444c8efda85a1e799
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16433400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da502fad2aaf172c3c67ed70f38a27ca1cf0362bc10beaaf26637aa93f507bae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 10:57:51 GMT
ENV CONSUL_VERSION=1.0.8
# Sat, 11 May 2019 10:57:51 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 10:57:52 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 10:57:55 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 10:57:56 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 10:57:57 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:57:57 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 10:57:57 GMT
EXPOSE 8300
# Sat, 11 May 2019 10:57:58 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 10:57:58 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 10:57:58 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 10:57:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 10:57:58 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9465eba86699a874199fc08b02b28c07b1cdc36755d5e8bd020f42fb041520e8`  
		Last Modified: Sat, 11 May 2019 10:59:07 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4982dd73121c1731db9fd92c424810d64c2a68cb96754b798330db3c1b424fb`  
		Last Modified: Sat, 11 May 2019 10:59:10 GMT  
		Size: 13.7 MB (13678078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001cbeaefed81dc23df87ef18618fe36d6747faa0fcbaf375648b3994310f1a6`  
		Last Modified: Sat, 11 May 2019 10:59:07 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da7c7d301e9ae553ac87dc318cad0cc6cb1b8276e2aebb56728fbe6ed17fe49`  
		Last Modified: Sat, 11 May 2019 10:59:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcae35dcc14b7253b85acfd96b06c961a5309cc7b939ff6b9e0f7e2ef68fc95d`  
		Last Modified: Sat, 11 May 2019 10:59:07 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.0.8`

```console
$ docker pull consul@sha256:98069877d4322fec17890238c2d00267941f4946e28d811187470e20fdd567fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.0.8` - linux; amd64

```console
$ docker pull consul@sha256:0e62e5e7c05b689526a99ee89cfe44b79f60787c719a6e67e82be9eb9833bffb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16552454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e62e48cb4ac978b9e85f1a1b0078071cab05536edeb310611e847ecdcb70bab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 01:40:52 GMT
ENV CONSUL_VERSION=1.0.8
# Sat, 11 May 2019 01:40:52 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 01:40:53 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 01:40:58 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 01:40:59 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 01:41:00 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 01:41:01 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 01:41:01 GMT
EXPOSE 8300
# Sat, 11 May 2019 01:41:01 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 01:41:01 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 01:41:02 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 01:41:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:41:02 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce499269bb6815c448469cc5aaa72d34e3f79695cca7e9f123390cbf40bf9d`  
		Last Modified: Sat, 11 May 2019 01:42:48 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e5a58e35cf5ce10aef5739732872b1e3ac78339e71e723049ed62b02dce56d`  
		Last Modified: Sat, 11 May 2019 01:42:53 GMT  
		Size: 13.8 MB (13792190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d86852458e4d114cd15a4de21987483041bc2323b024d2a049edac10651421b`  
		Last Modified: Sat, 11 May 2019 01:42:48 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536fb7c55301641baaab467d7b104219f2047f6031f3d40b1ec862ee4ee3ec1c`  
		Last Modified: Sat, 11 May 2019 01:42:48 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6648e1847f170349c7a89bd2dd34be59dd5968a35e122a8f226acec67d5c82b3`  
		Last Modified: Sat, 11 May 2019 01:42:48 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0.8` - linux; arm variant v6

```console
$ docker pull consul@sha256:aac9315a78c28954e67d81f5606afe9c5f3137c47c3ec5ff1a10737cceaf013c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15890194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c8eda35a4b592eca25e993954dfee68a782230f6e57b5016bfc19f3b8af1ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 08:07:57 GMT
ENV CONSUL_VERSION=1.0.8
# Sat, 11 May 2019 08:07:57 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 08:07:59 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 08:08:04 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 08:08:05 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 08:08:07 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:08:07 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 08:08:07 GMT
EXPOSE 8300
# Sat, 11 May 2019 08:08:08 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 08:08:08 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 08:08:09 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 08:08:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:08:09 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83eb4f64a12eea44ac8a2c527e282b246464b80b9f09828f46e083369c22edb8`  
		Last Modified: Sat, 11 May 2019 08:09:55 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994c8d2623d179ad80617430f4e97e41d242d580cd3682f9afb0d023bf29eee8`  
		Last Modified: Sat, 11 May 2019 08:10:00 GMT  
		Size: 13.3 MB (13343480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8e184325aea43a3ea7f781f0824211ee0ce43a291292366368446375ff28f0`  
		Last Modified: Sat, 11 May 2019 08:09:55 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93fb9d1ee013a1f52153b393ccdce41dca83c5f480d1752188363a77b365bca8`  
		Last Modified: Sat, 11 May 2019 08:09:55 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e4a22c76976337516b87d517fe0d9ecd16890b2f40b5264a4f2fcbd241d0cf`  
		Last Modified: Sat, 11 May 2019 08:09:55 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0.8` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:5d2e04e3e553dd6c6f677ff050b28665143f7fe96772efee1408dfe5345c2a33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15899754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:218bc05f90de7ef744b29675ed10e876710d90d9bb74fa1a1056462c70d263e4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:43:04 GMT
ENV CONSUL_VERSION=1.0.8
# Thu, 23 May 2019 22:43:04 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:43:06 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:43:10 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:43:11 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:43:13 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:43:13 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:43:13 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:43:14 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:43:14 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:43:14 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:43:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:43:15 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe965c298e045274d3207f9a9f1ffe123186503c7eeb29d0ac7b4f028320aef6`  
		Last Modified: Thu, 23 May 2019 22:45:07 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a8e062616e6639ade9f9fc0fa08a6921b5ebaa14a9754caa8ade441734084b`  
		Last Modified: Thu, 23 May 2019 22:45:12 GMT  
		Size: 13.2 MB (13207679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176df496505cca1d707037008db2bbe24e0c4919ad3dcf71fd66e5bf85ddd088`  
		Last Modified: Thu, 23 May 2019 22:45:07 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35e8ed7747ad033396a47c77805d87c0b48d9c4129a497337e223218277c381a`  
		Last Modified: Thu, 23 May 2019 22:45:07 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543e87b06f346eb7868a03f0d05af20d0393357696b4fc36d375cf69e61bd1dd`  
		Last Modified: Thu, 23 May 2019 22:45:07 GMT  
		Size: 1.7 KB (1682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.0.8` - linux; 386

```console
$ docker pull consul@sha256:2967a4764853398cb77b42c79043bfa31057ae927cdc29f444c8efda85a1e799
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16433400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da502fad2aaf172c3c67ed70f38a27ca1cf0362bc10beaaf26637aa93f507bae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 10:57:51 GMT
ENV CONSUL_VERSION=1.0.8
# Sat, 11 May 2019 10:57:51 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 10:57:52 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 10:57:55 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 10:57:56 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 10:57:57 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:57:57 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 10:57:57 GMT
EXPOSE 8300
# Sat, 11 May 2019 10:57:58 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 10:57:58 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 10:57:58 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 10:57:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 10:57:58 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9465eba86699a874199fc08b02b28c07b1cdc36755d5e8bd020f42fb041520e8`  
		Last Modified: Sat, 11 May 2019 10:59:07 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4982dd73121c1731db9fd92c424810d64c2a68cb96754b798330db3c1b424fb`  
		Last Modified: Sat, 11 May 2019 10:59:10 GMT  
		Size: 13.7 MB (13678078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:001cbeaefed81dc23df87ef18618fe36d6747faa0fcbaf375648b3994310f1a6`  
		Last Modified: Sat, 11 May 2019 10:59:07 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da7c7d301e9ae553ac87dc318cad0cc6cb1b8276e2aebb56728fbe6ed17fe49`  
		Last Modified: Sat, 11 May 2019 10:59:07 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcae35dcc14b7253b85acfd96b06c961a5309cc7b939ff6b9e0f7e2ef68fc95d`  
		Last Modified: Sat, 11 May 2019 10:59:07 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.1`

```console
$ docker pull consul@sha256:21c483540d4f9f0c080c02954331d82f4e77471188dad514b98e3302877369d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.1` - linux; amd64

```console
$ docker pull consul@sha256:895ed1c2cea858c2aefb44f46ba814df107e8560ccb47caed5a5a0333721a16a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18019524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92dffe147dfe1094840d2cc3f2aedc31d01b2280eab572f56c9cf16af7e41d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 01:40:37 GMT
ENV CONSUL_VERSION=1.1.1
# Sat, 11 May 2019 01:40:37 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 01:40:39 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 01:40:43 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 01:40:45 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 01:40:46 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 01:40:46 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 01:40:46 GMT
EXPOSE 8300
# Sat, 11 May 2019 01:40:46 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 01:40:47 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 01:40:47 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 01:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:40:48 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff2501720481c9f6fdfeeb6ce2a13dea85d8b1aeecd29279f6bcad1ba58166d`  
		Last Modified: Sat, 11 May 2019 01:42:37 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91502b6fc9b634c569268d5ab15811d4df92e1b9d6fe49a1a7e392517c6b35b7`  
		Last Modified: Sat, 11 May 2019 01:42:42 GMT  
		Size: 15.3 MB (15259261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835740ea87dcd02fef97c948a90dbbacb505ae631fa4ec1dfd962c6c54ea78bc`  
		Last Modified: Sat, 11 May 2019 01:42:37 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163722679a7e0f9980796e1eacce7eb334de031bf5e0b00d5a74b66f44b05191`  
		Last Modified: Sat, 11 May 2019 01:42:37 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863e7baf69c13a8e25567e269744237b079b3b9275df8f3a33cfb0e56016213c`  
		Last Modified: Sat, 11 May 2019 01:42:37 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1` - linux; arm variant v6

```console
$ docker pull consul@sha256:ef6787e94ab09d50de1cebcd8358ab1b0f093cb6f8b35c49d0c98bd45aee8950
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17354793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103d388ec9207cd50c5c59cf9a07ddea6a7a26addf7faca1a073b490fe01b9c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 08:07:39 GMT
ENV CONSUL_VERSION=1.1.1
# Sat, 11 May 2019 08:07:40 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 08:07:41 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 08:07:46 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 08:07:48 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 08:07:49 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:07:50 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 08:07:50 GMT
EXPOSE 8300
# Sat, 11 May 2019 08:07:50 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 08:07:51 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 08:07:51 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 08:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:07:52 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a379d21196a65c8c00dad8baa62f98e76a1084b4e84e515787997907ec1cc8`  
		Last Modified: Sat, 11 May 2019 08:09:44 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b83432f43dd2ce2c1e3dd02538e0f647679d51b14fdecde6595d7fa299f7d0`  
		Last Modified: Sat, 11 May 2019 08:09:49 GMT  
		Size: 14.8 MB (14808075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ef93399baabd698542c2572d795df2a0f0b0bf0e07c10a05d4d31c35718ad8`  
		Last Modified: Sat, 11 May 2019 08:09:45 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f192bbdc53c41e0fe0b78e5c906838cac80cc3fb5073e296b6657e8fa9d807ff`  
		Last Modified: Sat, 11 May 2019 08:09:44 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1baa326fabdaaddd06d63594f338998cae906614392747616c7949784f0cbce3`  
		Last Modified: Sat, 11 May 2019 08:09:44 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:2386e30601320820c6ccd06795e658b91470673c5ed900804b5933c408658fd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17335887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5342dbad5cdee8ed5dca6cc3161509961f06f6d1748d840136c1fbfd26eba06a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:42:49 GMT
ENV CONSUL_VERSION=1.1.1
# Thu, 23 May 2019 22:42:49 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:42:50 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:42:55 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:42:57 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:42:58 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:42:58 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:42:59 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:42:59 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:42:59 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:43:00 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:43:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:43:00 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0559ace4fb9e6657e2dbdacb68151c467e910d080ec67b67631375f8415754`  
		Last Modified: Thu, 23 May 2019 22:44:57 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c01fd0fb79b523c073a5fe6b594e62b25d669d57ca76f96dbedb2cece4a28e`  
		Last Modified: Thu, 23 May 2019 22:45:02 GMT  
		Size: 14.6 MB (14643815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b708ed327ced8d96041ba92751e3a5d5fc7788df6c421bf272818b31f71c2dd`  
		Last Modified: Thu, 23 May 2019 22:44:57 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c57d017e62b5375926116c582d1125ed2c1aa60be9cc75a45d6e475514869c8`  
		Last Modified: Thu, 23 May 2019 22:44:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255cacd5a3ad3812fe98828dd11784d8c52b4bcbdf6d967271fbc0001476dbcd`  
		Last Modified: Thu, 23 May 2019 22:44:57 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1` - linux; 386

```console
$ docker pull consul@sha256:6c17934d65c41d76b9220b92419dacd39ea1f70ed306500c7648c42f723716c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17904800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e8759f78495823bd6b700d76b750e810e27980357712fbb42ae89fa26bac34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 10:57:41 GMT
ENV CONSUL_VERSION=1.1.1
# Sat, 11 May 2019 10:57:41 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 10:57:41 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 10:57:45 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 10:57:46 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 10:57:46 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:57:46 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 10:57:47 GMT
EXPOSE 8300
# Sat, 11 May 2019 10:57:47 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 10:57:47 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 10:57:47 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 10:57:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 10:57:48 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb50b1b2137ba02921a7ff55a47fda4c015b613ff8e9282523a2c6487455b09`  
		Last Modified: Sat, 11 May 2019 10:59:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e856b1028ad93ca54471b19f762cfde1ed85f5ca0f4b6e8a104b905b933f99`  
		Last Modified: Sat, 11 May 2019 10:59:03 GMT  
		Size: 15.1 MB (15149481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b10e97cb7e2612c77dc2ff4944470526151263baa110d88a0246fcf630e19e6`  
		Last Modified: Sat, 11 May 2019 10:59:00 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9733f8bd4441ac116d1d8dffaebaf86fac1767a7d1575cd35488d7ad3af07ee`  
		Last Modified: Sat, 11 May 2019 10:59:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98295b61be10c0e3ec31946ba2f0aa2493ba67d420f29fa36ba17a87e7b999bf`  
		Last Modified: Sat, 11 May 2019 10:59:00 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.1.1`

```console
$ docker pull consul@sha256:21c483540d4f9f0c080c02954331d82f4e77471188dad514b98e3302877369d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.1.1` - linux; amd64

```console
$ docker pull consul@sha256:895ed1c2cea858c2aefb44f46ba814df107e8560ccb47caed5a5a0333721a16a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.0 MB (18019524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92dffe147dfe1094840d2cc3f2aedc31d01b2280eab572f56c9cf16af7e41d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 01:40:37 GMT
ENV CONSUL_VERSION=1.1.1
# Sat, 11 May 2019 01:40:37 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 01:40:39 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 01:40:43 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 01:40:45 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 01:40:46 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 01:40:46 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 01:40:46 GMT
EXPOSE 8300
# Sat, 11 May 2019 01:40:46 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 01:40:47 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 01:40:47 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 01:40:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:40:48 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ff2501720481c9f6fdfeeb6ce2a13dea85d8b1aeecd29279f6bcad1ba58166d`  
		Last Modified: Sat, 11 May 2019 01:42:37 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91502b6fc9b634c569268d5ab15811d4df92e1b9d6fe49a1a7e392517c6b35b7`  
		Last Modified: Sat, 11 May 2019 01:42:42 GMT  
		Size: 15.3 MB (15259261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835740ea87dcd02fef97c948a90dbbacb505ae631fa4ec1dfd962c6c54ea78bc`  
		Last Modified: Sat, 11 May 2019 01:42:37 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:163722679a7e0f9980796e1eacce7eb334de031bf5e0b00d5a74b66f44b05191`  
		Last Modified: Sat, 11 May 2019 01:42:37 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863e7baf69c13a8e25567e269744237b079b3b9275df8f3a33cfb0e56016213c`  
		Last Modified: Sat, 11 May 2019 01:42:37 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1.1` - linux; arm variant v6

```console
$ docker pull consul@sha256:ef6787e94ab09d50de1cebcd8358ab1b0f093cb6f8b35c49d0c98bd45aee8950
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.4 MB (17354793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103d388ec9207cd50c5c59cf9a07ddea6a7a26addf7faca1a073b490fe01b9c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 08:07:39 GMT
ENV CONSUL_VERSION=1.1.1
# Sat, 11 May 2019 08:07:40 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 08:07:41 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 08:07:46 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 08:07:48 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 08:07:49 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:07:50 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 08:07:50 GMT
EXPOSE 8300
# Sat, 11 May 2019 08:07:50 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 08:07:51 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 08:07:51 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 08:07:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:07:52 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a379d21196a65c8c00dad8baa62f98e76a1084b4e84e515787997907ec1cc8`  
		Last Modified: Sat, 11 May 2019 08:09:44 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b83432f43dd2ce2c1e3dd02538e0f647679d51b14fdecde6595d7fa299f7d0`  
		Last Modified: Sat, 11 May 2019 08:09:49 GMT  
		Size: 14.8 MB (14808075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ef93399baabd698542c2572d795df2a0f0b0bf0e07c10a05d4d31c35718ad8`  
		Last Modified: Sat, 11 May 2019 08:09:45 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f192bbdc53c41e0fe0b78e5c906838cac80cc3fb5073e296b6657e8fa9d807ff`  
		Last Modified: Sat, 11 May 2019 08:09:44 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1baa326fabdaaddd06d63594f338998cae906614392747616c7949784f0cbce3`  
		Last Modified: Sat, 11 May 2019 08:09:44 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1.1` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:2386e30601320820c6ccd06795e658b91470673c5ed900804b5933c408658fd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.3 MB (17335887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5342dbad5cdee8ed5dca6cc3161509961f06f6d1748d840136c1fbfd26eba06a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:42:49 GMT
ENV CONSUL_VERSION=1.1.1
# Thu, 23 May 2019 22:42:49 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:42:50 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:42:55 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:42:57 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:42:58 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:42:58 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:42:59 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:42:59 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:42:59 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:43:00 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:43:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:43:00 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0559ace4fb9e6657e2dbdacb68151c467e910d080ec67b67631375f8415754`  
		Last Modified: Thu, 23 May 2019 22:44:57 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c01fd0fb79b523c073a5fe6b594e62b25d669d57ca76f96dbedb2cece4a28e`  
		Last Modified: Thu, 23 May 2019 22:45:02 GMT  
		Size: 14.6 MB (14643815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b708ed327ced8d96041ba92751e3a5d5fc7788df6c421bf272818b31f71c2dd`  
		Last Modified: Thu, 23 May 2019 22:44:57 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c57d017e62b5375926116c582d1125ed2c1aa60be9cc75a45d6e475514869c8`  
		Last Modified: Thu, 23 May 2019 22:44:57 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255cacd5a3ad3812fe98828dd11784d8c52b4bcbdf6d967271fbc0001476dbcd`  
		Last Modified: Thu, 23 May 2019 22:44:57 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.1.1` - linux; 386

```console
$ docker pull consul@sha256:6c17934d65c41d76b9220b92419dacd39ea1f70ed306500c7648c42f723716c5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.9 MB (17904800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88e8759f78495823bd6b700d76b750e810e27980357712fbb42ae89fa26bac34`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 10:57:41 GMT
ENV CONSUL_VERSION=1.1.1
# Sat, 11 May 2019 10:57:41 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 10:57:41 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 10:57:45 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 10:57:46 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 10:57:46 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:57:46 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 10:57:47 GMT
EXPOSE 8300
# Sat, 11 May 2019 10:57:47 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 10:57:47 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 10:57:47 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 10:57:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 10:57:48 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb50b1b2137ba02921a7ff55a47fda4c015b613ff8e9282523a2c6487455b09`  
		Last Modified: Sat, 11 May 2019 10:59:00 GMT  
		Size: 1.3 KB (1252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4e856b1028ad93ca54471b19f762cfde1ed85f5ca0f4b6e8a104b905b933f99`  
		Last Modified: Sat, 11 May 2019 10:59:03 GMT  
		Size: 15.1 MB (15149481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b10e97cb7e2612c77dc2ff4944470526151263baa110d88a0246fcf630e19e6`  
		Last Modified: Sat, 11 May 2019 10:59:00 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9733f8bd4441ac116d1d8dffaebaf86fac1767a7d1575cd35488d7ad3af07ee`  
		Last Modified: Sat, 11 May 2019 10:59:01 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98295b61be10c0e3ec31946ba2f0aa2493ba67d420f29fa36ba17a87e7b999bf`  
		Last Modified: Sat, 11 May 2019 10:59:00 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.2`

```console
$ docker pull consul@sha256:d14838f484ccba8948056bc620cdf94bc1a73d29e7ef667905b663d483597345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.2` - linux; amd64

```console
$ docker pull consul@sha256:c684037485f4d8e32e2930efd26718b6021fc3e16395c17f8d00b3478c4af305
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28316523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4793c8eb54a71ba92be8333a567c4339ddb937375e81d973b54e31fa19577db1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 01:40:21 GMT
ENV CONSUL_VERSION=1.2.4
# Sat, 11 May 2019 01:40:22 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 01:40:23 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 01:40:29 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 01:40:30 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 01:40:31 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 01:40:32 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 01:40:32 GMT
EXPOSE 8300
# Sat, 11 May 2019 01:40:32 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 01:40:32 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 01:40:33 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 01:40:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:40:33 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4093adf912b6484ebff69676b0921e296152b1b2b3c57588a6a9614ee267ee80`  
		Last Modified: Sat, 11 May 2019 01:42:24 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fa5f6ea9211796c9d405cc6bd3319e4b4e667e2cb467245140e29982afb371`  
		Last Modified: Sat, 11 May 2019 01:42:33 GMT  
		Size: 25.6 MB (25556261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c474f095e7bbe2579df6839e73ad2c151af8db1ff737ad8a57a4354e937f7a0f`  
		Last Modified: Sat, 11 May 2019 01:42:24 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcb6de4b3f932f58b88515078650965988eb92c2e3fd923c11af6363f33e32f`  
		Last Modified: Sat, 11 May 2019 01:42:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8055c7a1a045e57c76f60442101b71b7b1be19fd030d3d7b36769b08d1b6f7f2`  
		Last Modified: Sat, 11 May 2019 01:42:24 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2` - linux; arm variant v6

```console
$ docker pull consul@sha256:772086173e10b71d1097e5336958c2c999d31b6026db2b90bcf1a842545eaf0c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27309148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8709fde7800b07b01fe8123ea1a9e1b3f06e0aa22cad1fd9f3243b48bc75d0a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 08:07:19 GMT
ENV CONSUL_VERSION=1.2.4
# Sat, 11 May 2019 08:07:19 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 08:07:21 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 08:07:29 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 08:07:30 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 08:07:32 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:07:32 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 08:07:33 GMT
EXPOSE 8300
# Sat, 11 May 2019 08:07:33 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 08:07:34 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 08:07:34 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 08:07:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:07:35 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8fbbac5399590c2b372e9134dc617d406c9b9a7f6994516da22423067cba48`  
		Last Modified: Sat, 11 May 2019 08:09:29 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9436ecf8e5cdaff9a2111654ab9c962c48c15af3e614ac6714db482f3db34e84`  
		Last Modified: Sat, 11 May 2019 08:09:38 GMT  
		Size: 24.8 MB (24762429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56d0a29df58843178777053d1aa6bfc1cd6f7ad4f44d77de69efe803bf8b740`  
		Last Modified: Sat, 11 May 2019 08:09:29 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a570fd43fc6366411edff283dabeb26ebbde19368e0fbf5db471599c05488a`  
		Last Modified: Sat, 11 May 2019 08:09:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fccbadc750f375f9cee76252b3a261d2ef288701e1be0cdbe0f0894aa3acf60`  
		Last Modified: Sat, 11 May 2019 08:09:29 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:0288362fea068ba3088639c4dc13c0a85854e476acb0554882e6e76e006c1401
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27106730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ba31d4837ca14acd78ec28b519437246b766e59c67864790c3262376786bb6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:42:28 GMT
ENV CONSUL_VERSION=1.2.4
# Thu, 23 May 2019 22:42:29 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:42:30 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:42:36 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:42:38 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:42:40 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:42:40 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:42:41 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:42:41 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:42:42 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:42:42 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:42:43 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d005793a63c06fa500cbc9fd7605020e66a83fb6778e9a19d59452fef503a2`  
		Last Modified: Thu, 23 May 2019 22:44:38 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed577ff1657438b8b640f657c398437a46e64d72470339ed148397a037f4fc8e`  
		Last Modified: Thu, 23 May 2019 22:44:47 GMT  
		Size: 24.4 MB (24414658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cf8216c86b085f0c70197ebe9060b549f2d07352804074d52610eef6d69833`  
		Last Modified: Thu, 23 May 2019 22:44:38 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13815ca73ad4179ba532282339113b646b1e58cf5e945606903bc9346505aac`  
		Last Modified: Thu, 23 May 2019 22:44:38 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fcde84cc362235a6b8d1dfa812aa14107aa76bef15d5190e03ae5cb004062d`  
		Last Modified: Thu, 23 May 2019 22:44:38 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2` - linux; 386

```console
$ docker pull consul@sha256:38dc5cba4e776ae716bb1891a12fe59b18296b9b6cc65bebab80c3666632a8f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28047289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa62a42a110228438b2a2c7a4d61f5ec01641de4c084b22e2937acfa50144d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 10:57:28 GMT
ENV CONSUL_VERSION=1.2.4
# Sat, 11 May 2019 10:57:28 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 10:57:29 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 10:57:34 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 10:57:35 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 10:57:36 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:57:36 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 10:57:36 GMT
EXPOSE 8300
# Sat, 11 May 2019 10:57:36 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 10:57:36 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 10:57:36 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 10:57:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 10:57:37 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983f4b74a6d46096326a947978796c130e65a16e33f5ccdd7ea7622ebc237887`  
		Last Modified: Sat, 11 May 2019 10:58:50 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e4ce53ce2927a2281d20ac1e2fbac64cfa7bdbd952b33545dc4806512885f0`  
		Last Modified: Sat, 11 May 2019 10:58:56 GMT  
		Size: 25.3 MB (25291971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e1606495c4676abadf76b974b0b96ed643080bc3da5a6dd9081f5cbc08ca40`  
		Last Modified: Sat, 11 May 2019 10:58:50 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594974d407c76fd42f6577b9cb240574dc3340bbec78da42e6288a48cec1c30e`  
		Last Modified: Sat, 11 May 2019 10:58:50 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5eadc0674888b26ff3fb90d252b3a625feceda0a93cc442b81f35dc80cd069a`  
		Last Modified: Sat, 11 May 2019 10:58:50 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.2.4`

```console
$ docker pull consul@sha256:d14838f484ccba8948056bc620cdf94bc1a73d29e7ef667905b663d483597345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.2.4` - linux; amd64

```console
$ docker pull consul@sha256:c684037485f4d8e32e2930efd26718b6021fc3e16395c17f8d00b3478c4af305
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28316523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4793c8eb54a71ba92be8333a567c4339ddb937375e81d973b54e31fa19577db1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 01:40:21 GMT
ENV CONSUL_VERSION=1.2.4
# Sat, 11 May 2019 01:40:22 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 01:40:23 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 01:40:29 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 01:40:30 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 01:40:31 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 01:40:32 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 01:40:32 GMT
EXPOSE 8300
# Sat, 11 May 2019 01:40:32 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 01:40:32 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 01:40:33 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 01:40:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:40:33 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4093adf912b6484ebff69676b0921e296152b1b2b3c57588a6a9614ee267ee80`  
		Last Modified: Sat, 11 May 2019 01:42:24 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fa5f6ea9211796c9d405cc6bd3319e4b4e667e2cb467245140e29982afb371`  
		Last Modified: Sat, 11 May 2019 01:42:33 GMT  
		Size: 25.6 MB (25556261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c474f095e7bbe2579df6839e73ad2c151af8db1ff737ad8a57a4354e937f7a0f`  
		Last Modified: Sat, 11 May 2019 01:42:24 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcb6de4b3f932f58b88515078650965988eb92c2e3fd923c11af6363f33e32f`  
		Last Modified: Sat, 11 May 2019 01:42:24 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8055c7a1a045e57c76f60442101b71b7b1be19fd030d3d7b36769b08d1b6f7f2`  
		Last Modified: Sat, 11 May 2019 01:42:24 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:772086173e10b71d1097e5336958c2c999d31b6026db2b90bcf1a842545eaf0c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27309148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8709fde7800b07b01fe8123ea1a9e1b3f06e0aa22cad1fd9f3243b48bc75d0a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 08:07:19 GMT
ENV CONSUL_VERSION=1.2.4
# Sat, 11 May 2019 08:07:19 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 08:07:21 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 08:07:29 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 08:07:30 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 08:07:32 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:07:32 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 08:07:33 GMT
EXPOSE 8300
# Sat, 11 May 2019 08:07:33 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 08:07:34 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 08:07:34 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 08:07:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:07:35 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8fbbac5399590c2b372e9134dc617d406c9b9a7f6994516da22423067cba48`  
		Last Modified: Sat, 11 May 2019 08:09:29 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9436ecf8e5cdaff9a2111654ab9c962c48c15af3e614ac6714db482f3db34e84`  
		Last Modified: Sat, 11 May 2019 08:09:38 GMT  
		Size: 24.8 MB (24762429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56d0a29df58843178777053d1aa6bfc1cd6f7ad4f44d77de69efe803bf8b740`  
		Last Modified: Sat, 11 May 2019 08:09:29 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a570fd43fc6366411edff283dabeb26ebbde19368e0fbf5db471599c05488a`  
		Last Modified: Sat, 11 May 2019 08:09:29 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fccbadc750f375f9cee76252b3a261d2ef288701e1be0cdbe0f0894aa3acf60`  
		Last Modified: Sat, 11 May 2019 08:09:29 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.4` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:0288362fea068ba3088639c4dc13c0a85854e476acb0554882e6e76e006c1401
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.1 MB (27106730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ba31d4837ca14acd78ec28b519437246b766e59c67864790c3262376786bb6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:42:28 GMT
ENV CONSUL_VERSION=1.2.4
# Thu, 23 May 2019 22:42:29 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:42:30 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:42:36 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:42:38 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:42:40 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:42:40 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:42:41 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:42:41 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:42:42 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:42:42 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:42:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:42:43 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d005793a63c06fa500cbc9fd7605020e66a83fb6778e9a19d59452fef503a2`  
		Last Modified: Thu, 23 May 2019 22:44:38 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed577ff1657438b8b640f657c398437a46e64d72470339ed148397a037f4fc8e`  
		Last Modified: Thu, 23 May 2019 22:44:47 GMT  
		Size: 24.4 MB (24414658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36cf8216c86b085f0c70197ebe9060b549f2d07352804074d52610eef6d69833`  
		Last Modified: Thu, 23 May 2019 22:44:38 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13815ca73ad4179ba532282339113b646b1e58cf5e945606903bc9346505aac`  
		Last Modified: Thu, 23 May 2019 22:44:38 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fcde84cc362235a6b8d1dfa812aa14107aa76bef15d5190e03ae5cb004062d`  
		Last Modified: Thu, 23 May 2019 22:44:38 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.2.4` - linux; 386

```console
$ docker pull consul@sha256:38dc5cba4e776ae716bb1891a12fe59b18296b9b6cc65bebab80c3666632a8f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28047289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa62a42a110228438b2a2c7a4d61f5ec01641de4c084b22e2937acfa50144d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 10:57:28 GMT
ENV CONSUL_VERSION=1.2.4
# Sat, 11 May 2019 10:57:28 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 10:57:29 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 10:57:34 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 10:57:35 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 10:57:36 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:57:36 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 10:57:36 GMT
EXPOSE 8300
# Sat, 11 May 2019 10:57:36 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 10:57:36 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 10:57:36 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 10:57:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 10:57:37 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983f4b74a6d46096326a947978796c130e65a16e33f5ccdd7ea7622ebc237887`  
		Last Modified: Sat, 11 May 2019 10:58:50 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e4ce53ce2927a2281d20ac1e2fbac64cfa7bdbd952b33545dc4806512885f0`  
		Last Modified: Sat, 11 May 2019 10:58:56 GMT  
		Size: 25.3 MB (25291971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10e1606495c4676abadf76b974b0b96ed643080bc3da5a6dd9081f5cbc08ca40`  
		Last Modified: Sat, 11 May 2019 10:58:50 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:594974d407c76fd42f6577b9cb240574dc3340bbec78da42e6288a48cec1c30e`  
		Last Modified: Sat, 11 May 2019 10:58:50 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5eadc0674888b26ff3fb90d252b3a625feceda0a93cc442b81f35dc80cd069a`  
		Last Modified: Sat, 11 May 2019 10:58:50 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.3`

```console
$ docker pull consul@sha256:179fc3d2424794f5af7e9d5ecdfbb873a7baf24914147c3c64478e1d70b84ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.3` - linux; amd64

```console
$ docker pull consul@sha256:de3525e5f9810ff5f48dd2010510e849291bc160af06b7ed506c742734b05d7a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 MB (38521981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c4586f655e0a8f9ef1e5bb3b1b95110220efe39856370c11931842a6abace0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 01:40:04 GMT
ENV CONSUL_VERSION=1.3.1
# Sat, 11 May 2019 01:40:04 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 01:40:05 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 01:40:12 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 01:40:13 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 01:40:14 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 01:40:15 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 01:40:15 GMT
EXPOSE 8300
# Sat, 11 May 2019 01:40:15 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 01:40:15 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 01:40:16 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 01:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:40:16 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6a33384c6c1c0958667d9699f46f6d20101cc53846c0605691dd51b7568da7`  
		Last Modified: Sat, 11 May 2019 01:42:10 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890bf9e2f9375812cf77f4ba539026f481925f3ccaff57ff37cd606aa34577a5`  
		Last Modified: Sat, 11 May 2019 01:42:19 GMT  
		Size: 35.8 MB (35761718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e282ebd27f58b6acc66a0e6086dc19578a5dcf956e80e6b114c7d61d49e98e`  
		Last Modified: Sat, 11 May 2019 01:42:10 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c361c9fb833093f5dff9aac0bbe5a10a32f6831e70e2306b85c8c24241c79c5c`  
		Last Modified: Sat, 11 May 2019 01:42:10 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22f74e037a2fb8207f86b06a87542be5476f2eac9d59c423b0f304a9b9f9ce7`  
		Last Modified: Sat, 11 May 2019 01:42:10 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.3` - linux; arm variant v6

```console
$ docker pull consul@sha256:aedce4ccf0178cb488551ce07a1aeb4f7e80249bee7ee9b8d2f6720085523468
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36362069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9faecce8922a54d60d24a7c2e7f0c8b7730502554281cb5c4823e2290df0805b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 08:06:55 GMT
ENV CONSUL_VERSION=1.3.1
# Sat, 11 May 2019 08:06:55 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 08:06:57 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 08:07:05 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 08:07:08 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 08:07:10 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:07:10 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 08:07:11 GMT
EXPOSE 8300
# Sat, 11 May 2019 08:07:12 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 08:07:12 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 08:07:13 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 08:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:07:14 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4d79b671a9aef04753f548c9e5e52259435210a457358030dc48994d80173e`  
		Last Modified: Sat, 11 May 2019 08:09:13 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cada0a6911d54bbcb6004f519e1ecb74cd4df5f186ee89173a4e913daa17a4c2`  
		Last Modified: Sat, 11 May 2019 08:09:23 GMT  
		Size: 33.8 MB (33815348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca73b5c366a1309d396078d735bd4989c8149f2e2cb3e9e841193780688f60f`  
		Last Modified: Sat, 11 May 2019 08:09:13 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c3a070c05be8b06757b3c2e09a271fa96a06f32a1c710b595eee6211371943`  
		Last Modified: Sat, 11 May 2019 08:09:14 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0585e564dfd08e25759b924c6bf9ef9e46127978df531d22e502bb6b9b310a4a`  
		Last Modified: Sat, 11 May 2019 08:09:14 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.3` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:e97802c3fc226578d6afe1d4b53df9bdabb314e97cfdd397f212566ec4206ad7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36178934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57a95fe1306f9a0139734cf0383424df7aa0bd1d4c442a9091ed5e944f1d080`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:42:10 GMT
ENV CONSUL_VERSION=1.3.1
# Thu, 23 May 2019 22:42:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:42:12 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:42:18 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:42:20 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:42:21 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:42:21 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:42:22 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:42:22 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:42:22 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:42:23 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:42:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:42:24 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf44ad299021c9a005d038a5ac20addf90fa14aa90560c71441798a14fe53dc`  
		Last Modified: Thu, 23 May 2019 22:44:21 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28fde050355a5fc14a0849a43b3f17c24dadda39c4795bd47db1455890ad6ad`  
		Last Modified: Thu, 23 May 2019 22:44:31 GMT  
		Size: 33.5 MB (33486861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f932464aabe6a334d9217533cf30ec88c768e381073970468ad19343f709de2`  
		Last Modified: Thu, 23 May 2019 22:44:21 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53e0d4e45e1a9b8556b9737971715061e9d9a1c975d9982b84ea75c6f85ff98`  
		Last Modified: Thu, 23 May 2019 22:44:21 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ba2ce87461ca13a1654a6e91ac2ce9530e184938968fe3cbf2f0adf7864564`  
		Last Modified: Thu, 23 May 2019 22:44:21 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.3` - linux; 386

```console
$ docker pull consul@sha256:6ce08c73d56d1cda31757b8e55b49b227747b5294b05ab2a04c6d17f6adaee18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37698027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee91e1af5a4842521dad3625a2483a1b0202d02d87312dd1ed04418099bfc73`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 10:57:17 GMT
ENV CONSUL_VERSION=1.3.1
# Sat, 11 May 2019 10:57:17 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 10:57:18 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 10:57:22 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 10:57:23 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 10:57:24 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:57:24 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 10:57:24 GMT
EXPOSE 8300
# Sat, 11 May 2019 10:57:24 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 10:57:25 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 10:57:25 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 10:57:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 10:57:25 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9802d6ab8f0f37baa00e9afa8e8d3524b3146c2feedb548c6636780d054345ab`  
		Last Modified: Sat, 11 May 2019 10:58:40 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248b08429cee5636a52ff64d7e6669f466e25ee49452d03c3bd6142dc6c3df6b`  
		Last Modified: Sat, 11 May 2019 10:58:46 GMT  
		Size: 34.9 MB (34942710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464f76282e4752664b713e7b8c64aec6ffddb20283ba81a0ec13709e3c79542`  
		Last Modified: Sat, 11 May 2019 10:58:40 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d0a44067d49a8bdd3944b49be112a3d019a33760bac93f0a786b6ee970a42e`  
		Last Modified: Sat, 11 May 2019 10:58:40 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd599002a65d1dbced64286b942e4ec1c9be39010ef9426220036814ef15717`  
		Last Modified: Sat, 11 May 2019 10:58:40 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.3.1`

```console
$ docker pull consul@sha256:179fc3d2424794f5af7e9d5ecdfbb873a7baf24914147c3c64478e1d70b84ff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.3.1` - linux; amd64

```console
$ docker pull consul@sha256:de3525e5f9810ff5f48dd2010510e849291bc160af06b7ed506c742734b05d7a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 MB (38521981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c4586f655e0a8f9ef1e5bb3b1b95110220efe39856370c11931842a6abace0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 01:40:04 GMT
ENV CONSUL_VERSION=1.3.1
# Sat, 11 May 2019 01:40:04 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 01:40:05 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 01:40:12 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 01:40:13 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 01:40:14 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 01:40:15 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 01:40:15 GMT
EXPOSE 8300
# Sat, 11 May 2019 01:40:15 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 01:40:15 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 01:40:16 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 01:40:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 01:40:16 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec6a33384c6c1c0958667d9699f46f6d20101cc53846c0605691dd51b7568da7`  
		Last Modified: Sat, 11 May 2019 01:42:10 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890bf9e2f9375812cf77f4ba539026f481925f3ccaff57ff37cd606aa34577a5`  
		Last Modified: Sat, 11 May 2019 01:42:19 GMT  
		Size: 35.8 MB (35761718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34e282ebd27f58b6acc66a0e6086dc19578a5dcf956e80e6b114c7d61d49e98e`  
		Last Modified: Sat, 11 May 2019 01:42:10 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c361c9fb833093f5dff9aac0bbe5a10a32f6831e70e2306b85c8c24241c79c5c`  
		Last Modified: Sat, 11 May 2019 01:42:10 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b22f74e037a2fb8207f86b06a87542be5476f2eac9d59c423b0f304a9b9f9ce7`  
		Last Modified: Sat, 11 May 2019 01:42:10 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.3.1` - linux; arm variant v6

```console
$ docker pull consul@sha256:aedce4ccf0178cb488551ce07a1aeb4f7e80249bee7ee9b8d2f6720085523468
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36362069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9faecce8922a54d60d24a7c2e7f0c8b7730502554281cb5c4823e2290df0805b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 08:06:55 GMT
ENV CONSUL_VERSION=1.3.1
# Sat, 11 May 2019 08:06:55 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 08:06:57 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 08:07:05 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 08:07:08 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 08:07:10 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 08:07:10 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 08:07:11 GMT
EXPOSE 8300
# Sat, 11 May 2019 08:07:12 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 08:07:12 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 08:07:13 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 08:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 08:07:14 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4d79b671a9aef04753f548c9e5e52259435210a457358030dc48994d80173e`  
		Last Modified: Sat, 11 May 2019 08:09:13 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cada0a6911d54bbcb6004f519e1ecb74cd4df5f186ee89173a4e913daa17a4c2`  
		Last Modified: Sat, 11 May 2019 08:09:23 GMT  
		Size: 33.8 MB (33815348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ca73b5c366a1309d396078d735bd4989c8149f2e2cb3e9e841193780688f60f`  
		Last Modified: Sat, 11 May 2019 08:09:13 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c3a070c05be8b06757b3c2e09a271fa96a06f32a1c710b595eee6211371943`  
		Last Modified: Sat, 11 May 2019 08:09:14 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0585e564dfd08e25759b924c6bf9ef9e46127978df531d22e502bb6b9b310a4a`  
		Last Modified: Sat, 11 May 2019 08:09:14 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.3.1` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:e97802c3fc226578d6afe1d4b53df9bdabb314e97cfdd397f212566ec4206ad7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.2 MB (36178934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57a95fe1306f9a0139734cf0383424df7aa0bd1d4c442a9091ed5e944f1d080`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:42:10 GMT
ENV CONSUL_VERSION=1.3.1
# Thu, 23 May 2019 22:42:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:42:12 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:42:18 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:42:20 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:42:21 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:42:21 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:42:22 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:42:22 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:42:22 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:42:23 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:42:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:42:24 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf44ad299021c9a005d038a5ac20addf90fa14aa90560c71441798a14fe53dc`  
		Last Modified: Thu, 23 May 2019 22:44:21 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28fde050355a5fc14a0849a43b3f17c24dadda39c4795bd47db1455890ad6ad`  
		Last Modified: Thu, 23 May 2019 22:44:31 GMT  
		Size: 33.5 MB (33486861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f932464aabe6a334d9217533cf30ec88c768e381073970468ad19343f709de2`  
		Last Modified: Thu, 23 May 2019 22:44:21 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d53e0d4e45e1a9b8556b9737971715061e9d9a1c975d9982b84ea75c6f85ff98`  
		Last Modified: Thu, 23 May 2019 22:44:21 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ba2ce87461ca13a1654a6e91ac2ce9530e184938968fe3cbf2f0adf7864564`  
		Last Modified: Thu, 23 May 2019 22:44:21 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.3.1` - linux; 386

```console
$ docker pull consul@sha256:6ce08c73d56d1cda31757b8e55b49b227747b5294b05ab2a04c6d17f6adaee18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.7 MB (37698027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee91e1af5a4842521dad3625a2483a1b0202d02d87312dd1ed04418099bfc73`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Sat, 11 May 2019 10:57:17 GMT
ENV CONSUL_VERSION=1.3.1
# Sat, 11 May 2019 10:57:17 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Sat, 11 May 2019 10:57:18 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Sat, 11 May 2019 10:57:22 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Sat, 11 May 2019 10:57:23 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Sat, 11 May 2019 10:57:24 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Sat, 11 May 2019 10:57:24 GMT
VOLUME [/consul/data]
# Sat, 11 May 2019 10:57:24 GMT
EXPOSE 8300
# Sat, 11 May 2019 10:57:24 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Sat, 11 May 2019 10:57:25 GMT
EXPOSE 8500 8600 8600/udp
# Sat, 11 May 2019 10:57:25 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Sat, 11 May 2019 10:57:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 11 May 2019 10:57:25 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9802d6ab8f0f37baa00e9afa8e8d3524b3146c2feedb548c6636780d054345ab`  
		Last Modified: Sat, 11 May 2019 10:58:40 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248b08429cee5636a52ff64d7e6669f466e25ee49452d03c3bd6142dc6c3df6b`  
		Last Modified: Sat, 11 May 2019 10:58:46 GMT  
		Size: 34.9 MB (34942710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6464f76282e4752664b713e7b8c64aec6ffddb20283ba81a0ec13709e3c79542`  
		Last Modified: Sat, 11 May 2019 10:58:40 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d0a44067d49a8bdd3944b49be112a3d019a33760bac93f0a786b6ee970a42e`  
		Last Modified: Sat, 11 May 2019 10:58:40 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd599002a65d1dbced64286b942e4ec1c9be39010ef9426220036814ef15717`  
		Last Modified: Sat, 11 May 2019 10:58:40 GMT  
		Size: 1.7 KB (1675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.4`

```console
$ docker pull consul@sha256:216e6dcebbc4c3a2d5eee02d7e44ae95a26fdcf7c3c1d4f1642af4c0c5a4a00c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.4` - linux; amd64

```console
$ docker pull consul@sha256:417bca7e60014e9e116a19b8b934fb7216e009b4f64d40b732178fedd396997c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39157774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35a70ced62d6ee1ff3e3a5ad446ecd1e03653e58d564c24b3bd3ee4fd697e635`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:20:09 GMT
ENV CONSUL_VERSION=1.4.5
# Thu, 23 May 2019 22:20:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:20:17 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:20:27 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:20:29 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:20:31 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:20:31 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:20:31 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:20:32 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:20:32 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:20:33 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:20:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:20:33 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0635949cda7e3c8baf73a03aa02866743675e6719d3dc06e5db655ccd16da30`  
		Last Modified: Thu, 23 May 2019 22:21:29 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879f3fe8eac75a7d33b5f2e0327afad6bf92cfd4348e28bd7210b1247c67076c`  
		Last Modified: Thu, 23 May 2019 22:21:42 GMT  
		Size: 36.4 MB (36397509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8f93f09f990bf6ca16b9b8ede04e7a5bd43f1b1396421d51298857c2635715`  
		Last Modified: Thu, 23 May 2019 22:21:29 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5b5fc7fb3feaf7a8214bd915a9cfd39b1124748ffefa25e2e7b21b24e2ea85`  
		Last Modified: Thu, 23 May 2019 22:21:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76163bf1ed8dc64a7d0c3876bc8476105a9ea7fd2239c2b8537cf404b35477c4`  
		Last Modified: Thu, 23 May 2019 22:21:29 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4` - linux; arm variant v6

```console
$ docker pull consul@sha256:6abc90934a094daa6f5b207ca87f86b42085217680771df4f4f622a757504232
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36941718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddce9497d5b70214823988e64a85a8f92a02eca507db029512cca94f7c9cafda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 21:49:47 GMT
ENV CONSUL_VERSION=1.4.5
# Thu, 23 May 2019 21:49:47 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 21:49:49 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 21:49:56 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 21:49:58 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 21:49:59 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 21:50:00 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 21:50:00 GMT
EXPOSE 8300
# Thu, 23 May 2019 21:50:01 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 21:50:01 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 21:50:01 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 21:50:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:50:02 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec8475d154deee20b443be5095eaa54dbb5f414580ae6cffc8efa29f173d1a2`  
		Last Modified: Thu, 23 May 2019 21:50:52 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c034c860567625cfbd7426db1337355073ebc978add8d3836a572aa6e23bd1d`  
		Last Modified: Thu, 23 May 2019 21:51:02 GMT  
		Size: 34.4 MB (34394994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9466a774100f6ae61ed8d2ab3420cdda50316b76e140de7d55f6eb35187c27f7`  
		Last Modified: Thu, 23 May 2019 21:50:52 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96faff2bbe25bc4e02d8d1b8b09fea5c4f28a2e8788035bbf18693098ba19a68`  
		Last Modified: Thu, 23 May 2019 21:50:52 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38bd5a25be9d3a00e822ea3bf4c4d1fb69634aa0507540ab471dbf68b6b1a40`  
		Last Modified: Thu, 23 May 2019 21:50:52 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:b9963773092a104909c89739f8049930d6771f461f8dc15ff94df906f63f0b5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36752000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c48145f3445404ba6f9239f866a8a3b8c3bc9cb511e2037671ad471db5d8b4d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:41:52 GMT
ENV CONSUL_VERSION=1.4.5
# Thu, 23 May 2019 22:41:53 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:41:54 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:42:00 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:42:02 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:42:03 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:42:04 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:42:04 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:42:05 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:42:05 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:42:05 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:42:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:42:06 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729b25223c465de4d4db60948d54590e39551310f9eb8e7c8e09c1231bead72a`  
		Last Modified: Thu, 23 May 2019 22:44:03 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e5d16a54ad65467fafef977dfb8a42d20c42f8ac54c13023ddecfa00a3102e`  
		Last Modified: Thu, 23 May 2019 22:44:14 GMT  
		Size: 34.1 MB (34059928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179654f1472e0f1387ad578f4ed8bb65447fd78c0fed524671b296185c805953`  
		Last Modified: Thu, 23 May 2019 22:44:02 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8b9bec23cddc81da1cb31a4a34be83c3c0e1f35629b689d19999f482cdc1d3`  
		Last Modified: Thu, 23 May 2019 22:44:02 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664560a8cf6b9029137e9dfe121773d04ba11a85a1444fd8b1d045f890edf4e2`  
		Last Modified: Thu, 23 May 2019 22:44:03 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4` - linux; 386

```console
$ docker pull consul@sha256:43652c26d1b32cd14433338d58b97c96b069bc9645320428bd88e1bcd25cecfa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38312805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:800818e7ca80246c4761406203361bbf9f4c02c143ea9d3e69dfae05c1f77bcb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:39:58 GMT
ENV CONSUL_VERSION=1.4.5
# Thu, 23 May 2019 22:39:58 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:40:00 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:40:06 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:40:07 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:40:07 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:40:07 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:40:08 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:40:08 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:40:08 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:40:08 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:40:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:40:09 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762b3e352541617aa60063fc5ffda7ecd6bc764f36f384aa4e5c5321684ef5f9`  
		Last Modified: Thu, 23 May 2019 22:40:46 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b982f19938fafbb0ae0c859bef636f99f43216d8fb6a1a8caa092ef36a788fd7`  
		Last Modified: Thu, 23 May 2019 22:40:53 GMT  
		Size: 35.6 MB (35557483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1911bdeadf09a19b6f0cf92d54c42dd49c8ed2386b3627e8eab34a25123ccae6`  
		Last Modified: Thu, 23 May 2019 22:40:46 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fe74c786ef6086e15c7965a56930fd5118e2daba4afc438a46c36e7aeb5736`  
		Last Modified: Thu, 23 May 2019 22:40:46 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93af640f5a27840b3dbf39d48f8bb4eb7c27e51b8fb76d43748fe7d940f43b58`  
		Last Modified: Thu, 23 May 2019 22:40:46 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.4.5`

```console
$ docker pull consul@sha256:216e6dcebbc4c3a2d5eee02d7e44ae95a26fdcf7c3c1d4f1642af4c0c5a4a00c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.4.5` - linux; amd64

```console
$ docker pull consul@sha256:417bca7e60014e9e116a19b8b934fb7216e009b4f64d40b732178fedd396997c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39157774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35a70ced62d6ee1ff3e3a5ad446ecd1e03653e58d564c24b3bd3ee4fd697e635`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:20:09 GMT
ENV CONSUL_VERSION=1.4.5
# Thu, 23 May 2019 22:20:10 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:20:17 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:20:27 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:20:29 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:20:31 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:20:31 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:20:31 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:20:32 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:20:32 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:20:33 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:20:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:20:33 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0635949cda7e3c8baf73a03aa02866743675e6719d3dc06e5db655ccd16da30`  
		Last Modified: Thu, 23 May 2019 22:21:29 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879f3fe8eac75a7d33b5f2e0327afad6bf92cfd4348e28bd7210b1247c67076c`  
		Last Modified: Thu, 23 May 2019 22:21:42 GMT  
		Size: 36.4 MB (36397509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8f93f09f990bf6ca16b9b8ede04e7a5bd43f1b1396421d51298857c2635715`  
		Last Modified: Thu, 23 May 2019 22:21:29 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f5b5fc7fb3feaf7a8214bd915a9cfd39b1124748ffefa25e2e7b21b24e2ea85`  
		Last Modified: Thu, 23 May 2019 22:21:29 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76163bf1ed8dc64a7d0c3876bc8476105a9ea7fd2239c2b8537cf404b35477c4`  
		Last Modified: Thu, 23 May 2019 22:21:29 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.5` - linux; arm variant v6

```console
$ docker pull consul@sha256:6abc90934a094daa6f5b207ca87f86b42085217680771df4f4f622a757504232
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 MB (36941718 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddce9497d5b70214823988e64a85a8f92a02eca507db029512cca94f7c9cafda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 21:49:47 GMT
ENV CONSUL_VERSION=1.4.5
# Thu, 23 May 2019 21:49:47 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 21:49:49 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 21:49:56 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 21:49:58 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 21:49:59 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 21:50:00 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 21:50:00 GMT
EXPOSE 8300
# Thu, 23 May 2019 21:50:01 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 21:50:01 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 21:50:01 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 21:50:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:50:02 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec8475d154deee20b443be5095eaa54dbb5f414580ae6cffc8efa29f173d1a2`  
		Last Modified: Thu, 23 May 2019 21:50:52 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c034c860567625cfbd7426db1337355073ebc978add8d3836a572aa6e23bd1d`  
		Last Modified: Thu, 23 May 2019 21:51:02 GMT  
		Size: 34.4 MB (34394994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9466a774100f6ae61ed8d2ab3420cdda50316b76e140de7d55f6eb35187c27f7`  
		Last Modified: Thu, 23 May 2019 21:50:52 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96faff2bbe25bc4e02d8d1b8b09fea5c4f28a2e8788035bbf18693098ba19a68`  
		Last Modified: Thu, 23 May 2019 21:50:52 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38bd5a25be9d3a00e822ea3bf4c4d1fb69634aa0507540ab471dbf68b6b1a40`  
		Last Modified: Thu, 23 May 2019 21:50:52 GMT  
		Size: 1.7 KB (1684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.5` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:b9963773092a104909c89739f8049930d6771f461f8dc15ff94df906f63f0b5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 MB (36752000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c48145f3445404ba6f9239f866a8a3b8c3bc9cb511e2037671ad471db5d8b4d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:41:52 GMT
ENV CONSUL_VERSION=1.4.5
# Thu, 23 May 2019 22:41:53 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:41:54 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:42:00 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:42:02 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:42:03 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:42:04 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:42:04 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:42:05 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:42:05 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:42:05 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:42:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:42:06 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:729b25223c465de4d4db60948d54590e39551310f9eb8e7c8e09c1231bead72a`  
		Last Modified: Thu, 23 May 2019 22:44:03 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e5d16a54ad65467fafef977dfb8a42d20c42f8ac54c13023ddecfa00a3102e`  
		Last Modified: Thu, 23 May 2019 22:44:14 GMT  
		Size: 34.1 MB (34059928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179654f1472e0f1387ad578f4ed8bb65447fd78c0fed524671b296185c805953`  
		Last Modified: Thu, 23 May 2019 22:44:02 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8b9bec23cddc81da1cb31a4a34be83c3c0e1f35629b689d19999f482cdc1d3`  
		Last Modified: Thu, 23 May 2019 22:44:02 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664560a8cf6b9029137e9dfe121773d04ba11a85a1444fd8b1d045f890edf4e2`  
		Last Modified: Thu, 23 May 2019 22:44:03 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.4.5` - linux; 386

```console
$ docker pull consul@sha256:43652c26d1b32cd14433338d58b97c96b069bc9645320428bd88e1bcd25cecfa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38312805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:800818e7ca80246c4761406203361bbf9f4c02c143ea9d3e69dfae05c1f77bcb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:39:58 GMT
ENV CONSUL_VERSION=1.4.5
# Thu, 23 May 2019 22:39:58 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:40:00 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:40:06 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:40:07 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:40:07 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:40:07 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:40:08 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:40:08 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:40:08 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:40:08 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:40:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:40:09 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762b3e352541617aa60063fc5ffda7ecd6bc764f36f384aa4e5c5321684ef5f9`  
		Last Modified: Thu, 23 May 2019 22:40:46 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b982f19938fafbb0ae0c859bef636f99f43216d8fb6a1a8caa092ef36a788fd7`  
		Last Modified: Thu, 23 May 2019 22:40:53 GMT  
		Size: 35.6 MB (35557483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1911bdeadf09a19b6f0cf92d54c42dd49c8ed2386b3627e8eab34a25123ccae6`  
		Last Modified: Thu, 23 May 2019 22:40:46 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fe74c786ef6086e15c7965a56930fd5118e2daba4afc438a46c36e7aeb5736`  
		Last Modified: Thu, 23 May 2019 22:40:46 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93af640f5a27840b3dbf39d48f8bb4eb7c27e51b8fb76d43748fe7d940f43b58`  
		Last Modified: Thu, 23 May 2019 22:40:46 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.5`

```console
$ docker pull consul@sha256:e70c788854dd6e8ee0aa3d4c3a6a8c717ce74ed3c18b1665d983bf7e5fff5486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.5` - linux; amd64

```console
$ docker pull consul@sha256:a670880d0cc80b829cd4385c353e88c36ce4f3f2d9be06b83ccfc62f504d41a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43075802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f136343b75e00664a7aa4c477a6d1e7b40a9708610fb6e483e884e0cce691599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:19:31 GMT
ENV CONSUL_VERSION=1.5.1
# Thu, 23 May 2019 22:19:43 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:19:44 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:19:57 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:19:59 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:20:00 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:20:00 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:20:00 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:20:01 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:20:01 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:20:01 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:20:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:20:02 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b1a60a2bea7ff827a6fbe3e91b58c2598e80ab2ff3c62709f9d5a648ddc435`  
		Last Modified: Thu, 23 May 2019 22:21:11 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2392e3d277769abce1cc29b4516314af42fd8a99587a79b55248b7d87be14cb8`  
		Last Modified: Thu, 23 May 2019 22:21:23 GMT  
		Size: 40.3 MB (40315537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565cd9d57cb0c9d6207f053aee9b35ab6c635d05bdc90b98b5f35df2048e37d3`  
		Last Modified: Thu, 23 May 2019 22:21:11 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac738aa67e22d4d53c484d58ea513f7b8b6d8b37c9df8ccea5d2af313d2772ae`  
		Last Modified: Thu, 23 May 2019 22:21:11 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0298519820f4c4a8370a968fe5e0e71f4d09335931d32891ae8c9553f91755`  
		Last Modified: Thu, 23 May 2019 22:21:11 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.5` - linux; arm variant v6

```console
$ docker pull consul@sha256:0500b8eeb71d7dff6cde43d77a9febc7e579524018016719074fe3e9e9ac8870
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40534930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0206027527f92a79dcfa1740daf1be7b3d7f89ccdbf7ea321ebc85cd3e60567`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 21:49:27 GMT
ENV CONSUL_VERSION=1.5.1
# Thu, 23 May 2019 21:49:27 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 21:49:28 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 21:49:36 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 21:49:39 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 21:49:40 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 21:49:41 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 21:49:41 GMT
EXPOSE 8300
# Thu, 23 May 2019 21:49:41 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 21:49:42 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 21:49:42 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 21:49:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:49:43 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925a93bd5a2acdf46d42d1cd734c86ceca518bc72e87de9951832c77dc064440`  
		Last Modified: Thu, 23 May 2019 21:50:33 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e7b400f0bfcce491ea2dafcfb39a2c14c68eec4c688c125236ea801066e341`  
		Last Modified: Thu, 23 May 2019 21:50:43 GMT  
		Size: 38.0 MB (37988212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a65dfb804f2eb62d846941e11010ce960ca182f3c8f8b82e52332c6c82e3f46`  
		Last Modified: Thu, 23 May 2019 21:50:35 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980429cfc045e3ea9da2b5f11e0185cb6d1b2eaa036590dcba52afe9fcfc52ea`  
		Last Modified: Thu, 23 May 2019 21:50:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72366979c22c6342d32b782339390b13a8c2497dd4fc48895e3645d7991a15f7`  
		Last Modified: Thu, 23 May 2019 21:50:33 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.5` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:8ab62c22fef2b4cc3b549591892d66ccda2a57981575fb6b294b748bc8d35b35
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40694004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d046a22d639c5ccbc44cd66597b4871b73915a2a90daa3f745d9bd14cbcba8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:41:35 GMT
ENV CONSUL_VERSION=1.5.1
# Thu, 23 May 2019 22:41:35 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:41:37 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:41:43 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:41:45 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:41:46 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:41:46 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:41:47 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:41:47 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:41:48 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:41:48 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:41:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:41:49 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df73307dcbca5cb0908814b55088f13119b7ce1fb5d741f06dae7036b9849c`  
		Last Modified: Thu, 23 May 2019 22:43:44 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363f26962a60f517249d0780e42315489b1e2e6524f62cd494050f7edbb42e06`  
		Last Modified: Thu, 23 May 2019 22:43:56 GMT  
		Size: 38.0 MB (38001936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f2cae5dc2d8f47f94b25dacc8628d845e42f0080f167385fb905338e73e6be`  
		Last Modified: Thu, 23 May 2019 22:43:44 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6547fb166416dd0718f8ca1ca5b9b8a7fe9d2e31118ed21c8c41b9677f32aea5`  
		Last Modified: Thu, 23 May 2019 22:43:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aebf1ea5ed5e228ddfcaa66876a50b6d9177d3c914402ffd6abdb67fed45f3`  
		Last Modified: Thu, 23 May 2019 22:43:44 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.5` - linux; 386

```console
$ docker pull consul@sha256:af5a2147a3594cac768af96f1c61bdadee0c428f07fac17c914d8ef0049e6bbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41977173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36866d2bc9383e408dcc331f13bfc0b0acd2f380e4f2295941497ef3b3ddbd5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:39:43 GMT
ENV CONSUL_VERSION=1.5.1
# Thu, 23 May 2019 22:39:43 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:39:44 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:39:50 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:39:51 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:39:53 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:39:53 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:39:53 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:39:53 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:39:53 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:39:54 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:39:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:39:54 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3d04b0e2384a73984c9bf70779b297be7fc87b388240656f0063f9dcf3d361`  
		Last Modified: Thu, 23 May 2019 22:40:33 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc03cc0d79478b8b80d1c89bf48ac9f6d9574307eb63440855f037a28185139`  
		Last Modified: Thu, 23 May 2019 22:40:41 GMT  
		Size: 39.2 MB (39221850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa4f43ebd685757ba50b9ab4c8ce02678ea4cf2fddab5492cf22df87934abc74`  
		Last Modified: Thu, 23 May 2019 22:40:33 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec2626860e5a4dfe35613eb0810a2872ced5719fcd841ba3f3be6d3420a51a7`  
		Last Modified: Thu, 23 May 2019 22:40:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad760bbd0649077682a7fe1723170eb1e545a4f8f7cb93e423e77d763a1362`  
		Last Modified: Thu, 23 May 2019 22:40:33 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:1.5.1`

```console
$ docker pull consul@sha256:e70c788854dd6e8ee0aa3d4c3a6a8c717ce74ed3c18b1665d983bf7e5fff5486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:1.5.1` - linux; amd64

```console
$ docker pull consul@sha256:a670880d0cc80b829cd4385c353e88c36ce4f3f2d9be06b83ccfc62f504d41a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43075802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f136343b75e00664a7aa4c477a6d1e7b40a9708610fb6e483e884e0cce691599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:19:31 GMT
ENV CONSUL_VERSION=1.5.1
# Thu, 23 May 2019 22:19:43 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:19:44 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:19:57 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:19:59 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:20:00 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:20:00 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:20:00 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:20:01 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:20:01 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:20:01 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:20:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:20:02 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b1a60a2bea7ff827a6fbe3e91b58c2598e80ab2ff3c62709f9d5a648ddc435`  
		Last Modified: Thu, 23 May 2019 22:21:11 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2392e3d277769abce1cc29b4516314af42fd8a99587a79b55248b7d87be14cb8`  
		Last Modified: Thu, 23 May 2019 22:21:23 GMT  
		Size: 40.3 MB (40315537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565cd9d57cb0c9d6207f053aee9b35ab6c635d05bdc90b98b5f35df2048e37d3`  
		Last Modified: Thu, 23 May 2019 22:21:11 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac738aa67e22d4d53c484d58ea513f7b8b6d8b37c9df8ccea5d2af313d2772ae`  
		Last Modified: Thu, 23 May 2019 22:21:11 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0298519820f4c4a8370a968fe5e0e71f4d09335931d32891ae8c9553f91755`  
		Last Modified: Thu, 23 May 2019 22:21:11 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.5.1` - linux; arm variant v6

```console
$ docker pull consul@sha256:0500b8eeb71d7dff6cde43d77a9febc7e579524018016719074fe3e9e9ac8870
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40534930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0206027527f92a79dcfa1740daf1be7b3d7f89ccdbf7ea321ebc85cd3e60567`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 21:49:27 GMT
ENV CONSUL_VERSION=1.5.1
# Thu, 23 May 2019 21:49:27 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 21:49:28 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 21:49:36 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 21:49:39 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 21:49:40 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 21:49:41 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 21:49:41 GMT
EXPOSE 8300
# Thu, 23 May 2019 21:49:41 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 21:49:42 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 21:49:42 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 21:49:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:49:43 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925a93bd5a2acdf46d42d1cd734c86ceca518bc72e87de9951832c77dc064440`  
		Last Modified: Thu, 23 May 2019 21:50:33 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e7b400f0bfcce491ea2dafcfb39a2c14c68eec4c688c125236ea801066e341`  
		Last Modified: Thu, 23 May 2019 21:50:43 GMT  
		Size: 38.0 MB (37988212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a65dfb804f2eb62d846941e11010ce960ca182f3c8f8b82e52332c6c82e3f46`  
		Last Modified: Thu, 23 May 2019 21:50:35 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980429cfc045e3ea9da2b5f11e0185cb6d1b2eaa036590dcba52afe9fcfc52ea`  
		Last Modified: Thu, 23 May 2019 21:50:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72366979c22c6342d32b782339390b13a8c2497dd4fc48895e3645d7991a15f7`  
		Last Modified: Thu, 23 May 2019 21:50:33 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.5.1` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:8ab62c22fef2b4cc3b549591892d66ccda2a57981575fb6b294b748bc8d35b35
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40694004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d046a22d639c5ccbc44cd66597b4871b73915a2a90daa3f745d9bd14cbcba8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:41:35 GMT
ENV CONSUL_VERSION=1.5.1
# Thu, 23 May 2019 22:41:35 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:41:37 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:41:43 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:41:45 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:41:46 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:41:46 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:41:47 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:41:47 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:41:48 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:41:48 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:41:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:41:49 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df73307dcbca5cb0908814b55088f13119b7ce1fb5d741f06dae7036b9849c`  
		Last Modified: Thu, 23 May 2019 22:43:44 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363f26962a60f517249d0780e42315489b1e2e6524f62cd494050f7edbb42e06`  
		Last Modified: Thu, 23 May 2019 22:43:56 GMT  
		Size: 38.0 MB (38001936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f2cae5dc2d8f47f94b25dacc8628d845e42f0080f167385fb905338e73e6be`  
		Last Modified: Thu, 23 May 2019 22:43:44 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6547fb166416dd0718f8ca1ca5b9b8a7fe9d2e31118ed21c8c41b9677f32aea5`  
		Last Modified: Thu, 23 May 2019 22:43:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aebf1ea5ed5e228ddfcaa66876a50b6d9177d3c914402ffd6abdb67fed45f3`  
		Last Modified: Thu, 23 May 2019 22:43:44 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:1.5.1` - linux; 386

```console
$ docker pull consul@sha256:af5a2147a3594cac768af96f1c61bdadee0c428f07fac17c914d8ef0049e6bbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41977173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36866d2bc9383e408dcc331f13bfc0b0acd2f380e4f2295941497ef3b3ddbd5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:39:43 GMT
ENV CONSUL_VERSION=1.5.1
# Thu, 23 May 2019 22:39:43 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:39:44 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:39:50 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:39:51 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:39:53 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:39:53 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:39:53 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:39:53 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:39:53 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:39:54 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:39:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:39:54 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3d04b0e2384a73984c9bf70779b297be7fc87b388240656f0063f9dcf3d361`  
		Last Modified: Thu, 23 May 2019 22:40:33 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc03cc0d79478b8b80d1c89bf48ac9f6d9574307eb63440855f037a28185139`  
		Last Modified: Thu, 23 May 2019 22:40:41 GMT  
		Size: 39.2 MB (39221850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa4f43ebd685757ba50b9ab4c8ce02678ea4cf2fddab5492cf22df87934abc74`  
		Last Modified: Thu, 23 May 2019 22:40:33 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec2626860e5a4dfe35613eb0810a2872ced5719fcd841ba3f3be6d3420a51a7`  
		Last Modified: Thu, 23 May 2019 22:40:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad760bbd0649077682a7fe1723170eb1e545a4f8f7cb93e423e77d763a1362`  
		Last Modified: Thu, 23 May 2019 22:40:33 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `consul:latest`

```console
$ docker pull consul@sha256:e70c788854dd6e8ee0aa3d4c3a6a8c717ce74ed3c18b1665d983bf7e5fff5486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `consul:latest` - linux; amd64

```console
$ docker pull consul@sha256:a670880d0cc80b829cd4385c353e88c36ce4f3f2d9be06b83ccfc62f504d41a3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43075802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f136343b75e00664a7aa4c477a6d1e7b40a9708610fb6e483e884e0cce691599`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:39:31 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:19:31 GMT
ENV CONSUL_VERSION=1.5.1
# Thu, 23 May 2019 22:19:43 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:19:44 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:19:57 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:19:59 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:20:00 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:20:00 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:20:00 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:20:01 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:20:01 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:20:01 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:20:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:20:02 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b1a60a2bea7ff827a6fbe3e91b58c2598e80ab2ff3c62709f9d5a648ddc435`  
		Last Modified: Thu, 23 May 2019 22:21:11 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2392e3d277769abce1cc29b4516314af42fd8a99587a79b55248b7d87be14cb8`  
		Last Modified: Thu, 23 May 2019 22:21:23 GMT  
		Size: 40.3 MB (40315537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565cd9d57cb0c9d6207f053aee9b35ab6c635d05bdc90b98b5f35df2048e37d3`  
		Last Modified: Thu, 23 May 2019 22:21:11 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac738aa67e22d4d53c484d58ea513f7b8b6d8b37c9df8ccea5d2af313d2772ae`  
		Last Modified: Thu, 23 May 2019 22:21:11 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c0298519820f4c4a8370a968fe5e0e71f4d09335931d32891ae8c9553f91755`  
		Last Modified: Thu, 23 May 2019 22:21:11 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm variant v6

```console
$ docker pull consul@sha256:0500b8eeb71d7dff6cde43d77a9febc7e579524018016719074fe3e9e9ac8870
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.5 MB (40534930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0206027527f92a79dcfa1740daf1be7b3d7f89ccdbf7ea321ebc85cd3e60567`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:06:14 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 21:49:27 GMT
ENV CONSUL_VERSION=1.5.1
# Thu, 23 May 2019 21:49:27 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 21:49:28 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 21:49:36 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 21:49:39 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 21:49:40 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 21:49:41 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 21:49:41 GMT
EXPOSE 8300
# Thu, 23 May 2019 21:49:41 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 21:49:42 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 21:49:42 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 21:49:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 21:49:43 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:925a93bd5a2acdf46d42d1cd734c86ceca518bc72e87de9951832c77dc064440`  
		Last Modified: Thu, 23 May 2019 21:50:33 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e7b400f0bfcce491ea2dafcfb39a2c14c68eec4c688c125236ea801066e341`  
		Last Modified: Thu, 23 May 2019 21:50:43 GMT  
		Size: 38.0 MB (37988212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a65dfb804f2eb62d846941e11010ce960ca182f3c8f8b82e52332c6c82e3f46`  
		Last Modified: Thu, 23 May 2019 21:50:35 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:980429cfc045e3ea9da2b5f11e0185cb6d1b2eaa036590dcba52afe9fcfc52ea`  
		Last Modified: Thu, 23 May 2019 21:50:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72366979c22c6342d32b782339390b13a8c2497dd4fc48895e3645d7991a15f7`  
		Last Modified: Thu, 23 May 2019 21:50:33 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; arm64 variant v8

```console
$ docker pull consul@sha256:8ab62c22fef2b4cc3b549591892d66ccda2a57981575fb6b294b748bc8d35b35
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.7 MB (40694004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33d046a22d639c5ccbc44cd66597b4871b73915a2a90daa3f745d9bd14cbcba8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Thu, 23 May 2019 22:41:35 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:41:35 GMT
ENV CONSUL_VERSION=1.5.1
# Thu, 23 May 2019 22:41:35 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:41:37 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:41:43 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:41:45 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:41:46 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:41:46 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:41:47 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:41:47 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:41:48 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:41:48 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:41:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:41:49 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0df73307dcbca5cb0908814b55088f13119b7ce1fb5d741f06dae7036b9849c`  
		Last Modified: Thu, 23 May 2019 22:43:44 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363f26962a60f517249d0780e42315489b1e2e6524f62cd494050f7edbb42e06`  
		Last Modified: Thu, 23 May 2019 22:43:56 GMT  
		Size: 38.0 MB (38001936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f2cae5dc2d8f47f94b25dacc8628d845e42f0080f167385fb905338e73e6be`  
		Last Modified: Thu, 23 May 2019 22:43:44 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6547fb166416dd0718f8ca1ca5b9b8a7fe9d2e31118ed21c8c41b9677f32aea5`  
		Last Modified: Thu, 23 May 2019 22:43:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37aebf1ea5ed5e228ddfcaa66876a50b6d9177d3c914402ffd6abdb67fed45f3`  
		Last Modified: Thu, 23 May 2019 22:43:44 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `consul:latest` - linux; 386

```console
$ docker pull consul@sha256:af5a2147a3594cac768af96f1c61bdadee0c428f07fac17c914d8ef0049e6bbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41977173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36866d2bc9383e408dcc331f13bfc0b0acd2f380e4f2295941497ef3b3ddbd5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["agent","-dev","-client","0.0.0.0"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 10:56:52 GMT
MAINTAINER Consul Team <consul@hashicorp.com>
# Thu, 23 May 2019 22:39:43 GMT
ENV CONSUL_VERSION=1.5.1
# Thu, 23 May 2019 22:39:43 GMT
ENV HASHICORP_RELEASES=https://releases.hashicorp.com
# Thu, 23 May 2019 22:39:44 GMT
RUN addgroup consul &&     adduser -S -G consul consul
# Thu, 23 May 2019 22:39:50 GMT
RUN set -eux &&     apk add --no-cache ca-certificates curl dumb-init gnupg libcap openssl su-exec iputils jq &&     gpg --keyserver pgp.mit.edu --recv-keys 91A6E7F85D05C65630BEF18951852D87348FFC4C &&     mkdir -p /tmp/build &&     cd /tmp/build &&     apkArch="$(apk --print-arch)" &&     case "${apkArch}" in         aarch64) consulArch='arm64' ;;         armhf) consulArch='arm' ;;         x86) consulArch='386' ;;         x86_64) consulArch='amd64' ;;         *) echo >&2 "error: unsupported architecture: ${apkArch} (see ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/)" && exit 1 ;;     esac &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS &&     wget ${HASHICORP_RELEASES}/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_SHA256SUMS.sig &&     gpg --batch --verify consul_${CONSUL_VERSION}_SHA256SUMS.sig consul_${CONSUL_VERSION}_SHA256SUMS &&     grep consul_${CONSUL_VERSION}_linux_${consulArch}.zip consul_${CONSUL_VERSION}_SHA256SUMS | sha256sum -c &&     unzip -d /bin consul_${CONSUL_VERSION}_linux_${consulArch}.zip &&     cd /tmp &&     rm -rf /tmp/build &&     apk del gnupg openssl &&     rm -rf /root/.gnupg &&     consul version
# Thu, 23 May 2019 22:39:51 GMT
RUN mkdir -p /consul/data &&     mkdir -p /consul/config &&     chown -R consul:consul /consul
# Thu, 23 May 2019 22:39:53 GMT
RUN test -e /etc/nsswitch.conf || echo 'hosts: files dns' > /etc/nsswitch.conf
# Thu, 23 May 2019 22:39:53 GMT
VOLUME [/consul/data]
# Thu, 23 May 2019 22:39:53 GMT
EXPOSE 8300
# Thu, 23 May 2019 22:39:53 GMT
EXPOSE 8301 8301/udp 8302 8302/udp
# Thu, 23 May 2019 22:39:53 GMT
EXPOSE 8500 8600 8600/udp
# Thu, 23 May 2019 22:39:54 GMT
COPY file:2fc9ee792fd5d6e21568c1fcc92d825866250fafd9f3c82331ad98c840b3dd45 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 22:39:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 May 2019 22:39:54 GMT
CMD ["agent" "-dev" "-client" "0.0.0.0"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd3d04b0e2384a73984c9bf70779b297be7fc87b388240656f0063f9dcf3d361`  
		Last Modified: Thu, 23 May 2019 22:40:33 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc03cc0d79478b8b80d1c89bf48ac9f6d9574307eb63440855f037a28185139`  
		Last Modified: Thu, 23 May 2019 22:40:41 GMT  
		Size: 39.2 MB (39221850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa4f43ebd685757ba50b9ab4c8ce02678ea4cf2fddab5492cf22df87934abc74`  
		Last Modified: Thu, 23 May 2019 22:40:33 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec2626860e5a4dfe35613eb0810a2872ced5719fcd841ba3f3be6d3420a51a7`  
		Last Modified: Thu, 23 May 2019 22:40:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ad760bbd0649077682a7fe1723170eb1e545a4f8f7cb93e423e77d763a1362`  
		Last Modified: Thu, 23 May 2019 22:40:33 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
