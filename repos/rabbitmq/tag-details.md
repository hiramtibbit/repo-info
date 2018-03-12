<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3.6.15`](#rabbitmq3615)
-	[`rabbitmq:3.6.15-alpine`](#rabbitmq3615-alpine)
-	[`rabbitmq:3.6.15-management`](#rabbitmq3615-management)
-	[`rabbitmq:3.6.15-management-alpine`](#rabbitmq3615-management-alpine)
-	[`rabbitmq:3.6-alpine`](#rabbitmq36-alpine)
-	[`rabbitmq:3.6-management`](#rabbitmq36-management)
-	[`rabbitmq:3.6-management-alpine`](#rabbitmq36-management-alpine)
-	[`rabbitmq:3.7`](#rabbitmq37)
-	[`rabbitmq:3.7.4`](#rabbitmq374)
-	[`rabbitmq:3.7.4-alpine`](#rabbitmq374-alpine)
-	[`rabbitmq:3.7.4-management`](#rabbitmq374-management)
-	[`rabbitmq:3.7.4-management-alpine`](#rabbitmq374-management-alpine)
-	[`rabbitmq:3.7.4-rc.4`](#rabbitmq374-rc4)
-	[`rabbitmq:3.7.4-rc.4-alpine`](#rabbitmq374-rc4-alpine)
-	[`rabbitmq:3.7.4-rc.4-management`](#rabbitmq374-rc4-management)
-	[`rabbitmq:3.7.4-rc.4-management-alpine`](#rabbitmq374-rc4-management-alpine)
-	[`rabbitmq:3.7-alpine`](#rabbitmq37-alpine)
-	[`rabbitmq:3.7-management`](#rabbitmq37-management)
-	[`rabbitmq:3.7-management-alpine`](#rabbitmq37-management-alpine)
-	[`rabbitmq:3.7-rc`](#rabbitmq37-rc)
-	[`rabbitmq:3.7-rc-alpine`](#rabbitmq37-rc-alpine)
-	[`rabbitmq:3.7-rc-management`](#rabbitmq37-rc-management)
-	[`rabbitmq:3.7-rc-management-alpine`](#rabbitmq37-rc-management-alpine)
-	[`rabbitmq:3-alpine`](#rabbitmq3-alpine)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:3-management-alpine`](#rabbitmq3-management-alpine)
-	[`rabbitmq:alpine`](#rabbitmqalpine)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:management`](#rabbitmqmanagement)
-	[`rabbitmq:management-alpine`](#rabbitmqmanagement-alpine)

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:ab055d120e04cf561373db0773f20f0070589b9b89b400277fc6b45afcf4e78a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:3` - linux; s390x

```console
$ docker pull rabbitmq@sha256:651166db2a74792f262aa1a74f70caa706a4051b143d2475bd18a6e111c22ed8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65686164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e647517c4795d3223fe14e589b16ecef28b9eabc10001eebb2c4101da6dc0a8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:07:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:07:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:06:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Mon, 12 Mar 2018 17:07:15 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 12 Mar 2018 17:07:15 GMT
ENV LANG=C.UTF-8
# Mon, 12 Mar 2018 17:07:16 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:07:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:07:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 12 Mar 2018 17:07:18 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:07:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 12 Mar 2018 17:07:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:07:19 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:07:19 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56417f0fd7d846dd57ff775d3681fd4051109ae35bf4a62015be70cb5093465`  
		Last Modified: Thu, 15 Feb 2018 07:10:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af910c393a4ba11e83756868aab15e08805908293884e766ccf73b738588b2eb`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 25.0 MB (25026109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1c4459cf293e420c8191efd8a81c7d2020e4ef892c556b2df8638640ca4cc1`  
		Last Modified: Mon, 12 Mar 2018 17:08:45 GMT  
		Size: 12.8 MB (12832095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dee3bd5d27bfc82f0d35869732f1bafc5009a92a68974bff9965489e74d31e`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f81decace193531563aafbce03061472ec4eed54f56969b2104b2f63de11c7`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bb0d30069a25bff758f72013ce1319c955f14bcbcd230fb66c21367958b8c1`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3301e4341a91a7b6be1025fa1f401c594c27f24450a78401cda018bfcf73ef0`  
		Last Modified: Mon, 12 Mar 2018 17:08:44 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028be3145e86ced3f4c892a93ea846b58c35fac72add4baffb302d9a3c8302ec`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:71d4a45f2b4829894b995062f5dea337c7668269be8d5c32b3ebba70a14e7aec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6` - linux; amd64

```console
$ docker pull rabbitmq@sha256:f0af01ce8cd3315666c89deb962f2aab8f8961d5e2c815e630bd62c885b6a0a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62963361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9167f23000b4fc91c2b823c025da22e106ed29d6a4264e5c8e68704edb9897`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 18:56:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:56:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 16 Feb 2018 18:56:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 18:57:02 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Feb 2018 18:59:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:59:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 16 Feb 2018 18:59:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 18:59:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 16 Feb 2018 18:59:55 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 16 Feb 2018 18:59:55 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 16 Feb 2018 18:59:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Fri, 16 Feb 2018 19:00:44 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:00:45 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 16 Feb 2018 19:00:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 16 Feb 2018 19:00:46 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 16 Feb 2018 19:00:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 16 Feb 2018 19:00:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 16 Feb 2018 19:00:48 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 16 Feb 2018 19:00:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 19:00:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 19:00:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 16 Feb 2018 19:00:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aa5c2fc28c2889bb371a7c8c86d79363c2210331abc9ab368eec5664f9c7f1`  
		Last Modified: Fri, 16 Feb 2018 19:01:56 GMT  
		Size: 4.5 MB (4498430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6866d83ad777c7832f9a12a4c138b04ae865fc71238531025c3a1d9cdab3e6`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424ad5823c0c06246ed365a566ac25a786727eb4de90d40450c75c9f9589d05c`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 952.0 KB (951962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd604e77a5eed330e28d0007c7f4fa150114cd467e33b1221874ab19f0cf916`  
		Last Modified: Fri, 16 Feb 2018 19:05:13 GMT  
		Size: 27.7 MB (27704471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0761b252508867deed98a8b3543258de07956308483cb4578753223ec430dcd2`  
		Last Modified: Fri, 16 Feb 2018 19:05:11 GMT  
		Size: 7.3 MB (7300966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc57f8eaa146b5f9fe6682902cca47110a76ee854072899205a438365b8c1bc`  
		Last Modified: Fri, 16 Feb 2018 19:05:09 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9f264ed573024125c182985a39e319bb5d4143d5237fd76ca89cc2485531eb`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf1fe3f4991e5b444e20e059bfcde5f520fd8f3059c34444133df2258fabfd9`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6ba1e4ff9e2e0ef4ab6c069a31ee168efa2e1cdbf895c61d9837aaa35500ee`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f549ed6e61b74880cc0ec30ffbe2006f3a387e10c0b0e6e1ab006d12536cfa0c`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:273a311b21ff213de2555c085db113e279e65cd7406eef399897366cc65c299f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58545133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36835291a45829d96d517f3cb5fab2b93f8fa07a699554ef633c7c70c32b5e90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:06:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:06:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 22:06:54 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 22:07:37 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:10:12 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:10:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 22:10:13 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:10:13 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 22:10:14 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 22:10:14 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 22:10:14 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 22:11:29 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:11:30 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 22:11:30 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 22:11:31 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 22:11:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 22:11:33 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 22:11:33 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 22:11:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 22:11:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:11:35 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 22:11:36 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a212dd3e52653adb4c0c3677397e74fcac10b74d38b2df38af460830e04b1ac`  
		Last Modified: Thu, 15 Feb 2018 22:12:23 GMT  
		Size: 4.2 MB (4231540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae935791a245772b6342dece630412eff8a97d12aaf579e401ccc09215205a`  
		Last Modified: Thu, 15 Feb 2018 22:12:20 GMT  
		Size: 4.1 KB (4088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458120fe43d4aff849ffaeb2fa6d4cc8d2c3dc5c72caeb744d44ffa74f07033d`  
		Last Modified: Thu, 15 Feb 2018 22:12:22 GMT  
		Size: 942.5 KB (942460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00172ccee8d9aa2c96f692d2de3d133f98c15ddc3e17ceb560c4df449662bee5`  
		Last Modified: Thu, 15 Feb 2018 22:13:50 GMT  
		Size: 25.2 MB (25170555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b857bb81978b4fa92a2038b4207528808e461973d3b7253494b45b515900d4f7`  
		Last Modified: Thu, 15 Feb 2018 22:13:46 GMT  
		Size: 7.0 MB (7014770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c642e6412f84eca7120e60eb96a003f9c6f0d7cf32ef676b752a26b77ecbdd`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697379b51293444ff3cca9f613b3134282b019c9062f674d7b02cf8b4b10dc68`  
		Last Modified: Thu, 15 Feb 2018 22:13:44 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2174c62683bfc585fa0b1cf5967d245a6e4d9f1577beef5b315574a14cb1104f`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609310b9ab5228994da4f5c664d77c58230fd45e200ed7dc06bf9419fae31e97`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9c9b044e2f9d906b21eb38eaae4b8dd9d229d20dd6e1fadc56f63533ad22e5`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:81def09b92db50f26d3b687e65821dd89c112a17eadd87c4039f645c1c9b0796
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55801244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de1e86741ee37c2335b83adf598455bc78744134aa842d3c8f42fddac1e2922`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:11:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 16:11:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:12:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 16:14:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:14:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 16:14:51 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 16:14:51 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 16:14:52 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 16:14:52 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 16:14:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 16:15:12 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:15:12 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 16:15:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 16:15:13 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 16:15:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 16:15:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 16:15:22 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:15:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 16:15:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:15:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 16:15:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b013f1082d9f6b4590d4a988c911f20b6ecd1025e255fc4a69303f3dfd32317d`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 3.9 MB (3868601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e6890c5bfb431a26fb646081f14de6ade476a28158583b3e708a8bc3f40ff3`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3449fb95440de1ead82a804d144bcd225029ac93ea319b6471e1e97a5bf4ecc2`  
		Last Modified: Thu, 15 Feb 2018 16:16:29 GMT  
		Size: 926.1 KB (926131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3802486230930c1aad09b03fef3e0196cc5559b4dbc45a4eb5d0b6400f99831a`  
		Last Modified: Thu, 15 Feb 2018 16:18:14 GMT  
		Size: 24.8 MB (24785513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13293c44afc46f6561504f9efb12ee5b44dd4de024633c052509e4e9338b4b72`  
		Last Modified: Thu, 15 Feb 2018 16:18:11 GMT  
		Size: 6.9 MB (6924139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dd2bf7de1462fd9012145805f6e95355842d956856b62c452572559e7f583a`  
		Last Modified: Thu, 15 Feb 2018 16:18:09 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a945917e21e2aec1b36b75e05030e9ac3d6564ca95f95cce5c05dbfc24bf5f53`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dce087fd94257f988025e5218370f9115445484884537888bcbc55ebf5ab646`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bb52e3bf20cba4b65926e05dac9dc5841d288de316647f6f31814fac3bbfe8`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482e8e7153a01e85259869271bc1789345775e54c136a855095d0aad716f62ce`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:08900e03aab28306d25d2c538fbdf542a8823a2ad4a95053fbb08d3a6e1d5b85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57393449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1710569d1bdb56b960916fde54c644c28da23ace21e3e1c2388490c3373c549c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 23:53:57 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 23:53:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:54:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Feb 2018 00:00:19 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:00:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 16 Feb 2018 00:00:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 00:00:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 16 Feb 2018 00:00:22 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 16 Feb 2018 00:00:23 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 16 Feb 2018 00:00:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Fri, 16 Feb 2018 00:01:11 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:01:12 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 16 Feb 2018 00:01:14 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 16 Feb 2018 00:01:14 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 16 Feb 2018 00:01:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 16 Feb 2018 00:01:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 16 Feb 2018 00:01:20 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 16 Feb 2018 00:01:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 00:01:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 00:01:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 16 Feb 2018 00:01:24 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecc7280a57c4f164dcf6ac46e8f359b64b73ac4eebda29730420cbc351f6de`  
		Last Modified: Fri, 16 Feb 2018 00:03:00 GMT  
		Size: 4.1 MB (4073277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de655884dd724f8f2f9dc4a57ce020cf3c7ea27c33757c572eb63feed718d68d`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14dce82e5cc18457d199dc012088a60f363697db4983a790036468ee985e073a`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 919.4 KB (919384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93c6d39bc153774ce49d3063ef654274d7bccb9d5d7d00ddb7c6ee79c936e14`  
		Last Modified: Fri, 16 Feb 2018 00:05:05 GMT  
		Size: 25.0 MB (25043337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e95b14b74a7fd954359d9e0e53ab4adb87bce7e41e3ee4c7cb5bd22d6eac86`  
		Last Modified: Fri, 16 Feb 2018 00:04:58 GMT  
		Size: 7.0 MB (6999254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5be5362f65817b4a7021a8c0f7182058c35c530f158e24bd8324ab6703b67d1`  
		Last Modified: Fri, 16 Feb 2018 00:04:54 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81199c2fc52fc0b4f94817c581dc61b05b365b8fec0d5bdda2ad9b64d1acd034`  
		Last Modified: Fri, 16 Feb 2018 00:04:54 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4216ccfbab5ea7528a08f10564454df9adc1ef5f6e5bb06b124b743cb8d6e417`  
		Last Modified: Fri, 16 Feb 2018 00:04:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3a851a7a892fd896e8ba747747fd1b6795e261ab1ca347cf6db1c52a00a9f6`  
		Last Modified: Fri, 16 Feb 2018 00:04:54 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0164197409dcc8ff878fb957df9eaeb391dc7a6a6c51d5c7acee5cdef6089774`  
		Last Modified: Fri, 16 Feb 2018 00:04:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; 386

```console
$ docker pull rabbitmq@sha256:5145c6708784d5b9105c54ffa0d5f188101fe2c5433ead830fd436b91cf653fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (64014212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df379b47b4635482badd5797603f34bdeb9f4edd5959472fa0c87c467edb81a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 06:02:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:02:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 21 Feb 2018 06:02:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 06:18:09 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 06:31:52 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:31:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 21 Feb 2018 06:31:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 06:31:53 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 21 Feb 2018 06:31:53 GMT
ENV RABBITMQ_VERSION=3.6.15
# Wed, 21 Feb 2018 06:31:53 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Wed, 21 Feb 2018 06:31:54 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Wed, 21 Feb 2018 06:32:16 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:32:16 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 21 Feb 2018 06:32:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 21 Feb 2018 06:32:17 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 21 Feb 2018 06:32:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 21 Feb 2018 06:32:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 21 Feb 2018 06:32:19 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 21 Feb 2018 06:32:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Feb 2018 06:32:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Feb 2018 06:32:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 21 Feb 2018 06:32:21 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fde2b9bfdd614411d1d5380916758b66c6257b263b10477d6a2795b6546e380`  
		Last Modified: Wed, 21 Feb 2018 06:49:22 GMT  
		Size: 4.8 MB (4803819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e09ac772b52c4b12b313c697bc00be2f982158ebcc742cb1479ee565ec7b28`  
		Last Modified: Wed, 21 Feb 2018 06:49:19 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bb3531a8f1827457fdde45c0eb60d638dbc6dfde7062a7760a1e1d1b045f13`  
		Last Modified: Wed, 21 Feb 2018 06:49:18 GMT  
		Size: 931.6 KB (931565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f042deac44307315cdb23db923db31f971942c5b30280df3a76ab39b113393b1`  
		Last Modified: Wed, 21 Feb 2018 07:21:03 GMT  
		Size: 27.8 MB (27818976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14eb299d73afa5c01480b5f0ac30f45d2bfea7eebc2f9dddd72c1badb126f12`  
		Last Modified: Wed, 21 Feb 2018 07:20:57 GMT  
		Size: 7.3 MB (7314071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66d1e8dddf5e714cacf8c2121cda30c5a3eb1846bc6b43665b8d499effa469e`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089c810f35edb22f101c717e93f4c3cd50f273afd50381919d4fbc67d3ba5754`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abe4163724ce10e29accf324f985165dfe584474b7cf97f392f1f4b80d8c956`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b81f729c46e361bc49c634a7ee13e4e9f7415199419bd0578f0f0fd849fcfc`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472f45539f308b676ec40095a5461d27061d0a5311873c73e08c3ffb27be3abf`  
		Last Modified: Wed, 21 Feb 2018 07:20:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:dd097ef2963dea43f71030524fbdd87dbc89b05228825b105da1c2874839653f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60497804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc5bcf20af8c8c6300a02f11c29e774de53609d9a128d04482e94cdf2e95fa7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:01:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:01:20 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:01:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:02:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:11:42 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:11:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:11:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:11:53 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 07:11:55 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 07:11:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 07:11:58 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 07:13:09 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:13:10 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 07:13:14 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 07:13:16 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 07:13:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 07:13:23 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 07:13:24 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:13:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:13:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 07:13:34 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7eb3ba88b8fb5c65c82d925e3dcbca9f48c46c56825a694fa78f92768e98f36`  
		Last Modified: Thu, 15 Feb 2018 07:15:17 GMT  
		Size: 4.4 MB (4360747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba68cb1b2e1a68352c6ccc11da8cf6084991476e7259a12748d767af1a187a08`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 4.1 KB (4107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534c75edb97f6c0ac366a7b7f3c3f0c2545a80abc9d4fe398852a7c0fb647cae`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 920.9 KB (920856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c03ba6c1ca04862675ba38fed7d4d7dcabe4c8412e2c731f633ed92ee19697f`  
		Last Modified: Thu, 15 Feb 2018 07:16:26 GMT  
		Size: 25.5 MB (25492829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da41886406c67df21ee7c29ddd6458dd71b1e22b498731075fc9c509eab879e8`  
		Last Modified: Thu, 15 Feb 2018 07:16:22 GMT  
		Size: 7.0 MB (6959469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e3a385fac6d6e6fbc04ae069838129d05af6a0bd0e27aeeb76f59dc16431b7`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63357d75f10c1e776b7d1e406666fcb94857c9e0c3a5970942cf35e3dcb6de70`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0a246d655d014b661a640e94c1148f859fa13f4223945d06d5b137bef622fe`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003a9ca510abd5e1120c3e03231dd05156a77224d7ce7daccc8b08371ff52d17`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74eaec5618ce3fc5f28b2524701f7a53eb42c32cb6238fe2c275eb69e0f928c1`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; s390x

```console
$ docker pull rabbitmq@sha256:ef425fb0071d5717b043db9bc3a7eeff855f14c9d957a7620dfddfa85b1760dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60482224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66ae52a98c1c42e527c5b745ab9af40caf406f5d28b5bf85e4bd369a7819dcf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:08:57 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:08:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:08:57 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:08:57 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 07:08:57 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 07:08:58 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 07:08:58 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 07:09:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:09:32 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 07:09:33 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 07:09:33 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 07:09:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 07:09:34 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 07:09:35 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:09:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:09:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:09:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 07:09:36 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db397373562b512d0d8beba752416bae91a2476a692230c532698e7b00f5aa4`  
		Last Modified: Thu, 15 Feb 2018 07:10:50 GMT  
		Size: 25.6 MB (25621063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d48948f15540fde8427b517fd113aaa831cb737a5f67b7154ac90931f0f7219`  
		Last Modified: Thu, 15 Feb 2018 07:10:48 GMT  
		Size: 7.0 MB (7033697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a708f0fdcb774bf67a1a7571be7d42c3ae534a7cd8e815322be04774d8707c80`  
		Last Modified: Thu, 15 Feb 2018 07:10:45 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30f9a9f7b8723222a4a8f580d9f76f3a1e310eff3e90c8e25bb3a97b41a9667`  
		Last Modified: Thu, 15 Feb 2018 07:10:45 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3d89902094830710356d51dcf6821c51e4db61bd761e274e85d22b2f73ddaf`  
		Last Modified: Thu, 15 Feb 2018 07:10:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b4dee9c685a8b9dbf9c342422fbd94b91a9a550977464282a7e7402c3a4ded`  
		Last Modified: Thu, 15 Feb 2018 07:10:46 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ad456e2a94b1981a15c195f1a8680514d8c74773078f801a437336a9a4680f`  
		Last Modified: Thu, 15 Feb 2018 07:10:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.15`

```console
$ docker pull rabbitmq@sha256:71d4a45f2b4829894b995062f5dea337c7668269be8d5c32b3ebba70a14e7aec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6.15` - linux; amd64

```console
$ docker pull rabbitmq@sha256:f0af01ce8cd3315666c89deb962f2aab8f8961d5e2c815e630bd62c885b6a0a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62963361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9167f23000b4fc91c2b823c025da22e106ed29d6a4264e5c8e68704edb9897`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 18:56:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:56:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 16 Feb 2018 18:56:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 18:57:02 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Feb 2018 18:59:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:59:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 16 Feb 2018 18:59:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 18:59:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 16 Feb 2018 18:59:55 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 16 Feb 2018 18:59:55 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 16 Feb 2018 18:59:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Fri, 16 Feb 2018 19:00:44 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:00:45 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 16 Feb 2018 19:00:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 16 Feb 2018 19:00:46 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 16 Feb 2018 19:00:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 16 Feb 2018 19:00:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 16 Feb 2018 19:00:48 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 16 Feb 2018 19:00:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 19:00:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 19:00:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 16 Feb 2018 19:00:51 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aa5c2fc28c2889bb371a7c8c86d79363c2210331abc9ab368eec5664f9c7f1`  
		Last Modified: Fri, 16 Feb 2018 19:01:56 GMT  
		Size: 4.5 MB (4498430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6866d83ad777c7832f9a12a4c138b04ae865fc71238531025c3a1d9cdab3e6`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424ad5823c0c06246ed365a566ac25a786727eb4de90d40450c75c9f9589d05c`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 952.0 KB (951962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd604e77a5eed330e28d0007c7f4fa150114cd467e33b1221874ab19f0cf916`  
		Last Modified: Fri, 16 Feb 2018 19:05:13 GMT  
		Size: 27.7 MB (27704471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0761b252508867deed98a8b3543258de07956308483cb4578753223ec430dcd2`  
		Last Modified: Fri, 16 Feb 2018 19:05:11 GMT  
		Size: 7.3 MB (7300966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc57f8eaa146b5f9fe6682902cca47110a76ee854072899205a438365b8c1bc`  
		Last Modified: Fri, 16 Feb 2018 19:05:09 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9f264ed573024125c182985a39e319bb5d4143d5237fd76ca89cc2485531eb`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf1fe3f4991e5b444e20e059bfcde5f520fd8f3059c34444133df2258fabfd9`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6ba1e4ff9e2e0ef4ab6c069a31ee168efa2e1cdbf895c61d9837aaa35500ee`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f549ed6e61b74880cc0ec30ffbe2006f3a387e10c0b0e6e1ab006d12536cfa0c`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:273a311b21ff213de2555c085db113e279e65cd7406eef399897366cc65c299f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58545133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36835291a45829d96d517f3cb5fab2b93f8fa07a699554ef633c7c70c32b5e90`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:06:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:06:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 22:06:54 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 22:07:37 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:10:12 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:10:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 22:10:13 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:10:13 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 22:10:14 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 22:10:14 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 22:10:14 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 22:11:29 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:11:30 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 22:11:30 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 22:11:31 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 22:11:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 22:11:33 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 22:11:33 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 22:11:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 22:11:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:11:35 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 22:11:36 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a212dd3e52653adb4c0c3677397e74fcac10b74d38b2df38af460830e04b1ac`  
		Last Modified: Thu, 15 Feb 2018 22:12:23 GMT  
		Size: 4.2 MB (4231540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae935791a245772b6342dece630412eff8a97d12aaf579e401ccc09215205a`  
		Last Modified: Thu, 15 Feb 2018 22:12:20 GMT  
		Size: 4.1 KB (4088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458120fe43d4aff849ffaeb2fa6d4cc8d2c3dc5c72caeb744d44ffa74f07033d`  
		Last Modified: Thu, 15 Feb 2018 22:12:22 GMT  
		Size: 942.5 KB (942460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00172ccee8d9aa2c96f692d2de3d133f98c15ddc3e17ceb560c4df449662bee5`  
		Last Modified: Thu, 15 Feb 2018 22:13:50 GMT  
		Size: 25.2 MB (25170555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b857bb81978b4fa92a2038b4207528808e461973d3b7253494b45b515900d4f7`  
		Last Modified: Thu, 15 Feb 2018 22:13:46 GMT  
		Size: 7.0 MB (7014770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c642e6412f84eca7120e60eb96a003f9c6f0d7cf32ef676b752a26b77ecbdd`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697379b51293444ff3cca9f613b3134282b019c9062f674d7b02cf8b4b10dc68`  
		Last Modified: Thu, 15 Feb 2018 22:13:44 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2174c62683bfc585fa0b1cf5967d245a6e4d9f1577beef5b315574a14cb1104f`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609310b9ab5228994da4f5c664d77c58230fd45e200ed7dc06bf9419fae31e97`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9c9b044e2f9d906b21eb38eaae4b8dd9d229d20dd6e1fadc56f63533ad22e5`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:81def09b92db50f26d3b687e65821dd89c112a17eadd87c4039f645c1c9b0796
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55801244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de1e86741ee37c2335b83adf598455bc78744134aa842d3c8f42fddac1e2922`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:11:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 16:11:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:12:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 16:14:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:14:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 16:14:51 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 16:14:51 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 16:14:52 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 16:14:52 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 16:14:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 16:15:12 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:15:12 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 16:15:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 16:15:13 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 16:15:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 16:15:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 16:15:22 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:15:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 16:15:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:15:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 16:15:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b013f1082d9f6b4590d4a988c911f20b6ecd1025e255fc4a69303f3dfd32317d`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 3.9 MB (3868601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e6890c5bfb431a26fb646081f14de6ade476a28158583b3e708a8bc3f40ff3`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3449fb95440de1ead82a804d144bcd225029ac93ea319b6471e1e97a5bf4ecc2`  
		Last Modified: Thu, 15 Feb 2018 16:16:29 GMT  
		Size: 926.1 KB (926131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3802486230930c1aad09b03fef3e0196cc5559b4dbc45a4eb5d0b6400f99831a`  
		Last Modified: Thu, 15 Feb 2018 16:18:14 GMT  
		Size: 24.8 MB (24785513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13293c44afc46f6561504f9efb12ee5b44dd4de024633c052509e4e9338b4b72`  
		Last Modified: Thu, 15 Feb 2018 16:18:11 GMT  
		Size: 6.9 MB (6924139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dd2bf7de1462fd9012145805f6e95355842d956856b62c452572559e7f583a`  
		Last Modified: Thu, 15 Feb 2018 16:18:09 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a945917e21e2aec1b36b75e05030e9ac3d6564ca95f95cce5c05dbfc24bf5f53`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dce087fd94257f988025e5218370f9115445484884537888bcbc55ebf5ab646`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bb52e3bf20cba4b65926e05dac9dc5841d288de316647f6f31814fac3bbfe8`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482e8e7153a01e85259869271bc1789345775e54c136a855095d0aad716f62ce`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:08900e03aab28306d25d2c538fbdf542a8823a2ad4a95053fbb08d3a6e1d5b85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57393449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1710569d1bdb56b960916fde54c644c28da23ace21e3e1c2388490c3373c549c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 23:53:57 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 23:53:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:54:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Feb 2018 00:00:19 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:00:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 16 Feb 2018 00:00:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 00:00:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 16 Feb 2018 00:00:22 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 16 Feb 2018 00:00:23 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 16 Feb 2018 00:00:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Fri, 16 Feb 2018 00:01:11 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:01:12 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 16 Feb 2018 00:01:14 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 16 Feb 2018 00:01:14 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 16 Feb 2018 00:01:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 16 Feb 2018 00:01:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 16 Feb 2018 00:01:20 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 16 Feb 2018 00:01:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 00:01:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 00:01:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 16 Feb 2018 00:01:24 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecc7280a57c4f164dcf6ac46e8f359b64b73ac4eebda29730420cbc351f6de`  
		Last Modified: Fri, 16 Feb 2018 00:03:00 GMT  
		Size: 4.1 MB (4073277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de655884dd724f8f2f9dc4a57ce020cf3c7ea27c33757c572eb63feed718d68d`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14dce82e5cc18457d199dc012088a60f363697db4983a790036468ee985e073a`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 919.4 KB (919384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93c6d39bc153774ce49d3063ef654274d7bccb9d5d7d00ddb7c6ee79c936e14`  
		Last Modified: Fri, 16 Feb 2018 00:05:05 GMT  
		Size: 25.0 MB (25043337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e95b14b74a7fd954359d9e0e53ab4adb87bce7e41e3ee4c7cb5bd22d6eac86`  
		Last Modified: Fri, 16 Feb 2018 00:04:58 GMT  
		Size: 7.0 MB (6999254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5be5362f65817b4a7021a8c0f7182058c35c530f158e24bd8324ab6703b67d1`  
		Last Modified: Fri, 16 Feb 2018 00:04:54 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81199c2fc52fc0b4f94817c581dc61b05b365b8fec0d5bdda2ad9b64d1acd034`  
		Last Modified: Fri, 16 Feb 2018 00:04:54 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4216ccfbab5ea7528a08f10564454df9adc1ef5f6e5bb06b124b743cb8d6e417`  
		Last Modified: Fri, 16 Feb 2018 00:04:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3a851a7a892fd896e8ba747747fd1b6795e261ab1ca347cf6db1c52a00a9f6`  
		Last Modified: Fri, 16 Feb 2018 00:04:54 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0164197409dcc8ff878fb957df9eaeb391dc7a6a6c51d5c7acee5cdef6089774`  
		Last Modified: Fri, 16 Feb 2018 00:04:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15` - linux; 386

```console
$ docker pull rabbitmq@sha256:5145c6708784d5b9105c54ffa0d5f188101fe2c5433ead830fd436b91cf653fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (64014212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df379b47b4635482badd5797603f34bdeb9f4edd5959472fa0c87c467edb81a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 06:02:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:02:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 21 Feb 2018 06:02:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 06:18:09 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 06:31:52 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:31:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 21 Feb 2018 06:31:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 06:31:53 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 21 Feb 2018 06:31:53 GMT
ENV RABBITMQ_VERSION=3.6.15
# Wed, 21 Feb 2018 06:31:53 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Wed, 21 Feb 2018 06:31:54 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Wed, 21 Feb 2018 06:32:16 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:32:16 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 21 Feb 2018 06:32:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 21 Feb 2018 06:32:17 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 21 Feb 2018 06:32:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 21 Feb 2018 06:32:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 21 Feb 2018 06:32:19 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 21 Feb 2018 06:32:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Feb 2018 06:32:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Feb 2018 06:32:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 21 Feb 2018 06:32:21 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fde2b9bfdd614411d1d5380916758b66c6257b263b10477d6a2795b6546e380`  
		Last Modified: Wed, 21 Feb 2018 06:49:22 GMT  
		Size: 4.8 MB (4803819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e09ac772b52c4b12b313c697bc00be2f982158ebcc742cb1479ee565ec7b28`  
		Last Modified: Wed, 21 Feb 2018 06:49:19 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bb3531a8f1827457fdde45c0eb60d638dbc6dfde7062a7760a1e1d1b045f13`  
		Last Modified: Wed, 21 Feb 2018 06:49:18 GMT  
		Size: 931.6 KB (931565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f042deac44307315cdb23db923db31f971942c5b30280df3a76ab39b113393b1`  
		Last Modified: Wed, 21 Feb 2018 07:21:03 GMT  
		Size: 27.8 MB (27818976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14eb299d73afa5c01480b5f0ac30f45d2bfea7eebc2f9dddd72c1badb126f12`  
		Last Modified: Wed, 21 Feb 2018 07:20:57 GMT  
		Size: 7.3 MB (7314071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66d1e8dddf5e714cacf8c2121cda30c5a3eb1846bc6b43665b8d499effa469e`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089c810f35edb22f101c717e93f4c3cd50f273afd50381919d4fbc67d3ba5754`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abe4163724ce10e29accf324f985165dfe584474b7cf97f392f1f4b80d8c956`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b81f729c46e361bc49c634a7ee13e4e9f7415199419bd0578f0f0fd849fcfc`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472f45539f308b676ec40095a5461d27061d0a5311873c73e08c3ffb27be3abf`  
		Last Modified: Wed, 21 Feb 2018 07:20:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:dd097ef2963dea43f71030524fbdd87dbc89b05228825b105da1c2874839653f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60497804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dc5bcf20af8c8c6300a02f11c29e774de53609d9a128d04482e94cdf2e95fa7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:01:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:01:20 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:01:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:02:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:11:42 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:11:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:11:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:11:53 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 07:11:55 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 07:11:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 07:11:58 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 07:13:09 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:13:10 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 07:13:14 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 07:13:16 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 07:13:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 07:13:23 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 07:13:24 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:13:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:13:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 07:13:34 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7eb3ba88b8fb5c65c82d925e3dcbca9f48c46c56825a694fa78f92768e98f36`  
		Last Modified: Thu, 15 Feb 2018 07:15:17 GMT  
		Size: 4.4 MB (4360747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba68cb1b2e1a68352c6ccc11da8cf6084991476e7259a12748d767af1a187a08`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 4.1 KB (4107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534c75edb97f6c0ac366a7b7f3c3f0c2545a80abc9d4fe398852a7c0fb647cae`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 920.9 KB (920856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c03ba6c1ca04862675ba38fed7d4d7dcabe4c8412e2c731f633ed92ee19697f`  
		Last Modified: Thu, 15 Feb 2018 07:16:26 GMT  
		Size: 25.5 MB (25492829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da41886406c67df21ee7c29ddd6458dd71b1e22b498731075fc9c509eab879e8`  
		Last Modified: Thu, 15 Feb 2018 07:16:22 GMT  
		Size: 7.0 MB (6959469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e3a385fac6d6e6fbc04ae069838129d05af6a0bd0e27aeeb76f59dc16431b7`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63357d75f10c1e776b7d1e406666fcb94857c9e0c3a5970942cf35e3dcb6de70`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0a246d655d014b661a640e94c1148f859fa13f4223945d06d5b137bef622fe`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003a9ca510abd5e1120c3e03231dd05156a77224d7ce7daccc8b08371ff52d17`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74eaec5618ce3fc5f28b2524701f7a53eb42c32cb6238fe2c275eb69e0f928c1`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15` - linux; s390x

```console
$ docker pull rabbitmq@sha256:ef425fb0071d5717b043db9bc3a7eeff855f14c9d957a7620dfddfa85b1760dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60482224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c66ae52a98c1c42e527c5b745ab9af40caf406f5d28b5bf85e4bd369a7819dcf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:08:57 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:08:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:08:57 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:08:57 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 07:08:57 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 07:08:58 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 07:08:58 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 07:09:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:09:32 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 07:09:33 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 07:09:33 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 07:09:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 07:09:34 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 07:09:35 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:09:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:09:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:09:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 07:09:36 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db397373562b512d0d8beba752416bae91a2476a692230c532698e7b00f5aa4`  
		Last Modified: Thu, 15 Feb 2018 07:10:50 GMT  
		Size: 25.6 MB (25621063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d48948f15540fde8427b517fd113aaa831cb737a5f67b7154ac90931f0f7219`  
		Last Modified: Thu, 15 Feb 2018 07:10:48 GMT  
		Size: 7.0 MB (7033697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a708f0fdcb774bf67a1a7571be7d42c3ae534a7cd8e815322be04774d8707c80`  
		Last Modified: Thu, 15 Feb 2018 07:10:45 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30f9a9f7b8723222a4a8f580d9f76f3a1e310eff3e90c8e25bb3a97b41a9667`  
		Last Modified: Thu, 15 Feb 2018 07:10:45 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3d89902094830710356d51dcf6821c51e4db61bd761e274e85d22b2f73ddaf`  
		Last Modified: Thu, 15 Feb 2018 07:10:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b4dee9c685a8b9dbf9c342422fbd94b91a9a550977464282a7e7402c3a4ded`  
		Last Modified: Thu, 15 Feb 2018 07:10:46 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ad456e2a94b1981a15c195f1a8680514d8c74773078f801a437336a9a4680f`  
		Last Modified: Thu, 15 Feb 2018 07:10:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.15-alpine`

```console
$ docker pull rabbitmq@sha256:320b452b52645cf6424516b8221ac714d46ed843e7adb1b624766d1e497d2fb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6.15-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:31c5f3489f8314d23c835a5bdb21b729d0945491651e4898559239c175c79dcd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23685824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ef60cc9108411bc2104c944a38bf33b13d96d1eb56794a583c944a2219b48b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:58:51 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 Jan 2018 04:58:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 04:59:16 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 Jan 2018 04:59:25 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 Jan 2018 04:59:25 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 Jan 2018 04:59:26 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 04:59:26 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 18 Jan 2018 20:16:32 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 18 Jan 2018 20:16:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 18 Jan 2018 20:16:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 18 Jan 2018 20:16:45 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 18 Jan 2018 20:16:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 18 Jan 2018 20:16:46 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 18 Jan 2018 20:16:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 18 Jan 2018 20:16:47 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 18 Jan 2018 20:16:57 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Thu, 18 Jan 2018 20:16:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Jan 2018 20:16:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 18 Jan 2018 20:16:58 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3f16a17c6eddf5a19277e84ea455fcca3d4af6ff674e118b98b8f50f692f65`  
		Last Modified: Wed, 10 Jan 2018 05:05:22 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6bc25d68c201701552480fa9209847ffad13a095354c3b30fc9350bbb9384`  
		Last Modified: Wed, 10 Jan 2018 05:05:21 GMT  
		Size: 8.2 KB (8187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f61696de69b7748ccf91a3fa94614f2c43d92466ff6430d1ebe337804a74cfd`  
		Last Modified: Wed, 10 Jan 2018 05:05:23 GMT  
		Size: 16.6 MB (16561816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f95722bc8398078e1d29d51133e0fb42c692c809aff43a7b0082a1b5490b8d0`  
		Last Modified: Thu, 18 Jan 2018 20:19:03 GMT  
		Size: 5.1 MB (5118332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7629691f8a4d63a5ad1e02617648930a85c6c3e3663f9d82b379a4633b93134`  
		Last Modified: Thu, 18 Jan 2018 20:19:02 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fefcd5a27887344e70d8231067af563d0109ecaeb056741942d021bce8b80af5`  
		Last Modified: Thu, 18 Jan 2018 20:19:02 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c579bb1788ccb2326d02e38f0ee4cc3867c51c17555e4090756f59ac35677b`  
		Last Modified: Thu, 18 Jan 2018 20:19:03 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a3e509337df9344dfb93c542301a6c776252f63e4b82bec5665ba4ee14321c`  
		Last Modified: Thu, 18 Jan 2018 20:19:02 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:1a92d57f56a2c3153d5af46b5632b0d922e67baf68229009b8a530cbaa06fb65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23522946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d64dc9a483e3295a007f090fc472d06ea7c035a1668dbd0efb1abbc9f5dddae4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 22:30:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 27 Feb 2018 22:30:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Feb 2018 22:31:05 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 27 Feb 2018 22:31:06 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 27 Feb 2018 22:31:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 27 Feb 2018 22:31:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Feb 2018 22:31:06 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 27 Feb 2018 22:31:07 GMT
ENV RABBITMQ_VERSION=3.6.15
# Tue, 27 Feb 2018 22:31:07 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Tue, 27 Feb 2018 22:31:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 27 Feb 2018 22:31:15 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 27 Feb 2018 22:31:15 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 27 Feb 2018 22:31:15 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 27 Feb 2018 22:31:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 27 Feb 2018 22:31:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 27 Feb 2018 22:31:17 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 27 Feb 2018 22:31:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 22:31:17 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 27 Feb 2018 22:31:18 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c8ca83cab0d2b47f79fdb27bb6958aba3a519d6f5275830e2b129347dc5d33`  
		Last Modified: Tue, 27 Feb 2018 22:31:43 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a7286587c32ba803f8b8d398219ecde0d8fde92b05884160e2bb70a66315e5`  
		Last Modified: Tue, 27 Feb 2018 22:31:41 GMT  
		Size: 8.4 KB (8375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56955d75e996f08f32f8f1bb5747ade80ffcef3ec628113f716582ff4425d78f`  
		Last Modified: Tue, 27 Feb 2018 22:31:45 GMT  
		Size: 16.4 MB (16424133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d233eb1ce1a4dfec51cecbec1be7b7de7962344a30cd3bd4f52327befac2c02`  
		Last Modified: Tue, 27 Feb 2018 22:31:41 GMT  
		Size: 5.1 MB (5118466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc680eea6655e4dc8a6225d9ba8fdd633be0921212fbd0fdba5b10e029119d06`  
		Last Modified: Tue, 27 Feb 2018 22:31:40 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34993137202ff54fe851601c1f00a1f7d178d5a4243e136663f91285d3e87626`  
		Last Modified: Tue, 27 Feb 2018 22:31:40 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005edaae801b734b1978fdc0a8f06d405f707fa255fa84f77b8aa3a22e420d27`  
		Last Modified: Tue, 27 Feb 2018 22:31:40 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230aadd8f93391db2a2abcca9e83cad76f24d96370e6e9629e2b2ef14c1d976`  
		Last Modified: Tue, 27 Feb 2018 22:31:40 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:9343aae7685db81182e5ce94e902a80b46a6f83e0baa13db731828be844c4088
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23423993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef2ea7ae35d51d7d5d9eea47e1f571aafc8de2bfacd7609337c7c5c2ca39f2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 13:53:09 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 13:53:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 13:53:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 13:53:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 13:53:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 13:53:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 13:53:30 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 14:55:03 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 14:55:04 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 14:55:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 14:55:33 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 14:55:35 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 14:55:36 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 14:55:37 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 14:55:39 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 14:55:39 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 14:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 14:55:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 14:55:41 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05834eac152e30997eb4f1aa4ffe8e952bd759c1a1009bd183dec80dca24cf86`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd88a23486b40755f2e1192cb35d4fdaec20831c18ce83da31df3f8aa2f7b45c`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f9ba1206e6e4bfba21cef7f235482b41868ec966d5ebc44a4c4ac432a5fe03`  
		Last Modified: Thu, 26 Oct 2017 13:55:16 GMT  
		Size: 16.4 MB (16376872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db5d5de4ed6fe4197b8557f161b0716253249f840d2343727ecd300183a6b93`  
		Last Modified: Fri, 19 Jan 2018 14:57:27 GMT  
		Size: 5.1 MB (5118151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e124f874b8d095f757b8787a1b05a472487c67ba5695c7da9eba96ada942c7dd`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096c18ba1daa80d849dd01c2cc4df7a083d55fd052964ea01152cb96e34f624e`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d530832e7a8199a2da69ca9961dc672ccc78c2308c5fe3ace7b163fb237926`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300eac6dcbaff57db804a071fbfcb0e36f567dacfaeee84a154019d33aebbd9f`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:0e1cd4397c51a788e8e90b05c26017f95c4b138d033ad1b858ff092773b5cbb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23889161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8694255d7bf8625b10749081f11afbf7df0083b345b6cad4de7bfcc7160fde4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:44:24 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 10:44:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 10:44:50 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 10:44:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 18:21:51 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 18:21:51 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 19:05:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 19:14:11 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 19:14:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 19:14:12 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 19:14:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 19:14:14 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 19:14:14 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 19:14:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 19:14:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 19:14:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf0f0a132c9bb882206147dffad08dc780f2bc82556cfbda9878a3218f1e7c`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a9186496c6602ccd3efb4bb1780b42adb7028c8fa3cd3c1ff2f10bcfa33a3`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 8.3 KB (8305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19938c3bf2e858347a9c7add1beac38af5a4f83b99d80ddc004aa4ad51e596`  
		Last Modified: Thu, 26 Oct 2017 10:45:30 GMT  
		Size: 16.7 MB (16710838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35143b2ddb33eb8711293e1c64a84ef42d47240e94bd6d66fddd3dae146f2e4f`  
		Last Modified: Fri, 19 Jan 2018 19:34:52 GMT  
		Size: 5.1 MB (5118492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2237488597c27447ba67fe03013ee1b3b6017a31903c3e8ca65760add92e9211`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78926638c1e513852b8f45c7472371b4abbcefd3d146472ac3ee53b8c57979e`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e193b2bf9ff0e2848b885c27d69402b2cc2064e19dfbc25e1ec7437c87a87d`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5162de7559c3203993c873d6e3e96078e1a29f2f931ac09d434cbb9766d156f`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 4.0 KB (4045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:ecfc6ce91bc9cebfbdb856445c9de27544498681f1910df2d84f04d7d2b4722c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23745641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec2f5f6cadeacc52e1b7d5e4a5a203204ff475bcd05e46f182d1899554366474`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 07:12:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 07:12:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 07:12:36 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 07:12:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 07:12:39 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 07:12:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 07:12:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 08:14:19 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 08:14:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 08:14:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 08:14:36 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 08:14:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 08:14:41 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 08:14:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 08:14:47 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 08:14:49 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 08:14:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 08:14:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 08:14:53 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48c95ed960185dbd69324a206614e723f0086f80b46bd3223f233e4f1e278bc`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a8242358db9adbde1a17b0e2b320c02112fcefa90d397ecc028a9729efcf94`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 9.1 KB (9059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6db9581873eb0cadddc4d474e33cb2ec978c0d68e3ea124ce4f07ab2731d79`  
		Last Modified: Thu, 26 Oct 2017 07:14:04 GMT  
		Size: 16.6 MB (16603134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6633ac6126f820a91440cf8aafb7013a293ddf60593b93929b1d15fe2eae19`  
		Last Modified: Fri, 19 Jan 2018 08:16:19 GMT  
		Size: 5.1 MB (5118878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bed3b7084041015342cdb2185b56bcf14f374a7271315b08317445b0d2642e0`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebaed6acadb6b40d1abb66bc8b6d6849bec75212b22dbfda7f44cb0f130ce17`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9ac50a33b1ee7d4252ce97df356b1746c8c7aaf77be8eadeb5149c4b74a3e9`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973b41abcb6e66a865b14153ded2901197bc4b9dc3fce52d72cee64f0e0ab680`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:01a88b80783745316244b35eee60e6731ff8f9b1d92216885c4d4a5b53ea9317
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23925177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1181584e9e7cb62492ed1dea3b14e68ee5ecf1d691b6e65ee16ed00ae86e30a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:06:39 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 17:06:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 17:06:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 17:06:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 18:07:39 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 18:07:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 18:08:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 18:08:01 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 18:08:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 18:08:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 18:08:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 18:08:02 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 18:08:03 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 18:08:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 18:08:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 18:08:03 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299a1fbc19bbea84dbf4d0b6e2e71fb847299b017209b1f9783faea14214c995`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb76f2dd4162cae82233bc93ba436b63ca37e536d53c85a9f1d7343203e3c383`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 8.6 KB (8604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac09bb55706d627cf6348c9d0bd891c2fe9a4155aee5d95264b92781371021db`  
		Last Modified: Thu, 26 Oct 2017 17:07:33 GMT  
		Size: 16.7 MB (16726549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851eb243b499bfb2a730cb151c2ffb5b72e35441dbfdc6f3157062396d2697e0`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 5.1 MB (5118642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3725b8ad7a81eb0ee9c21a0f61e6ac046db1d9b445dbd68e3eae95cf841a50c4`  
		Last Modified: Fri, 19 Jan 2018 18:08:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4199e2702c7c24401c5850d1ac84d7a17b2d27fae4731ed1e0484b27654c2f55`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43287320a1489f46fd95951d37bb9163c22b2a14e03be516faffb124d8e691d`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ab42a07c45eb8be9fb6a62842750ac033fa03ba66420af1abc944e48a1f609`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.15-management`

```console
$ docker pull rabbitmq@sha256:282b1d54ceaf0b4f417fce3294fe0d90d2f83799f0b130f8f49291454d48c739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6.15-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:346065107ba619a65a358909d87a2191d96fe717db995490cb1362bbe53ea702
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70597701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70681751e6ac8cdb9dd375236d2d1dd8c6a7f2ddc4343f82d28225e330ce7170`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 18:56:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:56:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 16 Feb 2018 18:56:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 18:57:02 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Feb 2018 18:59:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:59:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 16 Feb 2018 18:59:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 18:59:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 16 Feb 2018 18:59:55 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 16 Feb 2018 18:59:55 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 16 Feb 2018 18:59:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Fri, 16 Feb 2018 19:00:44 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:00:45 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 16 Feb 2018 19:00:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 16 Feb 2018 19:00:46 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 16 Feb 2018 19:00:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 16 Feb 2018 19:00:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 16 Feb 2018 19:00:48 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 16 Feb 2018 19:00:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 19:00:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 19:00:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 16 Feb 2018 19:00:51 GMT
CMD ["rabbitmq-server"]
# Fri, 16 Feb 2018 19:01:09 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 16 Feb 2018 19:01:17 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 16 Feb 2018 19:01:17 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aa5c2fc28c2889bb371a7c8c86d79363c2210331abc9ab368eec5664f9c7f1`  
		Last Modified: Fri, 16 Feb 2018 19:01:56 GMT  
		Size: 4.5 MB (4498430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6866d83ad777c7832f9a12a4c138b04ae865fc71238531025c3a1d9cdab3e6`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424ad5823c0c06246ed365a566ac25a786727eb4de90d40450c75c9f9589d05c`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 952.0 KB (951962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd604e77a5eed330e28d0007c7f4fa150114cd467e33b1221874ab19f0cf916`  
		Last Modified: Fri, 16 Feb 2018 19:05:13 GMT  
		Size: 27.7 MB (27704471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0761b252508867deed98a8b3543258de07956308483cb4578753223ec430dcd2`  
		Last Modified: Fri, 16 Feb 2018 19:05:11 GMT  
		Size: 7.3 MB (7300966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc57f8eaa146b5f9fe6682902cca47110a76ee854072899205a438365b8c1bc`  
		Last Modified: Fri, 16 Feb 2018 19:05:09 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9f264ed573024125c182985a39e319bb5d4143d5237fd76ca89cc2485531eb`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf1fe3f4991e5b444e20e059bfcde5f520fd8f3059c34444133df2258fabfd9`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6ba1e4ff9e2e0ef4ab6c069a31ee168efa2e1cdbf895c61d9837aaa35500ee`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f549ed6e61b74880cc0ec30ffbe2006f3a387e10c0b0e6e1ab006d12536cfa0c`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835e482fadcf2aa30a2cd6ff1fba76123c03e07ff672a5e4d1a8f2f3e258bd93`  
		Last Modified: Fri, 16 Feb 2018 19:06:00 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc125f8d8b9418cb36bd9ca649ee722b75dbe20e3fbedf97a26ee85ecc941d3`  
		Last Modified: Fri, 16 Feb 2018 19:06:00 GMT  
		Size: 7.6 MB (7634147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:5b63aad1f4ec39b388d6aebedf2cc1cc875e960ea221b4703107bf8fe4024733
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66032148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c28d00111e3b1cbd4fc49589407ce9a32c68ef383ac59ccf7393d763ec6ca73`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:06:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:06:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 22:06:54 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 22:07:37 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:10:12 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:10:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 22:10:13 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:10:13 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 22:10:14 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 22:10:14 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 22:10:14 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 22:11:29 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:11:30 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 22:11:30 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 22:11:31 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 22:11:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 22:11:33 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 22:11:33 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 22:11:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 22:11:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:11:35 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 22:11:36 GMT
CMD ["rabbitmq-server"]
# Thu, 15 Feb 2018 22:11:49 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 15 Feb 2018 22:12:04 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 15 Feb 2018 22:12:04 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a212dd3e52653adb4c0c3677397e74fcac10b74d38b2df38af460830e04b1ac`  
		Last Modified: Thu, 15 Feb 2018 22:12:23 GMT  
		Size: 4.2 MB (4231540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae935791a245772b6342dece630412eff8a97d12aaf579e401ccc09215205a`  
		Last Modified: Thu, 15 Feb 2018 22:12:20 GMT  
		Size: 4.1 KB (4088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458120fe43d4aff849ffaeb2fa6d4cc8d2c3dc5c72caeb744d44ffa74f07033d`  
		Last Modified: Thu, 15 Feb 2018 22:12:22 GMT  
		Size: 942.5 KB (942460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00172ccee8d9aa2c96f692d2de3d133f98c15ddc3e17ceb560c4df449662bee5`  
		Last Modified: Thu, 15 Feb 2018 22:13:50 GMT  
		Size: 25.2 MB (25170555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b857bb81978b4fa92a2038b4207528808e461973d3b7253494b45b515900d4f7`  
		Last Modified: Thu, 15 Feb 2018 22:13:46 GMT  
		Size: 7.0 MB (7014770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c642e6412f84eca7120e60eb96a003f9c6f0d7cf32ef676b752a26b77ecbdd`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697379b51293444ff3cca9f613b3134282b019c9062f674d7b02cf8b4b10dc68`  
		Last Modified: Thu, 15 Feb 2018 22:13:44 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2174c62683bfc585fa0b1cf5967d245a6e4d9f1577beef5b315574a14cb1104f`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609310b9ab5228994da4f5c664d77c58230fd45e200ed7dc06bf9419fae31e97`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9c9b044e2f9d906b21eb38eaae4b8dd9d229d20dd6e1fadc56f63533ad22e5`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40d8009ca2da045a1c0b736ad4b03010b83f2b3a3f89c80c2ff5273908f56a4`  
		Last Modified: Thu, 15 Feb 2018 22:14:09 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb39a0aa497acb51173c4cf39cd4fb56a05e9ee9ddb9b0c8bfbda5b8908dd96`  
		Last Modified: Thu, 15 Feb 2018 22:14:10 GMT  
		Size: 7.5 MB (7486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:09c5d8abc11f9e9981948ceb4995dbc86c12d9afe0d509e85e35868dc3028d51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62997403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f408876c6e5b1bab846858f701d21cd267767f2440b877ffa599b299cdaeb10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:11:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 16:11:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:12:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 16:14:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:14:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 16:14:51 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 16:14:51 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 16:14:52 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 16:14:52 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 16:14:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 16:15:12 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:15:12 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 16:15:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 16:15:13 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 16:15:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 16:15:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 16:15:22 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:15:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 16:15:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:15:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 16:15:30 GMT
CMD ["rabbitmq-server"]
# Thu, 15 Feb 2018 16:15:51 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 15 Feb 2018 16:16:09 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 15 Feb 2018 16:16:09 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b013f1082d9f6b4590d4a988c911f20b6ecd1025e255fc4a69303f3dfd32317d`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 3.9 MB (3868601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e6890c5bfb431a26fb646081f14de6ade476a28158583b3e708a8bc3f40ff3`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3449fb95440de1ead82a804d144bcd225029ac93ea319b6471e1e97a5bf4ecc2`  
		Last Modified: Thu, 15 Feb 2018 16:16:29 GMT  
		Size: 926.1 KB (926131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3802486230930c1aad09b03fef3e0196cc5559b4dbc45a4eb5d0b6400f99831a`  
		Last Modified: Thu, 15 Feb 2018 16:18:14 GMT  
		Size: 24.8 MB (24785513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13293c44afc46f6561504f9efb12ee5b44dd4de024633c052509e4e9338b4b72`  
		Last Modified: Thu, 15 Feb 2018 16:18:11 GMT  
		Size: 6.9 MB (6924139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dd2bf7de1462fd9012145805f6e95355842d956856b62c452572559e7f583a`  
		Last Modified: Thu, 15 Feb 2018 16:18:09 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a945917e21e2aec1b36b75e05030e9ac3d6564ca95f95cce5c05dbfc24bf5f53`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dce087fd94257f988025e5218370f9115445484884537888bcbc55ebf5ab646`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bb52e3bf20cba4b65926e05dac9dc5841d288de316647f6f31814fac3bbfe8`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482e8e7153a01e85259869271bc1789345775e54c136a855095d0aad716f62ce`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2336334132b6d95688d228cc206b7be9ccf968dc18bfb753d3f566d52a492d2`  
		Last Modified: Thu, 15 Feb 2018 16:18:37 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda8c3e35b2ae2bd873fb9abc2d0d48269b45650178e5fadc8c8ac03ee1f8969`  
		Last Modified: Thu, 15 Feb 2018 16:18:39 GMT  
		Size: 7.2 MB (7195966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:6e9264a32347d28afa02e832e922fc2fa40540e1cdd8fb2d1bcce0bbc0babd55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64881311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b727b67ef4ef5c0df520d714a84eaef5e656325dc4a1ce3a74707c5e682d62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 23:53:57 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 23:53:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:54:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Feb 2018 00:00:19 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:00:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 16 Feb 2018 00:00:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 00:00:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 16 Feb 2018 00:00:22 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 16 Feb 2018 00:00:23 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 16 Feb 2018 00:00:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Fri, 16 Feb 2018 00:01:11 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:01:12 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 16 Feb 2018 00:01:14 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 16 Feb 2018 00:01:14 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 16 Feb 2018 00:01:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 16 Feb 2018 00:01:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 16 Feb 2018 00:01:20 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 16 Feb 2018 00:01:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 00:01:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 00:01:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 16 Feb 2018 00:01:24 GMT
CMD ["rabbitmq-server"]
# Fri, 16 Feb 2018 00:01:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 16 Feb 2018 00:02:11 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 16 Feb 2018 00:02:22 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecc7280a57c4f164dcf6ac46e8f359b64b73ac4eebda29730420cbc351f6de`  
		Last Modified: Fri, 16 Feb 2018 00:03:00 GMT  
		Size: 4.1 MB (4073277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de655884dd724f8f2f9dc4a57ce020cf3c7ea27c33757c572eb63feed718d68d`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14dce82e5cc18457d199dc012088a60f363697db4983a790036468ee985e073a`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 919.4 KB (919384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93c6d39bc153774ce49d3063ef654274d7bccb9d5d7d00ddb7c6ee79c936e14`  
		Last Modified: Fri, 16 Feb 2018 00:05:05 GMT  
		Size: 25.0 MB (25043337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e95b14b74a7fd954359d9e0e53ab4adb87bce7e41e3ee4c7cb5bd22d6eac86`  
		Last Modified: Fri, 16 Feb 2018 00:04:58 GMT  
		Size: 7.0 MB (6999254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5be5362f65817b4a7021a8c0f7182058c35c530f158e24bd8324ab6703b67d1`  
		Last Modified: Fri, 16 Feb 2018 00:04:54 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81199c2fc52fc0b4f94817c581dc61b05b365b8fec0d5bdda2ad9b64d1acd034`  
		Last Modified: Fri, 16 Feb 2018 00:04:54 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4216ccfbab5ea7528a08f10564454df9adc1ef5f6e5bb06b124b743cb8d6e417`  
		Last Modified: Fri, 16 Feb 2018 00:04:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3a851a7a892fd896e8ba747747fd1b6795e261ab1ca347cf6db1c52a00a9f6`  
		Last Modified: Fri, 16 Feb 2018 00:04:54 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0164197409dcc8ff878fb957df9eaeb391dc7a6a6c51d5c7acee5cdef6089774`  
		Last Modified: Fri, 16 Feb 2018 00:04:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022ab022f20f7b875eff4bb31312b5255ad442f490f6825b636ac13dcd8d5613`  
		Last Modified: Fri, 16 Feb 2018 00:05:55 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79309b49440c13300530cd3da3f4bceb018e16c9e45354542a80ba2953a63c17`  
		Last Modified: Fri, 16 Feb 2018 00:06:01 GMT  
		Size: 7.5 MB (7487670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:805adfa0b78c395ea16a3f3de138038ea3805aa5b871382f931be3dad7c62d6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71742849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c664c2659248e4e4dca40bbc75244ce4a0d6407fdee550fddc57b59db9b131`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 06:02:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:02:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 21 Feb 2018 06:02:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 06:18:09 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 06:31:52 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:31:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 21 Feb 2018 06:31:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 06:31:53 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 21 Feb 2018 06:31:53 GMT
ENV RABBITMQ_VERSION=3.6.15
# Wed, 21 Feb 2018 06:31:53 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Wed, 21 Feb 2018 06:31:54 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Wed, 21 Feb 2018 06:32:16 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:32:16 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 21 Feb 2018 06:32:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 21 Feb 2018 06:32:17 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 21 Feb 2018 06:32:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 21 Feb 2018 06:32:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 21 Feb 2018 06:32:19 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 21 Feb 2018 06:32:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Feb 2018 06:32:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Feb 2018 06:32:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 21 Feb 2018 06:32:21 GMT
CMD ["rabbitmq-server"]
# Wed, 21 Feb 2018 06:37:48 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 21 Feb 2018 06:38:01 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 21 Feb 2018 06:38:01 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fde2b9bfdd614411d1d5380916758b66c6257b263b10477d6a2795b6546e380`  
		Last Modified: Wed, 21 Feb 2018 06:49:22 GMT  
		Size: 4.8 MB (4803819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e09ac772b52c4b12b313c697bc00be2f982158ebcc742cb1479ee565ec7b28`  
		Last Modified: Wed, 21 Feb 2018 06:49:19 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bb3531a8f1827457fdde45c0eb60d638dbc6dfde7062a7760a1e1d1b045f13`  
		Last Modified: Wed, 21 Feb 2018 06:49:18 GMT  
		Size: 931.6 KB (931565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f042deac44307315cdb23db923db31f971942c5b30280df3a76ab39b113393b1`  
		Last Modified: Wed, 21 Feb 2018 07:21:03 GMT  
		Size: 27.8 MB (27818976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14eb299d73afa5c01480b5f0ac30f45d2bfea7eebc2f9dddd72c1badb126f12`  
		Last Modified: Wed, 21 Feb 2018 07:20:57 GMT  
		Size: 7.3 MB (7314071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66d1e8dddf5e714cacf8c2121cda30c5a3eb1846bc6b43665b8d499effa469e`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089c810f35edb22f101c717e93f4c3cd50f273afd50381919d4fbc67d3ba5754`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abe4163724ce10e29accf324f985165dfe584474b7cf97f392f1f4b80d8c956`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b81f729c46e361bc49c634a7ee13e4e9f7415199419bd0578f0f0fd849fcfc`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472f45539f308b676ec40095a5461d27061d0a5311873c73e08c3ffb27be3abf`  
		Last Modified: Wed, 21 Feb 2018 07:20:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a7fc65b94d1f121294efb39baaf53182fb609fdc7ae7bbfffe2c633299cfdc`  
		Last Modified: Wed, 21 Feb 2018 07:24:31 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979e7284459b3a6c0fa87a21a6f8a89c94188fb884e77d9b4331660cfcc5f42b`  
		Last Modified: Wed, 21 Feb 2018 07:24:35 GMT  
		Size: 7.7 MB (7728444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:38147e7523205c0c38fed36513ba2812ce2153ff315077dfc0f60110e36120fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68336081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e875a4fe7d57d3ecd73f33cdc63d5466fc6c212cd6e79abb4195067362dbf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:01:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:01:20 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:01:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:02:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:11:42 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:11:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:11:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:11:53 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 07:11:55 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 07:11:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 07:11:58 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 07:13:09 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:13:10 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 07:13:14 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 07:13:16 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 07:13:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 07:13:23 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 07:13:24 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:13:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:13:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 07:13:34 GMT
CMD ["rabbitmq-server"]
# Thu, 15 Feb 2018 07:13:59 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 15 Feb 2018 07:14:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 15 Feb 2018 07:14:46 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7eb3ba88b8fb5c65c82d925e3dcbca9f48c46c56825a694fa78f92768e98f36`  
		Last Modified: Thu, 15 Feb 2018 07:15:17 GMT  
		Size: 4.4 MB (4360747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba68cb1b2e1a68352c6ccc11da8cf6084991476e7259a12748d767af1a187a08`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 4.1 KB (4107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534c75edb97f6c0ac366a7b7f3c3f0c2545a80abc9d4fe398852a7c0fb647cae`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 920.9 KB (920856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c03ba6c1ca04862675ba38fed7d4d7dcabe4c8412e2c731f633ed92ee19697f`  
		Last Modified: Thu, 15 Feb 2018 07:16:26 GMT  
		Size: 25.5 MB (25492829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da41886406c67df21ee7c29ddd6458dd71b1e22b498731075fc9c509eab879e8`  
		Last Modified: Thu, 15 Feb 2018 07:16:22 GMT  
		Size: 7.0 MB (6959469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e3a385fac6d6e6fbc04ae069838129d05af6a0bd0e27aeeb76f59dc16431b7`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63357d75f10c1e776b7d1e406666fcb94857c9e0c3a5970942cf35e3dcb6de70`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0a246d655d014b661a640e94c1148f859fa13f4223945d06d5b137bef622fe`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003a9ca510abd5e1120c3e03231dd05156a77224d7ce7daccc8b08371ff52d17`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74eaec5618ce3fc5f28b2524701f7a53eb42c32cb6238fe2c275eb69e0f928c1`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a08aea6a7653b8956b543a5aecc102610c3e9bfd7942ccc96626b6376b3a160`  
		Last Modified: Thu, 15 Feb 2018 07:16:43 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddca2333c0290c0238eadb50b070d59db02325bb8c015ec41ae4f09c5bf55577`  
		Last Modified: Thu, 15 Feb 2018 07:16:45 GMT  
		Size: 7.8 MB (7838084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:9db5397f71376452fb1098dae851fe1e2feee1b3eacc2593c4c5647cc0ff8a34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68088950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf10c8ea80a44668f9472757227eb21aae89f4cc6518cd6b28bf2dfed9cfaf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:08:57 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:08:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:08:57 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:08:57 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 07:08:57 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 07:08:58 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 07:08:58 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 07:09:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:09:32 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 07:09:33 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 07:09:33 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 07:09:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 07:09:34 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 07:09:35 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:09:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:09:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:09:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 07:09:36 GMT
CMD ["rabbitmq-server"]
# Thu, 15 Feb 2018 07:09:43 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 15 Feb 2018 07:09:51 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 15 Feb 2018 07:09:51 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db397373562b512d0d8beba752416bae91a2476a692230c532698e7b00f5aa4`  
		Last Modified: Thu, 15 Feb 2018 07:10:50 GMT  
		Size: 25.6 MB (25621063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d48948f15540fde8427b517fd113aaa831cb737a5f67b7154ac90931f0f7219`  
		Last Modified: Thu, 15 Feb 2018 07:10:48 GMT  
		Size: 7.0 MB (7033697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a708f0fdcb774bf67a1a7571be7d42c3ae534a7cd8e815322be04774d8707c80`  
		Last Modified: Thu, 15 Feb 2018 07:10:45 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30f9a9f7b8723222a4a8f580d9f76f3a1e310eff3e90c8e25bb3a97b41a9667`  
		Last Modified: Thu, 15 Feb 2018 07:10:45 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3d89902094830710356d51dcf6821c51e4db61bd761e274e85d22b2f73ddaf`  
		Last Modified: Thu, 15 Feb 2018 07:10:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b4dee9c685a8b9dbf9c342422fbd94b91a9a550977464282a7e7402c3a4ded`  
		Last Modified: Thu, 15 Feb 2018 07:10:46 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ad456e2a94b1981a15c195f1a8680514d8c74773078f801a437336a9a4680f`  
		Last Modified: Thu, 15 Feb 2018 07:10:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c547806bf79ba781bc790c806c5f9f55a63d49898e831bc4f500c041ffa4c2d`  
		Last Modified: Thu, 15 Feb 2018 07:11:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2501051d89e31b7d90bca67140b48468a3d6f5d637ae853278daf2acd52014a6`  
		Last Modified: Thu, 15 Feb 2018 07:11:03 GMT  
		Size: 7.6 MB (7606532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.15-management-alpine`

```console
$ docker pull rabbitmq@sha256:8e3c5cad9288f99f5f53225286a727a1aad74dc45c4665c19fe4eb399ba20c90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6.15-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:5b6081056f239e9b750397ebbcd1c52f2a68a749e4339baf5aaaa944cb930ed7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34656666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4436e60c47a5d5ec9103d0442321138d48fd20243951588e0dc3b4c069a53c57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:58:51 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 Jan 2018 04:58:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 04:59:16 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 Jan 2018 04:59:25 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 Jan 2018 04:59:25 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 Jan 2018 04:59:26 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 04:59:26 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 18 Jan 2018 20:16:32 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 18 Jan 2018 20:16:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 18 Jan 2018 20:16:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 18 Jan 2018 20:16:45 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 18 Jan 2018 20:16:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 18 Jan 2018 20:16:46 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 18 Jan 2018 20:16:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 18 Jan 2018 20:16:47 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 18 Jan 2018 20:16:57 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Thu, 18 Jan 2018 20:16:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Jan 2018 20:16:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 18 Jan 2018 20:16:58 GMT
CMD ["rabbitmq-server"]
# Thu, 18 Jan 2018 20:17:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 18 Jan 2018 20:17:20 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 18 Jan 2018 20:17:20 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3f16a17c6eddf5a19277e84ea455fcca3d4af6ff674e118b98b8f50f692f65`  
		Last Modified: Wed, 10 Jan 2018 05:05:22 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6bc25d68c201701552480fa9209847ffad13a095354c3b30fc9350bbb9384`  
		Last Modified: Wed, 10 Jan 2018 05:05:21 GMT  
		Size: 8.2 KB (8187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f61696de69b7748ccf91a3fa94614f2c43d92466ff6430d1ebe337804a74cfd`  
		Last Modified: Wed, 10 Jan 2018 05:05:23 GMT  
		Size: 16.6 MB (16561816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f95722bc8398078e1d29d51133e0fb42c692c809aff43a7b0082a1b5490b8d0`  
		Last Modified: Thu, 18 Jan 2018 20:19:03 GMT  
		Size: 5.1 MB (5118332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7629691f8a4d63a5ad1e02617648930a85c6c3e3663f9d82b379a4633b93134`  
		Last Modified: Thu, 18 Jan 2018 20:19:02 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fefcd5a27887344e70d8231067af563d0109ecaeb056741942d021bce8b80af5`  
		Last Modified: Thu, 18 Jan 2018 20:19:02 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c579bb1788ccb2326d02e38f0ee4cc3867c51c17555e4090756f59ac35677b`  
		Last Modified: Thu, 18 Jan 2018 20:19:03 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a3e509337df9344dfb93c542301a6c776252f63e4b82bec5665ba4ee14321c`  
		Last Modified: Thu, 18 Jan 2018 20:19:02 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51721ecdb25854da131129eee14c27539e90e286fe8e5697f374a6f0d52bdb82`  
		Last Modified: Thu, 18 Jan 2018 20:19:41 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be263e6d0356b10159e47b98c0eb596d9538285aa95f038eeb5aa818332528ea`  
		Last Modified: Thu, 18 Jan 2018 20:19:43 GMT  
		Size: 11.0 MB (10970652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:76a9d1c376f44c692d22541cba690360e8b0dd7c87273bdeaff0c74f3edacae8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34434851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:203cdf3865952d6e8f00a656f665dba3c0bd5708982791b571141ab994be87df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Feb 2018 22:33:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 26 Feb 2018 22:33:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 26 Feb 2018 22:34:26 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 26 Feb 2018 22:34:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 26 Feb 2018 22:34:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 26 Feb 2018 22:34:30 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Feb 2018 22:34:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 26 Feb 2018 22:34:31 GMT
ENV RABBITMQ_VERSION=3.6.15
# Mon, 26 Feb 2018 22:34:32 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Mon, 26 Feb 2018 22:34:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 26 Feb 2018 22:34:55 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 26 Feb 2018 22:34:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 26 Feb 2018 22:35:00 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 26 Feb 2018 22:35:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 26 Feb 2018 22:35:07 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 26 Feb 2018 22:35:08 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Mon, 26 Feb 2018 22:35:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 22:35:10 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 26 Feb 2018 22:35:11 GMT
CMD ["rabbitmq-server"]
# Mon, 26 Feb 2018 22:35:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 26 Feb 2018 22:35:55 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 26 Feb 2018 22:35:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bc70f99f271528243e41aa6cebddad6ab11720256ecb9c28bb8b3d9df24f89`  
		Last Modified: Mon, 26 Feb 2018 22:39:20 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc9b43291feec8c70ce36caad3e04fb6e206a7f2408f3b5552bfbdba6e6d0e7`  
		Last Modified: Mon, 26 Feb 2018 22:39:19 GMT  
		Size: 8.4 KB (8376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21597b0458305e03ee8cb9dd1229cf94af83da707e412b6f0fe25d6d3bfa61bc`  
		Last Modified: Mon, 26 Feb 2018 22:39:36 GMT  
		Size: 16.4 MB (16424160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c83d04f2c4381e649bfb1d5ed19dd6fb67aea91460e139804cbbb8eaf9567`  
		Last Modified: Mon, 26 Feb 2018 22:39:19 GMT  
		Size: 5.1 MB (5118468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eaac73bb3387bfcf228d441fdea8bc191c03860be018ee153d3faff0ffa2c78`  
		Last Modified: Mon, 26 Feb 2018 22:39:16 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56b14d9c47f39faa681053334d77bd3ff0402ca63a81754e491c7d941e65204`  
		Last Modified: Mon, 26 Feb 2018 22:39:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a56a5787569ac6b3424265c054ba3f7940df3aab71ea24cd02cc4677369d32`  
		Last Modified: Mon, 26 Feb 2018 22:39:16 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0f3c1febb79ba25e726eecec8c24981fdbc699c1e39dca643c1231be048586`  
		Last Modified: Mon, 26 Feb 2018 22:39:16 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736df9d377bbc37507c0f6d5f2466602be1a849b68efcb40b1e4a0c2c509856b`  
		Last Modified: Mon, 26 Feb 2018 22:39:56 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c58481fcf29c0d1162484c9f6b9b7e062d39a33a80d9df1e153a4b556b5548`  
		Last Modified: Mon, 26 Feb 2018 22:40:13 GMT  
		Size: 10.9 MB (10911690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:4528ac84106ae3339d7f091ad9fb80602d740def5b3b945f8f344cbe55bf1e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34272982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfca4eadbea7a516fa805aa81b2bd329ca341c1a900493aeba87c51caa2b97c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 13:53:09 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 13:53:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 13:53:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 13:53:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 13:53:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 13:53:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 13:53:30 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 14:55:03 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 14:55:04 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 14:55:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 14:55:33 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 14:55:35 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 14:55:36 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 14:55:37 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 14:55:39 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 14:55:39 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 14:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 14:55:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 14:55:41 GMT
CMD ["rabbitmq-server"]
# Fri, 19 Jan 2018 14:55:58 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 19 Jan 2018 14:56:08 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 19 Jan 2018 14:56:08 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05834eac152e30997eb4f1aa4ffe8e952bd759c1a1009bd183dec80dca24cf86`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd88a23486b40755f2e1192cb35d4fdaec20831c18ce83da31df3f8aa2f7b45c`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f9ba1206e6e4bfba21cef7f235482b41868ec966d5ebc44a4c4ac432a5fe03`  
		Last Modified: Thu, 26 Oct 2017 13:55:16 GMT  
		Size: 16.4 MB (16376872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db5d5de4ed6fe4197b8557f161b0716253249f840d2343727ecd300183a6b93`  
		Last Modified: Fri, 19 Jan 2018 14:57:27 GMT  
		Size: 5.1 MB (5118151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e124f874b8d095f757b8787a1b05a472487c67ba5695c7da9eba96ada942c7dd`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096c18ba1daa80d849dd01c2cc4df7a083d55fd052964ea01152cb96e34f624e`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d530832e7a8199a2da69ca9961dc672ccc78c2308c5fe3ace7b163fb237926`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300eac6dcbaff57db804a071fbfcb0e36f567dacfaeee84a154019d33aebbd9f`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0d758217bd4c331e535244f35487a35cb97a91f1c29bfa15094745f4929e0c`  
		Last Modified: Fri, 19 Jan 2018 14:57:50 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd617ca490c5116b03195a9747b3b6d2c359e74d52e031183410d820abc9baf2`  
		Last Modified: Fri, 19 Jan 2018 14:57:54 GMT  
		Size: 10.8 MB (10848797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:7bcce91b5d2cd328c7a57760132ab30bfea252ab7f62d42475d6c4b3e081b1c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34980509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96080113d33fb7b185b654d0d09a272110d9454d5888a9ca69cb93c3316ecafa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:44:24 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 10:44:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 10:44:50 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 10:44:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 18:21:51 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 18:21:51 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 19:05:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 19:14:11 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 19:14:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 19:14:12 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 19:14:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 19:14:14 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 19:14:14 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 19:14:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 19:14:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 19:14:15 GMT
CMD ["rabbitmq-server"]
# Fri, 19 Jan 2018 19:22:54 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 19 Jan 2018 19:23:14 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 19 Jan 2018 19:24:43 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf0f0a132c9bb882206147dffad08dc780f2bc82556cfbda9878a3218f1e7c`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a9186496c6602ccd3efb4bb1780b42adb7028c8fa3cd3c1ff2f10bcfa33a3`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 8.3 KB (8305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19938c3bf2e858347a9c7add1beac38af5a4f83b99d80ddc004aa4ad51e596`  
		Last Modified: Thu, 26 Oct 2017 10:45:30 GMT  
		Size: 16.7 MB (16710838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35143b2ddb33eb8711293e1c64a84ef42d47240e94bd6d66fddd3dae146f2e4f`  
		Last Modified: Fri, 19 Jan 2018 19:34:52 GMT  
		Size: 5.1 MB (5118492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2237488597c27447ba67fe03013ee1b3b6017a31903c3e8ca65760add92e9211`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78926638c1e513852b8f45c7472371b4abbcefd3d146472ac3ee53b8c57979e`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e193b2bf9ff0e2848b885c27d69402b2cc2064e19dfbc25e1ec7437c87a87d`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5162de7559c3203993c873d6e3e96078e1a29f2f931ac09d434cbb9766d156f`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 4.0 KB (4045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d07c5d540c6b81729668bd9c10d964b60480938f52978c87f42b2755ab64c222`  
		Last Modified: Fri, 19 Jan 2018 19:35:36 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0694d90844c5adb4344da5d5fdd6a624398bca03a64c5ddd99356924e9e0c0`  
		Last Modified: Fri, 19 Jan 2018 19:35:42 GMT  
		Size: 11.1 MB (11091156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:f0593918a9cbcb7013c9d036112bb5f918ddfe91dc47928712379ec9e293aeff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34757604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c51f9b807da4119304eb384703d8bfd0e6c07439db08875b1818e065c1e0fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 07:12:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 07:12:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 07:12:36 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 07:12:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 07:12:39 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 07:12:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 07:12:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 08:14:19 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 08:14:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 08:14:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 08:14:36 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 08:14:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 08:14:41 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 08:14:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 08:14:47 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 08:14:49 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 08:14:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 08:14:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 08:14:53 GMT
CMD ["rabbitmq-server"]
# Fri, 19 Jan 2018 08:15:05 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 19 Jan 2018 08:15:23 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 19 Jan 2018 08:15:24 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48c95ed960185dbd69324a206614e723f0086f80b46bd3223f233e4f1e278bc`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a8242358db9adbde1a17b0e2b320c02112fcefa90d397ecc028a9729efcf94`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 9.1 KB (9059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6db9581873eb0cadddc4d474e33cb2ec978c0d68e3ea124ce4f07ab2731d79`  
		Last Modified: Thu, 26 Oct 2017 07:14:04 GMT  
		Size: 16.6 MB (16603134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6633ac6126f820a91440cf8aafb7013a293ddf60593b93929b1d15fe2eae19`  
		Last Modified: Fri, 19 Jan 2018 08:16:19 GMT  
		Size: 5.1 MB (5118878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bed3b7084041015342cdb2185b56bcf14f374a7271315b08317445b0d2642e0`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebaed6acadb6b40d1abb66bc8b6d6849bec75212b22dbfda7f44cb0f130ce17`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9ac50a33b1ee7d4252ce97df356b1746c8c7aaf77be8eadeb5149c4b74a3e9`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973b41abcb6e66a865b14153ded2901197bc4b9dc3fce52d72cee64f0e0ab680`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e648215830d2be05b84a248d873276c4920a3f1a53c8cad1b2d55c174fb5a82b`  
		Last Modified: Fri, 19 Jan 2018 08:16:32 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1b8820f64fdfdab980e3681c6d5262ada8c22d7c465f5ce24380d7995e22ea`  
		Last Modified: Fri, 19 Jan 2018 08:16:35 GMT  
		Size: 11.0 MB (11011771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.15-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:a8630fade74ffc0e183f0c008c12f76ca5fc11f44cd133a74b37a7b5ec7fc7b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35045364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb6f80f79de69ce72e65244439c8e357784921dce7eee8cf98dc1711fe742a2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:06:39 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 17:06:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 17:06:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 17:06:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 18:07:39 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 18:07:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 18:08:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 18:08:01 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 18:08:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 18:08:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 18:08:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 18:08:02 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 18:08:03 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 18:08:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 18:08:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 18:08:03 GMT
CMD ["rabbitmq-server"]
# Fri, 19 Jan 2018 18:08:10 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 19 Jan 2018 18:08:14 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 19 Jan 2018 18:08:14 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299a1fbc19bbea84dbf4d0b6e2e71fb847299b017209b1f9783faea14214c995`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb76f2dd4162cae82233bc93ba436b63ca37e536d53c85a9f1d7343203e3c383`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 8.6 KB (8604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac09bb55706d627cf6348c9d0bd891c2fe9a4155aee5d95264b92781371021db`  
		Last Modified: Thu, 26 Oct 2017 17:07:33 GMT  
		Size: 16.7 MB (16726549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851eb243b499bfb2a730cb151c2ffb5b72e35441dbfdc6f3157062396d2697e0`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 5.1 MB (5118642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3725b8ad7a81eb0ee9c21a0f61e6ac046db1d9b445dbd68e3eae95cf841a50c4`  
		Last Modified: Fri, 19 Jan 2018 18:08:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4199e2702c7c24401c5850d1ac84d7a17b2d27fae4731ed1e0484b27654c2f55`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43287320a1489f46fd95951d37bb9163c22b2a14e03be516faffb124d8e691d`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ab42a07c45eb8be9fb6a62842750ac033fa03ba66420af1abc944e48a1f609`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872cc0eb1ef6c22cb7e3448fc5b25c95b2df13dffe94cb65175d3bcbd89afe2c`  
		Last Modified: Fri, 19 Jan 2018 18:08:53 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8047f834a26563aa7531e328e5f80b76208896fc3cfb47318a46cbcd74199e47`  
		Last Modified: Fri, 19 Jan 2018 18:08:56 GMT  
		Size: 11.1 MB (11119996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:320b452b52645cf6424516b8221ac714d46ed843e7adb1b624766d1e497d2fb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:31c5f3489f8314d23c835a5bdb21b729d0945491651e4898559239c175c79dcd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23685824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ef60cc9108411bc2104c944a38bf33b13d96d1eb56794a583c944a2219b48b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:58:51 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 Jan 2018 04:58:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 04:59:16 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 Jan 2018 04:59:25 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 Jan 2018 04:59:25 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 Jan 2018 04:59:26 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 04:59:26 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 18 Jan 2018 20:16:32 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 18 Jan 2018 20:16:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 18 Jan 2018 20:16:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 18 Jan 2018 20:16:45 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 18 Jan 2018 20:16:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 18 Jan 2018 20:16:46 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 18 Jan 2018 20:16:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 18 Jan 2018 20:16:47 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 18 Jan 2018 20:16:57 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Thu, 18 Jan 2018 20:16:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Jan 2018 20:16:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 18 Jan 2018 20:16:58 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3f16a17c6eddf5a19277e84ea455fcca3d4af6ff674e118b98b8f50f692f65`  
		Last Modified: Wed, 10 Jan 2018 05:05:22 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6bc25d68c201701552480fa9209847ffad13a095354c3b30fc9350bbb9384`  
		Last Modified: Wed, 10 Jan 2018 05:05:21 GMT  
		Size: 8.2 KB (8187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f61696de69b7748ccf91a3fa94614f2c43d92466ff6430d1ebe337804a74cfd`  
		Last Modified: Wed, 10 Jan 2018 05:05:23 GMT  
		Size: 16.6 MB (16561816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f95722bc8398078e1d29d51133e0fb42c692c809aff43a7b0082a1b5490b8d0`  
		Last Modified: Thu, 18 Jan 2018 20:19:03 GMT  
		Size: 5.1 MB (5118332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7629691f8a4d63a5ad1e02617648930a85c6c3e3663f9d82b379a4633b93134`  
		Last Modified: Thu, 18 Jan 2018 20:19:02 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fefcd5a27887344e70d8231067af563d0109ecaeb056741942d021bce8b80af5`  
		Last Modified: Thu, 18 Jan 2018 20:19:02 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c579bb1788ccb2326d02e38f0ee4cc3867c51c17555e4090756f59ac35677b`  
		Last Modified: Thu, 18 Jan 2018 20:19:03 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a3e509337df9344dfb93c542301a6c776252f63e4b82bec5665ba4ee14321c`  
		Last Modified: Thu, 18 Jan 2018 20:19:02 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:1a92d57f56a2c3153d5af46b5632b0d922e67baf68229009b8a530cbaa06fb65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23522946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d64dc9a483e3295a007f090fc472d06ea7c035a1668dbd0efb1abbc9f5dddae4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:26 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Mon, 26 Feb 2018 23:48:27 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:28 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 22:30:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 27 Feb 2018 22:30:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Feb 2018 22:31:05 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 27 Feb 2018 22:31:06 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 27 Feb 2018 22:31:06 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 27 Feb 2018 22:31:06 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Feb 2018 22:31:06 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 27 Feb 2018 22:31:07 GMT
ENV RABBITMQ_VERSION=3.6.15
# Tue, 27 Feb 2018 22:31:07 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Tue, 27 Feb 2018 22:31:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 27 Feb 2018 22:31:15 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 27 Feb 2018 22:31:15 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 27 Feb 2018 22:31:15 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 27 Feb 2018 22:31:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 27 Feb 2018 22:31:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 27 Feb 2018 22:31:17 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 27 Feb 2018 22:31:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Feb 2018 22:31:17 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 27 Feb 2018 22:31:18 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448db471625a0828399cd99cb762a514458df032a36e5a23df975081ab87bc41`  
		Last Modified: Mon, 26 Feb 2018 23:49:11 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c8ca83cab0d2b47f79fdb27bb6958aba3a519d6f5275830e2b129347dc5d33`  
		Last Modified: Tue, 27 Feb 2018 22:31:43 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a7286587c32ba803f8b8d398219ecde0d8fde92b05884160e2bb70a66315e5`  
		Last Modified: Tue, 27 Feb 2018 22:31:41 GMT  
		Size: 8.4 KB (8375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56955d75e996f08f32f8f1bb5747ade80ffcef3ec628113f716582ff4425d78f`  
		Last Modified: Tue, 27 Feb 2018 22:31:45 GMT  
		Size: 16.4 MB (16424133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d233eb1ce1a4dfec51cecbec1be7b7de7962344a30cd3bd4f52327befac2c02`  
		Last Modified: Tue, 27 Feb 2018 22:31:41 GMT  
		Size: 5.1 MB (5118466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc680eea6655e4dc8a6225d9ba8fdd633be0921212fbd0fdba5b10e029119d06`  
		Last Modified: Tue, 27 Feb 2018 22:31:40 GMT  
		Size: 212.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34993137202ff54fe851601c1f00a1f7d178d5a4243e136663f91285d3e87626`  
		Last Modified: Tue, 27 Feb 2018 22:31:40 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005edaae801b734b1978fdc0a8f06d405f707fa255fa84f77b8aa3a22e420d27`  
		Last Modified: Tue, 27 Feb 2018 22:31:40 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230aadd8f93391db2a2abcca9e83cad76f24d96370e6e9629e2b2ef14c1d976`  
		Last Modified: Tue, 27 Feb 2018 22:31:40 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:9343aae7685db81182e5ce94e902a80b46a6f83e0baa13db731828be844c4088
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23423993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef2ea7ae35d51d7d5d9eea47e1f571aafc8de2bfacd7609337c7c5c2ca39f2d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 13:53:09 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 13:53:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 13:53:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 13:53:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 13:53:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 13:53:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 13:53:30 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 14:55:03 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 14:55:04 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 14:55:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 14:55:33 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 14:55:35 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 14:55:36 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 14:55:37 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 14:55:39 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 14:55:39 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 14:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 14:55:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 14:55:41 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05834eac152e30997eb4f1aa4ffe8e952bd759c1a1009bd183dec80dca24cf86`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd88a23486b40755f2e1192cb35d4fdaec20831c18ce83da31df3f8aa2f7b45c`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f9ba1206e6e4bfba21cef7f235482b41868ec966d5ebc44a4c4ac432a5fe03`  
		Last Modified: Thu, 26 Oct 2017 13:55:16 GMT  
		Size: 16.4 MB (16376872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db5d5de4ed6fe4197b8557f161b0716253249f840d2343727ecd300183a6b93`  
		Last Modified: Fri, 19 Jan 2018 14:57:27 GMT  
		Size: 5.1 MB (5118151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e124f874b8d095f757b8787a1b05a472487c67ba5695c7da9eba96ada942c7dd`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096c18ba1daa80d849dd01c2cc4df7a083d55fd052964ea01152cb96e34f624e`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d530832e7a8199a2da69ca9961dc672ccc78c2308c5fe3ace7b163fb237926`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300eac6dcbaff57db804a071fbfcb0e36f567dacfaeee84a154019d33aebbd9f`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:0e1cd4397c51a788e8e90b05c26017f95c4b138d033ad1b858ff092773b5cbb3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23889161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8694255d7bf8625b10749081f11afbf7df0083b345b6cad4de7bfcc7160fde4b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:44:24 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 10:44:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 10:44:50 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 10:44:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 18:21:51 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 18:21:51 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 19:05:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 19:14:11 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 19:14:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 19:14:12 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 19:14:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 19:14:14 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 19:14:14 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 19:14:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 19:14:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 19:14:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf0f0a132c9bb882206147dffad08dc780f2bc82556cfbda9878a3218f1e7c`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a9186496c6602ccd3efb4bb1780b42adb7028c8fa3cd3c1ff2f10bcfa33a3`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 8.3 KB (8305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19938c3bf2e858347a9c7add1beac38af5a4f83b99d80ddc004aa4ad51e596`  
		Last Modified: Thu, 26 Oct 2017 10:45:30 GMT  
		Size: 16.7 MB (16710838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35143b2ddb33eb8711293e1c64a84ef42d47240e94bd6d66fddd3dae146f2e4f`  
		Last Modified: Fri, 19 Jan 2018 19:34:52 GMT  
		Size: 5.1 MB (5118492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2237488597c27447ba67fe03013ee1b3b6017a31903c3e8ca65760add92e9211`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78926638c1e513852b8f45c7472371b4abbcefd3d146472ac3ee53b8c57979e`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e193b2bf9ff0e2848b885c27d69402b2cc2064e19dfbc25e1ec7437c87a87d`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5162de7559c3203993c873d6e3e96078e1a29f2f931ac09d434cbb9766d156f`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 4.0 KB (4045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:ecfc6ce91bc9cebfbdb856445c9de27544498681f1910df2d84f04d7d2b4722c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23745641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec2f5f6cadeacc52e1b7d5e4a5a203204ff475bcd05e46f182d1899554366474`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 07:12:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 07:12:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 07:12:36 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 07:12:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 07:12:39 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 07:12:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 07:12:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 08:14:19 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 08:14:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 08:14:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 08:14:36 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 08:14:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 08:14:41 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 08:14:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 08:14:47 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 08:14:49 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 08:14:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 08:14:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 08:14:53 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48c95ed960185dbd69324a206614e723f0086f80b46bd3223f233e4f1e278bc`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a8242358db9adbde1a17b0e2b320c02112fcefa90d397ecc028a9729efcf94`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 9.1 KB (9059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6db9581873eb0cadddc4d474e33cb2ec978c0d68e3ea124ce4f07ab2731d79`  
		Last Modified: Thu, 26 Oct 2017 07:14:04 GMT  
		Size: 16.6 MB (16603134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6633ac6126f820a91440cf8aafb7013a293ddf60593b93929b1d15fe2eae19`  
		Last Modified: Fri, 19 Jan 2018 08:16:19 GMT  
		Size: 5.1 MB (5118878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bed3b7084041015342cdb2185b56bcf14f374a7271315b08317445b0d2642e0`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebaed6acadb6b40d1abb66bc8b6d6849bec75212b22dbfda7f44cb0f130ce17`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9ac50a33b1ee7d4252ce97df356b1746c8c7aaf77be8eadeb5149c4b74a3e9`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973b41abcb6e66a865b14153ded2901197bc4b9dc3fce52d72cee64f0e0ab680`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:01a88b80783745316244b35eee60e6731ff8f9b1d92216885c4d4a5b53ea9317
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23925177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1181584e9e7cb62492ed1dea3b14e68ee5ecf1d691b6e65ee16ed00ae86e30a8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:06:39 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 17:06:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 17:06:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 17:06:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 18:07:39 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 18:07:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 18:08:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 18:08:01 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 18:08:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 18:08:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 18:08:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 18:08:02 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 18:08:03 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 18:08:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 18:08:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 18:08:03 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299a1fbc19bbea84dbf4d0b6e2e71fb847299b017209b1f9783faea14214c995`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb76f2dd4162cae82233bc93ba436b63ca37e536d53c85a9f1d7343203e3c383`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 8.6 KB (8604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac09bb55706d627cf6348c9d0bd891c2fe9a4155aee5d95264b92781371021db`  
		Last Modified: Thu, 26 Oct 2017 17:07:33 GMT  
		Size: 16.7 MB (16726549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851eb243b499bfb2a730cb151c2ffb5b72e35441dbfdc6f3157062396d2697e0`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 5.1 MB (5118642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3725b8ad7a81eb0ee9c21a0f61e6ac046db1d9b445dbd68e3eae95cf841a50c4`  
		Last Modified: Fri, 19 Jan 2018 18:08:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4199e2702c7c24401c5850d1ac84d7a17b2d27fae4731ed1e0484b27654c2f55`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43287320a1489f46fd95951d37bb9163c22b2a14e03be516faffb124d8e691d`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ab42a07c45eb8be9fb6a62842750ac033fa03ba66420af1abc944e48a1f609`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:282b1d54ceaf0b4f417fce3294fe0d90d2f83799f0b130f8f49291454d48c739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:346065107ba619a65a358909d87a2191d96fe717db995490cb1362bbe53ea702
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70597701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70681751e6ac8cdb9dd375236d2d1dd8c6a7f2ddc4343f82d28225e330ce7170`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 18:56:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:56:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 16 Feb 2018 18:56:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 18:57:02 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Feb 2018 18:59:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:59:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 16 Feb 2018 18:59:54 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 18:59:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 16 Feb 2018 18:59:55 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 16 Feb 2018 18:59:55 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 16 Feb 2018 18:59:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Fri, 16 Feb 2018 19:00:44 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 19:00:45 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 16 Feb 2018 19:00:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 16 Feb 2018 19:00:46 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 16 Feb 2018 19:00:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 16 Feb 2018 19:00:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 16 Feb 2018 19:00:48 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 16 Feb 2018 19:00:49 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 19:00:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 19:00:50 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 16 Feb 2018 19:00:51 GMT
CMD ["rabbitmq-server"]
# Fri, 16 Feb 2018 19:01:09 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 16 Feb 2018 19:01:17 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 16 Feb 2018 19:01:17 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aa5c2fc28c2889bb371a7c8c86d79363c2210331abc9ab368eec5664f9c7f1`  
		Last Modified: Fri, 16 Feb 2018 19:01:56 GMT  
		Size: 4.5 MB (4498430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6866d83ad777c7832f9a12a4c138b04ae865fc71238531025c3a1d9cdab3e6`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424ad5823c0c06246ed365a566ac25a786727eb4de90d40450c75c9f9589d05c`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 952.0 KB (951962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd604e77a5eed330e28d0007c7f4fa150114cd467e33b1221874ab19f0cf916`  
		Last Modified: Fri, 16 Feb 2018 19:05:13 GMT  
		Size: 27.7 MB (27704471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0761b252508867deed98a8b3543258de07956308483cb4578753223ec430dcd2`  
		Last Modified: Fri, 16 Feb 2018 19:05:11 GMT  
		Size: 7.3 MB (7300966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc57f8eaa146b5f9fe6682902cca47110a76ee854072899205a438365b8c1bc`  
		Last Modified: Fri, 16 Feb 2018 19:05:09 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe9f264ed573024125c182985a39e319bb5d4143d5237fd76ca89cc2485531eb`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf1fe3f4991e5b444e20e059bfcde5f520fd8f3059c34444133df2258fabfd9`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6ba1e4ff9e2e0ef4ab6c069a31ee168efa2e1cdbf895c61d9837aaa35500ee`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f549ed6e61b74880cc0ec30ffbe2006f3a387e10c0b0e6e1ab006d12536cfa0c`  
		Last Modified: Fri, 16 Feb 2018 19:05:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:835e482fadcf2aa30a2cd6ff1fba76123c03e07ff672a5e4d1a8f2f3e258bd93`  
		Last Modified: Fri, 16 Feb 2018 19:06:00 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc125f8d8b9418cb36bd9ca649ee722b75dbe20e3fbedf97a26ee85ecc941d3`  
		Last Modified: Fri, 16 Feb 2018 19:06:00 GMT  
		Size: 7.6 MB (7634147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:5b63aad1f4ec39b388d6aebedf2cc1cc875e960ea221b4703107bf8fe4024733
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66032148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c28d00111e3b1cbd4fc49589407ce9a32c68ef383ac59ccf7393d763ec6ca73`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:06:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:06:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 22:06:54 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 22:07:37 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:10:12 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:10:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 22:10:13 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:10:13 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 22:10:14 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 22:10:14 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 22:10:14 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 22:11:29 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:11:30 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 22:11:30 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 22:11:31 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 22:11:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 22:11:33 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 22:11:33 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 22:11:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 22:11:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 22:11:35 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 22:11:36 GMT
CMD ["rabbitmq-server"]
# Thu, 15 Feb 2018 22:11:49 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 15 Feb 2018 22:12:04 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 15 Feb 2018 22:12:04 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a212dd3e52653adb4c0c3677397e74fcac10b74d38b2df38af460830e04b1ac`  
		Last Modified: Thu, 15 Feb 2018 22:12:23 GMT  
		Size: 4.2 MB (4231540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae935791a245772b6342dece630412eff8a97d12aaf579e401ccc09215205a`  
		Last Modified: Thu, 15 Feb 2018 22:12:20 GMT  
		Size: 4.1 KB (4088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458120fe43d4aff849ffaeb2fa6d4cc8d2c3dc5c72caeb744d44ffa74f07033d`  
		Last Modified: Thu, 15 Feb 2018 22:12:22 GMT  
		Size: 942.5 KB (942460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00172ccee8d9aa2c96f692d2de3d133f98c15ddc3e17ceb560c4df449662bee5`  
		Last Modified: Thu, 15 Feb 2018 22:13:50 GMT  
		Size: 25.2 MB (25170555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b857bb81978b4fa92a2038b4207528808e461973d3b7253494b45b515900d4f7`  
		Last Modified: Thu, 15 Feb 2018 22:13:46 GMT  
		Size: 7.0 MB (7014770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75c642e6412f84eca7120e60eb96a003f9c6f0d7cf32ef676b752a26b77ecbdd`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697379b51293444ff3cca9f613b3134282b019c9062f674d7b02cf8b4b10dc68`  
		Last Modified: Thu, 15 Feb 2018 22:13:44 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2174c62683bfc585fa0b1cf5967d245a6e4d9f1577beef5b315574a14cb1104f`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609310b9ab5228994da4f5c664d77c58230fd45e200ed7dc06bf9419fae31e97`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9c9b044e2f9d906b21eb38eaae4b8dd9d229d20dd6e1fadc56f63533ad22e5`  
		Last Modified: Thu, 15 Feb 2018 22:13:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40d8009ca2da045a1c0b736ad4b03010b83f2b3a3f89c80c2ff5273908f56a4`  
		Last Modified: Thu, 15 Feb 2018 22:14:09 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb39a0aa497acb51173c4cf39cd4fb56a05e9ee9ddb9b0c8bfbda5b8908dd96`  
		Last Modified: Thu, 15 Feb 2018 22:14:10 GMT  
		Size: 7.5 MB (7486823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:09c5d8abc11f9e9981948ceb4995dbc86c12d9afe0d509e85e35868dc3028d51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62997403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f408876c6e5b1bab846858f701d21cd267767f2440b877ffa599b299cdaeb10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:11:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 16:11:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:12:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 16:14:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:14:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 16:14:51 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 16:14:51 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 16:14:52 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 16:14:52 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 16:14:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 16:15:12 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:15:12 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 16:15:13 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 16:15:13 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 16:15:14 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 16:15:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 16:15:22 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 16:15:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 16:15:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 16:15:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 16:15:30 GMT
CMD ["rabbitmq-server"]
# Thu, 15 Feb 2018 16:15:51 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 15 Feb 2018 16:16:09 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 15 Feb 2018 16:16:09 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b013f1082d9f6b4590d4a988c911f20b6ecd1025e255fc4a69303f3dfd32317d`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 3.9 MB (3868601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e6890c5bfb431a26fb646081f14de6ade476a28158583b3e708a8bc3f40ff3`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3449fb95440de1ead82a804d144bcd225029ac93ea319b6471e1e97a5bf4ecc2`  
		Last Modified: Thu, 15 Feb 2018 16:16:29 GMT  
		Size: 926.1 KB (926131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3802486230930c1aad09b03fef3e0196cc5559b4dbc45a4eb5d0b6400f99831a`  
		Last Modified: Thu, 15 Feb 2018 16:18:14 GMT  
		Size: 24.8 MB (24785513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13293c44afc46f6561504f9efb12ee5b44dd4de024633c052509e4e9338b4b72`  
		Last Modified: Thu, 15 Feb 2018 16:18:11 GMT  
		Size: 6.9 MB (6924139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15dd2bf7de1462fd9012145805f6e95355842d956856b62c452572559e7f583a`  
		Last Modified: Thu, 15 Feb 2018 16:18:09 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a945917e21e2aec1b36b75e05030e9ac3d6564ca95f95cce5c05dbfc24bf5f53`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dce087fd94257f988025e5218370f9115445484884537888bcbc55ebf5ab646`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bb52e3bf20cba4b65926e05dac9dc5841d288de316647f6f31814fac3bbfe8`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:482e8e7153a01e85259869271bc1789345775e54c136a855095d0aad716f62ce`  
		Last Modified: Thu, 15 Feb 2018 16:18:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2336334132b6d95688d228cc206b7be9ccf968dc18bfb753d3f566d52a492d2`  
		Last Modified: Thu, 15 Feb 2018 16:18:37 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda8c3e35b2ae2bd873fb9abc2d0d48269b45650178e5fadc8c8ac03ee1f8969`  
		Last Modified: Thu, 15 Feb 2018 16:18:39 GMT  
		Size: 7.2 MB (7195966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:6e9264a32347d28afa02e832e922fc2fa40540e1cdd8fb2d1bcce0bbc0babd55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64881311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5b727b67ef4ef5c0df520d714a84eaef5e656325dc4a1ce3a74707c5e682d62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 23:53:57 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 23:53:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:54:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Feb 2018 00:00:19 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:00:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 16 Feb 2018 00:00:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 00:00:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 16 Feb 2018 00:00:22 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 16 Feb 2018 00:00:23 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 16 Feb 2018 00:00:24 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Fri, 16 Feb 2018 00:01:11 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 00:01:12 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 16 Feb 2018 00:01:14 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 16 Feb 2018 00:01:14 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 16 Feb 2018 00:01:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 16 Feb 2018 00:01:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 16 Feb 2018 00:01:20 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 16 Feb 2018 00:01:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 16 Feb 2018 00:01:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Feb 2018 00:01:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 16 Feb 2018 00:01:24 GMT
CMD ["rabbitmq-server"]
# Fri, 16 Feb 2018 00:01:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 16 Feb 2018 00:02:11 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 16 Feb 2018 00:02:22 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecc7280a57c4f164dcf6ac46e8f359b64b73ac4eebda29730420cbc351f6de`  
		Last Modified: Fri, 16 Feb 2018 00:03:00 GMT  
		Size: 4.1 MB (4073277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de655884dd724f8f2f9dc4a57ce020cf3c7ea27c33757c572eb63feed718d68d`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14dce82e5cc18457d199dc012088a60f363697db4983a790036468ee985e073a`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 919.4 KB (919384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93c6d39bc153774ce49d3063ef654274d7bccb9d5d7d00ddb7c6ee79c936e14`  
		Last Modified: Fri, 16 Feb 2018 00:05:05 GMT  
		Size: 25.0 MB (25043337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e95b14b74a7fd954359d9e0e53ab4adb87bce7e41e3ee4c7cb5bd22d6eac86`  
		Last Modified: Fri, 16 Feb 2018 00:04:58 GMT  
		Size: 7.0 MB (6999254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5be5362f65817b4a7021a8c0f7182058c35c530f158e24bd8324ab6703b67d1`  
		Last Modified: Fri, 16 Feb 2018 00:04:54 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81199c2fc52fc0b4f94817c581dc61b05b365b8fec0d5bdda2ad9b64d1acd034`  
		Last Modified: Fri, 16 Feb 2018 00:04:54 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4216ccfbab5ea7528a08f10564454df9adc1ef5f6e5bb06b124b743cb8d6e417`  
		Last Modified: Fri, 16 Feb 2018 00:04:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3a851a7a892fd896e8ba747747fd1b6795e261ab1ca347cf6db1c52a00a9f6`  
		Last Modified: Fri, 16 Feb 2018 00:04:54 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0164197409dcc8ff878fb957df9eaeb391dc7a6a6c51d5c7acee5cdef6089774`  
		Last Modified: Fri, 16 Feb 2018 00:04:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022ab022f20f7b875eff4bb31312b5255ad442f490f6825b636ac13dcd8d5613`  
		Last Modified: Fri, 16 Feb 2018 00:05:55 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79309b49440c13300530cd3da3f4bceb018e16c9e45354542a80ba2953a63c17`  
		Last Modified: Fri, 16 Feb 2018 00:06:01 GMT  
		Size: 7.5 MB (7487670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:805adfa0b78c395ea16a3f3de138038ea3805aa5b871382f931be3dad7c62d6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71742849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47c664c2659248e4e4dca40bbc75244ce4a0d6407fdee550fddc57b59db9b131`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 06:02:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:02:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 21 Feb 2018 06:02:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 06:18:09 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 06:31:52 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:31:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 21 Feb 2018 06:31:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 06:31:53 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 21 Feb 2018 06:31:53 GMT
ENV RABBITMQ_VERSION=3.6.15
# Wed, 21 Feb 2018 06:31:53 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Wed, 21 Feb 2018 06:31:54 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Wed, 21 Feb 2018 06:32:16 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:32:16 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 21 Feb 2018 06:32:17 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 21 Feb 2018 06:32:17 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 21 Feb 2018 06:32:18 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 21 Feb 2018 06:32:19 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 21 Feb 2018 06:32:19 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 21 Feb 2018 06:32:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 21 Feb 2018 06:32:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Feb 2018 06:32:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 21 Feb 2018 06:32:21 GMT
CMD ["rabbitmq-server"]
# Wed, 21 Feb 2018 06:37:48 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 21 Feb 2018 06:38:01 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 21 Feb 2018 06:38:01 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fde2b9bfdd614411d1d5380916758b66c6257b263b10477d6a2795b6546e380`  
		Last Modified: Wed, 21 Feb 2018 06:49:22 GMT  
		Size: 4.8 MB (4803819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e09ac772b52c4b12b313c697bc00be2f982158ebcc742cb1479ee565ec7b28`  
		Last Modified: Wed, 21 Feb 2018 06:49:19 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bb3531a8f1827457fdde45c0eb60d638dbc6dfde7062a7760a1e1d1b045f13`  
		Last Modified: Wed, 21 Feb 2018 06:49:18 GMT  
		Size: 931.6 KB (931565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f042deac44307315cdb23db923db31f971942c5b30280df3a76ab39b113393b1`  
		Last Modified: Wed, 21 Feb 2018 07:21:03 GMT  
		Size: 27.8 MB (27818976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14eb299d73afa5c01480b5f0ac30f45d2bfea7eebc2f9dddd72c1badb126f12`  
		Last Modified: Wed, 21 Feb 2018 07:20:57 GMT  
		Size: 7.3 MB (7314071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66d1e8dddf5e714cacf8c2121cda30c5a3eb1846bc6b43665b8d499effa469e`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089c810f35edb22f101c717e93f4c3cd50f273afd50381919d4fbc67d3ba5754`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abe4163724ce10e29accf324f985165dfe584474b7cf97f392f1f4b80d8c956`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b81f729c46e361bc49c634a7ee13e4e9f7415199419bd0578f0f0fd849fcfc`  
		Last Modified: Wed, 21 Feb 2018 07:20:55 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472f45539f308b676ec40095a5461d27061d0a5311873c73e08c3ffb27be3abf`  
		Last Modified: Wed, 21 Feb 2018 07:20:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a7fc65b94d1f121294efb39baaf53182fb609fdc7ae7bbfffe2c633299cfdc`  
		Last Modified: Wed, 21 Feb 2018 07:24:31 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979e7284459b3a6c0fa87a21a6f8a89c94188fb884e77d9b4331660cfcc5f42b`  
		Last Modified: Wed, 21 Feb 2018 07:24:35 GMT  
		Size: 7.7 MB (7728444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:38147e7523205c0c38fed36513ba2812ce2153ff315077dfc0f60110e36120fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68336081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e875a4fe7d57d3ecd73f33cdc63d5466fc6c212cd6e79abb4195067362dbf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:01:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:01:20 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:01:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:02:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:11:42 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:11:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:11:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:11:53 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 07:11:55 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 07:11:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 07:11:58 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 07:13:09 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:13:10 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 07:13:14 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 07:13:16 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 07:13:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 07:13:23 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 07:13:24 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:13:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:13:32 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 07:13:34 GMT
CMD ["rabbitmq-server"]
# Thu, 15 Feb 2018 07:13:59 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 15 Feb 2018 07:14:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 15 Feb 2018 07:14:46 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7eb3ba88b8fb5c65c82d925e3dcbca9f48c46c56825a694fa78f92768e98f36`  
		Last Modified: Thu, 15 Feb 2018 07:15:17 GMT  
		Size: 4.4 MB (4360747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba68cb1b2e1a68352c6ccc11da8cf6084991476e7259a12748d767af1a187a08`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 4.1 KB (4107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534c75edb97f6c0ac366a7b7f3c3f0c2545a80abc9d4fe398852a7c0fb647cae`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 920.9 KB (920856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c03ba6c1ca04862675ba38fed7d4d7dcabe4c8412e2c731f633ed92ee19697f`  
		Last Modified: Thu, 15 Feb 2018 07:16:26 GMT  
		Size: 25.5 MB (25492829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da41886406c67df21ee7c29ddd6458dd71b1e22b498731075fc9c509eab879e8`  
		Last Modified: Thu, 15 Feb 2018 07:16:22 GMT  
		Size: 7.0 MB (6959469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e3a385fac6d6e6fbc04ae069838129d05af6a0bd0e27aeeb76f59dc16431b7`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63357d75f10c1e776b7d1e406666fcb94857c9e0c3a5970942cf35e3dcb6de70`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0a246d655d014b661a640e94c1148f859fa13f4223945d06d5b137bef622fe`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003a9ca510abd5e1120c3e03231dd05156a77224d7ce7daccc8b08371ff52d17`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74eaec5618ce3fc5f28b2524701f7a53eb42c32cb6238fe2c275eb69e0f928c1`  
		Last Modified: Thu, 15 Feb 2018 07:16:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a08aea6a7653b8956b543a5aecc102610c3e9bfd7942ccc96626b6376b3a160`  
		Last Modified: Thu, 15 Feb 2018 07:16:43 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddca2333c0290c0238eadb50b070d59db02325bb8c015ec41ae4f09c5bf55577`  
		Last Modified: Thu, 15 Feb 2018 07:16:45 GMT  
		Size: 7.8 MB (7838084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:9db5397f71376452fb1098dae851fe1e2feee1b3eacc2593c4c5647cc0ff8a34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68088950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf10c8ea80a44668f9472757227eb21aae89f4cc6518cd6b28bf2dfed9cfaf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:08:57 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:08:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:08:57 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:08:57 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 15 Feb 2018 07:08:57 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 15 Feb 2018 07:08:58 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 15 Feb 2018 07:08:58 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.15-1
# Thu, 15 Feb 2018 07:09:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:09:32 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 15 Feb 2018 07:09:33 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 15 Feb 2018 07:09:33 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 15 Feb 2018 07:09:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 15 Feb 2018 07:09:34 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 15 Feb 2018 07:09:35 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Thu, 15 Feb 2018 07:09:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 07:09:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 07:09:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 15 Feb 2018 07:09:36 GMT
CMD ["rabbitmq-server"]
# Thu, 15 Feb 2018 07:09:43 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 15 Feb 2018 07:09:51 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 15 Feb 2018 07:09:51 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db397373562b512d0d8beba752416bae91a2476a692230c532698e7b00f5aa4`  
		Last Modified: Thu, 15 Feb 2018 07:10:50 GMT  
		Size: 25.6 MB (25621063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d48948f15540fde8427b517fd113aaa831cb737a5f67b7154ac90931f0f7219`  
		Last Modified: Thu, 15 Feb 2018 07:10:48 GMT  
		Size: 7.0 MB (7033697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a708f0fdcb774bf67a1a7571be7d42c3ae534a7cd8e815322be04774d8707c80`  
		Last Modified: Thu, 15 Feb 2018 07:10:45 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30f9a9f7b8723222a4a8f580d9f76f3a1e310eff3e90c8e25bb3a97b41a9667`  
		Last Modified: Thu, 15 Feb 2018 07:10:45 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3d89902094830710356d51dcf6821c51e4db61bd761e274e85d22b2f73ddaf`  
		Last Modified: Thu, 15 Feb 2018 07:10:46 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b4dee9c685a8b9dbf9c342422fbd94b91a9a550977464282a7e7402c3a4ded`  
		Last Modified: Thu, 15 Feb 2018 07:10:46 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ad456e2a94b1981a15c195f1a8680514d8c74773078f801a437336a9a4680f`  
		Last Modified: Thu, 15 Feb 2018 07:10:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c547806bf79ba781bc790c806c5f9f55a63d49898e831bc4f500c041ffa4c2d`  
		Last Modified: Thu, 15 Feb 2018 07:11:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2501051d89e31b7d90bca67140b48468a3d6f5d637ae853278daf2acd52014a6`  
		Last Modified: Thu, 15 Feb 2018 07:11:03 GMT  
		Size: 7.6 MB (7606532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:8e3c5cad9288f99f5f53225286a727a1aad74dc45c4665c19fe4eb399ba20c90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:5b6081056f239e9b750397ebbcd1c52f2a68a749e4339baf5aaaa944cb930ed7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34656666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4436e60c47a5d5ec9103d0442321138d48fd20243951588e0dc3b4c069a53c57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:58:51 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 Jan 2018 04:58:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 04:59:16 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 Jan 2018 04:59:25 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 Jan 2018 04:59:25 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 Jan 2018 04:59:26 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 04:59:26 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 18 Jan 2018 20:16:32 GMT
ENV RABBITMQ_VERSION=3.6.15
# Thu, 18 Jan 2018 20:16:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Thu, 18 Jan 2018 20:16:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 18 Jan 2018 20:16:45 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 18 Jan 2018 20:16:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 18 Jan 2018 20:16:46 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 18 Jan 2018 20:16:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 18 Jan 2018 20:16:47 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 18 Jan 2018 20:16:57 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Thu, 18 Jan 2018 20:16:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 18 Jan 2018 20:16:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 18 Jan 2018 20:16:58 GMT
CMD ["rabbitmq-server"]
# Thu, 18 Jan 2018 20:17:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 18 Jan 2018 20:17:20 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 18 Jan 2018 20:17:20 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3f16a17c6eddf5a19277e84ea455fcca3d4af6ff674e118b98b8f50f692f65`  
		Last Modified: Wed, 10 Jan 2018 05:05:22 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6bc25d68c201701552480fa9209847ffad13a095354c3b30fc9350bbb9384`  
		Last Modified: Wed, 10 Jan 2018 05:05:21 GMT  
		Size: 8.2 KB (8187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f61696de69b7748ccf91a3fa94614f2c43d92466ff6430d1ebe337804a74cfd`  
		Last Modified: Wed, 10 Jan 2018 05:05:23 GMT  
		Size: 16.6 MB (16561816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f95722bc8398078e1d29d51133e0fb42c692c809aff43a7b0082a1b5490b8d0`  
		Last Modified: Thu, 18 Jan 2018 20:19:03 GMT  
		Size: 5.1 MB (5118332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7629691f8a4d63a5ad1e02617648930a85c6c3e3663f9d82b379a4633b93134`  
		Last Modified: Thu, 18 Jan 2018 20:19:02 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fefcd5a27887344e70d8231067af563d0109ecaeb056741942d021bce8b80af5`  
		Last Modified: Thu, 18 Jan 2018 20:19:02 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c579bb1788ccb2326d02e38f0ee4cc3867c51c17555e4090756f59ac35677b`  
		Last Modified: Thu, 18 Jan 2018 20:19:03 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a3e509337df9344dfb93c542301a6c776252f63e4b82bec5665ba4ee14321c`  
		Last Modified: Thu, 18 Jan 2018 20:19:02 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51721ecdb25854da131129eee14c27539e90e286fe8e5697f374a6f0d52bdb82`  
		Last Modified: Thu, 18 Jan 2018 20:19:41 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be263e6d0356b10159e47b98c0eb596d9538285aa95f038eeb5aa818332528ea`  
		Last Modified: Thu, 18 Jan 2018 20:19:43 GMT  
		Size: 11.0 MB (10970652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:76a9d1c376f44c692d22541cba690360e8b0dd7c87273bdeaff0c74f3edacae8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34434851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:203cdf3865952d6e8f00a656f665dba3c0bd5708982791b571141ab994be87df`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Mon, 26 Feb 2018 22:33:43 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Mon, 26 Feb 2018 22:33:52 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 26 Feb 2018 22:34:26 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Mon, 26 Feb 2018 22:34:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Mon, 26 Feb 2018 22:34:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Mon, 26 Feb 2018 22:34:30 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Feb 2018 22:34:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 26 Feb 2018 22:34:31 GMT
ENV RABBITMQ_VERSION=3.6.15
# Mon, 26 Feb 2018 22:34:32 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Mon, 26 Feb 2018 22:34:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 26 Feb 2018 22:34:55 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 26 Feb 2018 22:34:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 26 Feb 2018 22:35:00 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 26 Feb 2018 22:35:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 26 Feb 2018 22:35:07 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 26 Feb 2018 22:35:08 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Mon, 26 Feb 2018 22:35:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 22:35:10 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 26 Feb 2018 22:35:11 GMT
CMD ["rabbitmq-server"]
# Mon, 26 Feb 2018 22:35:34 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 26 Feb 2018 22:35:55 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 26 Feb 2018 22:35:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0864efeeb5cb8dca4eb53e5d6fd38486daee80fa326fe36d1ad254f8fa6bb310`  
		Last Modified: Sun, 23 Jul 2017 20:21:42 GMT  
		Size: 2.0 MB (1965988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cda69762aee1588fa82aeabf1af6d6ad24f737cce1451fab2e0199849b1e12e`  
		Last Modified: Wed, 25 Oct 2017 23:28:45 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38bc70f99f271528243e41aa6cebddad6ab11720256ecb9c28bb8b3d9df24f89`  
		Last Modified: Mon, 26 Feb 2018 22:39:20 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fc9b43291feec8c70ce36caad3e04fb6e206a7f2408f3b5552bfbdba6e6d0e7`  
		Last Modified: Mon, 26 Feb 2018 22:39:19 GMT  
		Size: 8.4 KB (8376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21597b0458305e03ee8cb9dd1229cf94af83da707e412b6f0fe25d6d3bfa61bc`  
		Last Modified: Mon, 26 Feb 2018 22:39:36 GMT  
		Size: 16.4 MB (16424160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c83d04f2c4381e649bfb1d5ed19dd6fb67aea91460e139804cbbb8eaf9567`  
		Last Modified: Mon, 26 Feb 2018 22:39:19 GMT  
		Size: 5.1 MB (5118468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eaac73bb3387bfcf228d441fdea8bc191c03860be018ee153d3faff0ffa2c78`  
		Last Modified: Mon, 26 Feb 2018 22:39:16 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56b14d9c47f39faa681053334d77bd3ff0402ca63a81754e491c7d941e65204`  
		Last Modified: Mon, 26 Feb 2018 22:39:16 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7a56a5787569ac6b3424265c054ba3f7940df3aab71ea24cd02cc4677369d32`  
		Last Modified: Mon, 26 Feb 2018 22:39:16 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0f3c1febb79ba25e726eecec8c24981fdbc699c1e39dca643c1231be048586`  
		Last Modified: Mon, 26 Feb 2018 22:39:16 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736df9d377bbc37507c0f6d5f2466602be1a849b68efcb40b1e4a0c2c509856b`  
		Last Modified: Mon, 26 Feb 2018 22:39:56 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c58481fcf29c0d1162484c9f6b9b7e062d39a33a80d9df1e153a4b556b5548`  
		Last Modified: Mon, 26 Feb 2018 22:40:13 GMT  
		Size: 10.9 MB (10911690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:4528ac84106ae3339d7f091ad9fb80602d740def5b3b945f8f344cbe55bf1e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34272982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfca4eadbea7a516fa805aa81b2bd329ca341c1a900493aeba87c51caa2b97c8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 13:53:09 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 13:53:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 13:53:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 13:53:28 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 13:53:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 13:53:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 13:53:30 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 14:55:03 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 14:55:04 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 14:55:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 14:55:33 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 14:55:35 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 14:55:36 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 14:55:37 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 14:55:39 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 14:55:39 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 14:55:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 14:55:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 14:55:41 GMT
CMD ["rabbitmq-server"]
# Fri, 19 Jan 2018 14:55:58 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 19 Jan 2018 14:56:08 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 19 Jan 2018 14:56:08 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05834eac152e30997eb4f1aa4ffe8e952bd759c1a1009bd183dec80dca24cf86`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd88a23486b40755f2e1192cb35d4fdaec20831c18ce83da31df3f8aa2f7b45c`  
		Last Modified: Thu, 26 Oct 2017 13:55:11 GMT  
		Size: 8.3 KB (8297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f9ba1206e6e4bfba21cef7f235482b41868ec966d5ebc44a4c4ac432a5fe03`  
		Last Modified: Thu, 26 Oct 2017 13:55:16 GMT  
		Size: 16.4 MB (16376872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db5d5de4ed6fe4197b8557f161b0716253249f840d2343727ecd300183a6b93`  
		Last Modified: Fri, 19 Jan 2018 14:57:27 GMT  
		Size: 5.1 MB (5118151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e124f874b8d095f757b8787a1b05a472487c67ba5695c7da9eba96ada942c7dd`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096c18ba1daa80d849dd01c2cc4df7a083d55fd052964ea01152cb96e34f624e`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12d530832e7a8199a2da69ca9961dc672ccc78c2308c5fe3ace7b163fb237926`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300eac6dcbaff57db804a071fbfcb0e36f567dacfaeee84a154019d33aebbd9f`  
		Last Modified: Fri, 19 Jan 2018 14:57:26 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0d758217bd4c331e535244f35487a35cb97a91f1c29bfa15094745f4929e0c`  
		Last Modified: Fri, 19 Jan 2018 14:57:50 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd617ca490c5116b03195a9747b3b6d2c359e74d52e031183410d820abc9baf2`  
		Last Modified: Fri, 19 Jan 2018 14:57:54 GMT  
		Size: 10.8 MB (10848797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:7bcce91b5d2cd328c7a57760132ab30bfea252ab7f62d42475d6c4b3e081b1c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (34980509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96080113d33fb7b185b654d0d09a272110d9454d5888a9ca69cb93c3316ecafa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:32:08 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Wed, 25 Oct 2017 23:32:08 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:32:08 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:44:24 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 10:44:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 10:44:50 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 10:44:50 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 10:44:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 18:21:51 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 18:21:51 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 19:05:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 19:14:11 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 19:14:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 19:14:12 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 19:14:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 19:14:14 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 19:14:14 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 19:14:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 19:14:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 19:14:15 GMT
CMD ["rabbitmq-server"]
# Fri, 19 Jan 2018 19:22:54 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 19 Jan 2018 19:23:14 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 19 Jan 2018 19:24:43 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f4fe786260f2bd2710289e7c9487b423cb252a691fa501759b0768516122869`  
		Last Modified: Wed, 25 Oct 2017 23:32:27 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cf0f0a132c9bb882206147dffad08dc780f2bc82556cfbda9878a3218f1e7c`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00a9186496c6602ccd3efb4bb1780b42adb7028c8fa3cd3c1ff2f10bcfa33a3`  
		Last Modified: Thu, 26 Oct 2017 10:45:28 GMT  
		Size: 8.3 KB (8305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc19938c3bf2e858347a9c7add1beac38af5a4f83b99d80ddc004aa4ad51e596`  
		Last Modified: Thu, 26 Oct 2017 10:45:30 GMT  
		Size: 16.7 MB (16710838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35143b2ddb33eb8711293e1c64a84ef42d47240e94bd6d66fddd3dae146f2e4f`  
		Last Modified: Fri, 19 Jan 2018 19:34:52 GMT  
		Size: 5.1 MB (5118492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2237488597c27447ba67fe03013ee1b3b6017a31903c3e8ca65760add92e9211`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78926638c1e513852b8f45c7472371b4abbcefd3d146472ac3ee53b8c57979e`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e193b2bf9ff0e2848b885c27d69402b2cc2064e19dfbc25e1ec7437c87a87d`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5162de7559c3203993c873d6e3e96078e1a29f2f931ac09d434cbb9766d156f`  
		Last Modified: Fri, 19 Jan 2018 19:34:51 GMT  
		Size: 4.0 KB (4045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d07c5d540c6b81729668bd9c10d964b60480938f52978c87f42b2755ab64c222`  
		Last Modified: Fri, 19 Jan 2018 19:35:36 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c0694d90844c5adb4344da5d5fdd6a624398bca03a64c5ddd99356924e9e0c0`  
		Last Modified: Fri, 19 Jan 2018 19:35:42 GMT  
		Size: 11.1 MB (11091156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:f0593918a9cbcb7013c9d036112bb5f918ddfe91dc47928712379ec9e293aeff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34757604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c51f9b807da4119304eb384703d8bfd0e6c07439db08875b1818e065c1e0fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:47 GMT
ADD file:e0be8616517d68cb80a2f9b74eb967cda22b9937bbcbe8b75b6153815a6f7761 in / 
# Wed, 25 Oct 2017 23:28:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:50 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 07:12:01 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 07:12:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 07:12:36 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 07:12:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 07:12:39 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 07:12:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 07:12:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 08:14:19 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 08:14:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 08:14:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 08:14:36 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 08:14:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 08:14:41 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 08:14:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 08:14:47 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 08:14:49 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 08:14:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 08:14:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 08:14:53 GMT
CMD ["rabbitmq-server"]
# Fri, 19 Jan 2018 08:15:05 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 19 Jan 2018 08:15:23 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 19 Jan 2018 08:15:24 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:1e52418956f7d2a8ea35e8e6e3318fd08e005b27457d77868c225e7433bbfa02`  
		Last Modified: Thu, 20 Jul 2017 15:12:59 GMT  
		Size: 2.0 MB (2008578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf472f4e5bb7956ac20bb343b304e1d3de1f79160c0d158cccbe25980022d50`  
		Last Modified: Wed, 25 Oct 2017 23:29:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48c95ed960185dbd69324a206614e723f0086f80b46bd3223f233e4f1e278bc`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a8242358db9adbde1a17b0e2b320c02112fcefa90d397ecc028a9729efcf94`  
		Last Modified: Thu, 26 Oct 2017 07:14:01 GMT  
		Size: 9.1 KB (9059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6db9581873eb0cadddc4d474e33cb2ec978c0d68e3ea124ce4f07ab2731d79`  
		Last Modified: Thu, 26 Oct 2017 07:14:04 GMT  
		Size: 16.6 MB (16603134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6633ac6126f820a91440cf8aafb7013a293ddf60593b93929b1d15fe2eae19`  
		Last Modified: Fri, 19 Jan 2018 08:16:19 GMT  
		Size: 5.1 MB (5118878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bed3b7084041015342cdb2185b56bcf14f374a7271315b08317445b0d2642e0`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebaed6acadb6b40d1abb66bc8b6d6849bec75212b22dbfda7f44cb0f130ce17`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9ac50a33b1ee7d4252ce97df356b1746c8c7aaf77be8eadeb5149c4b74a3e9`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:973b41abcb6e66a865b14153ded2901197bc4b9dc3fce52d72cee64f0e0ab680`  
		Last Modified: Fri, 19 Jan 2018 08:16:18 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e648215830d2be05b84a248d873276c4920a3f1a53c8cad1b2d55c174fb5a82b`  
		Last Modified: Fri, 19 Jan 2018 08:16:32 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f1b8820f64fdfdab980e3681c6d5262ada8c22d7c465f5ce24380d7995e22ea`  
		Last Modified: Fri, 19 Jan 2018 08:16:35 GMT  
		Size: 11.0 MB (11011771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:a8630fade74ffc0e183f0c008c12f76ca5fc11f44cd133a74b37a7b5ec7fc7b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35045364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb6f80f79de69ce72e65244439c8e357784921dce7eee8cf98dc1711fe742a2c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:40 GMT
ADD file:6fbdff4b4c08600e192f5da9b67a02c58759237fb40525d70712104c80c34c48 in / 
# Wed, 25 Oct 2017 23:28:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:40 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 17:06:39 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 17:06:42 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 17:06:55 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 17:06:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 17:06:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 19 Jan 2018 18:07:39 GMT
ENV RABBITMQ_VERSION=3.6.15
# Fri, 19 Jan 2018 18:07:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_15
# Fri, 19 Jan 2018 18:08:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 19 Jan 2018 18:08:01 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 19 Jan 2018 18:08:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 19 Jan 2018 18:08:01 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 19 Jan 2018 18:08:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 19 Jan 2018 18:08:02 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 19 Jan 2018 18:08:03 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 19 Jan 2018 18:08:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 19 Jan 2018 18:08:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 19 Jan 2018 18:08:03 GMT
CMD ["rabbitmq-server"]
# Fri, 19 Jan 2018 18:08:10 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 19 Jan 2018 18:08:14 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 19 Jan 2018 18:08:14 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d45fd9d3c4f188ab1f3a4bf6a9f5202b3f1577dbb998f5f28e82d192e0c1f0e7`  
		Last Modified: Sat, 17 Jun 2017 20:41:42 GMT  
		Size: 2.1 MB (2065460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5978b6b34b3e943e0fd25dfb50991c0bad82a986cfdaa91c4de756431ba679`  
		Last Modified: Wed, 25 Oct 2017 23:28:59 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299a1fbc19bbea84dbf4d0b6e2e71fb847299b017209b1f9783faea14214c995`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb76f2dd4162cae82233bc93ba436b63ca37e536d53c85a9f1d7343203e3c383`  
		Last Modified: Thu, 26 Oct 2017 17:07:31 GMT  
		Size: 8.6 KB (8604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac09bb55706d627cf6348c9d0bd891c2fe9a4155aee5d95264b92781371021db`  
		Last Modified: Thu, 26 Oct 2017 17:07:33 GMT  
		Size: 16.7 MB (16726549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851eb243b499bfb2a730cb151c2ffb5b72e35441dbfdc6f3157062396d2697e0`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 5.1 MB (5118642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3725b8ad7a81eb0ee9c21a0f61e6ac046db1d9b445dbd68e3eae95cf841a50c4`  
		Last Modified: Fri, 19 Jan 2018 18:08:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4199e2702c7c24401c5850d1ac84d7a17b2d27fae4731ed1e0484b27654c2f55`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43287320a1489f46fd95951d37bb9163c22b2a14e03be516faffb124d8e691d`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ab42a07c45eb8be9fb6a62842750ac033fa03ba66420af1abc944e48a1f609`  
		Last Modified: Fri, 19 Jan 2018 18:08:45 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872cc0eb1ef6c22cb7e3448fc5b25c95b2df13dffe94cb65175d3bcbd89afe2c`  
		Last Modified: Fri, 19 Jan 2018 18:08:53 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8047f834a26563aa7531e328e5f80b76208896fc3cfb47318a46cbcd74199e47`  
		Last Modified: Fri, 19 Jan 2018 18:08:56 GMT  
		Size: 11.1 MB (11119996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7`

```console
$ docker pull rabbitmq@sha256:ab055d120e04cf561373db0773f20f0070589b9b89b400277fc6b45afcf4e78a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:3.7` - linux; s390x

```console
$ docker pull rabbitmq@sha256:651166db2a74792f262aa1a74f70caa706a4051b143d2475bd18a6e111c22ed8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65686164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e647517c4795d3223fe14e589b16ecef28b9eabc10001eebb2c4101da6dc0a8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:07:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:07:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:06:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Mon, 12 Mar 2018 17:07:15 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 12 Mar 2018 17:07:15 GMT
ENV LANG=C.UTF-8
# Mon, 12 Mar 2018 17:07:16 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:07:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:07:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 12 Mar 2018 17:07:18 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:07:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 12 Mar 2018 17:07:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:07:19 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:07:19 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56417f0fd7d846dd57ff775d3681fd4051109ae35bf4a62015be70cb5093465`  
		Last Modified: Thu, 15 Feb 2018 07:10:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af910c393a4ba11e83756868aab15e08805908293884e766ccf73b738588b2eb`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 25.0 MB (25026109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1c4459cf293e420c8191efd8a81c7d2020e4ef892c556b2df8638640ca4cc1`  
		Last Modified: Mon, 12 Mar 2018 17:08:45 GMT  
		Size: 12.8 MB (12832095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dee3bd5d27bfc82f0d35869732f1bafc5009a92a68974bff9965489e74d31e`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f81decace193531563aafbce03061472ec4eed54f56969b2104b2f63de11c7`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bb0d30069a25bff758f72013ce1319c955f14bcbcd230fb66c21367958b8c1`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3301e4341a91a7b6be1025fa1f401c594c27f24450a78401cda018bfcf73ef0`  
		Last Modified: Mon, 12 Mar 2018 17:08:44 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028be3145e86ced3f4c892a93ea846b58c35fac72add4baffb302d9a3c8302ec`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.4`

```console
$ docker pull rabbitmq@sha256:ab055d120e04cf561373db0773f20f0070589b9b89b400277fc6b45afcf4e78a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:3.7.4` - linux; s390x

```console
$ docker pull rabbitmq@sha256:651166db2a74792f262aa1a74f70caa706a4051b143d2475bd18a6e111c22ed8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65686164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e647517c4795d3223fe14e589b16ecef28b9eabc10001eebb2c4101da6dc0a8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:07:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:07:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:06:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Mon, 12 Mar 2018 17:07:15 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 12 Mar 2018 17:07:15 GMT
ENV LANG=C.UTF-8
# Mon, 12 Mar 2018 17:07:16 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:07:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:07:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 12 Mar 2018 17:07:18 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:07:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 12 Mar 2018 17:07:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:07:19 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:07:19 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56417f0fd7d846dd57ff775d3681fd4051109ae35bf4a62015be70cb5093465`  
		Last Modified: Thu, 15 Feb 2018 07:10:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af910c393a4ba11e83756868aab15e08805908293884e766ccf73b738588b2eb`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 25.0 MB (25026109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1c4459cf293e420c8191efd8a81c7d2020e4ef892c556b2df8638640ca4cc1`  
		Last Modified: Mon, 12 Mar 2018 17:08:45 GMT  
		Size: 12.8 MB (12832095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dee3bd5d27bfc82f0d35869732f1bafc5009a92a68974bff9965489e74d31e`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f81decace193531563aafbce03061472ec4eed54f56969b2104b2f63de11c7`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bb0d30069a25bff758f72013ce1319c955f14bcbcd230fb66c21367958b8c1`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3301e4341a91a7b6be1025fa1f401c594c27f24450a78401cda018bfcf73ef0`  
		Last Modified: Mon, 12 Mar 2018 17:08:44 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028be3145e86ced3f4c892a93ea846b58c35fac72add4baffb302d9a3c8302ec`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.4-alpine`

```console
$ docker pull rabbitmq@sha256:b6e988357c11f707c4357580835ea73495e0fe6abd692e3f64f75acfde546160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:3.7.4-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:45086400bf9110cb4205e0c6b21fa48e280b8c69dded32f0d7e93028723a59fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30811743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80dd0e77ff9d393dce6abdc1fbe13776b2d0f321d5aac6b618395b4e59c3ccb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 05:52:10 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sun, 07 Jan 2018 05:52:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sun, 07 Jan 2018 05:52:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sun, 07 Jan 2018 05:52:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:08:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 12 Mar 2018 17:08:04 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:08:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 12 Mar 2018 17:08:05 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:08:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:08:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 12 Mar 2018 17:08:06 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:08:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:08:06 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6b93eb5641a09d7aaa44d4012f510adaad80c7ab8d2437217416ed77261530`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59134468d142cef2da2ed34942e415fe770af752f6d04f422a6dbc7de2519364`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 8.9 KB (8942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e6bac3d3a79950f24c0f3e84229a3b39cb5fa0f82257e3d574ec9e44be6e55`  
		Last Modified: Sun, 07 Jan 2018 05:55:39 GMT  
		Size: 16.5 MB (16515431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690d17235932bd0b04cdbacaec0609c5088f2a198e48c3e7670bcd783d0058a8`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 12.1 MB (12096043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e469a6b4ef00ffbc9a53d5cb479bdc208addbd2c055ca483693c815f6333b53`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da953f78f4b8029f006b059717bea5f507e53476212c21df8f5f6ed8589737e`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a5e4fca38d2541d34df1da3c299c177ea220bdc1c0bdde19299aaa0c2a0ba0`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1f13c1579ee38fe28c146c496e7a7e4236848d3ae1e5608cb6acbd71ea03e`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.4-management`

```console
$ docker pull rabbitmq@sha256:3a0eec99875bd60dfd89af44ec816a5d5b1ce613bdd331b7c799643ac1010a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:3.7.4-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:445d4891167c1e68649e50b4db0bd627d02de1d44908f2b49c9e139ce92408f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73280978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca7ed67604fe4b25d64236d8a8f11481fb0171a55ca596f38b3e763449ed0d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:07:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:07:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:06:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Mon, 12 Mar 2018 17:07:15 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 12 Mar 2018 17:07:15 GMT
ENV LANG=C.UTF-8
# Mon, 12 Mar 2018 17:07:16 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:07:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:07:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 12 Mar 2018 17:07:18 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:07:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 12 Mar 2018 17:07:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:07:19 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:07:19 GMT
CMD ["rabbitmq-server"]
# Mon, 12 Mar 2018 17:07:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 12 Mar 2018 17:07:40 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Mon, 12 Mar 2018 17:07:41 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56417f0fd7d846dd57ff775d3681fd4051109ae35bf4a62015be70cb5093465`  
		Last Modified: Thu, 15 Feb 2018 07:10:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af910c393a4ba11e83756868aab15e08805908293884e766ccf73b738588b2eb`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 25.0 MB (25026109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1c4459cf293e420c8191efd8a81c7d2020e4ef892c556b2df8638640ca4cc1`  
		Last Modified: Mon, 12 Mar 2018 17:08:45 GMT  
		Size: 12.8 MB (12832095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dee3bd5d27bfc82f0d35869732f1bafc5009a92a68974bff9965489e74d31e`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f81decace193531563aafbce03061472ec4eed54f56969b2104b2f63de11c7`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bb0d30069a25bff758f72013ce1319c955f14bcbcd230fb66c21367958b8c1`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3301e4341a91a7b6be1025fa1f401c594c27f24450a78401cda018bfcf73ef0`  
		Last Modified: Mon, 12 Mar 2018 17:08:44 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028be3145e86ced3f4c892a93ea846b58c35fac72add4baffb302d9a3c8302ec`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3874aed6c421abeb7917a33b9d7711b4ef1251337e19f6f92f6f2d88ceadf808`  
		Last Modified: Mon, 12 Mar 2018 17:09:02 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28403f8e9293ac9c3c4b37f1615e561bbfba1a8e1c5190080c5e1c15fd550f83`  
		Last Modified: Mon, 12 Mar 2018 17:09:04 GMT  
		Size: 7.6 MB (7594623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.4-management-alpine`

```console
$ docker pull rabbitmq@sha256:a88987ce437d0dc592384685efb6d5dd50b2473e452e031fbdf6e1ca6e69bfa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:3.7.4-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:f2034c396b0923708c78d2e2585c22b8096e16c8bc16cbe64766164e3c832736
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41982300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97dbab89476b47402d21c71b5e3ce338f2d3fdd10f34ea83a8e7ed315ae2ce96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 05:52:10 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sun, 07 Jan 2018 05:52:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sun, 07 Jan 2018 05:52:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sun, 07 Jan 2018 05:52:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:08:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 12 Mar 2018 17:08:04 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:08:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 12 Mar 2018 17:08:05 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:08:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:08:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 12 Mar 2018 17:08:06 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:08:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:08:06 GMT
CMD ["rabbitmq-server"]
# Mon, 12 Mar 2018 17:08:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 12 Mar 2018 17:08:18 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 12 Mar 2018 17:08:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6b93eb5641a09d7aaa44d4012f510adaad80c7ab8d2437217416ed77261530`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59134468d142cef2da2ed34942e415fe770af752f6d04f422a6dbc7de2519364`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 8.9 KB (8942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e6bac3d3a79950f24c0f3e84229a3b39cb5fa0f82257e3d574ec9e44be6e55`  
		Last Modified: Sun, 07 Jan 2018 05:55:39 GMT  
		Size: 16.5 MB (16515431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690d17235932bd0b04cdbacaec0609c5088f2a198e48c3e7670bcd783d0058a8`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 12.1 MB (12096043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e469a6b4ef00ffbc9a53d5cb479bdc208addbd2c055ca483693c815f6333b53`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da953f78f4b8029f006b059717bea5f507e53476212c21df8f5f6ed8589737e`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a5e4fca38d2541d34df1da3c299c177ea220bdc1c0bdde19299aaa0c2a0ba0`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1f13c1579ee38fe28c146c496e7a7e4236848d3ae1e5608cb6acbd71ea03e`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72473354d3c89d31d9b5e5191a03682815d7460611376bdc4077583357998751`  
		Last Modified: Mon, 12 Mar 2018 17:09:40 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985979300c288229ce4a36e7911a4330bfdf9f571c5f478c2dce16725c5e5645`  
		Last Modified: Mon, 12 Mar 2018 17:09:42 GMT  
		Size: 11.2 MB (11170366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.4-rc.4`

```console
$ docker pull rabbitmq@sha256:6f38364db1af121ab187072764d02f14c5603443e987e49ef66674f604af8c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.7.4-rc.4` - linux; amd64

```console
$ docker pull rabbitmq@sha256:8aaa0cd00830927cf4d67cc39d1ebaa843851f5a3842ce19df834e331784f6e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68168996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:881e56fdec5500722c3ea5953b894f75c7bf821d9a7b48629361b9b0447494cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 18:56:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:56:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 16 Feb 2018 18:56:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 18:57:02 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Feb 2018 18:57:03 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Fri, 16 Feb 2018 18:57:47 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:57:55 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 16 Feb 2018 18:57:56 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 18:57:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 01:22:37 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 01:22:38 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 01:22:38 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 01:23:27 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 01:23:28 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 01:23:28 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 01:23:29 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 01:23:29 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 01:23:30 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 01:23:31 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 01:23:31 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:23:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 01:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:23:33 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 01:23:33 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aa5c2fc28c2889bb371a7c8c86d79363c2210331abc9ab368eec5664f9c7f1`  
		Last Modified: Fri, 16 Feb 2018 19:01:56 GMT  
		Size: 4.5 MB (4498430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6866d83ad777c7832f9a12a4c138b04ae865fc71238531025c3a1d9cdab3e6`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424ad5823c0c06246ed365a566ac25a786727eb4de90d40450c75c9f9589d05c`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 952.0 KB (951962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f7e6945ef422f435b20cc8b77ebcfb95d9ab963a5a54e7a038efab9f37de5`  
		Last Modified: Fri, 16 Feb 2018 19:01:52 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2983462f8b69d0ad88f218912db6d68bde0c18fad0354a3a5aff7d5f93e4fa9e`  
		Last Modified: Fri, 16 Feb 2018 19:01:56 GMT  
		Size: 27.4 MB (27372199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36272053325786597e5127d4cdbb37cb84705348fdeb7457b7612eabe22e2d6a`  
		Last Modified: Sat, 03 Mar 2018 01:25:56 GMT  
		Size: 12.8 MB (12838374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da5cdf0511c80ec73d8c8bf969bebe628cd3121108a1ee587ce0512bd163158`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d326929135243e6a8b7aaceab049ad034097cdfe04186f28674cf6e3b04bba0d`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1bbd539225613770d81d820c59978baec744ddbe492af53e40624aa36f05eb`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2ad82bcb6865c2befd54eb436a0b75d9fed95ddb0fb62fc84cff1cd98b7508`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5055a36257aff98d16aa7090428e966d1eb3f566b7b255ce880afcaf28e362d`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:6079b77e0628aa1af3239b0fcd0f761e0430280c010c3990ded270d8be048264
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (64041576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c4d325bf73f912ca49a146179e040e979b0e1117285bc8b4df440b465fa2aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:06:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:06:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 22:06:54 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 22:07:37 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:07:40 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 22:08:20 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:08:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 22:08:20 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:08:21 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 15:14:36 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 15:14:36 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 15:14:36 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 15:15:51 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 15:15:51 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 15:15:51 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 15:15:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 15:15:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 15:15:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 15:15:55 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 15:15:55 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:15:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:15:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:15:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 15:15:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a212dd3e52653adb4c0c3677397e74fcac10b74d38b2df38af460830e04b1ac`  
		Last Modified: Thu, 15 Feb 2018 22:12:23 GMT  
		Size: 4.2 MB (4231540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae935791a245772b6342dece630412eff8a97d12aaf579e401ccc09215205a`  
		Last Modified: Thu, 15 Feb 2018 22:12:20 GMT  
		Size: 4.1 KB (4088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458120fe43d4aff849ffaeb2fa6d4cc8d2c3dc5c72caeb744d44ffa74f07033d`  
		Last Modified: Thu, 15 Feb 2018 22:12:22 GMT  
		Size: 942.5 KB (942460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfcf2d21f63838827957f9d1ab95f92202f63276a92d9d8799a93fce7b71d3a`  
		Last Modified: Thu, 15 Feb 2018 22:12:20 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e985b292dce34fd4c1a5c2bb38498fd0983718aabafca68a1c6492310146e8b4`  
		Last Modified: Thu, 15 Feb 2018 22:12:24 GMT  
		Size: 24.9 MB (24872054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a16a32e8f1c6c4cde706d2c43bf0a8b6576ca138e8deb0aa265b66b08bce28a`  
		Last Modified: Sat, 03 Mar 2018 15:17:06 GMT  
		Size: 12.8 MB (12809206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b788ff34dec55324e17ec31685104886030a895dedb9eb1dd2d09bd46567edba`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff5ab0b60e7c2d26bc7e7618dde4f8ca84b1d4c336e84915575a4eef108f411`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f98f1e3322ef3d0587d99363d0e15858746d9d7fd10d81bd0d18a250e6060b`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33eed5224f8283109c6a4c075743c5739fa45a15b758d18f43e496ac7f7d74cd`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f29b5c4ab5b32af99079cca278e0efba4e1c4c9041c0d06c2712931bb40fb52`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:ff962ab1172053ff883acb23b5166f40b1ba766156851fe13cbe383ce0b8d1d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61447816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604aa6d42fa543e0d64a45ff40da945e483fdad40e926e0ba0264a5854ef9e89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:11:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 16:11:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:12:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 16:12:17 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 16:12:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:12:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 16:12:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 16:12:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 14:07:40 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 14:07:40 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 14:07:40 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 14:08:41 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 14:08:41 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 14:08:41 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 14:08:42 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 14:08:42 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 14:08:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 14:08:45 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 14:08:45 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 14:08:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 14:08:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 14:08:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 14:08:47 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b013f1082d9f6b4590d4a988c911f20b6ecd1025e255fc4a69303f3dfd32317d`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 3.9 MB (3868601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e6890c5bfb431a26fb646081f14de6ade476a28158583b3e708a8bc3f40ff3`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3449fb95440de1ead82a804d144bcd225029ac93ea319b6471e1e97a5bf4ecc2`  
		Last Modified: Thu, 15 Feb 2018 16:16:29 GMT  
		Size: 926.1 KB (926131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac028a3979e73e596b053b58fa2e196b155069793bc8a7bc2cf4e868b5405d9`  
		Last Modified: Thu, 15 Feb 2018 16:16:29 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264ff8b5d5697555bb29a8d1a3e1f4b69ff99f92897ff0888a7d165c83fd3926`  
		Last Modified: Thu, 15 Feb 2018 16:16:33 GMT  
		Size: 24.6 MB (24575931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0395e21ada356272f2ebec99ebadc409438d425d14a7e83984c9555bfd559249`  
		Last Modified: Sat, 03 Mar 2018 14:09:51 GMT  
		Size: 12.8 MB (12779792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e562f07d2540720018a7acd2fa505d9177f1c506de104bbff30a95b8302734a`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df10f76e638338f466587f76c27ef633d91d14a4d90418c9d4bc8d37ef50c442`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03144497be7b281d7412da8c7873b59135cd3c69117bcb20ebd39c213bbb1e8`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2007106f2697ecf78516ecaaf283f661f91b0dae47600475d6c30c5b3c251fb`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1d92311ec0e29db39cf9716b77b0d410b95faac5ad92c46e23dd144f63bdcd`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:0f67948c95000e82206f98bd9c340727a9260ca961d8202bb9c2123a33a1c6b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62960829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db6e0cfc151fabbd03ae02b6328f05bd03827260b36d9fc3ab3f27a87593ea7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 23:53:57 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 23:53:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:54:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 23:54:35 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 23:55:45 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 23:55:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 23:55:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 23:55:48 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 14:53:20 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 14:53:21 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 14:53:21 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 14:55:07 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 14:55:08 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 14:55:08 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 14:55:10 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 14:55:10 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 14:55:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 14:55:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 14:55:14 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 14:55:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 14:55:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 14:55:17 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 14:55:18 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecc7280a57c4f164dcf6ac46e8f359b64b73ac4eebda29730420cbc351f6de`  
		Last Modified: Fri, 16 Feb 2018 00:03:00 GMT  
		Size: 4.1 MB (4073277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de655884dd724f8f2f9dc4a57ce020cf3c7ea27c33757c572eb63feed718d68d`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14dce82e5cc18457d199dc012088a60f363697db4983a790036468ee985e073a`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 919.4 KB (919384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558516637ee16130b13ceed7508d8317e3d00c459a4a1096e73e0793bd412a75`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e8156666bfe6af3b5b9f2ffc484feb8d9bbeef45f3e89566370dc2f4199c01`  
		Last Modified: Fri, 16 Feb 2018 00:03:02 GMT  
		Size: 24.8 MB (24806003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1cf552e04a291f31a7a64e19a71a30e14f2fabbde1bccff11d2714d81df3f1`  
		Last Modified: Sat, 03 Mar 2018 14:58:24 GMT  
		Size: 12.8 MB (12803467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5acdc9f7c90847bf52136f3419352bc58c28ec4b5c16f7f42239d97a5657c3`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5751893aa49521126d99b73cd9a9f3dab53650c53abd979734e83c7dcff295e`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8619f49db0da9e6f0b0108554cd2a5b2babfce71363d8ced0358da44c06ce76a`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c40dbeb115e64f184ff3d94075821e8e2b73649a5624946060ced3ee0aa081`  
		Last Modified: Sat, 03 Mar 2018 14:58:21 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee3def205e37b74593c5233a340571d6b8d1e1526828a0d488a5e78ce7a3983`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4` - linux; 386

```console
$ docker pull rabbitmq@sha256:a0a3e715d8543008662d3f7a14f1e9566afc404e58a366e40cac4b6b95cb50bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.3 MB (69311215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ae4cb1b696e3e08b9fc8a3710d6672f48e79c93cf50a9829b38929ab039882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 06:02:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:02:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 21 Feb 2018 06:02:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 06:18:09 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 06:18:09 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 21 Feb 2018 06:18:49 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:18:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 21 Feb 2018 06:18:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 06:18:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 11:46:44 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 11:46:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 11:46:45 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 11:47:17 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 11:47:18 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 11:47:18 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 11:47:19 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 11:47:19 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 11:47:20 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 11:47:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 11:47:22 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:47:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 11:47:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:47:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 11:47:24 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fde2b9bfdd614411d1d5380916758b66c6257b263b10477d6a2795b6546e380`  
		Last Modified: Wed, 21 Feb 2018 06:49:22 GMT  
		Size: 4.8 MB (4803819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e09ac772b52c4b12b313c697bc00be2f982158ebcc742cb1479ee565ec7b28`  
		Last Modified: Wed, 21 Feb 2018 06:49:19 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bb3531a8f1827457fdde45c0eb60d638dbc6dfde7062a7760a1e1d1b045f13`  
		Last Modified: Wed, 21 Feb 2018 06:49:18 GMT  
		Size: 931.6 KB (931565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7937453ddac14ecbc5e7ec4d14fb796beda0cb63affc4942322ceeb630505610`  
		Last Modified: Wed, 21 Feb 2018 06:49:18 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1d7654af409f874e3881298682159aec377d49dbfb7204a1634f9f45e3413d`  
		Last Modified: Wed, 21 Feb 2018 06:49:25 GMT  
		Size: 27.6 MB (27570540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2482b47cbb8b4f8cc7f66b68d83dce29275299ee0660ed6fd8aea049a93a719e`  
		Last Modified: Sat, 03 Mar 2018 12:15:22 GMT  
		Size: 12.9 MB (12859009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d696dbedc74f4d1b50ad8fada058d33836ed5920224df38bfc8c1a437a2c458`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2d54f4c3804e9c13134f5d64a60d75cff7ab0c33af46c1cc721d82219cb8b6`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28699dc504b15e2ffd5de83ff404f8c9f22101c0e5de0b00b9820d08a7732a2c`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4b5b400b3db1aebbf875acec7a786dccd045a27065053d0c276cfce75b02`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787f3d6c201bf731ea5cbc3d1bdaba4f83666aaec47942561fc8d97417776e1`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:42eed8c25b416aa44d527bc6a159839af1f626fe064cb4d6c51cf3fe4f6487cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65921274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5da8bac45eed7815e8d86af88ff9496cc9cad2cb2a4c7e8a59cb6038e2a7e49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:01:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:01:20 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:01:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:02:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:02:38 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:04:50 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:04:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:04:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:04:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 08:11:26 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 08:11:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 08:11:28 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 08:12:37 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 08:12:38 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 08:12:39 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 08:12:43 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 08:12:44 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 08:12:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 08:12:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 08:12:53 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 08:12:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 08:12:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 08:12:59 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 08:13:00 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7eb3ba88b8fb5c65c82d925e3dcbca9f48c46c56825a694fa78f92768e98f36`  
		Last Modified: Thu, 15 Feb 2018 07:15:17 GMT  
		Size: 4.4 MB (4360747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba68cb1b2e1a68352c6ccc11da8cf6084991476e7259a12748d767af1a187a08`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 4.1 KB (4107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534c75edb97f6c0ac366a7b7f3c3f0c2545a80abc9d4fe398852a7c0fb647cae`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 920.9 KB (920856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9812a87515bad00ca079aa29d890490ea5cdee29af48e4ba64973c94dc838e9`  
		Last Modified: Thu, 15 Feb 2018 07:15:13 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d03c6e69190174f5e919e55754b072b20b7bc8736b8dfef1e53712b9a96240c`  
		Last Modified: Thu, 15 Feb 2018 07:15:18 GMT  
		Size: 25.1 MB (25053207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6ac4a10392fe91a829ffe3162dd9b4427f972a0c1e59e0e4ac5c12cc0e75ea`  
		Last Modified: Sat, 03 Mar 2018 08:16:18 GMT  
		Size: 12.8 MB (12822061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e6a4a41de4ac366a1624ceec5b62d952c1b04d179b34d9855ec90df5e22fcd`  
		Last Modified: Sat, 03 Mar 2018 08:16:15 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46311033a315e5780b2e8cca5b1ab5cea58c5d6992f765a224784e36ed15de3c`  
		Last Modified: Sat, 03 Mar 2018 08:16:14 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef037c3650a539c5f1471ad7f3d4f88f09699e807ef77d4a88332f8ae8c0dcb`  
		Last Modified: Sat, 03 Mar 2018 08:16:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc925134bd31d23c0538a4a29e314e6e8dd7558ab7ea05649f658dc243df75f2`  
		Last Modified: Sat, 03 Mar 2018 08:16:16 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2061402514412e7e7a6f18dc2bef51e3b67da03236a65cbb74c0457c228c570c`  
		Last Modified: Sat, 03 Mar 2018 08:16:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4` - linux; s390x

```console
$ docker pull rabbitmq@sha256:dd7b24e159b627594fc87a0a12037390e09ae2a92f282f005963182612e6aa6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65688058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b456c49f01a6aca91ebb7aa2b87c8c85c90b063a2e78f5c6d2c131414075083`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:07:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:07:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 18:06:33 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 18:06:33 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 18:06:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 18:07:23 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 18:07:23 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 18:07:23 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 18:07:24 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 18:07:24 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 18:07:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 18:07:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 18:07:25 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 18:07:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 18:07:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 18:07:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 18:07:26 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56417f0fd7d846dd57ff775d3681fd4051109ae35bf4a62015be70cb5093465`  
		Last Modified: Thu, 15 Feb 2018 07:10:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af910c393a4ba11e83756868aab15e08805908293884e766ccf73b738588b2eb`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 25.0 MB (25026109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a1bb913a434aae980733f975240dd5f889e2e24615b54786f68c753415113a`  
		Last Modified: Sat, 03 Mar 2018 18:09:05 GMT  
		Size: 12.8 MB (12833984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5ce8d326234a70b58e4b7d1a28536024714c77154df3b7a02fa184911e3eef`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25489352eac8325a059c07ab714aa59203b8469bb3d2a3feffd18933a153591`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944863607ce192c05a1f208257d28ab99c2db2565b5442fb80fd814d376eda15`  
		Last Modified: Sat, 03 Mar 2018 18:09:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aacd031817ed45d3d15383eed5bf977b18b0199326cbd829458fb76a6cac8d11`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ae7f5d98a598e46c6c307d254e459e8cba1c4e898aefe869690c5253d69bc0`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.4-rc.4-alpine`

```console
$ docker pull rabbitmq@sha256:9d4df6b5843edad163a06e79a56cb586c4c48e36974b89bb52bd6399c9d2f921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.7.4-rc.4-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4947de67385995c630830c4a31d6199c7e226aa1bd340ba1039082d2575a1f34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32833899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54fd4a930c64942dd902e6f62294b2742eea4e6cd504c30dcf11dd38a755f922`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:55:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 Jan 2018 04:55:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 04:55:54 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 Jan 2018 04:56:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 Jan 2018 04:56:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 Jan 2018 04:56:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 04:56:02 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 01:24:20 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 01:24:20 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 01:24:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 01:24:53 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 01:24:53 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 01:24:54 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 01:24:54 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 01:24:55 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 01:24:56 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:24:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:24:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 01:24:56 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387f4b4c52b95160763db7d1266075905ba96d0f5bdcb562257fb150ec2c52e`  
		Last Modified: Wed, 10 Jan 2018 05:02:45 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba8c403a5b6fbb5651fd71cc7e2c96605165864b4ee509d2b6676e2958b8164`  
		Last Modified: Wed, 10 Jan 2018 05:02:44 GMT  
		Size: 8.5 KB (8546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4258fc50c52315f5cd0eec92f98862c11ffd3b34dd6404cfb9a921fb05821600`  
		Last Modified: Wed, 10 Jan 2018 05:02:47 GMT  
		Size: 18.7 MB (18652404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b0d59c0126bb99541a5b658f6cd5a9c958fa93e9cfc8d2fc57638c91827848`  
		Last Modified: Sat, 03 Mar 2018 01:27:09 GMT  
		Size: 12.1 MB (12101494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da7731a170285409c5a5bbcd0b4198dca1c21085e63a1f42b01a8a64d56d6d6`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fbc2989e5aa8361a5915597f574335106e18ddc194d55bb171925b7a94e7841`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f654e1f80998794735cf9aef49833af5131095f041a22c61bf575863fc58c0`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c2a9e566e9be843939c6936f402b9b768ba1bc433e9f783f28bea61f316b0b`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:370c198138e96218c7d43125435dab25df1f6175e18ee9097f09a5fd679b66a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30351380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba2517bed0b95e2d50b65623ad6f9632f7f1000ebd4884620ada41f8822c4e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 14:57:23 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:57:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 14:57:46 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 14:57:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:57:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 14:57:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:57:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 14:56:35 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 14:56:35 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 14:56:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 14:56:50 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 14:56:51 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 14:56:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 14:56:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 14:56:55 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 14:56:56 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 14:56:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 14:56:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 14:56:58 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4ed88f638b23b4b44a51af5828b7ca6cf492e10d10b6517f03b2dc5f9c6a`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec871b8e16217284a5c9467fc885f9330b7cf594b88a9d251f442a31f9b11982`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc676aee1200891fd5416055f87903087826e98535cbd81dcb50768900244552`  
		Last Modified: Wed, 13 Dec 2017 15:06:00 GMT  
		Size: 16.3 MB (16252090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6375fa56c2f449c5d0c41049e27cd34cd5327f0a347176fb5f61797fac395a`  
		Last Modified: Sat, 03 Mar 2018 14:59:37 GMT  
		Size: 12.1 MB (12095694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff911323207dbd53adeea54ddd2f463ddaed9b7013af62c0b78c391552bd2400`  
		Last Modified: Sat, 03 Mar 2018 14:59:34 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94864e92a73475a96cf6e221859d10f3235e33c30f5d59faf5e900c8e6bb1ce6`  
		Last Modified: Sat, 03 Mar 2018 14:59:35 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea84e5ed7a7bb7dd59b1ba1ed8101187233655b53183386b4d1b216fcbc272ff`  
		Last Modified: Sat, 03 Mar 2018 14:59:35 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff22e3eb7fc74468135c70ee8ec190f683b1020558407e9f202ec99dd25ae453`  
		Last Modified: Sat, 03 Mar 2018 14:59:35 GMT  
		Size: 4.2 KB (4176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:c86b273e8116f11f41428512e9ad31372cb8d24e9be86ed0bec8599401f33275
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33058176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fdc40fc5602c3250423fb8d5ecc7a73e23edcdad7ada5969be726b39aebed1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 21:22:00 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:22:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 21:22:27 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 21:22:27 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 12:06:54 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 12:06:54 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 12:07:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 12:07:11 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 12:07:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 12:07:12 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 12:07:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 12:07:14 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 12:07:14 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 12:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 12:07:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 12:07:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27825103f577634e399aa4d7b3926d800daaa8fb48694cbc00441e394ab49dc`  
		Last Modified: Tue, 12 Dec 2017 21:39:59 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906faec23cf2653ea69fef127c0ce0bad706d94c732403b1f414228152f476bd`  
		Last Modified: Tue, 12 Dec 2017 21:39:59 GMT  
		Size: 8.7 KB (8650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb1029d1df08e5376a776e456084b04ad97df041d887f4ce722247c2d61a3b4`  
		Last Modified: Tue, 12 Dec 2017 21:40:07 GMT  
		Size: 18.8 MB (18815715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e53af8a6f003236ed2e40ad0097f12f9166098af1aa2e4adf6dec2585bb17b`  
		Last Modified: Sat, 03 Mar 2018 12:47:21 GMT  
		Size: 12.1 MB (12101509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2dd9208e41aee4c91405fe8d8779ae3072ad0c397a0249fcaa404290860b33`  
		Last Modified: Sat, 03 Mar 2018 12:47:21 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e679fdefb0fb0cc86153f7c7047a5a5ec5ed7811b088563649bb3808829d35`  
		Last Modified: Sat, 03 Mar 2018 12:47:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06091c5c699a200aabec769bca4c2ed5820085620fa843123affeb62436a1654`  
		Last Modified: Sat, 03 Mar 2018 12:47:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72052ac3058d7d26e2a54e0b462b385005cb23304966c463e7043700956f703`  
		Last Modified: Sat, 03 Mar 2018 12:47:19 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:c2578d7168c8d34e396df6f57565d2651b595684e6dd16b224662fab33fbe512
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30649577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b0ade39d8763f625c2f1ad89b117c9e2e49d80ac47ae7aeca62fddb1389a05a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 08:18:08 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:18:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 08:18:35 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 08:18:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:18:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 08:18:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:18:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 08:14:32 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 08:14:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 08:15:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 08:15:08 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 08:15:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 08:15:12 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 08:15:15 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 08:15:18 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 08:15:19 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 08:15:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 08:15:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 08:15:24 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d1ed2187942e6103764c1aafdbb8a07c8ca518010057fe8241ae1785036c34`  
		Last Modified: Wed, 13 Dec 2017 08:26:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edcdde4e4bb24d232fb81eb66c47fcc0d25af42f3b5d6d228547cd01c4eee4c`  
		Last Modified: Wed, 13 Dec 2017 08:26:25 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d586348c018beacd8f060a315dc7b4d506f2132378b683c3fead6f9fa7766efe`  
		Last Modified: Wed, 13 Dec 2017 08:26:29 GMT  
		Size: 16.5 MB (16456345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3480fdffdc7a029ecd27e483c4afe8bfe9605c490c11d7e8dfa94b7ff54a96b9`  
		Last Modified: Sat, 03 Mar 2018 08:16:56 GMT  
		Size: 12.1 MB (12096327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca45d918db39d9cd854b3b8765b93d16eabaa08e294d46b46dc41504e04c6692`  
		Last Modified: Sat, 03 Mar 2018 08:16:57 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121a6a5e89b503f70a3ba28e46d507dd27d4cf7f6f72ff5cd160c7117c96f9a1`  
		Last Modified: Sat, 03 Mar 2018 08:16:54 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cf4e540d4b5550a3eb817ea22d1c849b64a93b601a07612548e04789361907`  
		Last Modified: Sat, 03 Mar 2018 08:16:54 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51274abff92e1db52d5c675fadd9dca01ab988bb0862bd824f1a2d27c2f38419`  
		Last Modified: Sat, 03 Mar 2018 08:16:54 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:fb0a50bb6f363964bf8e817175ac2291265cae2e3c30bef1e1f374839329f826
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30812145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2f581a53a56fcfd2a89a6d1fb77df4b57678d226ea463dc154168e441e3c71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 05:52:10 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sun, 07 Jan 2018 05:52:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sun, 07 Jan 2018 05:52:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sun, 07 Jan 2018 05:52:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 18:07:55 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 18:07:55 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Thu, 08 Mar 2018 18:08:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 08 Mar 2018 18:08:21 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 08 Mar 2018 18:08:21 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 08 Mar 2018 18:08:22 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 08 Mar 2018 18:08:22 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 08 Mar 2018 18:08:23 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 08 Mar 2018 18:08:23 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 08 Mar 2018 18:08:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Mar 2018 18:08:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Mar 2018 18:08:23 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6b93eb5641a09d7aaa44d4012f510adaad80c7ab8d2437217416ed77261530`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59134468d142cef2da2ed34942e415fe770af752f6d04f422a6dbc7de2519364`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 8.9 KB (8942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e6bac3d3a79950f24c0f3e84229a3b39cb5fa0f82257e3d574ec9e44be6e55`  
		Last Modified: Sun, 07 Jan 2018 05:55:39 GMT  
		Size: 16.5 MB (16515431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942998aa455b2b360fc9589ec7aa31a274826bd729c0b104a3bcd003df16a399`  
		Last Modified: Thu, 08 Mar 2018 18:09:30 GMT  
		Size: 12.1 MB (12096449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb654878e390d4c4ba0e33edd6d5e510f51604bba9a6630a119d20db15462d7a`  
		Last Modified: Thu, 08 Mar 2018 18:09:29 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f167736e8c82d07ca472c3a0c96aef2a380540cf3390df215ab6d61a35f2cd98`  
		Last Modified: Thu, 08 Mar 2018 18:09:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a59b69757f5b971a4be945f771a753d67e38ec85b6a33b77c172bf71848c0`  
		Last Modified: Thu, 08 Mar 2018 18:09:30 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679c27ee68bf48af9a7de45997aff668fa8bd3540559d30c8534b7e1b88802c9`  
		Last Modified: Thu, 08 Mar 2018 18:09:29 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.4-rc.4-management`

```console
$ docker pull rabbitmq@sha256:c813a1996f0d859678d9f86f4f7a45bff7c8462ebf125d05fe4540a62faa8409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.7.4-rc.4-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:c8702f04ace656e22b5d3b2fce16ad7823cfb21f1229cf43e5ee04823296a868
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75791509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1a5ad59d189fff7331488596d7dc498fa660336b11b5e6c61a27823f588bdb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 18:56:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:56:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 16 Feb 2018 18:56:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 18:57:02 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Feb 2018 18:57:03 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Fri, 16 Feb 2018 18:57:47 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:57:55 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 16 Feb 2018 18:57:56 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 18:57:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 01:22:37 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 01:22:38 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 01:22:38 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 01:23:27 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 01:23:28 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 01:23:28 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 01:23:29 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 01:23:29 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 01:23:30 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 01:23:31 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 01:23:31 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:23:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 01:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:23:33 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 01:23:33 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 01:23:52 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 01:24:04 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 01:24:04 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aa5c2fc28c2889bb371a7c8c86d79363c2210331abc9ab368eec5664f9c7f1`  
		Last Modified: Fri, 16 Feb 2018 19:01:56 GMT  
		Size: 4.5 MB (4498430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6866d83ad777c7832f9a12a4c138b04ae865fc71238531025c3a1d9cdab3e6`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424ad5823c0c06246ed365a566ac25a786727eb4de90d40450c75c9f9589d05c`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 952.0 KB (951962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f7e6945ef422f435b20cc8b77ebcfb95d9ab963a5a54e7a038efab9f37de5`  
		Last Modified: Fri, 16 Feb 2018 19:01:52 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2983462f8b69d0ad88f218912db6d68bde0c18fad0354a3a5aff7d5f93e4fa9e`  
		Last Modified: Fri, 16 Feb 2018 19:01:56 GMT  
		Size: 27.4 MB (27372199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36272053325786597e5127d4cdbb37cb84705348fdeb7457b7612eabe22e2d6a`  
		Last Modified: Sat, 03 Mar 2018 01:25:56 GMT  
		Size: 12.8 MB (12838374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da5cdf0511c80ec73d8c8bf969bebe628cd3121108a1ee587ce0512bd163158`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d326929135243e6a8b7aaceab049ad034097cdfe04186f28674cf6e3b04bba0d`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1bbd539225613770d81d820c59978baec744ddbe492af53e40624aa36f05eb`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2ad82bcb6865c2befd54eb436a0b75d9fed95ddb0fb62fc84cff1cd98b7508`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5055a36257aff98d16aa7090428e966d1eb3f566b7b255ce880afcaf28e362d`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b97e17ef4934fa51766a9eca7091201df3d15d67b81bd65677ef208cac0376`  
		Last Modified: Sat, 03 Mar 2018 01:26:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db6cec8b6c44c1bae3f63702a2630902bf397cbd87d98b37b795c20b8c1458f`  
		Last Modified: Sat, 03 Mar 2018 01:26:32 GMT  
		Size: 7.6 MB (7622319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:2829d7df1af3c5502f3e52f11f0897c274f1775363417534a2909adb9bd63737
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71514476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9128e7354168756085d6edb58993be61b17da83e63ebe7e09ae6c35685435a04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:06:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:06:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 22:06:54 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 22:07:37 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:07:40 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 22:08:20 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:08:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 22:08:20 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:08:21 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 15:14:36 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 15:14:36 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 15:14:36 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 15:15:51 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 15:15:51 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 15:15:51 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 15:15:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 15:15:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 15:15:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 15:15:55 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 15:15:55 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:15:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:15:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:15:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 15:15:57 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 15:16:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 15:16:33 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 15:16:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a212dd3e52653adb4c0c3677397e74fcac10b74d38b2df38af460830e04b1ac`  
		Last Modified: Thu, 15 Feb 2018 22:12:23 GMT  
		Size: 4.2 MB (4231540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae935791a245772b6342dece630412eff8a97d12aaf579e401ccc09215205a`  
		Last Modified: Thu, 15 Feb 2018 22:12:20 GMT  
		Size: 4.1 KB (4088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458120fe43d4aff849ffaeb2fa6d4cc8d2c3dc5c72caeb744d44ffa74f07033d`  
		Last Modified: Thu, 15 Feb 2018 22:12:22 GMT  
		Size: 942.5 KB (942460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfcf2d21f63838827957f9d1ab95f92202f63276a92d9d8799a93fce7b71d3a`  
		Last Modified: Thu, 15 Feb 2018 22:12:20 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e985b292dce34fd4c1a5c2bb38498fd0983718aabafca68a1c6492310146e8b4`  
		Last Modified: Thu, 15 Feb 2018 22:12:24 GMT  
		Size: 24.9 MB (24872054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a16a32e8f1c6c4cde706d2c43bf0a8b6576ca138e8deb0aa265b66b08bce28a`  
		Last Modified: Sat, 03 Mar 2018 15:17:06 GMT  
		Size: 12.8 MB (12809206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b788ff34dec55324e17ec31685104886030a895dedb9eb1dd2d09bd46567edba`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff5ab0b60e7c2d26bc7e7618dde4f8ca84b1d4c336e84915575a4eef108f411`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f98f1e3322ef3d0587d99363d0e15858746d9d7fd10d81bd0d18a250e6060b`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33eed5224f8283109c6a4c075743c5739fa45a15b758d18f43e496ac7f7d74cd`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f29b5c4ab5b32af99079cca278e0efba4e1c4c9041c0d06c2712931bb40fb52`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ecb3d2789d3609fa6e1637a7d9477db58503f908224173a2b48a1ed92d7f28`  
		Last Modified: Sat, 03 Mar 2018 15:17:24 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4913f90f56f428a07823d0f56cfdd0c03dedc6d00423e7471c6443156813ee72`  
		Last Modified: Sat, 03 Mar 2018 15:17:27 GMT  
		Size: 7.5 MB (7472707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:5797de283326d20003e6cad55125589d82b345557d8a6c515af2e9980f02f62a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.6 MB (68630537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e607058f3c997bed8569fa49ecddea02318f52008b668e678e0414254a905c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:11:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 16:11:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:12:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 16:12:17 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 16:12:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:12:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 16:12:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 16:12:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 14:07:40 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 14:07:40 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 14:07:40 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 14:08:41 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 14:08:41 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 14:08:41 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 14:08:42 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 14:08:42 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 14:08:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 14:08:45 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 14:08:45 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 14:08:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 14:08:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 14:08:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 14:08:47 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 14:09:03 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 14:09:18 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 14:09:19 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b013f1082d9f6b4590d4a988c911f20b6ecd1025e255fc4a69303f3dfd32317d`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 3.9 MB (3868601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e6890c5bfb431a26fb646081f14de6ade476a28158583b3e708a8bc3f40ff3`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3449fb95440de1ead82a804d144bcd225029ac93ea319b6471e1e97a5bf4ecc2`  
		Last Modified: Thu, 15 Feb 2018 16:16:29 GMT  
		Size: 926.1 KB (926131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac028a3979e73e596b053b58fa2e196b155069793bc8a7bc2cf4e868b5405d9`  
		Last Modified: Thu, 15 Feb 2018 16:16:29 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264ff8b5d5697555bb29a8d1a3e1f4b69ff99f92897ff0888a7d165c83fd3926`  
		Last Modified: Thu, 15 Feb 2018 16:16:33 GMT  
		Size: 24.6 MB (24575931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0395e21ada356272f2ebec99ebadc409438d425d14a7e83984c9555bfd559249`  
		Last Modified: Sat, 03 Mar 2018 14:09:51 GMT  
		Size: 12.8 MB (12779792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e562f07d2540720018a7acd2fa505d9177f1c506de104bbff30a95b8302734a`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df10f76e638338f466587f76c27ef633d91d14a4d90418c9d4bc8d37ef50c442`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03144497be7b281d7412da8c7873b59135cd3c69117bcb20ebd39c213bbb1e8`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2007106f2697ecf78516ecaaf283f661f91b0dae47600475d6c30c5b3c251fb`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1d92311ec0e29db39cf9716b77b0d410b95faac5ad92c46e23dd144f63bdcd`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d75a8bce9c7adc57c4db0313a6cd3e49ddae618167f70aed9320cd94917359`  
		Last Modified: Sat, 03 Mar 2018 14:10:12 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbda03b77049b37e4acf47a5b721ee84dcaf5a4689b04d3969fd59610e06f697`  
		Last Modified: Sat, 03 Mar 2018 14:10:15 GMT  
		Size: 7.2 MB (7182530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:092dccb5e5c0dcc2e97e56bc334f222f62e0b9968bfb8015d052ae75df26890b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 MB (70435829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783dd1c584f0797abb6c48b133ccd6e3c74366b8b5b79084df10901fe7cf8b31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 23:53:57 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 23:53:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:54:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 23:54:35 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 23:55:45 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 23:55:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 23:55:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 23:55:48 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 14:53:20 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 14:53:21 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 14:53:21 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 14:55:07 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 14:55:08 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 14:55:08 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 14:55:10 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 14:55:10 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 14:55:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 14:55:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 14:55:14 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 14:55:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 14:55:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 14:55:17 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 14:55:18 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 14:55:50 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 14:56:17 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 14:56:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecc7280a57c4f164dcf6ac46e8f359b64b73ac4eebda29730420cbc351f6de`  
		Last Modified: Fri, 16 Feb 2018 00:03:00 GMT  
		Size: 4.1 MB (4073277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de655884dd724f8f2f9dc4a57ce020cf3c7ea27c33757c572eb63feed718d68d`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14dce82e5cc18457d199dc012088a60f363697db4983a790036468ee985e073a`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 919.4 KB (919384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558516637ee16130b13ceed7508d8317e3d00c459a4a1096e73e0793bd412a75`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e8156666bfe6af3b5b9f2ffc484feb8d9bbeef45f3e89566370dc2f4199c01`  
		Last Modified: Fri, 16 Feb 2018 00:03:02 GMT  
		Size: 24.8 MB (24806003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1cf552e04a291f31a7a64e19a71a30e14f2fabbde1bccff11d2714d81df3f1`  
		Last Modified: Sat, 03 Mar 2018 14:58:24 GMT  
		Size: 12.8 MB (12803467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5acdc9f7c90847bf52136f3419352bc58c28ec4b5c16f7f42239d97a5657c3`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5751893aa49521126d99b73cd9a9f3dab53650c53abd979734e83c7dcff295e`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8619f49db0da9e6f0b0108554cd2a5b2babfce71363d8ced0358da44c06ce76a`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c40dbeb115e64f184ff3d94075821e8e2b73649a5624946060ced3ee0aa081`  
		Last Modified: Sat, 03 Mar 2018 14:58:21 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee3def205e37b74593c5233a340571d6b8d1e1526828a0d488a5e78ce7a3983`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f018091f7e80a6796b43a73b32cfae2c3dca529e244c78a79f219a6e63f887`  
		Last Modified: Sat, 03 Mar 2018 14:58:59 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f686259a095da33f55626f4900f6932d4afc4ea0f37f28add8e45fdca2af9f`  
		Last Modified: Sat, 03 Mar 2018 14:59:02 GMT  
		Size: 7.5 MB (7474808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:1cfeebb83f1c1ca29efa8825cd99a49de11ce7eebfe0e686f020dbc06d9df5c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (77025561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34998f491d9a20372b9ad97edcbafc0d7ad78db30986a2f2024deece0e7ca21f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 06:02:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:02:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 21 Feb 2018 06:02:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 06:18:09 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 06:18:09 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 21 Feb 2018 06:18:49 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:18:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 21 Feb 2018 06:18:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 06:18:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 11:46:44 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 11:46:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 11:46:45 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 11:47:17 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 11:47:18 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 11:47:18 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 11:47:19 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 11:47:19 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 11:47:20 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 11:47:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 11:47:22 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:47:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 11:47:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:47:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 11:47:24 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 11:54:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 11:54:33 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 11:54:33 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fde2b9bfdd614411d1d5380916758b66c6257b263b10477d6a2795b6546e380`  
		Last Modified: Wed, 21 Feb 2018 06:49:22 GMT  
		Size: 4.8 MB (4803819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e09ac772b52c4b12b313c697bc00be2f982158ebcc742cb1479ee565ec7b28`  
		Last Modified: Wed, 21 Feb 2018 06:49:19 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bb3531a8f1827457fdde45c0eb60d638dbc6dfde7062a7760a1e1d1b045f13`  
		Last Modified: Wed, 21 Feb 2018 06:49:18 GMT  
		Size: 931.6 KB (931565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7937453ddac14ecbc5e7ec4d14fb796beda0cb63affc4942322ceeb630505610`  
		Last Modified: Wed, 21 Feb 2018 06:49:18 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1d7654af409f874e3881298682159aec377d49dbfb7204a1634f9f45e3413d`  
		Last Modified: Wed, 21 Feb 2018 06:49:25 GMT  
		Size: 27.6 MB (27570540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2482b47cbb8b4f8cc7f66b68d83dce29275299ee0660ed6fd8aea049a93a719e`  
		Last Modified: Sat, 03 Mar 2018 12:15:22 GMT  
		Size: 12.9 MB (12859009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d696dbedc74f4d1b50ad8fada058d33836ed5920224df38bfc8c1a437a2c458`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2d54f4c3804e9c13134f5d64a60d75cff7ab0c33af46c1cc721d82219cb8b6`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28699dc504b15e2ffd5de83ff404f8c9f22101c0e5de0b00b9820d08a7732a2c`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4b5b400b3db1aebbf875acec7a786dccd045a27065053d0c276cfce75b02`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787f3d6c201bf731ea5cbc3d1bdaba4f83666aaec47942561fc8d97417776e1`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d788dbc39b693015acb4770399b8d8468236c73d3a40429656c16f681a967726`  
		Last Modified: Sat, 03 Mar 2018 12:33:44 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0787dcd1133168c99c91f82edad305dbf31a09d73eae2efd84bd97ba87ca4a9`  
		Last Modified: Sat, 03 Mar 2018 12:33:47 GMT  
		Size: 7.7 MB (7714155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:c6ac2d9a1505d650ea4371f2647c0d6016087964b4a0d94f9a977d9eca57f640
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73746752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245194d1bf6ecafc085124bcfa058f8cf19a90593272caf342a89e9f6ad42ab2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:01:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:01:20 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:01:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:02:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:02:38 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:04:50 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:04:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:04:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:04:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 08:11:26 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 08:11:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 08:11:28 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 08:12:37 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 08:12:38 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 08:12:39 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 08:12:43 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 08:12:44 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 08:12:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 08:12:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 08:12:53 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 08:12:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 08:12:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 08:12:59 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 08:13:00 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 08:13:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 08:14:24 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 08:14:25 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7eb3ba88b8fb5c65c82d925e3dcbca9f48c46c56825a694fa78f92768e98f36`  
		Last Modified: Thu, 15 Feb 2018 07:15:17 GMT  
		Size: 4.4 MB (4360747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba68cb1b2e1a68352c6ccc11da8cf6084991476e7259a12748d767af1a187a08`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 4.1 KB (4107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534c75edb97f6c0ac366a7b7f3c3f0c2545a80abc9d4fe398852a7c0fb647cae`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 920.9 KB (920856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9812a87515bad00ca079aa29d890490ea5cdee29af48e4ba64973c94dc838e9`  
		Last Modified: Thu, 15 Feb 2018 07:15:13 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d03c6e69190174f5e919e55754b072b20b7bc8736b8dfef1e53712b9a96240c`  
		Last Modified: Thu, 15 Feb 2018 07:15:18 GMT  
		Size: 25.1 MB (25053207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6ac4a10392fe91a829ffe3162dd9b4427f972a0c1e59e0e4ac5c12cc0e75ea`  
		Last Modified: Sat, 03 Mar 2018 08:16:18 GMT  
		Size: 12.8 MB (12822061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e6a4a41de4ac366a1624ceec5b62d952c1b04d179b34d9855ec90df5e22fcd`  
		Last Modified: Sat, 03 Mar 2018 08:16:15 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46311033a315e5780b2e8cca5b1ab5cea58c5d6992f765a224784e36ed15de3c`  
		Last Modified: Sat, 03 Mar 2018 08:16:14 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef037c3650a539c5f1471ad7f3d4f88f09699e807ef77d4a88332f8ae8c0dcb`  
		Last Modified: Sat, 03 Mar 2018 08:16:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc925134bd31d23c0538a4a29e314e6e8dd7558ab7ea05649f658dc243df75f2`  
		Last Modified: Sat, 03 Mar 2018 08:16:16 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2061402514412e7e7a6f18dc2bef51e3b67da03236a65cbb74c0457c228c570c`  
		Last Modified: Sat, 03 Mar 2018 08:16:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416efad8d8d4fd38a8a9d0a6b4ea206be808276001ab0c7309158fe56e767d0b`  
		Last Modified: Sat, 03 Mar 2018 08:16:31 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f2b28b744d352fe0710963a6db0cf06cdb2218edea825afd0b7764f5f731a3`  
		Last Modified: Sat, 03 Mar 2018 08:16:33 GMT  
		Size: 7.8 MB (7825286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:deb4a7b1a73441037020da609b09d8f148abcff3eaf29634a9871bd0995f48d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73283003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f1f7ab6eaf3c50f84813b0600c8121c7ce6d6fdbd0e4a57ae3321e61b3016c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:07:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:07:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 18:06:33 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 18:06:33 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 18:06:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 18:07:23 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 18:07:23 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 18:07:23 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 18:07:24 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 18:07:24 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 18:07:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 18:07:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 18:07:25 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 18:07:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 18:07:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 18:07:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 18:07:26 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 18:07:37 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 18:07:48 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 18:07:48 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56417f0fd7d846dd57ff775d3681fd4051109ae35bf4a62015be70cb5093465`  
		Last Modified: Thu, 15 Feb 2018 07:10:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af910c393a4ba11e83756868aab15e08805908293884e766ccf73b738588b2eb`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 25.0 MB (25026109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a1bb913a434aae980733f975240dd5f889e2e24615b54786f68c753415113a`  
		Last Modified: Sat, 03 Mar 2018 18:09:05 GMT  
		Size: 12.8 MB (12833984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5ce8d326234a70b58e4b7d1a28536024714c77154df3b7a02fa184911e3eef`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25489352eac8325a059c07ab714aa59203b8469bb3d2a3feffd18933a153591`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944863607ce192c05a1f208257d28ab99c2db2565b5442fb80fd814d376eda15`  
		Last Modified: Sat, 03 Mar 2018 18:09:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aacd031817ed45d3d15383eed5bf977b18b0199326cbd829458fb76a6cac8d11`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ae7f5d98a598e46c6c307d254e459e8cba1c4e898aefe869690c5253d69bc0`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dcda33f6615d639b903c74e7eaefee4598688f12d63baae1889840ef818ca`  
		Last Modified: Sat, 03 Mar 2018 18:09:18 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d247b88c04a687e4612931ce117d287ad0ec3a38308c210e86a76bef0a97eda9`  
		Last Modified: Sat, 03 Mar 2018 18:09:20 GMT  
		Size: 7.6 MB (7594751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.4-rc.4-management-alpine`

```console
$ docker pull rabbitmq@sha256:485513522a5a39315cb68ca4a2cdb94b7f5d0c4a7c7cda1753e2dcfa0a0bb493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.7.4-rc.4-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:c228859b0112732b091424bca2a504d9c4dca453b0889fe4985229ad710953c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43858505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a00cf2efa612988177b2fbcf35066cdfea8e02760fd13fdd50f46b73b95cef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:55:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 Jan 2018 04:55:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 04:55:54 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 Jan 2018 04:56:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 Jan 2018 04:56:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 Jan 2018 04:56:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 04:56:02 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 01:24:20 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 01:24:20 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 01:24:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 01:24:53 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 01:24:53 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 01:24:54 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 01:24:54 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 01:24:55 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 01:24:56 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:24:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:24:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 01:24:56 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 01:25:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 01:25:24 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 01:25:24 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387f4b4c52b95160763db7d1266075905ba96d0f5bdcb562257fb150ec2c52e`  
		Last Modified: Wed, 10 Jan 2018 05:02:45 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba8c403a5b6fbb5651fd71cc7e2c96605165864b4ee509d2b6676e2958b8164`  
		Last Modified: Wed, 10 Jan 2018 05:02:44 GMT  
		Size: 8.5 KB (8546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4258fc50c52315f5cd0eec92f98862c11ffd3b34dd6404cfb9a921fb05821600`  
		Last Modified: Wed, 10 Jan 2018 05:02:47 GMT  
		Size: 18.7 MB (18652404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b0d59c0126bb99541a5b658f6cd5a9c958fa93e9cfc8d2fc57638c91827848`  
		Last Modified: Sat, 03 Mar 2018 01:27:09 GMT  
		Size: 12.1 MB (12101494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da7731a170285409c5a5bbcd0b4198dca1c21085e63a1f42b01a8a64d56d6d6`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fbc2989e5aa8361a5915597f574335106e18ddc194d55bb171925b7a94e7841`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f654e1f80998794735cf9aef49833af5131095f041a22c61bf575863fc58c0`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c2a9e566e9be843939c6936f402b9b768ba1bc433e9f783f28bea61f316b0b`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a518b441c6e9d7d25a00efac29b0f149741be82666588096b9d2c3c91196c00`  
		Last Modified: Sat, 03 Mar 2018 01:27:43 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52425891c69fafcadb84e1b28969565d2161d37ec18b9791ed57bb2f4ae5982e`  
		Last Modified: Sat, 03 Mar 2018 01:27:46 GMT  
		Size: 11.0 MB (11024415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:ed8160c03103ca965baa405848aa0c9a1b0fe614e20f3c6728d12c08226dfad3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41246456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc495ecfc96b97cbe5aa22bd5a17e064903dcc6b9df659a768dc7702eff1aa33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 14:57:23 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:57:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 14:57:46 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 14:57:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:57:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 14:57:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:57:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 14:56:35 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 14:56:35 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 14:56:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 14:56:50 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 14:56:51 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 14:56:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 14:56:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 14:56:55 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 14:56:56 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 14:56:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 14:56:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 14:56:58 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 14:57:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 14:57:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 14:57:26 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4ed88f638b23b4b44a51af5828b7ca6cf492e10d10b6517f03b2dc5f9c6a`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec871b8e16217284a5c9467fc885f9330b7cf594b88a9d251f442a31f9b11982`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc676aee1200891fd5416055f87903087826e98535cbd81dcb50768900244552`  
		Last Modified: Wed, 13 Dec 2017 15:06:00 GMT  
		Size: 16.3 MB (16252090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6375fa56c2f449c5d0c41049e27cd34cd5327f0a347176fb5f61797fac395a`  
		Last Modified: Sat, 03 Mar 2018 14:59:37 GMT  
		Size: 12.1 MB (12095694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff911323207dbd53adeea54ddd2f463ddaed9b7013af62c0b78c391552bd2400`  
		Last Modified: Sat, 03 Mar 2018 14:59:34 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94864e92a73475a96cf6e221859d10f3235e33c30f5d59faf5e900c8e6bb1ce6`  
		Last Modified: Sat, 03 Mar 2018 14:59:35 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea84e5ed7a7bb7dd59b1ba1ed8101187233655b53183386b4d1b216fcbc272ff`  
		Last Modified: Sat, 03 Mar 2018 14:59:35 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff22e3eb7fc74468135c70ee8ec190f683b1020558407e9f202ec99dd25ae453`  
		Last Modified: Sat, 03 Mar 2018 14:59:35 GMT  
		Size: 4.2 KB (4176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802d96ac21139990a9411afc49ca2f737906953c4da7d30af802bd34fd16c8ae`  
		Last Modified: Sat, 03 Mar 2018 15:00:11 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cd0b627fa4d96257c14504144f0e247370115410b80ff6b8a8f3fe5e4977cb`  
		Last Modified: Sat, 03 Mar 2018 15:00:15 GMT  
		Size: 10.9 MB (10894884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:20e84e672458669d6528e89b1982babb75afa27f7e7f4a9bf50db8d6a79e7e38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44204562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73706c277fd8b04aa016fd5ecfb9ad039a2f703786a667c5a6505e5e495f237`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 21:22:00 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:22:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 21:22:27 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 21:22:27 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 12:06:54 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 12:06:54 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 12:07:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 12:07:11 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 12:07:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 12:07:12 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 12:07:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 12:07:14 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 12:07:14 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 12:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 12:07:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 12:07:15 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 12:07:31 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 12:07:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 12:07:43 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27825103f577634e399aa4d7b3926d800daaa8fb48694cbc00441e394ab49dc`  
		Last Modified: Tue, 12 Dec 2017 21:39:59 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906faec23cf2653ea69fef127c0ce0bad706d94c732403b1f414228152f476bd`  
		Last Modified: Tue, 12 Dec 2017 21:39:59 GMT  
		Size: 8.7 KB (8650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb1029d1df08e5376a776e456084b04ad97df041d887f4ce722247c2d61a3b4`  
		Last Modified: Tue, 12 Dec 2017 21:40:07 GMT  
		Size: 18.8 MB (18815715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e53af8a6f003236ed2e40ad0097f12f9166098af1aa2e4adf6dec2585bb17b`  
		Last Modified: Sat, 03 Mar 2018 12:47:21 GMT  
		Size: 12.1 MB (12101509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2dd9208e41aee4c91405fe8d8779ae3072ad0c397a0249fcaa404290860b33`  
		Last Modified: Sat, 03 Mar 2018 12:47:21 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e679fdefb0fb0cc86153f7c7047a5a5ec5ed7811b088563649bb3808829d35`  
		Last Modified: Sat, 03 Mar 2018 12:47:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06091c5c699a200aabec769bca4c2ed5820085620fa843123affeb62436a1654`  
		Last Modified: Sat, 03 Mar 2018 12:47:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72052ac3058d7d26e2a54e0b462b385005cb23304966c463e7043700956f703`  
		Last Modified: Sat, 03 Mar 2018 12:47:19 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68265d0dfa47fa05292e40e289e7d8f2028c04eccb74d87202a9de8ec3b60cbb`  
		Last Modified: Sat, 03 Mar 2018 12:53:14 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a1d1669aec3a425fdcf432ae80b3afeddcd487087860dace93e54ec25f09d3`  
		Last Modified: Sat, 03 Mar 2018 12:53:19 GMT  
		Size: 11.1 MB (11146195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:e60d5c711e66b67e577d6d8d3ae369cc13c1b80b6fde0f65530d5b7f9f734b8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41717656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:564e0dfe3ba0a047e7a3335a445264d2d88ef7b03cae54c4e17988ce0a9ea61a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 08:18:08 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:18:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 08:18:35 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 08:18:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:18:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 08:18:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:18:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 08:14:32 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 08:14:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 08:15:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 08:15:08 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 08:15:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 08:15:12 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 08:15:15 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 08:15:18 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 08:15:19 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 08:15:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 08:15:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 08:15:24 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 08:15:32 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 08:15:44 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 08:15:46 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d1ed2187942e6103764c1aafdbb8a07c8ca518010057fe8241ae1785036c34`  
		Last Modified: Wed, 13 Dec 2017 08:26:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edcdde4e4bb24d232fb81eb66c47fcc0d25af42f3b5d6d228547cd01c4eee4c`  
		Last Modified: Wed, 13 Dec 2017 08:26:25 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d586348c018beacd8f060a315dc7b4d506f2132378b683c3fead6f9fa7766efe`  
		Last Modified: Wed, 13 Dec 2017 08:26:29 GMT  
		Size: 16.5 MB (16456345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3480fdffdc7a029ecd27e483c4afe8bfe9605c490c11d7e8dfa94b7ff54a96b9`  
		Last Modified: Sat, 03 Mar 2018 08:16:56 GMT  
		Size: 12.1 MB (12096327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca45d918db39d9cd854b3b8765b93d16eabaa08e294d46b46dc41504e04c6692`  
		Last Modified: Sat, 03 Mar 2018 08:16:57 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121a6a5e89b503f70a3ba28e46d507dd27d4cf7f6f72ff5cd160c7117c96f9a1`  
		Last Modified: Sat, 03 Mar 2018 08:16:54 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cf4e540d4b5550a3eb817ea22d1c849b64a93b601a07612548e04789361907`  
		Last Modified: Sat, 03 Mar 2018 08:16:54 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51274abff92e1db52d5c675fadd9dca01ab988bb0862bd824f1a2d27c2f38419`  
		Last Modified: Sat, 03 Mar 2018 08:16:54 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785ca7b32a636418df1b0e0d5f361f85c1a5d13581b8172512210a02ad4ba485`  
		Last Modified: Sat, 03 Mar 2018 08:17:09 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f903f08bc41b396ddb62740437ccca35947fd2e6b48565c1806eea2b723026`  
		Last Modified: Sat, 03 Mar 2018 08:17:12 GMT  
		Size: 11.1 MB (11067888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.4-rc.4-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:fdb21ddbda1d0fa1364462bdccdd6f5c800736a41d18ea21d46c851bacdfc1d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41982693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ac04911369d0147bc9fc4b8ee2410b5de7416ec64893fdbc7a7a6978979b7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 05:52:10 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sun, 07 Jan 2018 05:52:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sun, 07 Jan 2018 05:52:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sun, 07 Jan 2018 05:52:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 18:07:55 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 18:07:55 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Thu, 08 Mar 2018 18:08:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 08 Mar 2018 18:08:21 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 08 Mar 2018 18:08:21 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 08 Mar 2018 18:08:22 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 08 Mar 2018 18:08:22 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 08 Mar 2018 18:08:23 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 08 Mar 2018 18:08:23 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 08 Mar 2018 18:08:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Mar 2018 18:08:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Mar 2018 18:08:23 GMT
CMD ["rabbitmq-server"]
# Thu, 08 Mar 2018 18:08:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 08 Mar 2018 18:08:42 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 08 Mar 2018 18:08:43 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6b93eb5641a09d7aaa44d4012f510adaad80c7ab8d2437217416ed77261530`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59134468d142cef2da2ed34942e415fe770af752f6d04f422a6dbc7de2519364`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 8.9 KB (8942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e6bac3d3a79950f24c0f3e84229a3b39cb5fa0f82257e3d574ec9e44be6e55`  
		Last Modified: Sun, 07 Jan 2018 05:55:39 GMT  
		Size: 16.5 MB (16515431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942998aa455b2b360fc9589ec7aa31a274826bd729c0b104a3bcd003df16a399`  
		Last Modified: Thu, 08 Mar 2018 18:09:30 GMT  
		Size: 12.1 MB (12096449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb654878e390d4c4ba0e33edd6d5e510f51604bba9a6630a119d20db15462d7a`  
		Last Modified: Thu, 08 Mar 2018 18:09:29 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f167736e8c82d07ca472c3a0c96aef2a380540cf3390df215ab6d61a35f2cd98`  
		Last Modified: Thu, 08 Mar 2018 18:09:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a59b69757f5b971a4be945f771a753d67e38ec85b6a33b77c172bf71848c0`  
		Last Modified: Thu, 08 Mar 2018 18:09:30 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679c27ee68bf48af9a7de45997aff668fa8bd3540559d30c8534b7e1b88802c9`  
		Last Modified: Thu, 08 Mar 2018 18:09:29 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a7327ac2fc704bfdc6f1a0c24e4da03f0ecf4e0d7e313ec4fc85c36a425e6`  
		Last Modified: Thu, 08 Mar 2018 18:09:42 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2ac609f8023e7a00ad678ebb7fa72e8091925ee9c108c5322d762b4f097ac4`  
		Last Modified: Thu, 08 Mar 2018 18:09:44 GMT  
		Size: 11.2 MB (11170356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-alpine`

```console
$ docker pull rabbitmq@sha256:b6e988357c11f707c4357580835ea73495e0fe6abd692e3f64f75acfde546160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:3.7-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:45086400bf9110cb4205e0c6b21fa48e280b8c69dded32f0d7e93028723a59fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30811743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80dd0e77ff9d393dce6abdc1fbe13776b2d0f321d5aac6b618395b4e59c3ccb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 05:52:10 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sun, 07 Jan 2018 05:52:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sun, 07 Jan 2018 05:52:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sun, 07 Jan 2018 05:52:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:08:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 12 Mar 2018 17:08:04 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:08:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 12 Mar 2018 17:08:05 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:08:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:08:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 12 Mar 2018 17:08:06 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:08:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:08:06 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6b93eb5641a09d7aaa44d4012f510adaad80c7ab8d2437217416ed77261530`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59134468d142cef2da2ed34942e415fe770af752f6d04f422a6dbc7de2519364`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 8.9 KB (8942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e6bac3d3a79950f24c0f3e84229a3b39cb5fa0f82257e3d574ec9e44be6e55`  
		Last Modified: Sun, 07 Jan 2018 05:55:39 GMT  
		Size: 16.5 MB (16515431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690d17235932bd0b04cdbacaec0609c5088f2a198e48c3e7670bcd783d0058a8`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 12.1 MB (12096043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e469a6b4ef00ffbc9a53d5cb479bdc208addbd2c055ca483693c815f6333b53`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da953f78f4b8029f006b059717bea5f507e53476212c21df8f5f6ed8589737e`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a5e4fca38d2541d34df1da3c299c177ea220bdc1c0bdde19299aaa0c2a0ba0`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1f13c1579ee38fe28c146c496e7a7e4236848d3ae1e5608cb6acbd71ea03e`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-management`

```console
$ docker pull rabbitmq@sha256:3a0eec99875bd60dfd89af44ec816a5d5b1ce613bdd331b7c799643ac1010a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:3.7-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:445d4891167c1e68649e50b4db0bd627d02de1d44908f2b49c9e139ce92408f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73280978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca7ed67604fe4b25d64236d8a8f11481fb0171a55ca596f38b3e763449ed0d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:07:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:07:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:06:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Mon, 12 Mar 2018 17:07:15 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 12 Mar 2018 17:07:15 GMT
ENV LANG=C.UTF-8
# Mon, 12 Mar 2018 17:07:16 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:07:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:07:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 12 Mar 2018 17:07:18 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:07:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 12 Mar 2018 17:07:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:07:19 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:07:19 GMT
CMD ["rabbitmq-server"]
# Mon, 12 Mar 2018 17:07:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 12 Mar 2018 17:07:40 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Mon, 12 Mar 2018 17:07:41 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56417f0fd7d846dd57ff775d3681fd4051109ae35bf4a62015be70cb5093465`  
		Last Modified: Thu, 15 Feb 2018 07:10:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af910c393a4ba11e83756868aab15e08805908293884e766ccf73b738588b2eb`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 25.0 MB (25026109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1c4459cf293e420c8191efd8a81c7d2020e4ef892c556b2df8638640ca4cc1`  
		Last Modified: Mon, 12 Mar 2018 17:08:45 GMT  
		Size: 12.8 MB (12832095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dee3bd5d27bfc82f0d35869732f1bafc5009a92a68974bff9965489e74d31e`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f81decace193531563aafbce03061472ec4eed54f56969b2104b2f63de11c7`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bb0d30069a25bff758f72013ce1319c955f14bcbcd230fb66c21367958b8c1`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3301e4341a91a7b6be1025fa1f401c594c27f24450a78401cda018bfcf73ef0`  
		Last Modified: Mon, 12 Mar 2018 17:08:44 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028be3145e86ced3f4c892a93ea846b58c35fac72add4baffb302d9a3c8302ec`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3874aed6c421abeb7917a33b9d7711b4ef1251337e19f6f92f6f2d88ceadf808`  
		Last Modified: Mon, 12 Mar 2018 17:09:02 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28403f8e9293ac9c3c4b37f1615e561bbfba1a8e1c5190080c5e1c15fd550f83`  
		Last Modified: Mon, 12 Mar 2018 17:09:04 GMT  
		Size: 7.6 MB (7594623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-management-alpine`

```console
$ docker pull rabbitmq@sha256:a88987ce437d0dc592384685efb6d5dd50b2473e452e031fbdf6e1ca6e69bfa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:3.7-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:f2034c396b0923708c78d2e2585c22b8096e16c8bc16cbe64766164e3c832736
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41982300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97dbab89476b47402d21c71b5e3ce338f2d3fdd10f34ea83a8e7ed315ae2ce96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 05:52:10 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sun, 07 Jan 2018 05:52:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sun, 07 Jan 2018 05:52:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sun, 07 Jan 2018 05:52:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:08:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 12 Mar 2018 17:08:04 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:08:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 12 Mar 2018 17:08:05 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:08:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:08:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 12 Mar 2018 17:08:06 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:08:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:08:06 GMT
CMD ["rabbitmq-server"]
# Mon, 12 Mar 2018 17:08:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 12 Mar 2018 17:08:18 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 12 Mar 2018 17:08:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6b93eb5641a09d7aaa44d4012f510adaad80c7ab8d2437217416ed77261530`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59134468d142cef2da2ed34942e415fe770af752f6d04f422a6dbc7de2519364`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 8.9 KB (8942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e6bac3d3a79950f24c0f3e84229a3b39cb5fa0f82257e3d574ec9e44be6e55`  
		Last Modified: Sun, 07 Jan 2018 05:55:39 GMT  
		Size: 16.5 MB (16515431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690d17235932bd0b04cdbacaec0609c5088f2a198e48c3e7670bcd783d0058a8`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 12.1 MB (12096043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e469a6b4ef00ffbc9a53d5cb479bdc208addbd2c055ca483693c815f6333b53`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da953f78f4b8029f006b059717bea5f507e53476212c21df8f5f6ed8589737e`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a5e4fca38d2541d34df1da3c299c177ea220bdc1c0bdde19299aaa0c2a0ba0`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1f13c1579ee38fe28c146c496e7a7e4236848d3ae1e5608cb6acbd71ea03e`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72473354d3c89d31d9b5e5191a03682815d7460611376bdc4077583357998751`  
		Last Modified: Mon, 12 Mar 2018 17:09:40 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985979300c288229ce4a36e7911a4330bfdf9f571c5f478c2dce16725c5e5645`  
		Last Modified: Mon, 12 Mar 2018 17:09:42 GMT  
		Size: 11.2 MB (11170366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-rc`

```console
$ docker pull rabbitmq@sha256:6f38364db1af121ab187072764d02f14c5603443e987e49ef66674f604af8c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.7-rc` - linux; amd64

```console
$ docker pull rabbitmq@sha256:8aaa0cd00830927cf4d67cc39d1ebaa843851f5a3842ce19df834e331784f6e7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68168996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:881e56fdec5500722c3ea5953b894f75c7bf821d9a7b48629361b9b0447494cc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 18:56:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:56:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 16 Feb 2018 18:56:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 18:57:02 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Feb 2018 18:57:03 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Fri, 16 Feb 2018 18:57:47 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:57:55 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 16 Feb 2018 18:57:56 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 18:57:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 01:22:37 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 01:22:38 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 01:22:38 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 01:23:27 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 01:23:28 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 01:23:28 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 01:23:29 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 01:23:29 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 01:23:30 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 01:23:31 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 01:23:31 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:23:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 01:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:23:33 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 01:23:33 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aa5c2fc28c2889bb371a7c8c86d79363c2210331abc9ab368eec5664f9c7f1`  
		Last Modified: Fri, 16 Feb 2018 19:01:56 GMT  
		Size: 4.5 MB (4498430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6866d83ad777c7832f9a12a4c138b04ae865fc71238531025c3a1d9cdab3e6`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424ad5823c0c06246ed365a566ac25a786727eb4de90d40450c75c9f9589d05c`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 952.0 KB (951962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f7e6945ef422f435b20cc8b77ebcfb95d9ab963a5a54e7a038efab9f37de5`  
		Last Modified: Fri, 16 Feb 2018 19:01:52 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2983462f8b69d0ad88f218912db6d68bde0c18fad0354a3a5aff7d5f93e4fa9e`  
		Last Modified: Fri, 16 Feb 2018 19:01:56 GMT  
		Size: 27.4 MB (27372199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36272053325786597e5127d4cdbb37cb84705348fdeb7457b7612eabe22e2d6a`  
		Last Modified: Sat, 03 Mar 2018 01:25:56 GMT  
		Size: 12.8 MB (12838374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da5cdf0511c80ec73d8c8bf969bebe628cd3121108a1ee587ce0512bd163158`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d326929135243e6a8b7aaceab049ad034097cdfe04186f28674cf6e3b04bba0d`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1bbd539225613770d81d820c59978baec744ddbe492af53e40624aa36f05eb`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2ad82bcb6865c2befd54eb436a0b75d9fed95ddb0fb62fc84cff1cd98b7508`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5055a36257aff98d16aa7090428e966d1eb3f566b7b255ce880afcaf28e362d`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:6079b77e0628aa1af3239b0fcd0f761e0430280c010c3990ded270d8be048264
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (64041576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c4d325bf73f912ca49a146179e040e979b0e1117285bc8b4df440b465fa2aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:06:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:06:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 22:06:54 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 22:07:37 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:07:40 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 22:08:20 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:08:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 22:08:20 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:08:21 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 15:14:36 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 15:14:36 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 15:14:36 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 15:15:51 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 15:15:51 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 15:15:51 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 15:15:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 15:15:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 15:15:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 15:15:55 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 15:15:55 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:15:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:15:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:15:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 15:15:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a212dd3e52653adb4c0c3677397e74fcac10b74d38b2df38af460830e04b1ac`  
		Last Modified: Thu, 15 Feb 2018 22:12:23 GMT  
		Size: 4.2 MB (4231540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae935791a245772b6342dece630412eff8a97d12aaf579e401ccc09215205a`  
		Last Modified: Thu, 15 Feb 2018 22:12:20 GMT  
		Size: 4.1 KB (4088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458120fe43d4aff849ffaeb2fa6d4cc8d2c3dc5c72caeb744d44ffa74f07033d`  
		Last Modified: Thu, 15 Feb 2018 22:12:22 GMT  
		Size: 942.5 KB (942460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfcf2d21f63838827957f9d1ab95f92202f63276a92d9d8799a93fce7b71d3a`  
		Last Modified: Thu, 15 Feb 2018 22:12:20 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e985b292dce34fd4c1a5c2bb38498fd0983718aabafca68a1c6492310146e8b4`  
		Last Modified: Thu, 15 Feb 2018 22:12:24 GMT  
		Size: 24.9 MB (24872054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a16a32e8f1c6c4cde706d2c43bf0a8b6576ca138e8deb0aa265b66b08bce28a`  
		Last Modified: Sat, 03 Mar 2018 15:17:06 GMT  
		Size: 12.8 MB (12809206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b788ff34dec55324e17ec31685104886030a895dedb9eb1dd2d09bd46567edba`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff5ab0b60e7c2d26bc7e7618dde4f8ca84b1d4c336e84915575a4eef108f411`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f98f1e3322ef3d0587d99363d0e15858746d9d7fd10d81bd0d18a250e6060b`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33eed5224f8283109c6a4c075743c5739fa45a15b758d18f43e496ac7f7d74cd`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f29b5c4ab5b32af99079cca278e0efba4e1c4c9041c0d06c2712931bb40fb52`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:ff962ab1172053ff883acb23b5166f40b1ba766156851fe13cbe383ce0b8d1d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61447816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:604aa6d42fa543e0d64a45ff40da945e483fdad40e926e0ba0264a5854ef9e89`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:11:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 16:11:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:12:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 16:12:17 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 16:12:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:12:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 16:12:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 16:12:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 14:07:40 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 14:07:40 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 14:07:40 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 14:08:41 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 14:08:41 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 14:08:41 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 14:08:42 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 14:08:42 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 14:08:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 14:08:45 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 14:08:45 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 14:08:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 14:08:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 14:08:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 14:08:47 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b013f1082d9f6b4590d4a988c911f20b6ecd1025e255fc4a69303f3dfd32317d`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 3.9 MB (3868601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e6890c5bfb431a26fb646081f14de6ade476a28158583b3e708a8bc3f40ff3`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3449fb95440de1ead82a804d144bcd225029ac93ea319b6471e1e97a5bf4ecc2`  
		Last Modified: Thu, 15 Feb 2018 16:16:29 GMT  
		Size: 926.1 KB (926131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac028a3979e73e596b053b58fa2e196b155069793bc8a7bc2cf4e868b5405d9`  
		Last Modified: Thu, 15 Feb 2018 16:16:29 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264ff8b5d5697555bb29a8d1a3e1f4b69ff99f92897ff0888a7d165c83fd3926`  
		Last Modified: Thu, 15 Feb 2018 16:16:33 GMT  
		Size: 24.6 MB (24575931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0395e21ada356272f2ebec99ebadc409438d425d14a7e83984c9555bfd559249`  
		Last Modified: Sat, 03 Mar 2018 14:09:51 GMT  
		Size: 12.8 MB (12779792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e562f07d2540720018a7acd2fa505d9177f1c506de104bbff30a95b8302734a`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df10f76e638338f466587f76c27ef633d91d14a4d90418c9d4bc8d37ef50c442`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03144497be7b281d7412da8c7873b59135cd3c69117bcb20ebd39c213bbb1e8`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2007106f2697ecf78516ecaaf283f661f91b0dae47600475d6c30c5b3c251fb`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1d92311ec0e29db39cf9716b77b0d410b95faac5ad92c46e23dd144f63bdcd`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:0f67948c95000e82206f98bd9c340727a9260ca961d8202bb9c2123a33a1c6b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62960829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db6e0cfc151fabbd03ae02b6328f05bd03827260b36d9fc3ab3f27a87593ea7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 23:53:57 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 23:53:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:54:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 23:54:35 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 23:55:45 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 23:55:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 23:55:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 23:55:48 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 14:53:20 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 14:53:21 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 14:53:21 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 14:55:07 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 14:55:08 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 14:55:08 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 14:55:10 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 14:55:10 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 14:55:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 14:55:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 14:55:14 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 14:55:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 14:55:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 14:55:17 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 14:55:18 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecc7280a57c4f164dcf6ac46e8f359b64b73ac4eebda29730420cbc351f6de`  
		Last Modified: Fri, 16 Feb 2018 00:03:00 GMT  
		Size: 4.1 MB (4073277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de655884dd724f8f2f9dc4a57ce020cf3c7ea27c33757c572eb63feed718d68d`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14dce82e5cc18457d199dc012088a60f363697db4983a790036468ee985e073a`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 919.4 KB (919384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558516637ee16130b13ceed7508d8317e3d00c459a4a1096e73e0793bd412a75`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e8156666bfe6af3b5b9f2ffc484feb8d9bbeef45f3e89566370dc2f4199c01`  
		Last Modified: Fri, 16 Feb 2018 00:03:02 GMT  
		Size: 24.8 MB (24806003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1cf552e04a291f31a7a64e19a71a30e14f2fabbde1bccff11d2714d81df3f1`  
		Last Modified: Sat, 03 Mar 2018 14:58:24 GMT  
		Size: 12.8 MB (12803467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5acdc9f7c90847bf52136f3419352bc58c28ec4b5c16f7f42239d97a5657c3`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5751893aa49521126d99b73cd9a9f3dab53650c53abd979734e83c7dcff295e`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8619f49db0da9e6f0b0108554cd2a5b2babfce71363d8ced0358da44c06ce76a`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c40dbeb115e64f184ff3d94075821e8e2b73649a5624946060ced3ee0aa081`  
		Last Modified: Sat, 03 Mar 2018 14:58:21 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee3def205e37b74593c5233a340571d6b8d1e1526828a0d488a5e78ce7a3983`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc` - linux; 386

```console
$ docker pull rabbitmq@sha256:a0a3e715d8543008662d3f7a14f1e9566afc404e58a366e40cac4b6b95cb50bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.3 MB (69311215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3ae4cb1b696e3e08b9fc8a3710d6672f48e79c93cf50a9829b38929ab039882`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 06:02:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:02:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 21 Feb 2018 06:02:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 06:18:09 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 06:18:09 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 21 Feb 2018 06:18:49 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:18:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 21 Feb 2018 06:18:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 06:18:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 11:46:44 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 11:46:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 11:46:45 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 11:47:17 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 11:47:18 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 11:47:18 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 11:47:19 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 11:47:19 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 11:47:20 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 11:47:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 11:47:22 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:47:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 11:47:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:47:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 11:47:24 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fde2b9bfdd614411d1d5380916758b66c6257b263b10477d6a2795b6546e380`  
		Last Modified: Wed, 21 Feb 2018 06:49:22 GMT  
		Size: 4.8 MB (4803819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e09ac772b52c4b12b313c697bc00be2f982158ebcc742cb1479ee565ec7b28`  
		Last Modified: Wed, 21 Feb 2018 06:49:19 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bb3531a8f1827457fdde45c0eb60d638dbc6dfde7062a7760a1e1d1b045f13`  
		Last Modified: Wed, 21 Feb 2018 06:49:18 GMT  
		Size: 931.6 KB (931565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7937453ddac14ecbc5e7ec4d14fb796beda0cb63affc4942322ceeb630505610`  
		Last Modified: Wed, 21 Feb 2018 06:49:18 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1d7654af409f874e3881298682159aec377d49dbfb7204a1634f9f45e3413d`  
		Last Modified: Wed, 21 Feb 2018 06:49:25 GMT  
		Size: 27.6 MB (27570540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2482b47cbb8b4f8cc7f66b68d83dce29275299ee0660ed6fd8aea049a93a719e`  
		Last Modified: Sat, 03 Mar 2018 12:15:22 GMT  
		Size: 12.9 MB (12859009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d696dbedc74f4d1b50ad8fada058d33836ed5920224df38bfc8c1a437a2c458`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2d54f4c3804e9c13134f5d64a60d75cff7ab0c33af46c1cc721d82219cb8b6`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28699dc504b15e2ffd5de83ff404f8c9f22101c0e5de0b00b9820d08a7732a2c`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4b5b400b3db1aebbf875acec7a786dccd045a27065053d0c276cfce75b02`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787f3d6c201bf731ea5cbc3d1bdaba4f83666aaec47942561fc8d97417776e1`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:42eed8c25b416aa44d527bc6a159839af1f626fe064cb4d6c51cf3fe4f6487cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65921274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5da8bac45eed7815e8d86af88ff9496cc9cad2cb2a4c7e8a59cb6038e2a7e49`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:01:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:01:20 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:01:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:02:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:02:38 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:04:50 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:04:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:04:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:04:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 08:11:26 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 08:11:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 08:11:28 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 08:12:37 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 08:12:38 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 08:12:39 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 08:12:43 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 08:12:44 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 08:12:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 08:12:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 08:12:53 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 08:12:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 08:12:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 08:12:59 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 08:13:00 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7eb3ba88b8fb5c65c82d925e3dcbca9f48c46c56825a694fa78f92768e98f36`  
		Last Modified: Thu, 15 Feb 2018 07:15:17 GMT  
		Size: 4.4 MB (4360747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba68cb1b2e1a68352c6ccc11da8cf6084991476e7259a12748d767af1a187a08`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 4.1 KB (4107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534c75edb97f6c0ac366a7b7f3c3f0c2545a80abc9d4fe398852a7c0fb647cae`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 920.9 KB (920856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9812a87515bad00ca079aa29d890490ea5cdee29af48e4ba64973c94dc838e9`  
		Last Modified: Thu, 15 Feb 2018 07:15:13 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d03c6e69190174f5e919e55754b072b20b7bc8736b8dfef1e53712b9a96240c`  
		Last Modified: Thu, 15 Feb 2018 07:15:18 GMT  
		Size: 25.1 MB (25053207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6ac4a10392fe91a829ffe3162dd9b4427f972a0c1e59e0e4ac5c12cc0e75ea`  
		Last Modified: Sat, 03 Mar 2018 08:16:18 GMT  
		Size: 12.8 MB (12822061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e6a4a41de4ac366a1624ceec5b62d952c1b04d179b34d9855ec90df5e22fcd`  
		Last Modified: Sat, 03 Mar 2018 08:16:15 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46311033a315e5780b2e8cca5b1ab5cea58c5d6992f765a224784e36ed15de3c`  
		Last Modified: Sat, 03 Mar 2018 08:16:14 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef037c3650a539c5f1471ad7f3d4f88f09699e807ef77d4a88332f8ae8c0dcb`  
		Last Modified: Sat, 03 Mar 2018 08:16:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc925134bd31d23c0538a4a29e314e6e8dd7558ab7ea05649f658dc243df75f2`  
		Last Modified: Sat, 03 Mar 2018 08:16:16 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2061402514412e7e7a6f18dc2bef51e3b67da03236a65cbb74c0457c228c570c`  
		Last Modified: Sat, 03 Mar 2018 08:16:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc` - linux; s390x

```console
$ docker pull rabbitmq@sha256:dd7b24e159b627594fc87a0a12037390e09ae2a92f282f005963182612e6aa6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65688058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b456c49f01a6aca91ebb7aa2b87c8c85c90b063a2e78f5c6d2c131414075083`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:07:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:07:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 18:06:33 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 18:06:33 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 18:06:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 18:07:23 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 18:07:23 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 18:07:23 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 18:07:24 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 18:07:24 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 18:07:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 18:07:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 18:07:25 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 18:07:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 18:07:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 18:07:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 18:07:26 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56417f0fd7d846dd57ff775d3681fd4051109ae35bf4a62015be70cb5093465`  
		Last Modified: Thu, 15 Feb 2018 07:10:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af910c393a4ba11e83756868aab15e08805908293884e766ccf73b738588b2eb`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 25.0 MB (25026109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a1bb913a434aae980733f975240dd5f889e2e24615b54786f68c753415113a`  
		Last Modified: Sat, 03 Mar 2018 18:09:05 GMT  
		Size: 12.8 MB (12833984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5ce8d326234a70b58e4b7d1a28536024714c77154df3b7a02fa184911e3eef`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25489352eac8325a059c07ab714aa59203b8469bb3d2a3feffd18933a153591`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944863607ce192c05a1f208257d28ab99c2db2565b5442fb80fd814d376eda15`  
		Last Modified: Sat, 03 Mar 2018 18:09:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aacd031817ed45d3d15383eed5bf977b18b0199326cbd829458fb76a6cac8d11`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ae7f5d98a598e46c6c307d254e459e8cba1c4e898aefe869690c5253d69bc0`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-rc-alpine`

```console
$ docker pull rabbitmq@sha256:9d4df6b5843edad163a06e79a56cb586c4c48e36974b89bb52bd6399c9d2f921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.7-rc-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4947de67385995c630830c4a31d6199c7e226aa1bd340ba1039082d2575a1f34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.8 MB (32833899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54fd4a930c64942dd902e6f62294b2742eea4e6cd504c30dcf11dd38a755f922`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:55:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 Jan 2018 04:55:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 04:55:54 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 Jan 2018 04:56:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 Jan 2018 04:56:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 Jan 2018 04:56:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 04:56:02 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 01:24:20 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 01:24:20 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 01:24:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 01:24:53 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 01:24:53 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 01:24:54 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 01:24:54 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 01:24:55 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 01:24:56 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:24:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:24:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 01:24:56 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387f4b4c52b95160763db7d1266075905ba96d0f5bdcb562257fb150ec2c52e`  
		Last Modified: Wed, 10 Jan 2018 05:02:45 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba8c403a5b6fbb5651fd71cc7e2c96605165864b4ee509d2b6676e2958b8164`  
		Last Modified: Wed, 10 Jan 2018 05:02:44 GMT  
		Size: 8.5 KB (8546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4258fc50c52315f5cd0eec92f98862c11ffd3b34dd6404cfb9a921fb05821600`  
		Last Modified: Wed, 10 Jan 2018 05:02:47 GMT  
		Size: 18.7 MB (18652404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b0d59c0126bb99541a5b658f6cd5a9c958fa93e9cfc8d2fc57638c91827848`  
		Last Modified: Sat, 03 Mar 2018 01:27:09 GMT  
		Size: 12.1 MB (12101494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da7731a170285409c5a5bbcd0b4198dca1c21085e63a1f42b01a8a64d56d6d6`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fbc2989e5aa8361a5915597f574335106e18ddc194d55bb171925b7a94e7841`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f654e1f80998794735cf9aef49833af5131095f041a22c61bf575863fc58c0`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c2a9e566e9be843939c6936f402b9b768ba1bc433e9f783f28bea61f316b0b`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:370c198138e96218c7d43125435dab25df1f6175e18ee9097f09a5fd679b66a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30351380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ba2517bed0b95e2d50b65623ad6f9632f7f1000ebd4884620ada41f8822c4e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 14:57:23 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:57:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 14:57:46 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 14:57:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:57:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 14:57:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:57:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 14:56:35 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 14:56:35 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 14:56:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 14:56:50 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 14:56:51 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 14:56:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 14:56:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 14:56:55 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 14:56:56 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 14:56:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 14:56:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 14:56:58 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4ed88f638b23b4b44a51af5828b7ca6cf492e10d10b6517f03b2dc5f9c6a`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec871b8e16217284a5c9467fc885f9330b7cf594b88a9d251f442a31f9b11982`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc676aee1200891fd5416055f87903087826e98535cbd81dcb50768900244552`  
		Last Modified: Wed, 13 Dec 2017 15:06:00 GMT  
		Size: 16.3 MB (16252090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6375fa56c2f449c5d0c41049e27cd34cd5327f0a347176fb5f61797fac395a`  
		Last Modified: Sat, 03 Mar 2018 14:59:37 GMT  
		Size: 12.1 MB (12095694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff911323207dbd53adeea54ddd2f463ddaed9b7013af62c0b78c391552bd2400`  
		Last Modified: Sat, 03 Mar 2018 14:59:34 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94864e92a73475a96cf6e221859d10f3235e33c30f5d59faf5e900c8e6bb1ce6`  
		Last Modified: Sat, 03 Mar 2018 14:59:35 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea84e5ed7a7bb7dd59b1ba1ed8101187233655b53183386b4d1b216fcbc272ff`  
		Last Modified: Sat, 03 Mar 2018 14:59:35 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff22e3eb7fc74468135c70ee8ec190f683b1020558407e9f202ec99dd25ae453`  
		Last Modified: Sat, 03 Mar 2018 14:59:35 GMT  
		Size: 4.2 KB (4176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:c86b273e8116f11f41428512e9ad31372cb8d24e9be86ed0bec8599401f33275
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.1 MB (33058176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fdc40fc5602c3250423fb8d5ecc7a73e23edcdad7ada5969be726b39aebed1c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 21:22:00 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:22:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 21:22:27 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 21:22:27 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 12:06:54 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 12:06:54 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 12:07:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 12:07:11 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 12:07:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 12:07:12 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 12:07:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 12:07:14 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 12:07:14 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 12:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 12:07:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 12:07:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27825103f577634e399aa4d7b3926d800daaa8fb48694cbc00441e394ab49dc`  
		Last Modified: Tue, 12 Dec 2017 21:39:59 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906faec23cf2653ea69fef127c0ce0bad706d94c732403b1f414228152f476bd`  
		Last Modified: Tue, 12 Dec 2017 21:39:59 GMT  
		Size: 8.7 KB (8650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb1029d1df08e5376a776e456084b04ad97df041d887f4ce722247c2d61a3b4`  
		Last Modified: Tue, 12 Dec 2017 21:40:07 GMT  
		Size: 18.8 MB (18815715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e53af8a6f003236ed2e40ad0097f12f9166098af1aa2e4adf6dec2585bb17b`  
		Last Modified: Sat, 03 Mar 2018 12:47:21 GMT  
		Size: 12.1 MB (12101509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2dd9208e41aee4c91405fe8d8779ae3072ad0c397a0249fcaa404290860b33`  
		Last Modified: Sat, 03 Mar 2018 12:47:21 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e679fdefb0fb0cc86153f7c7047a5a5ec5ed7811b088563649bb3808829d35`  
		Last Modified: Sat, 03 Mar 2018 12:47:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06091c5c699a200aabec769bca4c2ed5820085620fa843123affeb62436a1654`  
		Last Modified: Sat, 03 Mar 2018 12:47:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72052ac3058d7d26e2a54e0b462b385005cb23304966c463e7043700956f703`  
		Last Modified: Sat, 03 Mar 2018 12:47:19 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:c2578d7168c8d34e396df6f57565d2651b595684e6dd16b224662fab33fbe512
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 MB (30649577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b0ade39d8763f625c2f1ad89b117c9e2e49d80ac47ae7aeca62fddb1389a05a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 08:18:08 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:18:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 08:18:35 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 08:18:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:18:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 08:18:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:18:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 08:14:32 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 08:14:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 08:15:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 08:15:08 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 08:15:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 08:15:12 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 08:15:15 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 08:15:18 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 08:15:19 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 08:15:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 08:15:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 08:15:24 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d1ed2187942e6103764c1aafdbb8a07c8ca518010057fe8241ae1785036c34`  
		Last Modified: Wed, 13 Dec 2017 08:26:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edcdde4e4bb24d232fb81eb66c47fcc0d25af42f3b5d6d228547cd01c4eee4c`  
		Last Modified: Wed, 13 Dec 2017 08:26:25 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d586348c018beacd8f060a315dc7b4d506f2132378b683c3fead6f9fa7766efe`  
		Last Modified: Wed, 13 Dec 2017 08:26:29 GMT  
		Size: 16.5 MB (16456345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3480fdffdc7a029ecd27e483c4afe8bfe9605c490c11d7e8dfa94b7ff54a96b9`  
		Last Modified: Sat, 03 Mar 2018 08:16:56 GMT  
		Size: 12.1 MB (12096327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca45d918db39d9cd854b3b8765b93d16eabaa08e294d46b46dc41504e04c6692`  
		Last Modified: Sat, 03 Mar 2018 08:16:57 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121a6a5e89b503f70a3ba28e46d507dd27d4cf7f6f72ff5cd160c7117c96f9a1`  
		Last Modified: Sat, 03 Mar 2018 08:16:54 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cf4e540d4b5550a3eb817ea22d1c849b64a93b601a07612548e04789361907`  
		Last Modified: Sat, 03 Mar 2018 08:16:54 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51274abff92e1db52d5c675fadd9dca01ab988bb0862bd824f1a2d27c2f38419`  
		Last Modified: Sat, 03 Mar 2018 08:16:54 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:fb0a50bb6f363964bf8e817175ac2291265cae2e3c30bef1e1f374839329f826
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30812145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2f581a53a56fcfd2a89a6d1fb77df4b57678d226ea463dc154168e441e3c71`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 05:52:10 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sun, 07 Jan 2018 05:52:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sun, 07 Jan 2018 05:52:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sun, 07 Jan 2018 05:52:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 18:07:55 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 18:07:55 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Thu, 08 Mar 2018 18:08:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 08 Mar 2018 18:08:21 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 08 Mar 2018 18:08:21 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 08 Mar 2018 18:08:22 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 08 Mar 2018 18:08:22 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 08 Mar 2018 18:08:23 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 08 Mar 2018 18:08:23 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 08 Mar 2018 18:08:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Mar 2018 18:08:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Mar 2018 18:08:23 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6b93eb5641a09d7aaa44d4012f510adaad80c7ab8d2437217416ed77261530`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59134468d142cef2da2ed34942e415fe770af752f6d04f422a6dbc7de2519364`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 8.9 KB (8942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e6bac3d3a79950f24c0f3e84229a3b39cb5fa0f82257e3d574ec9e44be6e55`  
		Last Modified: Sun, 07 Jan 2018 05:55:39 GMT  
		Size: 16.5 MB (16515431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942998aa455b2b360fc9589ec7aa31a274826bd729c0b104a3bcd003df16a399`  
		Last Modified: Thu, 08 Mar 2018 18:09:30 GMT  
		Size: 12.1 MB (12096449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb654878e390d4c4ba0e33edd6d5e510f51604bba9a6630a119d20db15462d7a`  
		Last Modified: Thu, 08 Mar 2018 18:09:29 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f167736e8c82d07ca472c3a0c96aef2a380540cf3390df215ab6d61a35f2cd98`  
		Last Modified: Thu, 08 Mar 2018 18:09:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a59b69757f5b971a4be945f771a753d67e38ec85b6a33b77c172bf71848c0`  
		Last Modified: Thu, 08 Mar 2018 18:09:30 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679c27ee68bf48af9a7de45997aff668fa8bd3540559d30c8534b7e1b88802c9`  
		Last Modified: Thu, 08 Mar 2018 18:09:29 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-rc-management`

```console
$ docker pull rabbitmq@sha256:c813a1996f0d859678d9f86f4f7a45bff7c8462ebf125d05fe4540a62faa8409
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.7-rc-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:c8702f04ace656e22b5d3b2fce16ad7823cfb21f1229cf43e5ee04823296a868
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75791509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1a5ad59d189fff7331488596d7dc498fa660336b11b5e6c61a27823f588bdb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 18:56:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:56:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 16 Feb 2018 18:56:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 18:57:02 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Feb 2018 18:57:03 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Fri, 16 Feb 2018 18:57:47 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:57:55 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 16 Feb 2018 18:57:56 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 18:57:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 01:22:37 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 01:22:38 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 01:22:38 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 01:23:27 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 01:23:28 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 01:23:28 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 01:23:29 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 01:23:29 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 01:23:30 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 01:23:31 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 01:23:31 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:23:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 01:23:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:23:33 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 01:23:33 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 01:23:52 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 01:24:04 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 01:24:04 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aa5c2fc28c2889bb371a7c8c86d79363c2210331abc9ab368eec5664f9c7f1`  
		Last Modified: Fri, 16 Feb 2018 19:01:56 GMT  
		Size: 4.5 MB (4498430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6866d83ad777c7832f9a12a4c138b04ae865fc71238531025c3a1d9cdab3e6`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424ad5823c0c06246ed365a566ac25a786727eb4de90d40450c75c9f9589d05c`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 952.0 KB (951962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f7e6945ef422f435b20cc8b77ebcfb95d9ab963a5a54e7a038efab9f37de5`  
		Last Modified: Fri, 16 Feb 2018 19:01:52 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2983462f8b69d0ad88f218912db6d68bde0c18fad0354a3a5aff7d5f93e4fa9e`  
		Last Modified: Fri, 16 Feb 2018 19:01:56 GMT  
		Size: 27.4 MB (27372199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36272053325786597e5127d4cdbb37cb84705348fdeb7457b7612eabe22e2d6a`  
		Last Modified: Sat, 03 Mar 2018 01:25:56 GMT  
		Size: 12.8 MB (12838374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da5cdf0511c80ec73d8c8bf969bebe628cd3121108a1ee587ce0512bd163158`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d326929135243e6a8b7aaceab049ad034097cdfe04186f28674cf6e3b04bba0d`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1bbd539225613770d81d820c59978baec744ddbe492af53e40624aa36f05eb`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2ad82bcb6865c2befd54eb436a0b75d9fed95ddb0fb62fc84cff1cd98b7508`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5055a36257aff98d16aa7090428e966d1eb3f566b7b255ce880afcaf28e362d`  
		Last Modified: Sat, 03 Mar 2018 01:25:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b97e17ef4934fa51766a9eca7091201df3d15d67b81bd65677ef208cac0376`  
		Last Modified: Sat, 03 Mar 2018 01:26:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db6cec8b6c44c1bae3f63702a2630902bf397cbd87d98b37b795c20b8c1458f`  
		Last Modified: Sat, 03 Mar 2018 01:26:32 GMT  
		Size: 7.6 MB (7622319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:2829d7df1af3c5502f3e52f11f0897c274f1775363417534a2909adb9bd63737
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71514476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9128e7354168756085d6edb58993be61b17da83e63ebe7e09ae6c35685435a04`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:06:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:06:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 22:06:54 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 22:07:37 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:07:40 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 22:08:20 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:08:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 22:08:20 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:08:21 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 15:14:36 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 15:14:36 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 15:14:36 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 15:15:51 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 15:15:51 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 15:15:51 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 15:15:52 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 15:15:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 15:15:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 15:15:55 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 15:15:55 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 15:15:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 15:15:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 15:15:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 15:15:57 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 15:16:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 15:16:33 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 15:16:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a212dd3e52653adb4c0c3677397e74fcac10b74d38b2df38af460830e04b1ac`  
		Last Modified: Thu, 15 Feb 2018 22:12:23 GMT  
		Size: 4.2 MB (4231540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae935791a245772b6342dece630412eff8a97d12aaf579e401ccc09215205a`  
		Last Modified: Thu, 15 Feb 2018 22:12:20 GMT  
		Size: 4.1 KB (4088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458120fe43d4aff849ffaeb2fa6d4cc8d2c3dc5c72caeb744d44ffa74f07033d`  
		Last Modified: Thu, 15 Feb 2018 22:12:22 GMT  
		Size: 942.5 KB (942460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfcf2d21f63838827957f9d1ab95f92202f63276a92d9d8799a93fce7b71d3a`  
		Last Modified: Thu, 15 Feb 2018 22:12:20 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e985b292dce34fd4c1a5c2bb38498fd0983718aabafca68a1c6492310146e8b4`  
		Last Modified: Thu, 15 Feb 2018 22:12:24 GMT  
		Size: 24.9 MB (24872054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a16a32e8f1c6c4cde706d2c43bf0a8b6576ca138e8deb0aa265b66b08bce28a`  
		Last Modified: Sat, 03 Mar 2018 15:17:06 GMT  
		Size: 12.8 MB (12809206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b788ff34dec55324e17ec31685104886030a895dedb9eb1dd2d09bd46567edba`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff5ab0b60e7c2d26bc7e7618dde4f8ca84b1d4c336e84915575a4eef108f411`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f98f1e3322ef3d0587d99363d0e15858746d9d7fd10d81bd0d18a250e6060b`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33eed5224f8283109c6a4c075743c5739fa45a15b758d18f43e496ac7f7d74cd`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f29b5c4ab5b32af99079cca278e0efba4e1c4c9041c0d06c2712931bb40fb52`  
		Last Modified: Sat, 03 Mar 2018 15:17:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ecb3d2789d3609fa6e1637a7d9477db58503f908224173a2b48a1ed92d7f28`  
		Last Modified: Sat, 03 Mar 2018 15:17:24 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4913f90f56f428a07823d0f56cfdd0c03dedc6d00423e7471c6443156813ee72`  
		Last Modified: Sat, 03 Mar 2018 15:17:27 GMT  
		Size: 7.5 MB (7472707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:5797de283326d20003e6cad55125589d82b345557d8a6c515af2e9980f02f62a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.6 MB (68630537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83e607058f3c997bed8569fa49ecddea02318f52008b668e678e0414254a905c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 13:31:27 GMT
ADD file:46d299c1b94cf1c7078a9ae99d4614ead151ede9dfedcf4c70385710c07610bc in / 
# Thu, 15 Feb 2018 13:31:27 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 16:11:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:11:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 16:11:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 16:12:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 16:12:17 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 16:12:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:12:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 16:12:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 16:12:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 14:07:40 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 14:07:40 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 14:07:40 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 14:08:41 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 14:08:41 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 14:08:41 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 14:08:42 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 14:08:42 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 14:08:44 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 14:08:45 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 14:08:45 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 14:08:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 14:08:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 14:08:47 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 14:08:47 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 14:09:03 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 14:09:18 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 14:09:19 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:235baf89a76b73bd04542508f7769803ecd00e0b8c71046ada69fb9d17f02496`  
		Last Modified: Thu, 15 Feb 2018 13:41:58 GMT  
		Size: 19.3 MB (19286085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b013f1082d9f6b4590d4a988c911f20b6ecd1025e255fc4a69303f3dfd32317d`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 3.9 MB (3868601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e6890c5bfb431a26fb646081f14de6ade476a28158583b3e708a8bc3f40ff3`  
		Last Modified: Thu, 15 Feb 2018 16:16:31 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3449fb95440de1ead82a804d144bcd225029ac93ea319b6471e1e97a5bf4ecc2`  
		Last Modified: Thu, 15 Feb 2018 16:16:29 GMT  
		Size: 926.1 KB (926131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ac028a3979e73e596b053b58fa2e196b155069793bc8a7bc2cf4e868b5405d9`  
		Last Modified: Thu, 15 Feb 2018 16:16:29 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264ff8b5d5697555bb29a8d1a3e1f4b69ff99f92897ff0888a7d165c83fd3926`  
		Last Modified: Thu, 15 Feb 2018 16:16:33 GMT  
		Size: 24.6 MB (24575931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0395e21ada356272f2ebec99ebadc409438d425d14a7e83984c9555bfd559249`  
		Last Modified: Sat, 03 Mar 2018 14:09:51 GMT  
		Size: 12.8 MB (12779792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e562f07d2540720018a7acd2fa505d9177f1c506de104bbff30a95b8302734a`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df10f76e638338f466587f76c27ef633d91d14a4d90418c9d4bc8d37ef50c442`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03144497be7b281d7412da8c7873b59135cd3c69117bcb20ebd39c213bbb1e8`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2007106f2697ecf78516ecaaf283f661f91b0dae47600475d6c30c5b3c251fb`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1d92311ec0e29db39cf9716b77b0d410b95faac5ad92c46e23dd144f63bdcd`  
		Last Modified: Sat, 03 Mar 2018 14:09:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7d75a8bce9c7adc57c4db0313a6cd3e49ddae618167f70aed9320cd94917359`  
		Last Modified: Sat, 03 Mar 2018 14:10:12 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbda03b77049b37e4acf47a5b721ee84dcaf5a4689b04d3969fd59610e06f697`  
		Last Modified: Sat, 03 Mar 2018 14:10:15 GMT  
		Size: 7.2 MB (7182530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:092dccb5e5c0dcc2e97e56bc334f222f62e0b9968bfb8015d052ae75df26890b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 MB (70435829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783dd1c584f0797abb6c48b133ccd6e3c74366b8b5b79084df10901fe7cf8b31`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 23:53:57 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 23:53:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:54:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 23:54:35 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 23:55:45 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 23:55:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 23:55:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 23:55:48 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 14:53:20 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 14:53:21 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 14:53:21 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 14:55:07 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 14:55:08 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 14:55:08 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 14:55:10 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 14:55:10 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 14:55:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 14:55:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 14:55:14 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 14:55:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 14:55:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 14:55:17 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 14:55:18 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 14:55:50 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 14:56:17 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 14:56:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecc7280a57c4f164dcf6ac46e8f359b64b73ac4eebda29730420cbc351f6de`  
		Last Modified: Fri, 16 Feb 2018 00:03:00 GMT  
		Size: 4.1 MB (4073277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de655884dd724f8f2f9dc4a57ce020cf3c7ea27c33757c572eb63feed718d68d`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14dce82e5cc18457d199dc012088a60f363697db4983a790036468ee985e073a`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 919.4 KB (919384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558516637ee16130b13ceed7508d8317e3d00c459a4a1096e73e0793bd412a75`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e8156666bfe6af3b5b9f2ffc484feb8d9bbeef45f3e89566370dc2f4199c01`  
		Last Modified: Fri, 16 Feb 2018 00:03:02 GMT  
		Size: 24.8 MB (24806003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1cf552e04a291f31a7a64e19a71a30e14f2fabbde1bccff11d2714d81df3f1`  
		Last Modified: Sat, 03 Mar 2018 14:58:24 GMT  
		Size: 12.8 MB (12803467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a5acdc9f7c90847bf52136f3419352bc58c28ec4b5c16f7f42239d97a5657c3`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5751893aa49521126d99b73cd9a9f3dab53650c53abd979734e83c7dcff295e`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8619f49db0da9e6f0b0108554cd2a5b2babfce71363d8ced0358da44c06ce76a`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c40dbeb115e64f184ff3d94075821e8e2b73649a5624946060ced3ee0aa081`  
		Last Modified: Sat, 03 Mar 2018 14:58:21 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee3def205e37b74593c5233a340571d6b8d1e1526828a0d488a5e78ce7a3983`  
		Last Modified: Sat, 03 Mar 2018 14:58:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f018091f7e80a6796b43a73b32cfae2c3dca529e244c78a79f219a6e63f887`  
		Last Modified: Sat, 03 Mar 2018 14:58:59 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f686259a095da33f55626f4900f6932d4afc4ea0f37f28add8e45fdca2af9f`  
		Last Modified: Sat, 03 Mar 2018 14:59:02 GMT  
		Size: 7.5 MB (7474808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:1cfeebb83f1c1ca29efa8825cd99a49de11ce7eebfe0e686f020dbc06d9df5c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (77025561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34998f491d9a20372b9ad97edcbafc0d7ad78db30986a2f2024deece0e7ca21f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 06:02:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:02:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 21 Feb 2018 06:02:04 GMT
ENV GOSU_VERSION=1.10
# Wed, 21 Feb 2018 06:18:09 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 06:18:09 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 21 Feb 2018 06:18:49 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 06:18:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 21 Feb 2018 06:18:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 06:18:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 11:46:44 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 11:46:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 11:46:45 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 11:47:17 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 11:47:18 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 11:47:18 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 11:47:19 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 11:47:19 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 11:47:20 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 11:47:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 11:47:22 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 11:47:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 11:47:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 11:47:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 11:47:24 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 11:54:17 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 11:54:33 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 11:54:33 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fde2b9bfdd614411d1d5380916758b66c6257b263b10477d6a2795b6546e380`  
		Last Modified: Wed, 21 Feb 2018 06:49:22 GMT  
		Size: 4.8 MB (4803819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47e09ac772b52c4b12b313c697bc00be2f982158ebcc742cb1479ee565ec7b28`  
		Last Modified: Wed, 21 Feb 2018 06:49:19 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bb3531a8f1827457fdde45c0eb60d638dbc6dfde7062a7760a1e1d1b045f13`  
		Last Modified: Wed, 21 Feb 2018 06:49:18 GMT  
		Size: 931.6 KB (931565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7937453ddac14ecbc5e7ec4d14fb796beda0cb63affc4942322ceeb630505610`  
		Last Modified: Wed, 21 Feb 2018 06:49:18 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1d7654af409f874e3881298682159aec377d49dbfb7204a1634f9f45e3413d`  
		Last Modified: Wed, 21 Feb 2018 06:49:25 GMT  
		Size: 27.6 MB (27570540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2482b47cbb8b4f8cc7f66b68d83dce29275299ee0660ed6fd8aea049a93a719e`  
		Last Modified: Sat, 03 Mar 2018 12:15:22 GMT  
		Size: 12.9 MB (12859009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d696dbedc74f4d1b50ad8fada058d33836ed5920224df38bfc8c1a437a2c458`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2d54f4c3804e9c13134f5d64a60d75cff7ab0c33af46c1cc721d82219cb8b6`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28699dc504b15e2ffd5de83ff404f8c9f22101c0e5de0b00b9820d08a7732a2c`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dab4b5b400b3db1aebbf875acec7a786dccd045a27065053d0c276cfce75b02`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b787f3d6c201bf731ea5cbc3d1bdaba4f83666aaec47942561fc8d97417776e1`  
		Last Modified: Sat, 03 Mar 2018 12:15:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d788dbc39b693015acb4770399b8d8468236c73d3a40429656c16f681a967726`  
		Last Modified: Sat, 03 Mar 2018 12:33:44 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0787dcd1133168c99c91f82edad305dbf31a09d73eae2efd84bd97ba87ca4a9`  
		Last Modified: Sat, 03 Mar 2018 12:33:47 GMT  
		Size: 7.7 MB (7714155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:c6ac2d9a1505d650ea4371f2647c0d6016087964b4a0d94f9a977d9eca57f640
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73746752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245194d1bf6ecafc085124bcfa058f8cf19a90593272caf342a89e9f6ad42ab2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:01:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:01:20 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:01:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:02:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:02:38 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:04:50 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:04:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:04:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:04:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 08:11:26 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 08:11:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 08:11:28 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 08:12:37 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 08:12:38 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 08:12:39 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 08:12:43 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 08:12:44 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 08:12:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 08:12:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 08:12:53 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 08:12:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 08:12:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 08:12:59 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 08:13:00 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 08:13:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 08:14:24 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 08:14:25 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7eb3ba88b8fb5c65c82d925e3dcbca9f48c46c56825a694fa78f92768e98f36`  
		Last Modified: Thu, 15 Feb 2018 07:15:17 GMT  
		Size: 4.4 MB (4360747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba68cb1b2e1a68352c6ccc11da8cf6084991476e7259a12748d767af1a187a08`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 4.1 KB (4107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534c75edb97f6c0ac366a7b7f3c3f0c2545a80abc9d4fe398852a7c0fb647cae`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 920.9 KB (920856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9812a87515bad00ca079aa29d890490ea5cdee29af48e4ba64973c94dc838e9`  
		Last Modified: Thu, 15 Feb 2018 07:15:13 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d03c6e69190174f5e919e55754b072b20b7bc8736b8dfef1e53712b9a96240c`  
		Last Modified: Thu, 15 Feb 2018 07:15:18 GMT  
		Size: 25.1 MB (25053207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6ac4a10392fe91a829ffe3162dd9b4427f972a0c1e59e0e4ac5c12cc0e75ea`  
		Last Modified: Sat, 03 Mar 2018 08:16:18 GMT  
		Size: 12.8 MB (12822061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e6a4a41de4ac366a1624ceec5b62d952c1b04d179b34d9855ec90df5e22fcd`  
		Last Modified: Sat, 03 Mar 2018 08:16:15 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46311033a315e5780b2e8cca5b1ab5cea58c5d6992f765a224784e36ed15de3c`  
		Last Modified: Sat, 03 Mar 2018 08:16:14 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef037c3650a539c5f1471ad7f3d4f88f09699e807ef77d4a88332f8ae8c0dcb`  
		Last Modified: Sat, 03 Mar 2018 08:16:15 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc925134bd31d23c0538a4a29e314e6e8dd7558ab7ea05649f658dc243df75f2`  
		Last Modified: Sat, 03 Mar 2018 08:16:16 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2061402514412e7e7a6f18dc2bef51e3b67da03236a65cbb74c0457c228c570c`  
		Last Modified: Sat, 03 Mar 2018 08:16:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416efad8d8d4fd38a8a9d0a6b4ea206be808276001ab0c7309158fe56e767d0b`  
		Last Modified: Sat, 03 Mar 2018 08:16:31 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f2b28b744d352fe0710963a6db0cf06cdb2218edea825afd0b7764f5f731a3`  
		Last Modified: Sat, 03 Mar 2018 08:16:33 GMT  
		Size: 7.8 MB (7825286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:deb4a7b1a73441037020da609b09d8f148abcff3eaf29634a9871bd0995f48d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73283003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f1f7ab6eaf3c50f84813b0600c8121c7ce6d6fdbd0e4a57ae3321e61b3016c6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:07:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:07:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 18:06:33 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 18:06:33 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 18:06:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4.rc.4-1
# Sat, 03 Mar 2018 18:07:23 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 03 Mar 2018 18:07:23 GMT
ENV LANG=C.UTF-8
# Sat, 03 Mar 2018 18:07:23 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 18:07:24 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 03 Mar 2018 18:07:24 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 18:07:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 18:07:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 03 Mar 2018 18:07:25 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 03 Mar 2018 18:07:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 03 Mar 2018 18:07:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 18:07:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 18:07:26 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 18:07:37 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 18:07:48 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 18:07:48 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56417f0fd7d846dd57ff775d3681fd4051109ae35bf4a62015be70cb5093465`  
		Last Modified: Thu, 15 Feb 2018 07:10:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af910c393a4ba11e83756868aab15e08805908293884e766ccf73b738588b2eb`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 25.0 MB (25026109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a1bb913a434aae980733f975240dd5f889e2e24615b54786f68c753415113a`  
		Last Modified: Sat, 03 Mar 2018 18:09:05 GMT  
		Size: 12.8 MB (12833984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5ce8d326234a70b58e4b7d1a28536024714c77154df3b7a02fa184911e3eef`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d25489352eac8325a059c07ab714aa59203b8469bb3d2a3feffd18933a153591`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944863607ce192c05a1f208257d28ab99c2db2565b5442fb80fd814d376eda15`  
		Last Modified: Sat, 03 Mar 2018 18:09:02 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aacd031817ed45d3d15383eed5bf977b18b0199326cbd829458fb76a6cac8d11`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ae7f5d98a598e46c6c307d254e459e8cba1c4e898aefe869690c5253d69bc0`  
		Last Modified: Sat, 03 Mar 2018 18:09:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dcda33f6615d639b903c74e7eaefee4598688f12d63baae1889840ef818ca`  
		Last Modified: Sat, 03 Mar 2018 18:09:18 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d247b88c04a687e4612931ce117d287ad0ec3a38308c210e86a76bef0a97eda9`  
		Last Modified: Sat, 03 Mar 2018 18:09:20 GMT  
		Size: 7.6 MB (7594751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-rc-management-alpine`

```console
$ docker pull rabbitmq@sha256:485513522a5a39315cb68ca4a2cdb94b7f5d0c4a7c7cda1753e2dcfa0a0bb493
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.7-rc-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:c228859b0112732b091424bca2a504d9c4dca453b0889fe4985229ad710953c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43858505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a00cf2efa612988177b2fbcf35066cdfea8e02760fd13fdd50f46b73b95cef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:55:37 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 10 Jan 2018 04:55:40 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 04:55:54 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 10 Jan 2018 04:56:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 10 Jan 2018 04:56:01 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 10 Jan 2018 04:56:01 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 10 Jan 2018 04:56:02 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 01:24:20 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 01:24:20 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 01:24:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 01:24:53 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 01:24:53 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 01:24:54 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 01:24:54 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 01:24:55 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 01:24:56 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 01:24:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 01:24:56 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 01:24:56 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 01:25:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 01:25:24 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 01:25:24 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5387f4b4c52b95160763db7d1266075905ba96d0f5bdcb562257fb150ec2c52e`  
		Last Modified: Wed, 10 Jan 2018 05:02:45 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba8c403a5b6fbb5651fd71cc7e2c96605165864b4ee509d2b6676e2958b8164`  
		Last Modified: Wed, 10 Jan 2018 05:02:44 GMT  
		Size: 8.5 KB (8546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4258fc50c52315f5cd0eec92f98862c11ffd3b34dd6404cfb9a921fb05821600`  
		Last Modified: Wed, 10 Jan 2018 05:02:47 GMT  
		Size: 18.7 MB (18652404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b0d59c0126bb99541a5b658f6cd5a9c958fa93e9cfc8d2fc57638c91827848`  
		Last Modified: Sat, 03 Mar 2018 01:27:09 GMT  
		Size: 12.1 MB (12101494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da7731a170285409c5a5bbcd0b4198dca1c21085e63a1f42b01a8a64d56d6d6`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fbc2989e5aa8361a5915597f574335106e18ddc194d55bb171925b7a94e7841`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f654e1f80998794735cf9aef49833af5131095f041a22c61bf575863fc58c0`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c2a9e566e9be843939c6936f402b9b768ba1bc433e9f783f28bea61f316b0b`  
		Last Modified: Sat, 03 Mar 2018 01:27:08 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a518b441c6e9d7d25a00efac29b0f149741be82666588096b9d2c3c91196c00`  
		Last Modified: Sat, 03 Mar 2018 01:27:43 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52425891c69fafcadb84e1b28969565d2161d37ec18b9791ed57bb2f4ae5982e`  
		Last Modified: Sat, 03 Mar 2018 01:27:46 GMT  
		Size: 11.0 MB (11024415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:ed8160c03103ca965baa405848aa0c9a1b0fe614e20f3c6728d12c08226dfad3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41246456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc495ecfc96b97cbe5aa22bd5a17e064903dcc6b9df659a768dc7702eff1aa33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 14:57:23 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:57:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 14:57:46 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 14:57:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:57:48 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 14:57:48 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:57:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 14:56:35 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 14:56:35 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 14:56:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 14:56:50 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 14:56:51 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 14:56:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 14:56:53 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 14:56:55 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 14:56:56 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 14:56:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 14:56:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 14:56:58 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 14:57:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 14:57:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 14:57:26 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae8c4ed88f638b23b4b44a51af5828b7ca6cf492e10d10b6517f03b2dc5f9c6a`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec871b8e16217284a5c9467fc885f9330b7cf594b88a9d251f442a31f9b11982`  
		Last Modified: Wed, 13 Dec 2017 15:05:55 GMT  
		Size: 8.7 KB (8656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc676aee1200891fd5416055f87903087826e98535cbd81dcb50768900244552`  
		Last Modified: Wed, 13 Dec 2017 15:06:00 GMT  
		Size: 16.3 MB (16252090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6375fa56c2f449c5d0c41049e27cd34cd5327f0a347176fb5f61797fac395a`  
		Last Modified: Sat, 03 Mar 2018 14:59:37 GMT  
		Size: 12.1 MB (12095694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff911323207dbd53adeea54ddd2f463ddaed9b7013af62c0b78c391552bd2400`  
		Last Modified: Sat, 03 Mar 2018 14:59:34 GMT  
		Size: 205.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94864e92a73475a96cf6e221859d10f3235e33c30f5d59faf5e900c8e6bb1ce6`  
		Last Modified: Sat, 03 Mar 2018 14:59:35 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea84e5ed7a7bb7dd59b1ba1ed8101187233655b53183386b4d1b216fcbc272ff`  
		Last Modified: Sat, 03 Mar 2018 14:59:35 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff22e3eb7fc74468135c70ee8ec190f683b1020558407e9f202ec99dd25ae453`  
		Last Modified: Sat, 03 Mar 2018 14:59:35 GMT  
		Size: 4.2 KB (4176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:802d96ac21139990a9411afc49ca2f737906953c4da7d30af802bd34fd16c8ae`  
		Last Modified: Sat, 03 Mar 2018 15:00:11 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1cd0b627fa4d96257c14504144f0e247370115410b80ff6b8a8f3fe5e4977cb`  
		Last Modified: Sat, 03 Mar 2018 15:00:15 GMT  
		Size: 10.9 MB (10894884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:20e84e672458669d6528e89b1982babb75afa27f7e7f4a9bf50db8d6a79e7e38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.2 MB (44204562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73706c277fd8b04aa016fd5ecfb9ad039a2f703786a667c5a6505e5e495f237`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:46:48 GMT
ADD file:614c07101e677db9a4118a71c852a2be45a337d94c5bedfb48ae8c4cad21d625 in / 
# Fri, 01 Dec 2017 18:46:48 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:46:48 GMT
CMD ["/bin/sh"]
# Tue, 12 Dec 2017 21:22:00 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:22:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 12 Dec 2017 21:22:27 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Tue, 12 Dec 2017 21:22:27 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:22:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 12:06:54 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 12:06:54 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 12:07:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 12:07:11 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 12:07:12 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 12:07:12 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 12:07:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 12:07:14 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 12:07:14 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 12:07:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 12:07:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 12:07:15 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 12:07:31 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 12:07:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 12:07:43 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:381c1d4107a4401d75b916e6dc4331efddc01adac41f49eeaa711ab898606a1a`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 2.1 MB (2126217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29cce73050e1b58c218a1c94cd8c9f719d38530500ab97333eac5fdaf385dbc`  
		Last Modified: Fri, 01 Dec 2017 18:47:24 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27825103f577634e399aa4d7b3926d800daaa8fb48694cbc00441e394ab49dc`  
		Last Modified: Tue, 12 Dec 2017 21:39:59 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906faec23cf2653ea69fef127c0ce0bad706d94c732403b1f414228152f476bd`  
		Last Modified: Tue, 12 Dec 2017 21:39:59 GMT  
		Size: 8.7 KB (8650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb1029d1df08e5376a776e456084b04ad97df041d887f4ce722247c2d61a3b4`  
		Last Modified: Tue, 12 Dec 2017 21:40:07 GMT  
		Size: 18.8 MB (18815715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e53af8a6f003236ed2e40ad0097f12f9166098af1aa2e4adf6dec2585bb17b`  
		Last Modified: Sat, 03 Mar 2018 12:47:21 GMT  
		Size: 12.1 MB (12101509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2dd9208e41aee4c91405fe8d8779ae3072ad0c397a0249fcaa404290860b33`  
		Last Modified: Sat, 03 Mar 2018 12:47:21 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e679fdefb0fb0cc86153f7c7047a5a5ec5ed7811b088563649bb3808829d35`  
		Last Modified: Sat, 03 Mar 2018 12:47:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06091c5c699a200aabec769bca4c2ed5820085620fa843123affeb62436a1654`  
		Last Modified: Sat, 03 Mar 2018 12:47:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72052ac3058d7d26e2a54e0b462b385005cb23304966c463e7043700956f703`  
		Last Modified: Sat, 03 Mar 2018 12:47:19 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68265d0dfa47fa05292e40e289e7d8f2028c04eccb74d87202a9de8ec3b60cbb`  
		Last Modified: Sat, 03 Mar 2018 12:53:14 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a1d1669aec3a425fdcf432ae80b3afeddcd487087860dace93e54ec25f09d3`  
		Last Modified: Sat, 03 Mar 2018 12:53:19 GMT  
		Size: 11.1 MB (11146195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:e60d5c711e66b67e577d6d8d3ae369cc13c1b80b6fde0f65530d5b7f9f734b8d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.7 MB (41717656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:564e0dfe3ba0a047e7a3335a445264d2d88ef7b03cae54c4e17988ce0a9ea61a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:54 GMT
ADD file:791370adae5cfa8feec749693f5a995a01f58f0462b7aa675fc5bf991e1282b5 in / 
# Fri, 01 Dec 2017 18:41:55 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:57 GMT
CMD ["/bin/sh"]
# Wed, 13 Dec 2017 08:18:08 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:18:13 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 13 Dec 2017 08:18:35 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 13 Dec 2017 08:18:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:18:38 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 13 Dec 2017 08:18:40 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:18:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 08:14:32 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 08:14:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Sat, 03 Mar 2018 08:15:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 03 Mar 2018 08:15:08 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 03 Mar 2018 08:15:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 03 Mar 2018 08:15:12 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 03 Mar 2018 08:15:15 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 03 Mar 2018 08:15:18 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 03 Mar 2018 08:15:19 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 03 Mar 2018 08:15:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 03 Mar 2018 08:15:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 03 Mar 2018 08:15:24 GMT
CMD ["rabbitmq-server"]
# Sat, 03 Mar 2018 08:15:32 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 03 Mar 2018 08:15:44 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 03 Mar 2018 08:15:46 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:0da653ea85b50d280ec56ca2eafb7e8b37590630356e043fa9ff162d55732a23`  
		Last Modified: Fri, 01 Dec 2017 18:42:14 GMT  
		Size: 2.1 MB (2081469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fd90b777cc38b5b6ca1b2407e647fdc22ef31b57ef98e924e7e0635adffc385`  
		Last Modified: Fri, 01 Dec 2017 18:42:15 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d1ed2187942e6103764c1aafdbb8a07c8ca518010057fe8241ae1785036c34`  
		Last Modified: Wed, 13 Dec 2017 08:26:26 GMT  
		Size: 1.3 KB (1306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0edcdde4e4bb24d232fb81eb66c47fcc0d25af42f3b5d6d228547cd01c4eee4c`  
		Last Modified: Wed, 13 Dec 2017 08:26:25 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d586348c018beacd8f060a315dc7b4d506f2132378b683c3fead6f9fa7766efe`  
		Last Modified: Wed, 13 Dec 2017 08:26:29 GMT  
		Size: 16.5 MB (16456345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3480fdffdc7a029ecd27e483c4afe8bfe9605c490c11d7e8dfa94b7ff54a96b9`  
		Last Modified: Sat, 03 Mar 2018 08:16:56 GMT  
		Size: 12.1 MB (12096327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca45d918db39d9cd854b3b8765b93d16eabaa08e294d46b46dc41504e04c6692`  
		Last Modified: Sat, 03 Mar 2018 08:16:57 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121a6a5e89b503f70a3ba28e46d507dd27d4cf7f6f72ff5cd160c7117c96f9a1`  
		Last Modified: Sat, 03 Mar 2018 08:16:54 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28cf4e540d4b5550a3eb817ea22d1c849b64a93b601a07612548e04789361907`  
		Last Modified: Sat, 03 Mar 2018 08:16:54 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51274abff92e1db52d5c675fadd9dca01ab988bb0862bd824f1a2d27c2f38419`  
		Last Modified: Sat, 03 Mar 2018 08:16:54 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:785ca7b32a636418df1b0e0d5f361f85c1a5d13581b8172512210a02ad4ba485`  
		Last Modified: Sat, 03 Mar 2018 08:17:09 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f903f08bc41b396ddb62740437ccca35947fd2e6b48565c1806eea2b723026`  
		Last Modified: Sat, 03 Mar 2018 08:17:12 GMT  
		Size: 11.1 MB (11067888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-rc-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:fdb21ddbda1d0fa1364462bdccdd6f5c800736a41d18ea21d46c851bacdfc1d1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41982693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07ac04911369d0147bc9fc4b8ee2410b5de7416ec64893fdbc7a7a6978979b7c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 05:52:10 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sun, 07 Jan 2018 05:52:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sun, 07 Jan 2018 05:52:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sun, 07 Jan 2018 05:52:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 03 Mar 2018 18:07:55 GMT
ENV RABBITMQ_VERSION=3.7.4-rc.4
# Sat, 03 Mar 2018 18:07:55 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4-rc.4
# Thu, 08 Mar 2018 18:08:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Thu, 08 Mar 2018 18:08:21 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 08 Mar 2018 18:08:21 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Thu, 08 Mar 2018 18:08:22 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 08 Mar 2018 18:08:22 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 08 Mar 2018 18:08:23 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Thu, 08 Mar 2018 18:08:23 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Thu, 08 Mar 2018 18:08:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 08 Mar 2018 18:08:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 08 Mar 2018 18:08:23 GMT
CMD ["rabbitmq-server"]
# Thu, 08 Mar 2018 18:08:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 08 Mar 2018 18:08:42 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Thu, 08 Mar 2018 18:08:43 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6b93eb5641a09d7aaa44d4012f510adaad80c7ab8d2437217416ed77261530`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59134468d142cef2da2ed34942e415fe770af752f6d04f422a6dbc7de2519364`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 8.9 KB (8942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e6bac3d3a79950f24c0f3e84229a3b39cb5fa0f82257e3d574ec9e44be6e55`  
		Last Modified: Sun, 07 Jan 2018 05:55:39 GMT  
		Size: 16.5 MB (16515431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942998aa455b2b360fc9589ec7aa31a274826bd729c0b104a3bcd003df16a399`  
		Last Modified: Thu, 08 Mar 2018 18:09:30 GMT  
		Size: 12.1 MB (12096449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb654878e390d4c4ba0e33edd6d5e510f51604bba9a6630a119d20db15462d7a`  
		Last Modified: Thu, 08 Mar 2018 18:09:29 GMT  
		Size: 206.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f167736e8c82d07ca472c3a0c96aef2a380540cf3390df215ab6d61a35f2cd98`  
		Last Modified: Thu, 08 Mar 2018 18:09:29 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7a59b69757f5b971a4be945f771a753d67e38ec85b6a33b77c172bf71848c0`  
		Last Modified: Thu, 08 Mar 2018 18:09:30 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679c27ee68bf48af9a7de45997aff668fa8bd3540559d30c8534b7e1b88802c9`  
		Last Modified: Thu, 08 Mar 2018 18:09:29 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a7327ac2fc704bfdc6f1a0c24e4da03f0ecf4e0d7e313ec4fc85c36a425e6`  
		Last Modified: Thu, 08 Mar 2018 18:09:42 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2ac609f8023e7a00ad678ebb7fa72e8091925ee9c108c5322d762b4f097ac4`  
		Last Modified: Thu, 08 Mar 2018 18:09:44 GMT  
		Size: 11.2 MB (11170356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:b6e988357c11f707c4357580835ea73495e0fe6abd692e3f64f75acfde546160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:3-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:45086400bf9110cb4205e0c6b21fa48e280b8c69dded32f0d7e93028723a59fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30811743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80dd0e77ff9d393dce6abdc1fbe13776b2d0f321d5aac6b618395b4e59c3ccb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 05:52:10 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sun, 07 Jan 2018 05:52:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sun, 07 Jan 2018 05:52:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sun, 07 Jan 2018 05:52:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:08:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 12 Mar 2018 17:08:04 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:08:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 12 Mar 2018 17:08:05 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:08:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:08:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 12 Mar 2018 17:08:06 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:08:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:08:06 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6b93eb5641a09d7aaa44d4012f510adaad80c7ab8d2437217416ed77261530`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59134468d142cef2da2ed34942e415fe770af752f6d04f422a6dbc7de2519364`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 8.9 KB (8942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e6bac3d3a79950f24c0f3e84229a3b39cb5fa0f82257e3d574ec9e44be6e55`  
		Last Modified: Sun, 07 Jan 2018 05:55:39 GMT  
		Size: 16.5 MB (16515431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690d17235932bd0b04cdbacaec0609c5088f2a198e48c3e7670bcd783d0058a8`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 12.1 MB (12096043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e469a6b4ef00ffbc9a53d5cb479bdc208addbd2c055ca483693c815f6333b53`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da953f78f4b8029f006b059717bea5f507e53476212c21df8f5f6ed8589737e`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a5e4fca38d2541d34df1da3c299c177ea220bdc1c0bdde19299aaa0c2a0ba0`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1f13c1579ee38fe28c146c496e7a7e4236848d3ae1e5608cb6acbd71ea03e`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:3a0eec99875bd60dfd89af44ec816a5d5b1ce613bdd331b7c799643ac1010a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:3-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:445d4891167c1e68649e50b4db0bd627d02de1d44908f2b49c9e139ce92408f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73280978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca7ed67604fe4b25d64236d8a8f11481fb0171a55ca596f38b3e763449ed0d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:07:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:07:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:06:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Mon, 12 Mar 2018 17:07:15 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 12 Mar 2018 17:07:15 GMT
ENV LANG=C.UTF-8
# Mon, 12 Mar 2018 17:07:16 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:07:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:07:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 12 Mar 2018 17:07:18 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:07:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 12 Mar 2018 17:07:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:07:19 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:07:19 GMT
CMD ["rabbitmq-server"]
# Mon, 12 Mar 2018 17:07:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 12 Mar 2018 17:07:40 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Mon, 12 Mar 2018 17:07:41 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56417f0fd7d846dd57ff775d3681fd4051109ae35bf4a62015be70cb5093465`  
		Last Modified: Thu, 15 Feb 2018 07:10:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af910c393a4ba11e83756868aab15e08805908293884e766ccf73b738588b2eb`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 25.0 MB (25026109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1c4459cf293e420c8191efd8a81c7d2020e4ef892c556b2df8638640ca4cc1`  
		Last Modified: Mon, 12 Mar 2018 17:08:45 GMT  
		Size: 12.8 MB (12832095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dee3bd5d27bfc82f0d35869732f1bafc5009a92a68974bff9965489e74d31e`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f81decace193531563aafbce03061472ec4eed54f56969b2104b2f63de11c7`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bb0d30069a25bff758f72013ce1319c955f14bcbcd230fb66c21367958b8c1`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3301e4341a91a7b6be1025fa1f401c594c27f24450a78401cda018bfcf73ef0`  
		Last Modified: Mon, 12 Mar 2018 17:08:44 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028be3145e86ced3f4c892a93ea846b58c35fac72add4baffb302d9a3c8302ec`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3874aed6c421abeb7917a33b9d7711b4ef1251337e19f6f92f6f2d88ceadf808`  
		Last Modified: Mon, 12 Mar 2018 17:09:02 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28403f8e9293ac9c3c4b37f1615e561bbfba1a8e1c5190080c5e1c15fd550f83`  
		Last Modified: Mon, 12 Mar 2018 17:09:04 GMT  
		Size: 7.6 MB (7594623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:a88987ce437d0dc592384685efb6d5dd50b2473e452e031fbdf6e1ca6e69bfa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:3-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:f2034c396b0923708c78d2e2585c22b8096e16c8bc16cbe64766164e3c832736
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41982300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97dbab89476b47402d21c71b5e3ce338f2d3fdd10f34ea83a8e7ed315ae2ce96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 05:52:10 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sun, 07 Jan 2018 05:52:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sun, 07 Jan 2018 05:52:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sun, 07 Jan 2018 05:52:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:08:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 12 Mar 2018 17:08:04 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:08:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 12 Mar 2018 17:08:05 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:08:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:08:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 12 Mar 2018 17:08:06 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:08:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:08:06 GMT
CMD ["rabbitmq-server"]
# Mon, 12 Mar 2018 17:08:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 12 Mar 2018 17:08:18 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 12 Mar 2018 17:08:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6b93eb5641a09d7aaa44d4012f510adaad80c7ab8d2437217416ed77261530`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59134468d142cef2da2ed34942e415fe770af752f6d04f422a6dbc7de2519364`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 8.9 KB (8942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e6bac3d3a79950f24c0f3e84229a3b39cb5fa0f82257e3d574ec9e44be6e55`  
		Last Modified: Sun, 07 Jan 2018 05:55:39 GMT  
		Size: 16.5 MB (16515431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690d17235932bd0b04cdbacaec0609c5088f2a198e48c3e7670bcd783d0058a8`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 12.1 MB (12096043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e469a6b4ef00ffbc9a53d5cb479bdc208addbd2c055ca483693c815f6333b53`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da953f78f4b8029f006b059717bea5f507e53476212c21df8f5f6ed8589737e`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a5e4fca38d2541d34df1da3c299c177ea220bdc1c0bdde19299aaa0c2a0ba0`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1f13c1579ee38fe28c146c496e7a7e4236848d3ae1e5608cb6acbd71ea03e`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72473354d3c89d31d9b5e5191a03682815d7460611376bdc4077583357998751`  
		Last Modified: Mon, 12 Mar 2018 17:09:40 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985979300c288229ce4a36e7911a4330bfdf9f571c5f478c2dce16725c5e5645`  
		Last Modified: Mon, 12 Mar 2018 17:09:42 GMT  
		Size: 11.2 MB (11170366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:b6e988357c11f707c4357580835ea73495e0fe6abd692e3f64f75acfde546160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:45086400bf9110cb4205e0c6b21fa48e280b8c69dded32f0d7e93028723a59fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30811743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80dd0e77ff9d393dce6abdc1fbe13776b2d0f321d5aac6b618395b4e59c3ccb7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 05:52:10 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sun, 07 Jan 2018 05:52:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sun, 07 Jan 2018 05:52:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sun, 07 Jan 2018 05:52:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:08:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 12 Mar 2018 17:08:04 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:08:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 12 Mar 2018 17:08:05 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:08:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:08:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 12 Mar 2018 17:08:06 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:08:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:08:06 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6b93eb5641a09d7aaa44d4012f510adaad80c7ab8d2437217416ed77261530`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59134468d142cef2da2ed34942e415fe770af752f6d04f422a6dbc7de2519364`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 8.9 KB (8942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e6bac3d3a79950f24c0f3e84229a3b39cb5fa0f82257e3d574ec9e44be6e55`  
		Last Modified: Sun, 07 Jan 2018 05:55:39 GMT  
		Size: 16.5 MB (16515431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690d17235932bd0b04cdbacaec0609c5088f2a198e48c3e7670bcd783d0058a8`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 12.1 MB (12096043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e469a6b4ef00ffbc9a53d5cb479bdc208addbd2c055ca483693c815f6333b53`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da953f78f4b8029f006b059717bea5f507e53476212c21df8f5f6ed8589737e`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a5e4fca38d2541d34df1da3c299c177ea220bdc1c0bdde19299aaa0c2a0ba0`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1f13c1579ee38fe28c146c496e7a7e4236848d3ae1e5608cb6acbd71ea03e`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:ab055d120e04cf561373db0773f20f0070589b9b89b400277fc6b45afcf4e78a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:latest` - linux; s390x

```console
$ docker pull rabbitmq@sha256:651166db2a74792f262aa1a74f70caa706a4051b143d2475bd18a6e111c22ed8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65686164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e647517c4795d3223fe14e589b16ecef28b9eabc10001eebb2c4101da6dc0a8e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:07:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:07:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:06:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Mon, 12 Mar 2018 17:07:15 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 12 Mar 2018 17:07:15 GMT
ENV LANG=C.UTF-8
# Mon, 12 Mar 2018 17:07:16 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:07:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:07:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 12 Mar 2018 17:07:18 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:07:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 12 Mar 2018 17:07:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:07:19 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:07:19 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56417f0fd7d846dd57ff775d3681fd4051109ae35bf4a62015be70cb5093465`  
		Last Modified: Thu, 15 Feb 2018 07:10:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af910c393a4ba11e83756868aab15e08805908293884e766ccf73b738588b2eb`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 25.0 MB (25026109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1c4459cf293e420c8191efd8a81c7d2020e4ef892c556b2df8638640ca4cc1`  
		Last Modified: Mon, 12 Mar 2018 17:08:45 GMT  
		Size: 12.8 MB (12832095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dee3bd5d27bfc82f0d35869732f1bafc5009a92a68974bff9965489e74d31e`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f81decace193531563aafbce03061472ec4eed54f56969b2104b2f63de11c7`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bb0d30069a25bff758f72013ce1319c955f14bcbcd230fb66c21367958b8c1`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3301e4341a91a7b6be1025fa1f401c594c27f24450a78401cda018bfcf73ef0`  
		Last Modified: Mon, 12 Mar 2018 17:08:44 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028be3145e86ced3f4c892a93ea846b58c35fac72add4baffb302d9a3c8302ec`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:3a0eec99875bd60dfd89af44ec816a5d5b1ce613bdd331b7c799643ac1010a18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:445d4891167c1e68649e50b4db0bd627d02de1d44908f2b49c9e139ce92408f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73280978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ca7ed67604fe4b25d64236d8a8f11481fb0171a55ca596f38b3e763449ed0d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 06:24:21 GMT
ADD file:8260e9ae960fb51db5129dd52203404076c40abd098cb2b6be7c9fe82821306f in / 
# Thu, 15 Feb 2018 06:24:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:07:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:09 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:07:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:07:23 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:07:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:07:52 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:07:52 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:06:51 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:06:52 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Mon, 12 Mar 2018 17:07:15 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 12 Mar 2018 17:07:15 GMT
ENV LANG=C.UTF-8
# Mon, 12 Mar 2018 17:07:16 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 12 Mar 2018 17:07:16 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:07:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:07:18 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 12 Mar 2018 17:07:18 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:07:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 12 Mar 2018 17:07:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:07:19 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:07:19 GMT
CMD ["rabbitmq-server"]
# Mon, 12 Mar 2018 17:07:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 12 Mar 2018 17:07:40 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Mon, 12 Mar 2018 17:07:41 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:100c28096d510c9b0ea02579fd330b972463c7d39f30611f118c107310254130`  
		Last Modified: Thu, 15 Feb 2018 01:20:39 GMT  
		Size: 22.3 MB (22348821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079e2b228bb4524e8d2c9a658020c054f8bef39bc900e57477a3abd6f0cc2636`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 4.5 MB (4529907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e6bdfde3e877a7ab88da41dbabf4799ce4f27ba40db6c0ba8204504a24ca5f`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 4.1 KB (4078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6abc083de327664d120368dce3ad19c4c21fa23cf6243098b929b88ac15d142`  
		Last Modified: Thu, 15 Feb 2018 07:10:12 GMT  
		Size: 938.0 KB (937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56417f0fd7d846dd57ff775d3681fd4051109ae35bf4a62015be70cb5093465`  
		Last Modified: Thu, 15 Feb 2018 07:10:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af910c393a4ba11e83756868aab15e08805908293884e766ccf73b738588b2eb`  
		Last Modified: Thu, 15 Feb 2018 07:10:14 GMT  
		Size: 25.0 MB (25026109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1c4459cf293e420c8191efd8a81c7d2020e4ef892c556b2df8638640ca4cc1`  
		Last Modified: Mon, 12 Mar 2018 17:08:45 GMT  
		Size: 12.8 MB (12832095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dee3bd5d27bfc82f0d35869732f1bafc5009a92a68974bff9965489e74d31e`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4f81decace193531563aafbce03061472ec4eed54f56969b2104b2f63de11c7`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9bb0d30069a25bff758f72013ce1319c955f14bcbcd230fb66c21367958b8c1`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3301e4341a91a7b6be1025fa1f401c594c27f24450a78401cda018bfcf73ef0`  
		Last Modified: Mon, 12 Mar 2018 17:08:44 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:028be3145e86ced3f4c892a93ea846b58c35fac72add4baffb302d9a3c8302ec`  
		Last Modified: Mon, 12 Mar 2018 17:08:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3874aed6c421abeb7917a33b9d7711b4ef1251337e19f6f92f6f2d88ceadf808`  
		Last Modified: Mon, 12 Mar 2018 17:09:02 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28403f8e9293ac9c3c4b37f1615e561bbfba1a8e1c5190080c5e1c15fd550f83`  
		Last Modified: Mon, 12 Mar 2018 17:09:04 GMT  
		Size: 7.6 MB (7594623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:a88987ce437d0dc592384685efb6d5dd50b2473e452e031fbdf6e1ca6e69bfa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; s390x

### `rabbitmq:management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:f2034c396b0923708c78d2e2585c22b8096e16c8bc16cbe64766164e3c832736
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 MB (41982300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97dbab89476b47402d21c71b5e3ce338f2d3fdd10f34ea83a8e7ed315ae2ce96`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Dec 2017 18:41:57 GMT
ADD file:9c09dfc247c393ab1c6205a4b7857047a3d88e398e8d35aede30f7d613ef1de9 in / 
# Fri, 01 Dec 2017 18:41:58 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:41:58 GMT
CMD ["/bin/sh"]
# Sun, 07 Jan 2018 05:52:10 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sun, 07 Jan 2018 05:52:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sun, 07 Jan 2018 05:52:28 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sun, 07 Jan 2018 05:52:29 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 05:52:29 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 17:07:48 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 17:08:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 12 Mar 2018 17:08:04 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 17:08:04 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 12 Mar 2018 17:08:05 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 17:08:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 17:08:06 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 12 Mar 2018 17:08:06 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 12 Mar 2018 17:08:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 17:08:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 17:08:06 GMT
CMD ["rabbitmq-server"]
# Mon, 12 Mar 2018 17:08:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 12 Mar 2018 17:08:18 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 12 Mar 2018 17:08:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:11e7bc85614a236b32043d147930fd2bc9055af8642fe30e5e56142590572b0e`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 2.2 MB (2185231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f825cbb729285f1fe2a0cd1d4d36897e3fe2191c5ee044ce11a5d301dc64a34`  
		Last Modified: Fri, 01 Dec 2017 18:42:22 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c6b93eb5641a09d7aaa44d4012f510adaad80c7ab8d2437217416ed77261530`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59134468d142cef2da2ed34942e415fe770af752f6d04f422a6dbc7de2519364`  
		Last Modified: Sun, 07 Jan 2018 05:55:38 GMT  
		Size: 8.9 KB (8942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e6bac3d3a79950f24c0f3e84229a3b39cb5fa0f82257e3d574ec9e44be6e55`  
		Last Modified: Sun, 07 Jan 2018 05:55:39 GMT  
		Size: 16.5 MB (16515431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690d17235932bd0b04cdbacaec0609c5088f2a198e48c3e7670bcd783d0058a8`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 12.1 MB (12096043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e469a6b4ef00ffbc9a53d5cb479bdc208addbd2c055ca483693c815f6333b53`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da953f78f4b8029f006b059717bea5f507e53476212c21df8f5f6ed8589737e`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a5e4fca38d2541d34df1da3c299c177ea220bdc1c0bdde19299aaa0c2a0ba0`  
		Last Modified: Mon, 12 Mar 2018 17:09:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46f1f13c1579ee38fe28c146c496e7a7e4236848d3ae1e5608cb6acbd71ea03e`  
		Last Modified: Mon, 12 Mar 2018 17:09:23 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72473354d3c89d31d9b5e5191a03682815d7460611376bdc4077583357998751`  
		Last Modified: Mon, 12 Mar 2018 17:09:40 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985979300c288229ce4a36e7911a4330bfdf9f571c5f478c2dce16725c5e5645`  
		Last Modified: Mon, 12 Mar 2018 17:09:42 GMT  
		Size: 11.2 MB (11170366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
