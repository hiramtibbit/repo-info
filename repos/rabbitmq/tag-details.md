<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rabbitmq`

-	[`rabbitmq:3`](#rabbitmq3)
-	[`rabbitmq:3.6`](#rabbitmq36)
-	[`rabbitmq:3.6.16`](#rabbitmq3616)
-	[`rabbitmq:3.6.16-alpine`](#rabbitmq3616-alpine)
-	[`rabbitmq:3.6.16-management`](#rabbitmq3616-management)
-	[`rabbitmq:3.6.16-management-alpine`](#rabbitmq3616-management-alpine)
-	[`rabbitmq:3.6-alpine`](#rabbitmq36-alpine)
-	[`rabbitmq:3.6-management`](#rabbitmq36-management)
-	[`rabbitmq:3.6-management-alpine`](#rabbitmq36-management-alpine)
-	[`rabbitmq:3.7`](#rabbitmq37)
-	[`rabbitmq:3.7.7`](#rabbitmq377)
-	[`rabbitmq:3.7.7-alpine`](#rabbitmq377-alpine)
-	[`rabbitmq:3.7.7-management`](#rabbitmq377-management)
-	[`rabbitmq:3.7.7-management-alpine`](#rabbitmq377-management-alpine)
-	[`rabbitmq:3.7-alpine`](#rabbitmq37-alpine)
-	[`rabbitmq:3.7-management`](#rabbitmq37-management)
-	[`rabbitmq:3.7-management-alpine`](#rabbitmq37-management-alpine)
-	[`rabbitmq:3-alpine`](#rabbitmq3-alpine)
-	[`rabbitmq:3-management`](#rabbitmq3-management)
-	[`rabbitmq:3-management-alpine`](#rabbitmq3-management-alpine)
-	[`rabbitmq:alpine`](#rabbitmqalpine)
-	[`rabbitmq:latest`](#rabbitmqlatest)
-	[`rabbitmq:management`](#rabbitmqmanagement)
-	[`rabbitmq:management-alpine`](#rabbitmqmanagement-alpine)

## `rabbitmq:3`

```console
$ docker pull rabbitmq@sha256:899b10984c94140d3a66f1baaf58286232e0c17143d48ed955a25fc20321ee7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

```console
$ docker pull rabbitmq@sha256:33f689d670ca4601fd29dc64da7f7338c85e5bfafa3fdcefcac3fd36b954d2ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65777835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805eecabc1355c2f78c93a07ee1ec3f8968819a70adfad8d5c1a01d70f8e8e9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 00:58:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:58:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 00:58:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 00:59:16 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 00:59:17 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 27 Jun 2018 00:59:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:59:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 00:59:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 00:59:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:57:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Sat, 07 Jul 2018 03:58:10 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 03:58:10 GMT
ENV LANG=C.UTF-8
# Sat, 07 Jul 2018 03:58:10 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:58:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:58:13 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 07 Jul 2018 03:58:13 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:58:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 07 Jul 2018 03:58:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:58:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:58:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a58d97bcb569ba860f65d14aeb5ed171470841328c944423c5cb3e34a030e9`  
		Last Modified: Wed, 27 Jun 2018 01:05:00 GMT  
		Size: 4.5 MB (4498593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339d92e505149e43ef8461a7878a3c2651fe6dcc68173ce9c34430e7e39f612c`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cb74af4ef9bc8da6a9d155cdad9176f360c9b387fbb8826f10f87627002971`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 952.1 KB (952079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d613e36722e22a6271bf49b74dfc900ce4a9da0506d861cb712fb315b33ef76`  
		Last Modified: Wed, 27 Jun 2018 01:04:55 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b318f0f6ea270d2b80397460502b47f76169ceb6dff7cd207a1aa28c7a7e75`  
		Last Modified: Wed, 27 Jun 2018 01:04:59 GMT  
		Size: 27.5 MB (27503299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a88195c480067384c475833398f13fe23e1bf263fde1298e175586f568597e`  
		Last Modified: Sat, 07 Jul 2018 04:00:16 GMT  
		Size: 10.3 MB (10315617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f30a9a6ea8aae23bf3ddae575f0e16cf6b68017a83f6185dd3d190896a81e`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587595cdbb2e2dd187356885bb58559d96ff9454b5afaf570b793043f5633e87`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654850faf7449177b61397c063977f9a48049a69879d514b2e95e2c666b262b4`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78740d47dae34536365113f5083b4641e2e9ec91bc01b8f53a1e438324c9379`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1b6640bb406d2b67fb12956a80545febfba8dd3e92ef8d76b1272574e71160`  
		Last Modified: Sat, 07 Jul 2018 04:00:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:737515e2338a35cd0f7362e4b3b27cc2a7ff3232999670eb56c328524bbdfaa1
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
$ docker pull rabbitmq@sha256:82df8000bc623a5530b154215612b1bd01edde7955deb7060d71f71e62415df2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62972083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3811c60244b72152b8b88789dfb5583588348e8c098629ddffac95dbb6e834`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 00:58:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:58:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 00:58:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 00:59:16 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:02:36 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:02:36 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 01:02:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 01:02:36 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 01:02:37 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 01:02:37 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 01:02:37 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 01:03:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:03:06 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 01:03:07 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 01:03:07 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 01:03:08 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 01:03:09 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 01:03:10 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:03:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 01:03:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:03:11 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 01:03:12 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a58d97bcb569ba860f65d14aeb5ed171470841328c944423c5cb3e34a030e9`  
		Last Modified: Wed, 27 Jun 2018 01:05:00 GMT  
		Size: 4.5 MB (4498593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339d92e505149e43ef8461a7878a3c2651fe6dcc68173ce9c34430e7e39f612c`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cb74af4ef9bc8da6a9d155cdad9176f360c9b387fbb8826f10f87627002971`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 952.1 KB (952079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7deaafddf76bba4285761045be14547df7bab8bafcd6abd502b6cee7ce11d2`  
		Last Modified: Wed, 27 Jun 2018 01:08:28 GMT  
		Size: 27.7 MB (27705768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47992c5adf3165609b1412164ca552d74d0d776dc6cf89ab5a32e4a901304fca`  
		Last Modified: Wed, 27 Jun 2018 01:08:26 GMT  
		Size: 7.3 MB (7307903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b20e9235075135184c191341e5722218719d4f0419f6c9ae9dca8046eea2fd6`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de77ead0ed75881338587e225fbc9b23c987e2b6c8caf4e3cf57726db85c9325`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8d90c9adf425db818892f4e76af7d5c9411b02e83c525bf38a059a5f48163a`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cad7de14088aa1d338aa3308d4da0723346c9cc04de4e93816a605264ea9c4a`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97bd942ccad80ff64f05c041381aff8807b0ad630249c4410965c1a5663dab8`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:8c76a6066290b69969f8aa4439003cc8de8e74e61fdefc771cfa34626ff82b1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.6 MB (58558229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d35ae26fb56be58f02675ee42561eabbd1a3720179311961fb7767cf9ebc57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:14:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:14:05 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 11:14:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 11:14:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 11:16:54 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:16:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 11:16:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:16:55 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 11:16:55 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 11:16:55 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 11:16:56 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 11:17:21 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:17:21 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 11:17:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 11:17:22 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 11:17:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 11:17:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 11:17:25 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:17:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 11:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:17:27 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 11:17:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825b1e03deb60ec168e8c1f86037855003b56efd9fdcbf9ad9942bccfbd386f0`  
		Last Modified: Wed, 27 Jun 2018 11:18:09 GMT  
		Size: 4.2 MB (4231542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04df780dc33d847d711076c5d4927e047854ca580966842b62cf3084b58dfd27`  
		Last Modified: Wed, 27 Jun 2018 11:18:07 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5b5b7d007568279387e4aec9d5315de86f80d4b70e1ec340982198000063e8`  
		Last Modified: Wed, 27 Jun 2018 11:18:07 GMT  
		Size: 942.5 KB (942474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3caa0c2e8b7a1f53042803f5ee7dff65f165558629e09dc5121b4d9ee3a6a05`  
		Last Modified: Wed, 27 Jun 2018 11:19:12 GMT  
		Size: 25.2 MB (25172398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fcc7c887c7bce12eedf1e90770d99990d98eff94f9bc2c27050706b65d09ea`  
		Last Modified: Wed, 27 Jun 2018 11:19:09 GMT  
		Size: 7.0 MB (7023750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9fd6651c49c209a70f99a41a529c48b37dafb88aba394adbf489c041f3d982`  
		Last Modified: Wed, 27 Jun 2018 11:19:06 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9a9b223a3e696cd5a8bbc34db6937b8780e9d46eb3cc1b64d7f216486158b8`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0008eddb0f668d054cea1bf98e342fa8e3f3c2a9d53fdbfd54c50ea1b91fc201`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdc2a4a4b5f15cf69f9bdd28e1274b066b05957967de4a5ca0257532b352463`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10be111323e80635add9b810c2185fc951e6b9d444ccff22f8429315de7d605`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:8649286a1c89898d5864d70e61cdac55a413f3f4a841efe6b286915d15c72173
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55811352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a096257ef49a64ada10a3c590579e68511d3a82ff5214b2087c396ebdc042ad4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:12:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:12:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 14:12:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:12:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:15:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:15:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 14:15:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 14:15:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 14:15:06 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 14:15:06 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 14:15:07 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 14:15:34 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:15:35 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 14:15:36 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 14:15:36 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 14:15:38 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 14:15:39 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 14:15:40 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:15:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 14:15:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:15:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 14:15:42 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb65999b58884828ff25e13d07aebc86e55605338c7abc118cfeddfa39c75314`  
		Last Modified: Wed, 27 Jun 2018 14:16:30 GMT  
		Size: 3.9 MB (3868682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1d89ac0fd8e9fb3ebbd0864d5645d52c63b39424990d3741df3fbd9fbc07d`  
		Last Modified: Wed, 27 Jun 2018 14:16:28 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48725968edca68879146e7c9d8dfd6148ce6952e8474683f3aebecbb57eb1624`  
		Last Modified: Wed, 27 Jun 2018 14:16:28 GMT  
		Size: 926.2 KB (926176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7299ca21aed161705f6bc525b06fc070e63a681c6637815e91fadc56436a3afd`  
		Last Modified: Wed, 27 Jun 2018 14:17:39 GMT  
		Size: 24.8 MB (24785201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28f385387f25a57e99324582e0e91c8d9c5a991ce3fcb6e3bd729f4c02a8da2`  
		Last Modified: Wed, 27 Jun 2018 14:17:36 GMT  
		Size: 6.9 MB (6934242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1b41065cf7f363c52826568cdd4c42cdb04f207bb28d881bb77e2c7d62aa27`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16bad0dab8c5fa26088449b5dc25c1b7a47f90b15ccc6ded5f2d11d00d784ca`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b999d40c36f651e5c559f112bf570e2ad5230c06ff08326015ef152c2298f5`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83c73a39f722ad7eaecb707a5c72e6207af867c49fd696d952b3aa2a61b1825`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2a6e9644671e060f55680f0a9a7b35935ac9e61b1fbcffa687cc1e4ffe312b`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:3e9985b37c3f255c3c499d7444be91e41edf98a0d7e338a0dc81a1749bf6250f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57401995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b394cde63e51aedf6844160fe31ee7b45a8582f77a2b274a9ba43b5366a29e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:16:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:16:33 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 13:16:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:17:12 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:22:07 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:22:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 13:22:09 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 13:22:10 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 13:22:11 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 13:22:12 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 13:22:13 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 13:23:17 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:23:21 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 13:23:26 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 13:23:27 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 13:23:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 13:23:41 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 13:23:46 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:23:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 13:23:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:24:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 13:24:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0d96808e947c7710f2208a71866be23a9e6406adb27411db1b6249aa6b6a05`  
		Last Modified: Wed, 27 Jun 2018 13:25:57 GMT  
		Size: 4.1 MB (4073248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e622a3e7901d3cfb12b9761cbfbe3acca2d3ef4579c8fdeda2c2e1d564b391f`  
		Last Modified: Wed, 27 Jun 2018 13:25:54 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3063cb83aae8813ad494c94943225b95b549efc20ff73c755f678582cb2e6c`  
		Last Modified: Wed, 27 Jun 2018 13:25:53 GMT  
		Size: 919.4 KB (919449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3fa23541f9ceb33853e203972ded1202f40684abca3c97a22032fc9c05abc9`  
		Last Modified: Wed, 27 Jun 2018 13:27:48 GMT  
		Size: 25.0 MB (25043260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369acea658435aa562ea5fc176eacb71a052eff214e73f4c91dcad24396ce70c`  
		Last Modified: Wed, 27 Jun 2018 13:27:43 GMT  
		Size: 7.0 MB (7007196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe9dc36b6903581d5ebb8295cdcf73b6761a07097d09f6f7d72a03390d98fc3`  
		Last Modified: Wed, 27 Jun 2018 13:27:36 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12b33015c2815eb4b6ada65a7420e1dbe8a6b3bf389a331bc1d70c2253a4685`  
		Last Modified: Wed, 27 Jun 2018 13:27:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ab541da7d8acefedef6c0a133ea2b065e25994acdbbc3986c7109fe0b4a1b8`  
		Last Modified: Wed, 27 Jun 2018 13:27:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beacfb22282e520ec5a6cf0bf2e422d3d8fffc90b40fc45411ddba97da68020`  
		Last Modified: Wed, 27 Jun 2018 13:27:35 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6324450aebb6a7978394b88a24b174027e1e184a48ed57dcbe5de208e922d8f`  
		Last Modified: Wed, 27 Jun 2018 13:27:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; 386

```console
$ docker pull rabbitmq@sha256:778b43bc60eb5b830f681eec3ac0154a87e341548a05efda46da4c2878a44c6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (64028822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b487d522fa13cc513ea3919d3d905ecc5e04dcf13dbbb9ee1f8f93456992cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:32:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:32:23 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 14:32:23 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:32:45 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:35:40 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:35:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 14:35:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 14:35:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 14:35:41 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 14:35:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 14:35:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 14:36:10 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:36:10 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 14:36:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 14:36:11 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 14:36:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 14:36:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 14:36:14 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:36:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 14:36:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:36:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 14:36:16 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ceb27dac907a5a8252dedd83883476569ce0d1e8b71a75ad3ad8a10067e421`  
		Last Modified: Wed, 27 Jun 2018 14:37:22 GMT  
		Size: 4.8 MB (4803932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc007393ca19b420b5fbce014d523fd47b65c898bd16726675b5c413a01b772`  
		Last Modified: Wed, 27 Jun 2018 14:37:19 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7c85e08ba68cd94a8e8271454d5b636dab973ebef4b3e8055ea821a6967907`  
		Last Modified: Wed, 27 Jun 2018 14:37:18 GMT  
		Size: 931.6 KB (931589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407c46f1f202247472304cae422782a60aa489cf08e41968bf6d8a2b14959d5a`  
		Last Modified: Wed, 27 Jun 2018 14:39:16 GMT  
		Size: 27.8 MB (27820236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43723cd64a2dd8f7e7a16e5f97020230d4a0a99915ea65e550b25259bd833716`  
		Last Modified: Wed, 27 Jun 2018 14:39:12 GMT  
		Size: 7.3 MB (7322210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0dadc5d5f00f5cc3bcf9553aeaf25d2fb571684ec823138e4075c83325a567`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef2b592413e919155cddd9984f45596a5ee627d2b111de7f694aea7c72a4d5`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1068155f399cffa04ad1f67a67a299c36f6241a230a8540b103149635689b30d`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8942b2a83fde843d426f8e0fc41b8bcface0907f03da5493bea20ad793006`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511bc5a9753ef0507dabe9bd78971250061529b11a6779632c34fbf65942094b`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:3510670caf2856b8c147f5785021642ab94cede93d84ff660b441afb809f71d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60504887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96a7c6a1f1e3d0c09789cb1fc6b3fb162559ac6e73c72fd57d093524001f0b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:30:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:30:39 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 12:30:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 12:31:59 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 12:41:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:41:35 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 12:41:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 12:41:37 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 12:41:38 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 12:41:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 12:41:40 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 12:42:34 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:42:36 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 12:42:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 12:42:41 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 12:42:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 12:42:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 12:42:52 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:42:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 12:42:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:42:55 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 12:42:56 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bd042d1af652aeb7f1179a8c2bdcf4ed0f81eb4251216a177cd71ecc78d2fe`  
		Last Modified: Wed, 27 Jun 2018 12:44:16 GMT  
		Size: 4.4 MB (4360645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9c485d9dc69963a40f603f375772ab7425f15acb09d1803689ee12b72593c8`  
		Last Modified: Wed, 27 Jun 2018 12:44:13 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a02bb3ae1c1247c1ab6ea88b0a657e4262bc46c44ad396c4da2616fdd1c09f0`  
		Last Modified: Wed, 27 Jun 2018 12:44:14 GMT  
		Size: 920.8 KB (920757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2ee0f20ed71475d33e4978cf2bb60eca478d8c838b5d6dc8085bb8304f6bd9`  
		Last Modified: Wed, 27 Jun 2018 12:45:47 GMT  
		Size: 25.5 MB (25492844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c602da23afb1b085a4367e57e2b9b340cfc84fc89210a49ba2e49f9ce96190`  
		Last Modified: Wed, 27 Jun 2018 12:45:44 GMT  
		Size: 7.0 MB (6966807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a84511f74450f23ebd355b5c6159ad2b22c4640a1a3b5c557a1d10e90d5e31f`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54246d37a706130763825d4cedf98e2c716a2d1f30499e92ca8e684145b8d18`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba89e71f47dbe3a21e9e5f997e80c834b80803dbefb5f0d15546dde75a2b7c3`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856d7d9be3ea0211edb110de93db5de1bce91b8f50d604c5de7a6b0ab97455ca`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb8ab5d80004717cb54baed0f80c87c4b53c3d09584f033010ee0a6b2859f20`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; s390x

```console
$ docker pull rabbitmq@sha256:b58fa5e73a850c31fa60b88f5236ca3007ffc9ce3d838cb10e19ba2a92277481
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60492208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:564668ef60bac1d60df50e2c87aa7af7e2f71fb9eb001ce254d5a0047d96739a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:38:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:38:40 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 13:38:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:38:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:40:40 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:40:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 13:40:40 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 13:40:40 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 13:40:41 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 13:40:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 13:40:41 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 13:40:55 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:40:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 13:40:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 13:40:56 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 13:40:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 13:40:58 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 13:40:58 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:40:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 13:40:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:40:59 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 13:40:59 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e807416110d0cf06abcbde25d0113b63bd830a4530be9402a739471fadb40132`  
		Last Modified: Wed, 27 Jun 2018 13:41:37 GMT  
		Size: 4.5 MB (4530010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da86ac5a30e03a606b312415dadd31364903f21a2c90b521e21fd7a1afda732a`  
		Last Modified: Wed, 27 Jun 2018 13:41:36 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01965e40b1df1c653de280dbd763b44adb1738344fe1da60276a2cba7fa97780`  
		Last Modified: Wed, 27 Jun 2018 13:41:35 GMT  
		Size: 938.0 KB (938029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f799aad0ce38c78f3b57659fe976dd6c8a9e3e91c99e677e9947be3ceaeb12e6`  
		Last Modified: Wed, 27 Jun 2018 13:42:20 GMT  
		Size: 25.6 MB (25622371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b02abb9391d57138095399f99b195df245719e0849a85871345de54fe35b1c`  
		Last Modified: Wed, 27 Jun 2018 13:42:18 GMT  
		Size: 7.0 MB (7041164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c959f88696919054437cb828567926b46b4f7e3d50d43e358374fc5ed1e97f`  
		Last Modified: Wed, 27 Jun 2018 13:42:16 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb74affc0a53b19411062312cfed232db3bf1c9d0e11faec76dba848c0a6277c`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7873e12812afd26a9a58827fc2c46c129d96f84b045c3d977d2d4c19a0cea4`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7075b09e38f6bbc398cf98f07376a02332f167abfdf422182f504701fe8eb502`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcc413eeb49c1b38e39adb08fdf195df6d77eadd0a732089f25700faf9030b7`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16`

```console
$ docker pull rabbitmq@sha256:737515e2338a35cd0f7362e4b3b27cc2a7ff3232999670eb56c328524bbdfaa1
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

### `rabbitmq:3.6.16` - linux; amd64

```console
$ docker pull rabbitmq@sha256:82df8000bc623a5530b154215612b1bd01edde7955deb7060d71f71e62415df2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62972083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3811c60244b72152b8b88789dfb5583588348e8c098629ddffac95dbb6e834`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 00:58:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:58:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 00:58:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 00:59:16 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:02:36 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:02:36 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 01:02:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 01:02:36 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 01:02:37 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 01:02:37 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 01:02:37 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 01:03:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:03:06 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 01:03:07 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 01:03:07 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 01:03:08 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 01:03:09 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 01:03:10 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:03:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 01:03:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:03:11 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 01:03:12 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a58d97bcb569ba860f65d14aeb5ed171470841328c944423c5cb3e34a030e9`  
		Last Modified: Wed, 27 Jun 2018 01:05:00 GMT  
		Size: 4.5 MB (4498593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339d92e505149e43ef8461a7878a3c2651fe6dcc68173ce9c34430e7e39f612c`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cb74af4ef9bc8da6a9d155cdad9176f360c9b387fbb8826f10f87627002971`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 952.1 KB (952079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7deaafddf76bba4285761045be14547df7bab8bafcd6abd502b6cee7ce11d2`  
		Last Modified: Wed, 27 Jun 2018 01:08:28 GMT  
		Size: 27.7 MB (27705768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47992c5adf3165609b1412164ca552d74d0d776dc6cf89ab5a32e4a901304fca`  
		Last Modified: Wed, 27 Jun 2018 01:08:26 GMT  
		Size: 7.3 MB (7307903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b20e9235075135184c191341e5722218719d4f0419f6c9ae9dca8046eea2fd6`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de77ead0ed75881338587e225fbc9b23c987e2b6c8caf4e3cf57726db85c9325`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8d90c9adf425db818892f4e76af7d5c9411b02e83c525bf38a059a5f48163a`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cad7de14088aa1d338aa3308d4da0723346c9cc04de4e93816a605264ea9c4a`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97bd942ccad80ff64f05c041381aff8807b0ad630249c4410965c1a5663dab8`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:8c76a6066290b69969f8aa4439003cc8de8e74e61fdefc771cfa34626ff82b1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.6 MB (58558229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94d35ae26fb56be58f02675ee42561eabbd1a3720179311961fb7767cf9ebc57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:14:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:14:05 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 11:14:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 11:14:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 11:16:54 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:16:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 11:16:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:16:55 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 11:16:55 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 11:16:55 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 11:16:56 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 11:17:21 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:17:21 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 11:17:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 11:17:22 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 11:17:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 11:17:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 11:17:25 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:17:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 11:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:17:27 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 11:17:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825b1e03deb60ec168e8c1f86037855003b56efd9fdcbf9ad9942bccfbd386f0`  
		Last Modified: Wed, 27 Jun 2018 11:18:09 GMT  
		Size: 4.2 MB (4231542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04df780dc33d847d711076c5d4927e047854ca580966842b62cf3084b58dfd27`  
		Last Modified: Wed, 27 Jun 2018 11:18:07 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5b5b7d007568279387e4aec9d5315de86f80d4b70e1ec340982198000063e8`  
		Last Modified: Wed, 27 Jun 2018 11:18:07 GMT  
		Size: 942.5 KB (942474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3caa0c2e8b7a1f53042803f5ee7dff65f165558629e09dc5121b4d9ee3a6a05`  
		Last Modified: Wed, 27 Jun 2018 11:19:12 GMT  
		Size: 25.2 MB (25172398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fcc7c887c7bce12eedf1e90770d99990d98eff94f9bc2c27050706b65d09ea`  
		Last Modified: Wed, 27 Jun 2018 11:19:09 GMT  
		Size: 7.0 MB (7023750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9fd6651c49c209a70f99a41a529c48b37dafb88aba394adbf489c041f3d982`  
		Last Modified: Wed, 27 Jun 2018 11:19:06 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9a9b223a3e696cd5a8bbc34db6937b8780e9d46eb3cc1b64d7f216486158b8`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0008eddb0f668d054cea1bf98e342fa8e3f3c2a9d53fdbfd54c50ea1b91fc201`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdc2a4a4b5f15cf69f9bdd28e1274b066b05957967de4a5ca0257532b352463`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10be111323e80635add9b810c2185fc951e6b9d444ccff22f8429315de7d605`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:8649286a1c89898d5864d70e61cdac55a413f3f4a841efe6b286915d15c72173
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55811352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a096257ef49a64ada10a3c590579e68511d3a82ff5214b2087c396ebdc042ad4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:12:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:12:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 14:12:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:12:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:15:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:15:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 14:15:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 14:15:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 14:15:06 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 14:15:06 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 14:15:07 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 14:15:34 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:15:35 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 14:15:36 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 14:15:36 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 14:15:38 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 14:15:39 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 14:15:40 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:15:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 14:15:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:15:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 14:15:42 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb65999b58884828ff25e13d07aebc86e55605338c7abc118cfeddfa39c75314`  
		Last Modified: Wed, 27 Jun 2018 14:16:30 GMT  
		Size: 3.9 MB (3868682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1d89ac0fd8e9fb3ebbd0864d5645d52c63b39424990d3741df3fbd9fbc07d`  
		Last Modified: Wed, 27 Jun 2018 14:16:28 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48725968edca68879146e7c9d8dfd6148ce6952e8474683f3aebecbb57eb1624`  
		Last Modified: Wed, 27 Jun 2018 14:16:28 GMT  
		Size: 926.2 KB (926176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7299ca21aed161705f6bc525b06fc070e63a681c6637815e91fadc56436a3afd`  
		Last Modified: Wed, 27 Jun 2018 14:17:39 GMT  
		Size: 24.8 MB (24785201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28f385387f25a57e99324582e0e91c8d9c5a991ce3fcb6e3bd729f4c02a8da2`  
		Last Modified: Wed, 27 Jun 2018 14:17:36 GMT  
		Size: 6.9 MB (6934242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1b41065cf7f363c52826568cdd4c42cdb04f207bb28d881bb77e2c7d62aa27`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16bad0dab8c5fa26088449b5dc25c1b7a47f90b15ccc6ded5f2d11d00d784ca`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b999d40c36f651e5c559f112bf570e2ad5230c06ff08326015ef152c2298f5`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83c73a39f722ad7eaecb707a5c72e6207af867c49fd696d952b3aa2a61b1825`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2a6e9644671e060f55680f0a9a7b35935ac9e61b1fbcffa687cc1e4ffe312b`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:3e9985b37c3f255c3c499d7444be91e41edf98a0d7e338a0dc81a1749bf6250f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57401995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b394cde63e51aedf6844160fe31ee7b45a8582f77a2b274a9ba43b5366a29e6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:16:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:16:33 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 13:16:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:17:12 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:22:07 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:22:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 13:22:09 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 13:22:10 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 13:22:11 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 13:22:12 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 13:22:13 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 13:23:17 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:23:21 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 13:23:26 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 13:23:27 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 13:23:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 13:23:41 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 13:23:46 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:23:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 13:23:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:24:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 13:24:07 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0d96808e947c7710f2208a71866be23a9e6406adb27411db1b6249aa6b6a05`  
		Last Modified: Wed, 27 Jun 2018 13:25:57 GMT  
		Size: 4.1 MB (4073248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e622a3e7901d3cfb12b9761cbfbe3acca2d3ef4579c8fdeda2c2e1d564b391f`  
		Last Modified: Wed, 27 Jun 2018 13:25:54 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3063cb83aae8813ad494c94943225b95b549efc20ff73c755f678582cb2e6c`  
		Last Modified: Wed, 27 Jun 2018 13:25:53 GMT  
		Size: 919.4 KB (919449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3fa23541f9ceb33853e203972ded1202f40684abca3c97a22032fc9c05abc9`  
		Last Modified: Wed, 27 Jun 2018 13:27:48 GMT  
		Size: 25.0 MB (25043260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369acea658435aa562ea5fc176eacb71a052eff214e73f4c91dcad24396ce70c`  
		Last Modified: Wed, 27 Jun 2018 13:27:43 GMT  
		Size: 7.0 MB (7007196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe9dc36b6903581d5ebb8295cdcf73b6761a07097d09f6f7d72a03390d98fc3`  
		Last Modified: Wed, 27 Jun 2018 13:27:36 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12b33015c2815eb4b6ada65a7420e1dbe8a6b3bf389a331bc1d70c2253a4685`  
		Last Modified: Wed, 27 Jun 2018 13:27:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ab541da7d8acefedef6c0a133ea2b065e25994acdbbc3986c7109fe0b4a1b8`  
		Last Modified: Wed, 27 Jun 2018 13:27:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beacfb22282e520ec5a6cf0bf2e422d3d8fffc90b40fc45411ddba97da68020`  
		Last Modified: Wed, 27 Jun 2018 13:27:35 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6324450aebb6a7978394b88a24b174027e1e184a48ed57dcbe5de208e922d8f`  
		Last Modified: Wed, 27 Jun 2018 13:27:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16` - linux; 386

```console
$ docker pull rabbitmq@sha256:778b43bc60eb5b830f681eec3ac0154a87e341548a05efda46da4c2878a44c6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (64028822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8b487d522fa13cc513ea3919d3d905ecc5e04dcf13dbbb9ee1f8f93456992cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:32:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:32:23 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 14:32:23 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:32:45 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:35:40 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:35:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 14:35:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 14:35:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 14:35:41 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 14:35:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 14:35:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 14:36:10 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:36:10 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 14:36:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 14:36:11 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 14:36:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 14:36:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 14:36:14 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:36:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 14:36:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:36:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 14:36:16 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ceb27dac907a5a8252dedd83883476569ce0d1e8b71a75ad3ad8a10067e421`  
		Last Modified: Wed, 27 Jun 2018 14:37:22 GMT  
		Size: 4.8 MB (4803932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc007393ca19b420b5fbce014d523fd47b65c898bd16726675b5c413a01b772`  
		Last Modified: Wed, 27 Jun 2018 14:37:19 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7c85e08ba68cd94a8e8271454d5b636dab973ebef4b3e8055ea821a6967907`  
		Last Modified: Wed, 27 Jun 2018 14:37:18 GMT  
		Size: 931.6 KB (931589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407c46f1f202247472304cae422782a60aa489cf08e41968bf6d8a2b14959d5a`  
		Last Modified: Wed, 27 Jun 2018 14:39:16 GMT  
		Size: 27.8 MB (27820236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43723cd64a2dd8f7e7a16e5f97020230d4a0a99915ea65e550b25259bd833716`  
		Last Modified: Wed, 27 Jun 2018 14:39:12 GMT  
		Size: 7.3 MB (7322210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0dadc5d5f00f5cc3bcf9553aeaf25d2fb571684ec823138e4075c83325a567`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef2b592413e919155cddd9984f45596a5ee627d2b111de7f694aea7c72a4d5`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1068155f399cffa04ad1f67a67a299c36f6241a230a8540b103149635689b30d`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8942b2a83fde843d426f8e0fc41b8bcface0907f03da5493bea20ad793006`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511bc5a9753ef0507dabe9bd78971250061529b11a6779632c34fbf65942094b`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:3510670caf2856b8c147f5785021642ab94cede93d84ff660b441afb809f71d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60504887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b96a7c6a1f1e3d0c09789cb1fc6b3fb162559ac6e73c72fd57d093524001f0b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:30:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:30:39 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 12:30:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 12:31:59 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 12:41:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:41:35 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 12:41:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 12:41:37 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 12:41:38 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 12:41:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 12:41:40 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 12:42:34 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:42:36 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 12:42:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 12:42:41 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 12:42:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 12:42:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 12:42:52 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:42:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 12:42:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:42:55 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 12:42:56 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bd042d1af652aeb7f1179a8c2bdcf4ed0f81eb4251216a177cd71ecc78d2fe`  
		Last Modified: Wed, 27 Jun 2018 12:44:16 GMT  
		Size: 4.4 MB (4360645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9c485d9dc69963a40f603f375772ab7425f15acb09d1803689ee12b72593c8`  
		Last Modified: Wed, 27 Jun 2018 12:44:13 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a02bb3ae1c1247c1ab6ea88b0a657e4262bc46c44ad396c4da2616fdd1c09f0`  
		Last Modified: Wed, 27 Jun 2018 12:44:14 GMT  
		Size: 920.8 KB (920757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2ee0f20ed71475d33e4978cf2bb60eca478d8c838b5d6dc8085bb8304f6bd9`  
		Last Modified: Wed, 27 Jun 2018 12:45:47 GMT  
		Size: 25.5 MB (25492844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c602da23afb1b085a4367e57e2b9b340cfc84fc89210a49ba2e49f9ce96190`  
		Last Modified: Wed, 27 Jun 2018 12:45:44 GMT  
		Size: 7.0 MB (6966807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a84511f74450f23ebd355b5c6159ad2b22c4640a1a3b5c557a1d10e90d5e31f`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54246d37a706130763825d4cedf98e2c716a2d1f30499e92ca8e684145b8d18`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba89e71f47dbe3a21e9e5f997e80c834b80803dbefb5f0d15546dde75a2b7c3`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856d7d9be3ea0211edb110de93db5de1bce91b8f50d604c5de7a6b0ab97455ca`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb8ab5d80004717cb54baed0f80c87c4b53c3d09584f033010ee0a6b2859f20`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16` - linux; s390x

```console
$ docker pull rabbitmq@sha256:b58fa5e73a850c31fa60b88f5236ca3007ffc9ce3d838cb10e19ba2a92277481
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60492208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:564668ef60bac1d60df50e2c87aa7af7e2f71fb9eb001ce254d5a0047d96739a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:38:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:38:40 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 13:38:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:38:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:40:40 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:40:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 13:40:40 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 13:40:40 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 13:40:41 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 13:40:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 13:40:41 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 13:40:55 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:40:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 13:40:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 13:40:56 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 13:40:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 13:40:58 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 13:40:58 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:40:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 13:40:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:40:59 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 13:40:59 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e807416110d0cf06abcbde25d0113b63bd830a4530be9402a739471fadb40132`  
		Last Modified: Wed, 27 Jun 2018 13:41:37 GMT  
		Size: 4.5 MB (4530010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da86ac5a30e03a606b312415dadd31364903f21a2c90b521e21fd7a1afda732a`  
		Last Modified: Wed, 27 Jun 2018 13:41:36 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01965e40b1df1c653de280dbd763b44adb1738344fe1da60276a2cba7fa97780`  
		Last Modified: Wed, 27 Jun 2018 13:41:35 GMT  
		Size: 938.0 KB (938029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f799aad0ce38c78f3b57659fe976dd6c8a9e3e91c99e677e9947be3ceaeb12e6`  
		Last Modified: Wed, 27 Jun 2018 13:42:20 GMT  
		Size: 25.6 MB (25622371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b02abb9391d57138095399f99b195df245719e0849a85871345de54fe35b1c`  
		Last Modified: Wed, 27 Jun 2018 13:42:18 GMT  
		Size: 7.0 MB (7041164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c959f88696919054437cb828567926b46b4f7e3d50d43e358374fc5ed1e97f`  
		Last Modified: Wed, 27 Jun 2018 13:42:16 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb74affc0a53b19411062312cfed232db3bf1c9d0e11faec76dba848c0a6277c`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7873e12812afd26a9a58827fc2c46c129d96f84b045c3d977d2d4c19a0cea4`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7075b09e38f6bbc398cf98f07376a02332f167abfdf422182f504701fe8eb502`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcc413eeb49c1b38e39adb08fdf195df6d77eadd0a732089f25700faf9030b7`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16-alpine`

```console
$ docker pull rabbitmq@sha256:2f5d9a5a731203b97441151f8a4fa56416a764ba897f3b0d843930ec7ce72613
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6.16-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:6c15e68b0c750062300c0e5d4b8cc65e04a94188f562403481cba91f311061c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23721732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dfbf2b1a63986258c315d43a5e9f4b9d8c7787722fe5efb713a3fee9112f767`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:29:15 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 06 Jul 2018 17:29:16 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 17:29:18 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 06 Jul 2018 17:29:19 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 06 Jul 2018 17:29:19 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 06 Jul 2018 17:29:19 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 17:29:20 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 06 Jul 2018 17:29:20 GMT
ENV RABBITMQ_VERSION=3.6.16
# Fri, 06 Jul 2018 17:29:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Fri, 06 Jul 2018 17:29:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 06 Jul 2018 17:29:27 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 06 Jul 2018 17:29:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 06 Jul 2018 17:29:28 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 06 Jul 2018 17:29:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 06 Jul 2018 17:29:30 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 06 Jul 2018 17:29:30 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 06 Jul 2018 17:29:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jul 2018 17:29:31 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 06 Jul 2018 17:29:31 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3ada08dcd1bcc390d7a568597ab3aa22c6d6a8e7ef1d79da461636b4331b12`  
		Last Modified: Fri, 06 Jul 2018 17:32:22 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8282b02d34777e27ef96ffdd9016f2ff6ec79ad271bcb8de52ad1903b4eec5`  
		Last Modified: Fri, 06 Jul 2018 17:32:21 GMT  
		Size: 8.5 KB (8466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f78b5cb32ef838571a48be0ebb63d4d8cf14bb43a2a9e4193b390e6068311b`  
		Last Modified: Fri, 06 Jul 2018 17:32:26 GMT  
		Size: 16.6 MB (16565942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333d2f2bad39f531461d685ec40375002a663dacc972d6a0847d99c9ea3eead0`  
		Last Modified: Fri, 06 Jul 2018 17:32:21 GMT  
		Size: 5.1 MB (5126933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e65d1e4595da56b490bcd5e9ec3fb866686773bf59bcae26514cbac1f1f0df`  
		Last Modified: Fri, 06 Jul 2018 17:32:19 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f547723de9012f141466aea8656b1922fa119d94f77f2786aded37a15a1b9d78`  
		Last Modified: Fri, 06 Jul 2018 17:32:20 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c65bb2a64976d377571cceb510ae6fa663fce5223d41258a3b9b49189978301`  
		Last Modified: Fri, 06 Jul 2018 17:32:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e02fca099c22674260eedbb25aa1d50578a6122fb0618e72ca8b5259a162f2`  
		Last Modified: Fri, 06 Jul 2018 17:32:19 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:3652376bf5eb79e863e280f1ce684674fc8aee0744f1871ed9861af47e1d05db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23527630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7025bd5fcb08e61c4b8526503014c8ad87a7dea0beb900a17dfaed8b55cebcdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:25:53 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 05:25:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:26:10 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 05:26:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 05:26:10 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 05:26:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:26:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 19 Jun 2018 08:00:09 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 08:00:09 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 08:00:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:00:14 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:00:15 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:00:15 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:00:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:00:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:00:17 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:00:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:00:18 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:00:18 GMT
CMD ["rabbitmq-server"]
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
	-	`sha256:e62a8c5580cc1c2fbf2f9ce119bc0c06403a12ad18167bde2ec94420810916db`  
		Last Modified: Thu, 26 Oct 2017 05:26:38 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b096e39434b5aeddcb2ec167b7bf570cac7b8b16e68324d3f46c6f4d41b69c79`  
		Last Modified: Thu, 26 Oct 2017 05:26:37 GMT  
		Size: 8.4 KB (8374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ad9273316fa6f22cd2e8cf88c92f34c3210325fa1be2041153a96f4124476f`  
		Last Modified: Thu, 26 Oct 2017 05:26:41 GMT  
		Size: 16.4 MB (16420180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0693454961ff08b523fa25927e2be7f175032be3baaba0fb6ec6540445d7c6a0`  
		Last Modified: Tue, 19 Jun 2018 08:00:38 GMT  
		Size: 5.1 MB (5127115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6115d840072279d048e3478202c9250181b50414bb390dc90bc043930e23ee`  
		Last Modified: Tue, 19 Jun 2018 08:00:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee073718ee87fed4df3b8805e832ef72c6087029449834023f199325f2e789c`  
		Last Modified: Tue, 19 Jun 2018 08:00:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ca68f9c55a5ab50a7c77f4227541f22423bc089b8b277c67791322cc6eea72`  
		Last Modified: Tue, 19 Jun 2018 08:00:38 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d55f242d250f53e1781b84b20bbe775f37114954631d08fa660c6be81c7fc6c`  
		Last Modified: Tue, 19 Jun 2018 08:00:39 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:b9398ea22d3ac204111b51ceba7714a8e38c6b27c2c91fd4c19e4765cce02312
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23432924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475d7c6f939431d12593503e872a578e893ea6a39ff5554dfe2c670d58c6ecb4`
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
# Tue, 19 Jun 2018 10:24:46 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 10:24:47 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 10:24:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 10:24:56 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 10:24:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 10:24:58 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 10:25:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 10:25:02 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 10:25:03 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 10:25:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 10:25:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 10:25:09 GMT
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
	-	`sha256:66155e03221c295428f350487c9bf90c4aeb2621b47ce8d97fc2c818668d5e35`  
		Last Modified: Tue, 19 Jun 2018 10:29:21 GMT  
		Size: 5.1 MB (5127083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e35efa4e25e4f289c08b0388eee2ea24773c10b117a6127e1d8badd84444d3`  
		Last Modified: Tue, 19 Jun 2018 10:29:20 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446c0fbd86f96db78438a97696862f4eeccfa95bb195b79a0ca02c10c85228bd`  
		Last Modified: Tue, 19 Jun 2018 10:29:20 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e32beb4061664a5eef512d527e571d982a22c70feececcc65a80f2b6221189`  
		Last Modified: Tue, 19 Jun 2018 10:29:20 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158ee216ef9b1f8f45706c5137d184ca0a5babfdb0d4926a520fe6874c2b9341`  
		Last Modified: Tue, 19 Jun 2018 10:29:19 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:739b03800acab099625c88578074ac14ecf683641ce9daa01c04b06004a4a943
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23901365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ca05465b25798c29d3851daf838aef03d00e4451c8bc04ee881babfe885a159`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:18 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Fri, 01 Jun 2018 06:57:18 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:19 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 14:13:42 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 01 Jun 2018 14:13:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Jun 2018 14:13:54 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 01 Jun 2018 14:13:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 01 Jun 2018 14:13:54 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 01 Jun 2018 14:13:55 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 14:13:55 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 19 Jun 2018 10:42:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 10:42:34 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 10:42:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 10:42:53 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 10:42:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 10:42:54 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 10:42:55 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 10:42:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 10:42:56 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 10:42:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 10:42:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 10:42:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b93c7840c461984306700458d2c2e47d0215171ed13e046861ec7572a3e3f44`  
		Last Modified: Fri, 01 Jun 2018 06:57:42 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5946c2a44b42f417b3f7853b2097c66b1932a4fda04c67aab3777d52413efe78`  
		Last Modified: Fri, 01 Jun 2018 14:16:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0b3268c9f2050eeab7569ed784a548838d2b0ee475da36a61aa36c66f7b1c6`  
		Last Modified: Fri, 01 Jun 2018 14:16:46 GMT  
		Size: 8.3 KB (8300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebe1972b8e2d72a217f85842869a45ace48ccaee4cadcf2c5e0400607683ab3`  
		Last Modified: Fri, 01 Jun 2018 14:16:52 GMT  
		Size: 16.7 MB (16714404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36fc1c2273390586d41ef82831713603c501fb729edee848ef6484a9d827369`  
		Last Modified: Tue, 19 Jun 2018 10:47:32 GMT  
		Size: 5.1 MB (5127143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2a40854e0af3a74f7255514bd9602ff706613176c67b07071e6d45ff2fade6`  
		Last Modified: Tue, 19 Jun 2018 10:47:31 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d091528dfb321262154deafa4beae659149564ed5d27f1bfaf2156509cb4ec`  
		Last Modified: Tue, 19 Jun 2018 10:47:31 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f39822fd122fcdb696a697168406089d39411e90d11b583b8826597fadadb`  
		Last Modified: Tue, 19 Jun 2018 10:47:30 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356b33778667bfef99aaf2839195542694b4e6bd6c5047122e7afc4a73579859`  
		Last Modified: Tue, 19 Jun 2018 10:47:30 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:bab4c23dce7b432d9e61a5cbb48bdf3d6adc3f1d0fde23dd077bb92eb4c22e68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23754142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e67d20a22fbf936b3794aeaf908cb3c786c2a854ac5769c3448d3955c3f7cd8`
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
# Tue, 19 Jun 2018 08:22:56 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 08:22:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 08:23:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:23:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:23:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:23:31 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:23:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:23:37 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:23:39 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:23:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:23:41 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:23:42 GMT
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
	-	`sha256:ddcd57ac3e314382aa5b075ac637b8f387edc5a2d616723be13a72b99853a06d`  
		Last Modified: Tue, 19 Jun 2018 08:27:22 GMT  
		Size: 5.1 MB (5127376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad752da0bb817897913f7014e31cc326445b7d562f20e4d1a957b464c63d2783`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d7b58e3afe058065f3a1bbd7f2daa0d2cd1a52276748949a8970457f40ca82`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca71317a7db4ef7c1af80578a284cf4f7de2b4fc7e6fa3210f1c5e9f5e1f7452`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4b48ba10e026193c467c98dcbf3ff397a9c57e7b6c99be46c9b93b764c2b3b`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:80831d836f84c07f7e498d3bb5f4e088ae4a30bea51014ba60e04882f9652ce9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23933595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a98ef8babe9b843d509d71f719be448192fddd68da0dbebd6d4b3658916ba2f`
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
# Tue, 19 Jun 2018 11:46:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 11:46:34 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 11:46:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 11:46:40 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 11:46:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 11:46:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 11:46:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 11:46:42 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 11:46:42 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 11:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 11:46:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 11:46:42 GMT
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
	-	`sha256:fdc6b0721ce9d3aa215a825aafba0ddd740aea8485d665cf119253319360f64e`  
		Last Modified: Tue, 19 Jun 2018 11:48:30 GMT  
		Size: 5.1 MB (5127061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f20df847693ff9f193a78037299bdeb325ec475e03202ffa9448d7552f6a3e`  
		Last Modified: Tue, 19 Jun 2018 11:48:29 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d614d33dc19117e4d72a741022218ccf075bae738a63384a162dc245df868a`  
		Last Modified: Tue, 19 Jun 2018 11:48:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dadce3d6ec58309ba1d9a17efd508edf45f5e67499cc8e66ca35977ff4e574`  
		Last Modified: Tue, 19 Jun 2018 11:48:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7256f792a8a6ee2a9b0a3679d3d71658066db12b7b136369e5807cfee6469639`  
		Last Modified: Tue, 19 Jun 2018 11:48:30 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16-management`

```console
$ docker pull rabbitmq@sha256:29ecc840ba6527e88ada5bbae2de8b2df5442de22b8a4be46e45e32e370d870e
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

### `rabbitmq:3.6.16-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:a52c389c8dd7d3a1afbf35833eae50f0a97cd53513166c9cbb1d739f0f9d4ca1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70606598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d6274c221702a2ef02c259bb7c5b499835de6c62433ab18be343998188e129`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 00:58:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:58:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 00:58:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 00:59:16 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:02:36 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:02:36 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 01:02:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 01:02:36 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 01:02:37 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 01:02:37 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 01:02:37 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 01:03:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:03:06 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 01:03:07 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 01:03:07 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 01:03:08 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 01:03:09 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 01:03:10 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:03:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 01:03:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:03:11 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 01:03:12 GMT
CMD ["rabbitmq-server"]
# Wed, 27 Jun 2018 01:03:32 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 27 Jun 2018 01:03:45 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 27 Jun 2018 01:03:45 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a58d97bcb569ba860f65d14aeb5ed171470841328c944423c5cb3e34a030e9`  
		Last Modified: Wed, 27 Jun 2018 01:05:00 GMT  
		Size: 4.5 MB (4498593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339d92e505149e43ef8461a7878a3c2651fe6dcc68173ce9c34430e7e39f612c`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cb74af4ef9bc8da6a9d155cdad9176f360c9b387fbb8826f10f87627002971`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 952.1 KB (952079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7deaafddf76bba4285761045be14547df7bab8bafcd6abd502b6cee7ce11d2`  
		Last Modified: Wed, 27 Jun 2018 01:08:28 GMT  
		Size: 27.7 MB (27705768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47992c5adf3165609b1412164ca552d74d0d776dc6cf89ab5a32e4a901304fca`  
		Last Modified: Wed, 27 Jun 2018 01:08:26 GMT  
		Size: 7.3 MB (7307903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b20e9235075135184c191341e5722218719d4f0419f6c9ae9dca8046eea2fd6`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de77ead0ed75881338587e225fbc9b23c987e2b6c8caf4e3cf57726db85c9325`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8d90c9adf425db818892f4e76af7d5c9411b02e83c525bf38a059a5f48163a`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cad7de14088aa1d338aa3308d4da0723346c9cc04de4e93816a605264ea9c4a`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97bd942ccad80ff64f05c041381aff8807b0ad630249c4410965c1a5663dab8`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fcff1cbc695e0f794de5a23b5b8a64b2495380629a0350439f39c2a8700e5b`  
		Last Modified: Wed, 27 Jun 2018 01:08:47 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d59330f647fbe99c130fcd635539d367fe3afa617f1c0709cabf4dafe08c3d`  
		Last Modified: Wed, 27 Jun 2018 01:08:49 GMT  
		Size: 7.6 MB (7634323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:9823dec8b0e5b4c5601b664b424d5c841425f1d68f21f084c6ac32deef83314d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66045277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3f56256acf9a19d45db5cfe58b04d9f85ef50f77149142be8bd2f674381faa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:14:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:14:05 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 11:14:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 11:14:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 11:16:54 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:16:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 11:16:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:16:55 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 11:16:55 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 11:16:55 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 11:16:56 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 11:17:21 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:17:21 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 11:17:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 11:17:22 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 11:17:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 11:17:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 11:17:25 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:17:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 11:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:17:27 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 11:17:27 GMT
CMD ["rabbitmq-server"]
# Wed, 27 Jun 2018 11:17:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 27 Jun 2018 11:17:53 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 27 Jun 2018 11:17:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825b1e03deb60ec168e8c1f86037855003b56efd9fdcbf9ad9942bccfbd386f0`  
		Last Modified: Wed, 27 Jun 2018 11:18:09 GMT  
		Size: 4.2 MB (4231542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04df780dc33d847d711076c5d4927e047854ca580966842b62cf3084b58dfd27`  
		Last Modified: Wed, 27 Jun 2018 11:18:07 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5b5b7d007568279387e4aec9d5315de86f80d4b70e1ec340982198000063e8`  
		Last Modified: Wed, 27 Jun 2018 11:18:07 GMT  
		Size: 942.5 KB (942474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3caa0c2e8b7a1f53042803f5ee7dff65f165558629e09dc5121b4d9ee3a6a05`  
		Last Modified: Wed, 27 Jun 2018 11:19:12 GMT  
		Size: 25.2 MB (25172398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fcc7c887c7bce12eedf1e90770d99990d98eff94f9bc2c27050706b65d09ea`  
		Last Modified: Wed, 27 Jun 2018 11:19:09 GMT  
		Size: 7.0 MB (7023750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9fd6651c49c209a70f99a41a529c48b37dafb88aba394adbf489c041f3d982`  
		Last Modified: Wed, 27 Jun 2018 11:19:06 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9a9b223a3e696cd5a8bbc34db6937b8780e9d46eb3cc1b64d7f216486158b8`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0008eddb0f668d054cea1bf98e342fa8e3f3c2a9d53fdbfd54c50ea1b91fc201`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdc2a4a4b5f15cf69f9bdd28e1274b066b05957967de4a5ca0257532b352463`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10be111323e80635add9b810c2185fc951e6b9d444ccff22f8429315de7d605`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a8dac08309bb562f5564c214b3776d3890f7fa136c9ee8836ed0fd614feeb3`  
		Last Modified: Wed, 27 Jun 2018 11:19:25 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2128545663b9d8b99670c5cf0a80c5c9623eb360304b7cf8afef8a0e567f39`  
		Last Modified: Wed, 27 Jun 2018 11:19:28 GMT  
		Size: 7.5 MB (7486857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:9ef7a629ca101f32ed6a177a2f569823136ef678dde1985016b8cd80790d07d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63007706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d5c9d4e37b2ba170836d680107347812ffef3cfda08129c7c2a507e891edb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:12:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:12:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 14:12:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:12:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:15:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:15:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 14:15:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 14:15:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 14:15:06 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 14:15:06 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 14:15:07 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 14:15:34 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:15:35 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 14:15:36 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 14:15:36 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 14:15:38 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 14:15:39 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 14:15:40 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:15:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 14:15:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:15:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 14:15:42 GMT
CMD ["rabbitmq-server"]
# Wed, 27 Jun 2018 14:15:55 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 27 Jun 2018 14:16:12 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 27 Jun 2018 14:16:12 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb65999b58884828ff25e13d07aebc86e55605338c7abc118cfeddfa39c75314`  
		Last Modified: Wed, 27 Jun 2018 14:16:30 GMT  
		Size: 3.9 MB (3868682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1d89ac0fd8e9fb3ebbd0864d5645d52c63b39424990d3741df3fbd9fbc07d`  
		Last Modified: Wed, 27 Jun 2018 14:16:28 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48725968edca68879146e7c9d8dfd6148ce6952e8474683f3aebecbb57eb1624`  
		Last Modified: Wed, 27 Jun 2018 14:16:28 GMT  
		Size: 926.2 KB (926176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7299ca21aed161705f6bc525b06fc070e63a681c6637815e91fadc56436a3afd`  
		Last Modified: Wed, 27 Jun 2018 14:17:39 GMT  
		Size: 24.8 MB (24785201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28f385387f25a57e99324582e0e91c8d9c5a991ce3fcb6e3bd729f4c02a8da2`  
		Last Modified: Wed, 27 Jun 2018 14:17:36 GMT  
		Size: 6.9 MB (6934242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1b41065cf7f363c52826568cdd4c42cdb04f207bb28d881bb77e2c7d62aa27`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16bad0dab8c5fa26088449b5dc25c1b7a47f90b15ccc6ded5f2d11d00d784ca`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b999d40c36f651e5c559f112bf570e2ad5230c06ff08326015ef152c2298f5`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83c73a39f722ad7eaecb707a5c72e6207af867c49fd696d952b3aa2a61b1825`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2a6e9644671e060f55680f0a9a7b35935ac9e61b1fbcffa687cc1e4ffe312b`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b179ad9d85ffc6803eac32528e7044e237319295a2256ddc6697c4a8d3460a`  
		Last Modified: Wed, 27 Jun 2018 14:17:54 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab21b116e58408074deeadd80cade12c186fa47899efb58580be90ad66268af8`  
		Last Modified: Wed, 27 Jun 2018 14:17:58 GMT  
		Size: 7.2 MB (7196162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:ce499b303145d4eb714695d78ef3d1f7a53251f559347cd83c3524c62f5b2bc9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64889799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defbc15aa3efa75dbf99246520681cd7afc495ad2d6643fe817ffb287e679ef2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:16:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:16:33 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 13:16:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:17:12 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:22:07 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:22:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 13:22:09 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 13:22:10 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 13:22:11 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 13:22:12 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 13:22:13 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 13:23:17 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:23:21 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 13:23:26 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 13:23:27 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 13:23:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 13:23:41 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 13:23:46 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:23:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 13:23:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:24:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 13:24:07 GMT
CMD ["rabbitmq-server"]
# Wed, 27 Jun 2018 13:24:32 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 27 Jun 2018 13:25:12 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 27 Jun 2018 13:25:14 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0d96808e947c7710f2208a71866be23a9e6406adb27411db1b6249aa6b6a05`  
		Last Modified: Wed, 27 Jun 2018 13:25:57 GMT  
		Size: 4.1 MB (4073248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e622a3e7901d3cfb12b9761cbfbe3acca2d3ef4579c8fdeda2c2e1d564b391f`  
		Last Modified: Wed, 27 Jun 2018 13:25:54 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3063cb83aae8813ad494c94943225b95b549efc20ff73c755f678582cb2e6c`  
		Last Modified: Wed, 27 Jun 2018 13:25:53 GMT  
		Size: 919.4 KB (919449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3fa23541f9ceb33853e203972ded1202f40684abca3c97a22032fc9c05abc9`  
		Last Modified: Wed, 27 Jun 2018 13:27:48 GMT  
		Size: 25.0 MB (25043260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369acea658435aa562ea5fc176eacb71a052eff214e73f4c91dcad24396ce70c`  
		Last Modified: Wed, 27 Jun 2018 13:27:43 GMT  
		Size: 7.0 MB (7007196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe9dc36b6903581d5ebb8295cdcf73b6761a07097d09f6f7d72a03390d98fc3`  
		Last Modified: Wed, 27 Jun 2018 13:27:36 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12b33015c2815eb4b6ada65a7420e1dbe8a6b3bf389a331bc1d70c2253a4685`  
		Last Modified: Wed, 27 Jun 2018 13:27:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ab541da7d8acefedef6c0a133ea2b065e25994acdbbc3986c7109fe0b4a1b8`  
		Last Modified: Wed, 27 Jun 2018 13:27:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beacfb22282e520ec5a6cf0bf2e422d3d8fffc90b40fc45411ddba97da68020`  
		Last Modified: Wed, 27 Jun 2018 13:27:35 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6324450aebb6a7978394b88a24b174027e1e184a48ed57dcbe5de208e922d8f`  
		Last Modified: Wed, 27 Jun 2018 13:27:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e124fe8868f5b8ba028350409b4e9886f7a9982a7789e1202f7e2447334ccbd8`  
		Last Modified: Wed, 27 Jun 2018 13:28:16 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a48aeef976e3ac2dad738e89c01a5ce063873c445bd5806a9ae72e6ad79252`  
		Last Modified: Wed, 27 Jun 2018 13:28:21 GMT  
		Size: 7.5 MB (7487614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:f5a14eeac57d15937102746444a18ecd52018fac08df02c5c3cb86cebe7beb89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71757500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad549bb498dcc0d1d51af7c32043ad1b77c10171e61f52da9ad8800fe128140a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:32:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:32:23 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 14:32:23 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:32:45 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:35:40 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:35:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 14:35:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 14:35:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 14:35:41 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 14:35:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 14:35:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 14:36:10 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:36:10 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 14:36:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 14:36:11 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 14:36:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 14:36:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 14:36:14 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:36:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 14:36:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:36:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 14:36:16 GMT
CMD ["rabbitmq-server"]
# Wed, 27 Jun 2018 14:36:37 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 27 Jun 2018 14:36:52 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 27 Jun 2018 14:36:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ceb27dac907a5a8252dedd83883476569ce0d1e8b71a75ad3ad8a10067e421`  
		Last Modified: Wed, 27 Jun 2018 14:37:22 GMT  
		Size: 4.8 MB (4803932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc007393ca19b420b5fbce014d523fd47b65c898bd16726675b5c413a01b772`  
		Last Modified: Wed, 27 Jun 2018 14:37:19 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7c85e08ba68cd94a8e8271454d5b636dab973ebef4b3e8055ea821a6967907`  
		Last Modified: Wed, 27 Jun 2018 14:37:18 GMT  
		Size: 931.6 KB (931589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407c46f1f202247472304cae422782a60aa489cf08e41968bf6d8a2b14959d5a`  
		Last Modified: Wed, 27 Jun 2018 14:39:16 GMT  
		Size: 27.8 MB (27820236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43723cd64a2dd8f7e7a16e5f97020230d4a0a99915ea65e550b25259bd833716`  
		Last Modified: Wed, 27 Jun 2018 14:39:12 GMT  
		Size: 7.3 MB (7322210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0dadc5d5f00f5cc3bcf9553aeaf25d2fb571684ec823138e4075c83325a567`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef2b592413e919155cddd9984f45596a5ee627d2b111de7f694aea7c72a4d5`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1068155f399cffa04ad1f67a67a299c36f6241a230a8540b103149635689b30d`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8942b2a83fde843d426f8e0fc41b8bcface0907f03da5493bea20ad793006`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511bc5a9753ef0507dabe9bd78971250061529b11a6779632c34fbf65942094b`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d13c89647407c6df1c3b5f44fa133cab71bcd23478836624d8dca1452d60a36`  
		Last Modified: Wed, 27 Jun 2018 14:39:38 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e85f9bfdce7089d82e10407cee0baead861d23291b951622d0c34ff6b1096ab`  
		Last Modified: Wed, 27 Jun 2018 14:39:40 GMT  
		Size: 7.7 MB (7728485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:7ac2197a4efeb3f0347d50f0aa8c1d4023f37205b638e1ad9eba7fdd190e70a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68342864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2404a495afa5c4bf11613b92583565707d9d835925ad5278919b03025e652e99`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:30:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:30:39 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 12:30:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 12:31:59 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 12:41:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:41:35 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 12:41:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 12:41:37 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 12:41:38 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 12:41:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 12:41:40 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 12:42:34 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:42:36 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 12:42:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 12:42:41 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 12:42:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 12:42:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 12:42:52 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:42:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 12:42:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:42:55 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 12:42:56 GMT
CMD ["rabbitmq-server"]
# Wed, 27 Jun 2018 12:43:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 27 Jun 2018 12:43:40 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 27 Jun 2018 12:43:42 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bd042d1af652aeb7f1179a8c2bdcf4ed0f81eb4251216a177cd71ecc78d2fe`  
		Last Modified: Wed, 27 Jun 2018 12:44:16 GMT  
		Size: 4.4 MB (4360645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9c485d9dc69963a40f603f375772ab7425f15acb09d1803689ee12b72593c8`  
		Last Modified: Wed, 27 Jun 2018 12:44:13 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a02bb3ae1c1247c1ab6ea88b0a657e4262bc46c44ad396c4da2616fdd1c09f0`  
		Last Modified: Wed, 27 Jun 2018 12:44:14 GMT  
		Size: 920.8 KB (920757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2ee0f20ed71475d33e4978cf2bb60eca478d8c838b5d6dc8085bb8304f6bd9`  
		Last Modified: Wed, 27 Jun 2018 12:45:47 GMT  
		Size: 25.5 MB (25492844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c602da23afb1b085a4367e57e2b9b340cfc84fc89210a49ba2e49f9ce96190`  
		Last Modified: Wed, 27 Jun 2018 12:45:44 GMT  
		Size: 7.0 MB (6966807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a84511f74450f23ebd355b5c6159ad2b22c4640a1a3b5c557a1d10e90d5e31f`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54246d37a706130763825d4cedf98e2c716a2d1f30499e92ca8e684145b8d18`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba89e71f47dbe3a21e9e5f997e80c834b80803dbefb5f0d15546dde75a2b7c3`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856d7d9be3ea0211edb110de93db5de1bce91b8f50d604c5de7a6b0ab97455ca`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb8ab5d80004717cb54baed0f80c87c4b53c3d09584f033010ee0a6b2859f20`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a0a31171680fda20bd3c6ebbedd4f49b1c9c961d73ef5d7ba06ce3980287a7`  
		Last Modified: Wed, 27 Jun 2018 12:46:08 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd7ad7bfca6cc3f59032c0f16213bdda52957c68ebd4a2ed86d96d47189b971`  
		Last Modified: Wed, 27 Jun 2018 12:46:10 GMT  
		Size: 7.8 MB (7837786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:c7b88838cbb393530fdb475079564c15f7ec8b1e01d721b8fa665ea43e1bc0fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68099323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa136adf2a4f733a49d1852d57791f63ca8b0a12ab415612da3b13dddf081e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:38:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:38:40 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 13:38:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:38:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:40:40 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:40:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 13:40:40 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 13:40:40 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 13:40:41 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 13:40:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 13:40:41 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 13:40:55 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:40:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 13:40:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 13:40:56 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 13:40:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 13:40:58 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 13:40:58 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:40:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 13:40:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:40:59 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 13:40:59 GMT
CMD ["rabbitmq-server"]
# Wed, 27 Jun 2018 13:41:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 27 Jun 2018 13:41:14 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 27 Jun 2018 13:41:15 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e807416110d0cf06abcbde25d0113b63bd830a4530be9402a739471fadb40132`  
		Last Modified: Wed, 27 Jun 2018 13:41:37 GMT  
		Size: 4.5 MB (4530010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da86ac5a30e03a606b312415dadd31364903f21a2c90b521e21fd7a1afda732a`  
		Last Modified: Wed, 27 Jun 2018 13:41:36 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01965e40b1df1c653de280dbd763b44adb1738344fe1da60276a2cba7fa97780`  
		Last Modified: Wed, 27 Jun 2018 13:41:35 GMT  
		Size: 938.0 KB (938029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f799aad0ce38c78f3b57659fe976dd6c8a9e3e91c99e677e9947be3ceaeb12e6`  
		Last Modified: Wed, 27 Jun 2018 13:42:20 GMT  
		Size: 25.6 MB (25622371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b02abb9391d57138095399f99b195df245719e0849a85871345de54fe35b1c`  
		Last Modified: Wed, 27 Jun 2018 13:42:18 GMT  
		Size: 7.0 MB (7041164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c959f88696919054437cb828567926b46b4f7e3d50d43e358374fc5ed1e97f`  
		Last Modified: Wed, 27 Jun 2018 13:42:16 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb74affc0a53b19411062312cfed232db3bf1c9d0e11faec76dba848c0a6277c`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7873e12812afd26a9a58827fc2c46c129d96f84b045c3d977d2d4c19a0cea4`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7075b09e38f6bbc398cf98f07376a02332f167abfdf422182f504701fe8eb502`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcc413eeb49c1b38e39adb08fdf195df6d77eadd0a732089f25700faf9030b7`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedf6ded3e7ffd4c8f7aa28179f912505a0782c2672cfacda6d0870b7fd73790`  
		Last Modified: Wed, 27 Jun 2018 13:42:31 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f951afb2a5b88510a339b7be48dab6ecd975e46b93897535a094e97304dfd2f0`  
		Last Modified: Wed, 27 Jun 2018 13:42:33 GMT  
		Size: 7.6 MB (7606923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16-management-alpine`

```console
$ docker pull rabbitmq@sha256:34881f81738753da742fe6fed0c8b9284b1a8b5be3423c9990fbcd7dc605fcd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6.16-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:74507f89bfac65bda4cdffc6f820fd3d380597e3851de3b2363a215706a8c167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34729918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc660999d3bced283e1a742e07178811487e650477d7a11fefdea7cd1d83c11a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:29:15 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 06 Jul 2018 17:29:16 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 17:29:18 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 06 Jul 2018 17:29:19 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 06 Jul 2018 17:29:19 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 06 Jul 2018 17:29:19 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 17:29:20 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 06 Jul 2018 17:29:20 GMT
ENV RABBITMQ_VERSION=3.6.16
# Fri, 06 Jul 2018 17:29:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Fri, 06 Jul 2018 17:29:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 06 Jul 2018 17:29:27 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 06 Jul 2018 17:29:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 06 Jul 2018 17:29:28 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 06 Jul 2018 17:29:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 06 Jul 2018 17:29:30 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 06 Jul 2018 17:29:30 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 06 Jul 2018 17:29:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jul 2018 17:29:31 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 06 Jul 2018 17:29:31 GMT
CMD ["rabbitmq-server"]
# Fri, 06 Jul 2018 17:29:41 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 06 Jul 2018 17:29:45 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 06 Jul 2018 17:29:45 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3ada08dcd1bcc390d7a568597ab3aa22c6d6a8e7ef1d79da461636b4331b12`  
		Last Modified: Fri, 06 Jul 2018 17:32:22 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8282b02d34777e27ef96ffdd9016f2ff6ec79ad271bcb8de52ad1903b4eec5`  
		Last Modified: Fri, 06 Jul 2018 17:32:21 GMT  
		Size: 8.5 KB (8466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f78b5cb32ef838571a48be0ebb63d4d8cf14bb43a2a9e4193b390e6068311b`  
		Last Modified: Fri, 06 Jul 2018 17:32:26 GMT  
		Size: 16.6 MB (16565942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333d2f2bad39f531461d685ec40375002a663dacc972d6a0847d99c9ea3eead0`  
		Last Modified: Fri, 06 Jul 2018 17:32:21 GMT  
		Size: 5.1 MB (5126933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e65d1e4595da56b490bcd5e9ec3fb866686773bf59bcae26514cbac1f1f0df`  
		Last Modified: Fri, 06 Jul 2018 17:32:19 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f547723de9012f141466aea8656b1922fa119d94f77f2786aded37a15a1b9d78`  
		Last Modified: Fri, 06 Jul 2018 17:32:20 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c65bb2a64976d377571cceb510ae6fa663fce5223d41258a3b9b49189978301`  
		Last Modified: Fri, 06 Jul 2018 17:32:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e02fca099c22674260eedbb25aa1d50578a6122fb0618e72ca8b5259a162f2`  
		Last Modified: Fri, 06 Jul 2018 17:32:19 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1603cfe2ac4b635c34ceafb082605c75007cf1db77f12dd4fe749c7c24924763`  
		Last Modified: Fri, 06 Jul 2018 17:32:50 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24a1f645aa0fe7664f8c226eb64cad5289957d98211dceecc46337284bc8d55`  
		Last Modified: Fri, 06 Jul 2018 17:32:53 GMT  
		Size: 11.0 MB (11007994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:74d05b910e1a0efe9387960524df8b2c4920ac2d9cf5f335931f6abef258f5cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34317383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9545d49682dbd80042bf4da27e647dcb7a07416dbe567863c07be52844c64c1`
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
# Tue, 19 Jun 2018 10:24:46 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 10:24:47 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 10:24:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 10:24:56 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 10:24:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 10:24:58 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 10:25:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 10:25:02 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 10:25:03 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 10:25:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 10:25:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 10:25:09 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 10:25:27 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 10:25:34 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 10:25:35 GMT
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
	-	`sha256:66155e03221c295428f350487c9bf90c4aeb2621b47ce8d97fc2c818668d5e35`  
		Last Modified: Tue, 19 Jun 2018 10:29:21 GMT  
		Size: 5.1 MB (5127083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e35efa4e25e4f289c08b0388eee2ea24773c10b117a6127e1d8badd84444d3`  
		Last Modified: Tue, 19 Jun 2018 10:29:20 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446c0fbd86f96db78438a97696862f4eeccfa95bb195b79a0ca02c10c85228bd`  
		Last Modified: Tue, 19 Jun 2018 10:29:20 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e32beb4061664a5eef512d527e571d982a22c70feececcc65a80f2b6221189`  
		Last Modified: Tue, 19 Jun 2018 10:29:20 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158ee216ef9b1f8f45706c5137d184ca0a5babfdb0d4926a520fe6874c2b9341`  
		Last Modified: Tue, 19 Jun 2018 10:29:19 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a14ef10fad8b74eff45477138a3006636f4d20da711ccbc08d83f9edce9179`  
		Last Modified: Tue, 19 Jun 2018 10:29:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eba0aeda817a904670463a377b6e69ae2ae445c0bd287010d0326fc4c1d3068`  
		Last Modified: Tue, 19 Jun 2018 10:29:51 GMT  
		Size: 10.9 MB (10884264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:200014484091de8a80fbb89f6d65f7df0a8998da128980bf9dda23fad7f98b31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35028334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92645acb48eaa16557d2247f236055edd7072e9340826155ddea6f4d2db5aa30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:18 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Fri, 01 Jun 2018 06:57:18 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:19 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 14:13:42 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 01 Jun 2018 14:13:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Jun 2018 14:13:54 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 01 Jun 2018 14:13:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 01 Jun 2018 14:13:54 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 01 Jun 2018 14:13:55 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 14:13:55 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 19 Jun 2018 10:42:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 10:42:34 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 10:42:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 10:42:53 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 10:42:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 10:42:54 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 10:42:55 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 10:42:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 10:42:56 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 10:42:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 10:42:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 10:42:57 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 10:43:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 10:43:17 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 10:43:17 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b93c7840c461984306700458d2c2e47d0215171ed13e046861ec7572a3e3f44`  
		Last Modified: Fri, 01 Jun 2018 06:57:42 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5946c2a44b42f417b3f7853b2097c66b1932a4fda04c67aab3777d52413efe78`  
		Last Modified: Fri, 01 Jun 2018 14:16:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0b3268c9f2050eeab7569ed784a548838d2b0ee475da36a61aa36c66f7b1c6`  
		Last Modified: Fri, 01 Jun 2018 14:16:46 GMT  
		Size: 8.3 KB (8300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebe1972b8e2d72a217f85842869a45ace48ccaee4cadcf2c5e0400607683ab3`  
		Last Modified: Fri, 01 Jun 2018 14:16:52 GMT  
		Size: 16.7 MB (16714404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36fc1c2273390586d41ef82831713603c501fb729edee848ef6484a9d827369`  
		Last Modified: Tue, 19 Jun 2018 10:47:32 GMT  
		Size: 5.1 MB (5127143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2a40854e0af3a74f7255514bd9602ff706613176c67b07071e6d45ff2fade6`  
		Last Modified: Tue, 19 Jun 2018 10:47:31 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d091528dfb321262154deafa4beae659149564ed5d27f1bfaf2156509cb4ec`  
		Last Modified: Tue, 19 Jun 2018 10:47:31 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f39822fd122fcdb696a697168406089d39411e90d11b583b8826597fadadb`  
		Last Modified: Tue, 19 Jun 2018 10:47:30 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356b33778667bfef99aaf2839195542694b4e6bd6c5047122e7afc4a73579859`  
		Last Modified: Tue, 19 Jun 2018 10:47:30 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd851dcb2ab11a9b10fd533a0a9a4ba40ead9e0e328361deb193cd643048984`  
		Last Modified: Tue, 19 Jun 2018 10:47:48 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de3d686e5277a7267862423683ae818d51ad36d89aeac1dd4d6586dfaaaba64`  
		Last Modified: Tue, 19 Jun 2018 10:47:53 GMT  
		Size: 11.1 MB (11126777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:c54c7293a60bb97d860028a897f2548e15c1750250e480a8156b7e7838c564b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34804301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c327ba49593fd47977093c29dbb8ec3f3e326031916d4b85df628c18135a2809`
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
# Tue, 19 Jun 2018 08:22:56 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 08:22:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 08:23:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:23:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:23:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:23:31 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:23:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:23:37 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:23:39 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:23:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:23:41 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:23:42 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 08:23:54 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 08:24:02 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 08:24:03 GMT
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
	-	`sha256:ddcd57ac3e314382aa5b075ac637b8f387edc5a2d616723be13a72b99853a06d`  
		Last Modified: Tue, 19 Jun 2018 08:27:22 GMT  
		Size: 5.1 MB (5127376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad752da0bb817897913f7014e31cc326445b7d562f20e4d1a957b464c63d2783`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d7b58e3afe058065f3a1bbd7f2daa0d2cd1a52276748949a8970457f40ca82`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca71317a7db4ef7c1af80578a284cf4f7de2b4fc7e6fa3210f1c5e9f5e1f7452`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4b48ba10e026193c467c98dcbf3ff397a9c57e7b6c99be46c9b93b764c2b3b`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218e886dedb1e9e13708d12e92dd91e88e4d8fd5810d8f8e8e779da5c6984924`  
		Last Modified: Tue, 19 Jun 2018 08:27:38 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85872fd235111f77ca496109a5c32e46277d3768e3a96da0a6b832baa70f896`  
		Last Modified: Tue, 19 Jun 2018 08:27:42 GMT  
		Size: 11.0 MB (11049968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:7a96b3b9d98b464014b8076387b6dad963de6c74cd969c9af335b0147f9948f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35091035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54048e4246e06aba9a4152bcb808fb1a6191d86d03e7058cc23fff9f8d09a610`
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
# Tue, 19 Jun 2018 11:46:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 11:46:34 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 11:46:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 11:46:40 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 11:46:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 11:46:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 11:46:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 11:46:42 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 11:46:42 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 11:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 11:46:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 11:46:42 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 11:46:48 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 11:46:51 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 11:46:52 GMT
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
	-	`sha256:fdc6b0721ce9d3aa215a825aafba0ddd740aea8485d665cf119253319360f64e`  
		Last Modified: Tue, 19 Jun 2018 11:48:30 GMT  
		Size: 5.1 MB (5127061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f20df847693ff9f193a78037299bdeb325ec475e03202ffa9448d7552f6a3e`  
		Last Modified: Tue, 19 Jun 2018 11:48:29 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d614d33dc19117e4d72a741022218ccf075bae738a63384a162dc245df868a`  
		Last Modified: Tue, 19 Jun 2018 11:48:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dadce3d6ec58309ba1d9a17efd508edf45f5e67499cc8e66ca35977ff4e574`  
		Last Modified: Tue, 19 Jun 2018 11:48:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7256f792a8a6ee2a9b0a3679d3d71658066db12b7b136369e5807cfee6469639`  
		Last Modified: Tue, 19 Jun 2018 11:48:30 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bb5d0bd14de1be6f2d206a544bad6e01fe4966695685ecf2e34978e93f4586`  
		Last Modified: Tue, 19 Jun 2018 11:48:39 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c867007265acb702bbacbc886891745d8f5f95274c25333451bb7ec982ca3742`  
		Last Modified: Tue, 19 Jun 2018 11:48:41 GMT  
		Size: 11.2 MB (11157248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:2f5d9a5a731203b97441151f8a4fa56416a764ba897f3b0d843930ec7ce72613
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
$ docker pull rabbitmq@sha256:6c15e68b0c750062300c0e5d4b8cc65e04a94188f562403481cba91f311061c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23721732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dfbf2b1a63986258c315d43a5e9f4b9d8c7787722fe5efb713a3fee9112f767`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:29:15 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 06 Jul 2018 17:29:16 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 17:29:18 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 06 Jul 2018 17:29:19 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 06 Jul 2018 17:29:19 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 06 Jul 2018 17:29:19 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 17:29:20 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 06 Jul 2018 17:29:20 GMT
ENV RABBITMQ_VERSION=3.6.16
# Fri, 06 Jul 2018 17:29:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Fri, 06 Jul 2018 17:29:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 06 Jul 2018 17:29:27 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 06 Jul 2018 17:29:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 06 Jul 2018 17:29:28 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 06 Jul 2018 17:29:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 06 Jul 2018 17:29:30 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 06 Jul 2018 17:29:30 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 06 Jul 2018 17:29:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jul 2018 17:29:31 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 06 Jul 2018 17:29:31 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3ada08dcd1bcc390d7a568597ab3aa22c6d6a8e7ef1d79da461636b4331b12`  
		Last Modified: Fri, 06 Jul 2018 17:32:22 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8282b02d34777e27ef96ffdd9016f2ff6ec79ad271bcb8de52ad1903b4eec5`  
		Last Modified: Fri, 06 Jul 2018 17:32:21 GMT  
		Size: 8.5 KB (8466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f78b5cb32ef838571a48be0ebb63d4d8cf14bb43a2a9e4193b390e6068311b`  
		Last Modified: Fri, 06 Jul 2018 17:32:26 GMT  
		Size: 16.6 MB (16565942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333d2f2bad39f531461d685ec40375002a663dacc972d6a0847d99c9ea3eead0`  
		Last Modified: Fri, 06 Jul 2018 17:32:21 GMT  
		Size: 5.1 MB (5126933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e65d1e4595da56b490bcd5e9ec3fb866686773bf59bcae26514cbac1f1f0df`  
		Last Modified: Fri, 06 Jul 2018 17:32:19 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f547723de9012f141466aea8656b1922fa119d94f77f2786aded37a15a1b9d78`  
		Last Modified: Fri, 06 Jul 2018 17:32:20 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c65bb2a64976d377571cceb510ae6fa663fce5223d41258a3b9b49189978301`  
		Last Modified: Fri, 06 Jul 2018 17:32:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e02fca099c22674260eedbb25aa1d50578a6122fb0618e72ca8b5259a162f2`  
		Last Modified: Fri, 06 Jul 2018 17:32:19 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:3652376bf5eb79e863e280f1ce684674fc8aee0744f1871ed9861af47e1d05db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23527630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7025bd5fcb08e61c4b8526503014c8ad87a7dea0beb900a17dfaed8b55cebcdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:35 GMT
ADD file:009348222efb3c4ca2e53c387fb34c488679ca07db39525a6c5cc214e46abffd in / 
# Wed, 25 Oct 2017 23:28:36 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:36 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 05:25:53 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Thu, 26 Oct 2017 05:25:55 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 26 Oct 2017 05:26:10 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Thu, 26 Oct 2017 05:26:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 26 Oct 2017 05:26:10 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Thu, 26 Oct 2017 05:26:11 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 05:26:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 19 Jun 2018 08:00:09 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 08:00:09 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 08:00:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:00:14 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:00:15 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:00:15 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:00:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:00:17 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:00:17 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:00:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:00:18 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:00:18 GMT
CMD ["rabbitmq-server"]
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
	-	`sha256:e62a8c5580cc1c2fbf2f9ce119bc0c06403a12ad18167bde2ec94420810916db`  
		Last Modified: Thu, 26 Oct 2017 05:26:38 GMT  
		Size: 1.3 KB (1303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b096e39434b5aeddcb2ec167b7bf570cac7b8b16e68324d3f46c6f4d41b69c79`  
		Last Modified: Thu, 26 Oct 2017 05:26:37 GMT  
		Size: 8.4 KB (8374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ad9273316fa6f22cd2e8cf88c92f34c3210325fa1be2041153a96f4124476f`  
		Last Modified: Thu, 26 Oct 2017 05:26:41 GMT  
		Size: 16.4 MB (16420180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0693454961ff08b523fa25927e2be7f175032be3baaba0fb6ec6540445d7c6a0`  
		Last Modified: Tue, 19 Jun 2018 08:00:38 GMT  
		Size: 5.1 MB (5127115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff6115d840072279d048e3478202c9250181b50414bb390dc90bc043930e23ee`  
		Last Modified: Tue, 19 Jun 2018 08:00:38 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee073718ee87fed4df3b8805e832ef72c6087029449834023f199325f2e789c`  
		Last Modified: Tue, 19 Jun 2018 08:00:38 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0ca68f9c55a5ab50a7c77f4227541f22423bc089b8b277c67791322cc6eea72`  
		Last Modified: Tue, 19 Jun 2018 08:00:38 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d55f242d250f53e1781b84b20bbe775f37114954631d08fa660c6be81c7fc6c`  
		Last Modified: Tue, 19 Jun 2018 08:00:39 GMT  
		Size: 4.0 KB (4034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:b9398ea22d3ac204111b51ceba7714a8e38c6b27c2c91fd4c19e4765cce02312
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23432924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475d7c6f939431d12593503e872a578e893ea6a39ff5554dfe2c670d58c6ecb4`
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
# Tue, 19 Jun 2018 10:24:46 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 10:24:47 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 10:24:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 10:24:56 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 10:24:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 10:24:58 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 10:25:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 10:25:02 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 10:25:03 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 10:25:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 10:25:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 10:25:09 GMT
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
	-	`sha256:66155e03221c295428f350487c9bf90c4aeb2621b47ce8d97fc2c818668d5e35`  
		Last Modified: Tue, 19 Jun 2018 10:29:21 GMT  
		Size: 5.1 MB (5127083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e35efa4e25e4f289c08b0388eee2ea24773c10b117a6127e1d8badd84444d3`  
		Last Modified: Tue, 19 Jun 2018 10:29:20 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446c0fbd86f96db78438a97696862f4eeccfa95bb195b79a0ca02c10c85228bd`  
		Last Modified: Tue, 19 Jun 2018 10:29:20 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e32beb4061664a5eef512d527e571d982a22c70feececcc65a80f2b6221189`  
		Last Modified: Tue, 19 Jun 2018 10:29:20 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158ee216ef9b1f8f45706c5137d184ca0a5babfdb0d4926a520fe6874c2b9341`  
		Last Modified: Tue, 19 Jun 2018 10:29:19 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:739b03800acab099625c88578074ac14ecf683641ce9daa01c04b06004a4a943
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23901365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ca05465b25798c29d3851daf838aef03d00e4451c8bc04ee881babfe885a159`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:18 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Fri, 01 Jun 2018 06:57:18 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:19 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 14:13:42 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 01 Jun 2018 14:13:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Jun 2018 14:13:54 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 01 Jun 2018 14:13:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 01 Jun 2018 14:13:54 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 01 Jun 2018 14:13:55 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 14:13:55 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 19 Jun 2018 10:42:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 10:42:34 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 10:42:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 10:42:53 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 10:42:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 10:42:54 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 10:42:55 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 10:42:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 10:42:56 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 10:42:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 10:42:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 10:42:57 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b93c7840c461984306700458d2c2e47d0215171ed13e046861ec7572a3e3f44`  
		Last Modified: Fri, 01 Jun 2018 06:57:42 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5946c2a44b42f417b3f7853b2097c66b1932a4fda04c67aab3777d52413efe78`  
		Last Modified: Fri, 01 Jun 2018 14:16:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0b3268c9f2050eeab7569ed784a548838d2b0ee475da36a61aa36c66f7b1c6`  
		Last Modified: Fri, 01 Jun 2018 14:16:46 GMT  
		Size: 8.3 KB (8300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebe1972b8e2d72a217f85842869a45ace48ccaee4cadcf2c5e0400607683ab3`  
		Last Modified: Fri, 01 Jun 2018 14:16:52 GMT  
		Size: 16.7 MB (16714404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36fc1c2273390586d41ef82831713603c501fb729edee848ef6484a9d827369`  
		Last Modified: Tue, 19 Jun 2018 10:47:32 GMT  
		Size: 5.1 MB (5127143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2a40854e0af3a74f7255514bd9602ff706613176c67b07071e6d45ff2fade6`  
		Last Modified: Tue, 19 Jun 2018 10:47:31 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d091528dfb321262154deafa4beae659149564ed5d27f1bfaf2156509cb4ec`  
		Last Modified: Tue, 19 Jun 2018 10:47:31 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f39822fd122fcdb696a697168406089d39411e90d11b583b8826597fadadb`  
		Last Modified: Tue, 19 Jun 2018 10:47:30 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356b33778667bfef99aaf2839195542694b4e6bd6c5047122e7afc4a73579859`  
		Last Modified: Tue, 19 Jun 2018 10:47:30 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:bab4c23dce7b432d9e61a5cbb48bdf3d6adc3f1d0fde23dd077bb92eb4c22e68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23754142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e67d20a22fbf936b3794aeaf908cb3c786c2a854ac5769c3448d3955c3f7cd8`
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
# Tue, 19 Jun 2018 08:22:56 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 08:22:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 08:23:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:23:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:23:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:23:31 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:23:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:23:37 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:23:39 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:23:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:23:41 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:23:42 GMT
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
	-	`sha256:ddcd57ac3e314382aa5b075ac637b8f387edc5a2d616723be13a72b99853a06d`  
		Last Modified: Tue, 19 Jun 2018 08:27:22 GMT  
		Size: 5.1 MB (5127376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad752da0bb817897913f7014e31cc326445b7d562f20e4d1a957b464c63d2783`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d7b58e3afe058065f3a1bbd7f2daa0d2cd1a52276748949a8970457f40ca82`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca71317a7db4ef7c1af80578a284cf4f7de2b4fc7e6fa3210f1c5e9f5e1f7452`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4b48ba10e026193c467c98dcbf3ff397a9c57e7b6c99be46c9b93b764c2b3b`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:80831d836f84c07f7e498d3bb5f4e088ae4a30bea51014ba60e04882f9652ce9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23933595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a98ef8babe9b843d509d71f719be448192fddd68da0dbebd6d4b3658916ba2f`
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
# Tue, 19 Jun 2018 11:46:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 11:46:34 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 11:46:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 11:46:40 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 11:46:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 11:46:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 11:46:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 11:46:42 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 11:46:42 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 11:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 11:46:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 11:46:42 GMT
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
	-	`sha256:fdc6b0721ce9d3aa215a825aafba0ddd740aea8485d665cf119253319360f64e`  
		Last Modified: Tue, 19 Jun 2018 11:48:30 GMT  
		Size: 5.1 MB (5127061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f20df847693ff9f193a78037299bdeb325ec475e03202ffa9448d7552f6a3e`  
		Last Modified: Tue, 19 Jun 2018 11:48:29 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d614d33dc19117e4d72a741022218ccf075bae738a63384a162dc245df868a`  
		Last Modified: Tue, 19 Jun 2018 11:48:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dadce3d6ec58309ba1d9a17efd508edf45f5e67499cc8e66ca35977ff4e574`  
		Last Modified: Tue, 19 Jun 2018 11:48:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7256f792a8a6ee2a9b0a3679d3d71658066db12b7b136369e5807cfee6469639`  
		Last Modified: Tue, 19 Jun 2018 11:48:30 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:29ecc840ba6527e88ada5bbae2de8b2df5442de22b8a4be46e45e32e370d870e
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
$ docker pull rabbitmq@sha256:a52c389c8dd7d3a1afbf35833eae50f0a97cd53513166c9cbb1d739f0f9d4ca1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70606598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d6274c221702a2ef02c259bb7c5b499835de6c62433ab18be343998188e129`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 00:58:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:58:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 00:58:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 00:59:16 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 01:02:36 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:02:36 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 01:02:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 01:02:36 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 01:02:37 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 01:02:37 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 01:02:37 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 01:03:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:03:06 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 01:03:07 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 01:03:07 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 01:03:08 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 01:03:09 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 01:03:10 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 01:03:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 01:03:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 01:03:11 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 01:03:12 GMT
CMD ["rabbitmq-server"]
# Wed, 27 Jun 2018 01:03:32 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 27 Jun 2018 01:03:45 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 27 Jun 2018 01:03:45 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a58d97bcb569ba860f65d14aeb5ed171470841328c944423c5cb3e34a030e9`  
		Last Modified: Wed, 27 Jun 2018 01:05:00 GMT  
		Size: 4.5 MB (4498593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339d92e505149e43ef8461a7878a3c2651fe6dcc68173ce9c34430e7e39f612c`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cb74af4ef9bc8da6a9d155cdad9176f360c9b387fbb8826f10f87627002971`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 952.1 KB (952079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7deaafddf76bba4285761045be14547df7bab8bafcd6abd502b6cee7ce11d2`  
		Last Modified: Wed, 27 Jun 2018 01:08:28 GMT  
		Size: 27.7 MB (27705768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47992c5adf3165609b1412164ca552d74d0d776dc6cf89ab5a32e4a901304fca`  
		Last Modified: Wed, 27 Jun 2018 01:08:26 GMT  
		Size: 7.3 MB (7307903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b20e9235075135184c191341e5722218719d4f0419f6c9ae9dca8046eea2fd6`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de77ead0ed75881338587e225fbc9b23c987e2b6c8caf4e3cf57726db85c9325`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8d90c9adf425db818892f4e76af7d5c9411b02e83c525bf38a059a5f48163a`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cad7de14088aa1d338aa3308d4da0723346c9cc04de4e93816a605264ea9c4a`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97bd942ccad80ff64f05c041381aff8807b0ad630249c4410965c1a5663dab8`  
		Last Modified: Wed, 27 Jun 2018 01:08:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fcff1cbc695e0f794de5a23b5b8a64b2495380629a0350439f39c2a8700e5b`  
		Last Modified: Wed, 27 Jun 2018 01:08:47 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d59330f647fbe99c130fcd635539d367fe3afa617f1c0709cabf4dafe08c3d`  
		Last Modified: Wed, 27 Jun 2018 01:08:49 GMT  
		Size: 7.6 MB (7634323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:9823dec8b0e5b4c5601b664b424d5c841425f1d68f21f084c6ac32deef83314d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66045277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc3f56256acf9a19d45db5cfe58b04d9f85ef50f77149142be8bd2f674381faa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:54:01 GMT
ADD file:f1e0d5c56a23a29918cb3b7691cee8f22620b4c54ee70a0dbb4b8151b2be3355 in / 
# Wed, 27 Jun 2018 08:54:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:14:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:14:05 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 11:14:05 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 11:14:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 11:16:54 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:16:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 11:16:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:16:55 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 11:16:55 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 11:16:55 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 11:16:56 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 11:17:21 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:17:21 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 11:17:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 11:17:22 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 11:17:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 11:17:25 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 11:17:25 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 11:17:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 11:17:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 11:17:27 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 11:17:27 GMT
CMD ["rabbitmq-server"]
# Wed, 27 Jun 2018 11:17:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 27 Jun 2018 11:17:53 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 27 Jun 2018 11:17:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:151bc45ca30d5401779cd71c1dd194a7e6f64f1214de3f4f025bc53daf823199`  
		Last Modified: Wed, 27 Jun 2018 09:03:17 GMT  
		Size: 21.2 MB (21177290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825b1e03deb60ec168e8c1f86037855003b56efd9fdcbf9ad9942bccfbd386f0`  
		Last Modified: Wed, 27 Jun 2018 11:18:09 GMT  
		Size: 4.2 MB (4231542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04df780dc33d847d711076c5d4927e047854ca580966842b62cf3084b58dfd27`  
		Last Modified: Wed, 27 Jun 2018 11:18:07 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5b5b7d007568279387e4aec9d5315de86f80d4b70e1ec340982198000063e8`  
		Last Modified: Wed, 27 Jun 2018 11:18:07 GMT  
		Size: 942.5 KB (942474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3caa0c2e8b7a1f53042803f5ee7dff65f165558629e09dc5121b4d9ee3a6a05`  
		Last Modified: Wed, 27 Jun 2018 11:19:12 GMT  
		Size: 25.2 MB (25172398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50fcc7c887c7bce12eedf1e90770d99990d98eff94f9bc2c27050706b65d09ea`  
		Last Modified: Wed, 27 Jun 2018 11:19:09 GMT  
		Size: 7.0 MB (7023750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9fd6651c49c209a70f99a41a529c48b37dafb88aba394adbf489c041f3d982`  
		Last Modified: Wed, 27 Jun 2018 11:19:06 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9a9b223a3e696cd5a8bbc34db6937b8780e9d46eb3cc1b64d7f216486158b8`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0008eddb0f668d054cea1bf98e342fa8e3f3c2a9d53fdbfd54c50ea1b91fc201`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fdc2a4a4b5f15cf69f9bdd28e1274b066b05957967de4a5ca0257532b352463`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10be111323e80635add9b810c2185fc951e6b9d444ccff22f8429315de7d605`  
		Last Modified: Wed, 27 Jun 2018 11:19:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a8dac08309bb562f5564c214b3776d3890f7fa136c9ee8836ed0fd614feeb3`  
		Last Modified: Wed, 27 Jun 2018 11:19:25 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2128545663b9d8b99670c5cf0a80c5c9623eb360304b7cf8afef8a0e567f39`  
		Last Modified: Wed, 27 Jun 2018 11:19:28 GMT  
		Size: 7.5 MB (7486857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:9ef7a629ca101f32ed6a177a2f569823136ef678dde1985016b8cd80790d07d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (63007706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d5c9d4e37b2ba170836d680107347812ffef3cfda08129c7c2a507e891edb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:12:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:12:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 14:12:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:12:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:15:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:15:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 14:15:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 14:15:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 14:15:06 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 14:15:06 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 14:15:07 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 14:15:34 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:15:35 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 14:15:36 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 14:15:36 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 14:15:38 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 14:15:39 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 14:15:40 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:15:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 14:15:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:15:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 14:15:42 GMT
CMD ["rabbitmq-server"]
# Wed, 27 Jun 2018 14:15:55 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 27 Jun 2018 14:16:12 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 27 Jun 2018 14:16:12 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb65999b58884828ff25e13d07aebc86e55605338c7abc118cfeddfa39c75314`  
		Last Modified: Wed, 27 Jun 2018 14:16:30 GMT  
		Size: 3.9 MB (3868682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1d89ac0fd8e9fb3ebbd0864d5645d52c63b39424990d3741df3fbd9fbc07d`  
		Last Modified: Wed, 27 Jun 2018 14:16:28 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48725968edca68879146e7c9d8dfd6148ce6952e8474683f3aebecbb57eb1624`  
		Last Modified: Wed, 27 Jun 2018 14:16:28 GMT  
		Size: 926.2 KB (926176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7299ca21aed161705f6bc525b06fc070e63a681c6637815e91fadc56436a3afd`  
		Last Modified: Wed, 27 Jun 2018 14:17:39 GMT  
		Size: 24.8 MB (24785201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28f385387f25a57e99324582e0e91c8d9c5a991ce3fcb6e3bd729f4c02a8da2`  
		Last Modified: Wed, 27 Jun 2018 14:17:36 GMT  
		Size: 6.9 MB (6934242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1b41065cf7f363c52826568cdd4c42cdb04f207bb28d881bb77e2c7d62aa27`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16bad0dab8c5fa26088449b5dc25c1b7a47f90b15ccc6ded5f2d11d00d784ca`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b999d40c36f651e5c559f112bf570e2ad5230c06ff08326015ef152c2298f5`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83c73a39f722ad7eaecb707a5c72e6207af867c49fd696d952b3aa2a61b1825`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d2a6e9644671e060f55680f0a9a7b35935ac9e61b1fbcffa687cc1e4ffe312b`  
		Last Modified: Wed, 27 Jun 2018 14:17:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b179ad9d85ffc6803eac32528e7044e237319295a2256ddc6697c4a8d3460a`  
		Last Modified: Wed, 27 Jun 2018 14:17:54 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab21b116e58408074deeadd80cade12c186fa47899efb58580be90ad66268af8`  
		Last Modified: Wed, 27 Jun 2018 14:17:58 GMT  
		Size: 7.2 MB (7196162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:ce499b303145d4eb714695d78ef3d1f7a53251f559347cd83c3524c62f5b2bc9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64889799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defbc15aa3efa75dbf99246520681cd7afc495ad2d6643fe817ffb287e679ef2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:16:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:16:33 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 13:16:34 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:17:12 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:22:07 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:22:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 13:22:09 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 13:22:10 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 13:22:11 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 13:22:12 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 13:22:13 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 13:23:17 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:23:21 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 13:23:26 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 13:23:27 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 13:23:32 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 13:23:41 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 13:23:46 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:23:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 13:23:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:24:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 13:24:07 GMT
CMD ["rabbitmq-server"]
# Wed, 27 Jun 2018 13:24:32 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 27 Jun 2018 13:25:12 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 27 Jun 2018 13:25:14 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0d96808e947c7710f2208a71866be23a9e6406adb27411db1b6249aa6b6a05`  
		Last Modified: Wed, 27 Jun 2018 13:25:57 GMT  
		Size: 4.1 MB (4073248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e622a3e7901d3cfb12b9761cbfbe3acca2d3ef4579c8fdeda2c2e1d564b391f`  
		Last Modified: Wed, 27 Jun 2018 13:25:54 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a3063cb83aae8813ad494c94943225b95b549efc20ff73c755f678582cb2e6c`  
		Last Modified: Wed, 27 Jun 2018 13:25:53 GMT  
		Size: 919.4 KB (919449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3fa23541f9ceb33853e203972ded1202f40684abca3c97a22032fc9c05abc9`  
		Last Modified: Wed, 27 Jun 2018 13:27:48 GMT  
		Size: 25.0 MB (25043260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369acea658435aa562ea5fc176eacb71a052eff214e73f4c91dcad24396ce70c`  
		Last Modified: Wed, 27 Jun 2018 13:27:43 GMT  
		Size: 7.0 MB (7007196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe9dc36b6903581d5ebb8295cdcf73b6761a07097d09f6f7d72a03390d98fc3`  
		Last Modified: Wed, 27 Jun 2018 13:27:36 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12b33015c2815eb4b6ada65a7420e1dbe8a6b3bf389a331bc1d70c2253a4685`  
		Last Modified: Wed, 27 Jun 2018 13:27:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45ab541da7d8acefedef6c0a133ea2b065e25994acdbbc3986c7109fe0b4a1b8`  
		Last Modified: Wed, 27 Jun 2018 13:27:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7beacfb22282e520ec5a6cf0bf2e422d3d8fffc90b40fc45411ddba97da68020`  
		Last Modified: Wed, 27 Jun 2018 13:27:35 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6324450aebb6a7978394b88a24b174027e1e184a48ed57dcbe5de208e922d8f`  
		Last Modified: Wed, 27 Jun 2018 13:27:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e124fe8868f5b8ba028350409b4e9886f7a9982a7789e1202f7e2447334ccbd8`  
		Last Modified: Wed, 27 Jun 2018 13:28:16 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a48aeef976e3ac2dad738e89c01a5ce063873c445bd5806a9ae72e6ad79252`  
		Last Modified: Wed, 27 Jun 2018 13:28:21 GMT  
		Size: 7.5 MB (7487614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:f5a14eeac57d15937102746444a18ecd52018fac08df02c5c3cb86cebe7beb89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71757500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad549bb498dcc0d1d51af7c32043ad1b77c10171e61f52da9ad8800fe128140a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 10:46:39 GMT
ADD file:e1777a98c0e3aaf9cb1f4116550001b0eed2fe669b2c6449c93b76cccc92e1a2 in / 
# Wed, 27 Jun 2018 10:46:42 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:32:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:32:23 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 14:32:23 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:32:45 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:35:40 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:35:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 14:35:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 14:35:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 14:35:41 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 14:35:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 14:35:42 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 14:36:10 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:36:10 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 14:36:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 14:36:11 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 14:36:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 14:36:14 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 14:36:14 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 14:36:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 14:36:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 14:36:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 14:36:16 GMT
CMD ["rabbitmq-server"]
# Wed, 27 Jun 2018 14:36:37 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 27 Jun 2018 14:36:52 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 27 Jun 2018 14:36:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:7de5eb46c52dbee10629f5dc34d9b2445893031ae37083572734bc4f6577757d`  
		Last Modified: Wed, 27 Jun 2018 11:11:02 GMT  
		Size: 23.1 MB (23140103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ceb27dac907a5a8252dedd83883476569ce0d1e8b71a75ad3ad8a10067e421`  
		Last Modified: Wed, 27 Jun 2018 14:37:22 GMT  
		Size: 4.8 MB (4803932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdc007393ca19b420b5fbce014d523fd47b65c898bd16726675b5c413a01b772`  
		Last Modified: Wed, 27 Jun 2018 14:37:19 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7c85e08ba68cd94a8e8271454d5b636dab973ebef4b3e8055ea821a6967907`  
		Last Modified: Wed, 27 Jun 2018 14:37:18 GMT  
		Size: 931.6 KB (931589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407c46f1f202247472304cae422782a60aa489cf08e41968bf6d8a2b14959d5a`  
		Last Modified: Wed, 27 Jun 2018 14:39:16 GMT  
		Size: 27.8 MB (27820236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43723cd64a2dd8f7e7a16e5f97020230d4a0a99915ea65e550b25259bd833716`  
		Last Modified: Wed, 27 Jun 2018 14:39:12 GMT  
		Size: 7.3 MB (7322210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0dadc5d5f00f5cc3bcf9553aeaf25d2fb571684ec823138e4075c83325a567`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05ef2b592413e919155cddd9984f45596a5ee627d2b111de7f694aea7c72a4d5`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1068155f399cffa04ad1f67a67a299c36f6241a230a8540b103149635689b30d`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a8942b2a83fde843d426f8e0fc41b8bcface0907f03da5493bea20ad793006`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:511bc5a9753ef0507dabe9bd78971250061529b11a6779632c34fbf65942094b`  
		Last Modified: Wed, 27 Jun 2018 14:39:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d13c89647407c6df1c3b5f44fa133cab71bcd23478836624d8dca1452d60a36`  
		Last Modified: Wed, 27 Jun 2018 14:39:38 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e85f9bfdce7089d82e10407cee0baead861d23291b951622d0c34ff6b1096ab`  
		Last Modified: Wed, 27 Jun 2018 14:39:40 GMT  
		Size: 7.7 MB (7728485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:7ac2197a4efeb3f0347d50f0aa8c1d4023f37205b638e1ad9eba7fdd190e70a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68342864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2404a495afa5c4bf11613b92583565707d9d835925ad5278919b03025e652e99`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:34 GMT
ADD file:7bd6d5557557a294db488600b483d452db358e399f7c8b1acf2a89c25b3d2006 in / 
# Wed, 27 Jun 2018 08:21:35 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:30:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:30:39 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 12:30:41 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 12:31:59 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 12:41:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:41:35 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 12:41:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 12:41:37 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 12:41:38 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 12:41:39 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 12:41:40 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 12:42:34 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:42:36 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 12:42:39 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 12:42:41 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 12:42:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 12:42:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 12:42:52 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 12:42:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 12:42:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 12:42:55 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 12:42:56 GMT
CMD ["rabbitmq-server"]
# Wed, 27 Jun 2018 12:43:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 27 Jun 2018 12:43:40 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 27 Jun 2018 12:43:42 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:591f394d671c26b8ef397269eb6b0bd86b78d5619523f5d1632fca943faff2de`  
		Last Modified: Wed, 27 Jun 2018 08:31:55 GMT  
		Size: 22.8 MB (22753035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bd042d1af652aeb7f1179a8c2bdcf4ed0f81eb4251216a177cd71ecc78d2fe`  
		Last Modified: Wed, 27 Jun 2018 12:44:16 GMT  
		Size: 4.4 MB (4360645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9c485d9dc69963a40f603f375772ab7425f15acb09d1803689ee12b72593c8`  
		Last Modified: Wed, 27 Jun 2018 12:44:13 GMT  
		Size: 4.1 KB (4106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a02bb3ae1c1247c1ab6ea88b0a657e4262bc46c44ad396c4da2616fdd1c09f0`  
		Last Modified: Wed, 27 Jun 2018 12:44:14 GMT  
		Size: 920.8 KB (920757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2ee0f20ed71475d33e4978cf2bb60eca478d8c838b5d6dc8085bb8304f6bd9`  
		Last Modified: Wed, 27 Jun 2018 12:45:47 GMT  
		Size: 25.5 MB (25492844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c602da23afb1b085a4367e57e2b9b340cfc84fc89210a49ba2e49f9ce96190`  
		Last Modified: Wed, 27 Jun 2018 12:45:44 GMT  
		Size: 7.0 MB (6966807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a84511f74450f23ebd355b5c6159ad2b22c4640a1a3b5c557a1d10e90d5e31f`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54246d37a706130763825d4cedf98e2c716a2d1f30499e92ca8e684145b8d18`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba89e71f47dbe3a21e9e5f997e80c834b80803dbefb5f0d15546dde75a2b7c3`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856d7d9be3ea0211edb110de93db5de1bce91b8f50d604c5de7a6b0ab97455ca`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb8ab5d80004717cb54baed0f80c87c4b53c3d09584f033010ee0a6b2859f20`  
		Last Modified: Wed, 27 Jun 2018 12:45:40 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a0a31171680fda20bd3c6ebbedd4f49b1c9c961d73ef5d7ba06ce3980287a7`  
		Last Modified: Wed, 27 Jun 2018 12:46:08 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd7ad7bfca6cc3f59032c0f16213bdda52957c68ebd4a2ed86d96d47189b971`  
		Last Modified: Wed, 27 Jun 2018 12:46:10 GMT  
		Size: 7.8 MB (7837786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:c7b88838cbb393530fdb475079564c15f7ec8b1e01d721b8fa665ea43e1bc0fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68099323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa136adf2a4f733a49d1852d57791f63ca8b0a12ab415612da3b13dddf081e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:38:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:38:40 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 13:38:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:38:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:40:40 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:40:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 13:40:40 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 13:40:40 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 27 Jun 2018 13:40:41 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 27 Jun 2018 13:40:41 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 27 Jun 2018 13:40:41 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 27 Jun 2018 13:40:55 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:40:56 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 27 Jun 2018 13:40:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 27 Jun 2018 13:40:56 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 27 Jun 2018 13:40:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 27 Jun 2018 13:40:58 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 27 Jun 2018 13:40:58 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 27 Jun 2018 13:40:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 27 Jun 2018 13:40:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 27 Jun 2018 13:40:59 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 27 Jun 2018 13:40:59 GMT
CMD ["rabbitmq-server"]
# Wed, 27 Jun 2018 13:41:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 27 Jun 2018 13:41:14 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 27 Jun 2018 13:41:15 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e807416110d0cf06abcbde25d0113b63bd830a4530be9402a739471fadb40132`  
		Last Modified: Wed, 27 Jun 2018 13:41:37 GMT  
		Size: 4.5 MB (4530010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da86ac5a30e03a606b312415dadd31364903f21a2c90b521e21fd7a1afda732a`  
		Last Modified: Wed, 27 Jun 2018 13:41:36 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01965e40b1df1c653de280dbd763b44adb1738344fe1da60276a2cba7fa97780`  
		Last Modified: Wed, 27 Jun 2018 13:41:35 GMT  
		Size: 938.0 KB (938029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f799aad0ce38c78f3b57659fe976dd6c8a9e3e91c99e677e9947be3ceaeb12e6`  
		Last Modified: Wed, 27 Jun 2018 13:42:20 GMT  
		Size: 25.6 MB (25622371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b02abb9391d57138095399f99b195df245719e0849a85871345de54fe35b1c`  
		Last Modified: Wed, 27 Jun 2018 13:42:18 GMT  
		Size: 7.0 MB (7041164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c959f88696919054437cb828567926b46b4f7e3d50d43e358374fc5ed1e97f`  
		Last Modified: Wed, 27 Jun 2018 13:42:16 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb74affc0a53b19411062312cfed232db3bf1c9d0e11faec76dba848c0a6277c`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf7873e12812afd26a9a58827fc2c46c129d96f84b045c3d977d2d4c19a0cea4`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7075b09e38f6bbc398cf98f07376a02332f167abfdf422182f504701fe8eb502`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcc413eeb49c1b38e39adb08fdf195df6d77eadd0a732089f25700faf9030b7`  
		Last Modified: Wed, 27 Jun 2018 13:42:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dedf6ded3e7ffd4c8f7aa28179f912505a0782c2672cfacda6d0870b7fd73790`  
		Last Modified: Wed, 27 Jun 2018 13:42:31 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f951afb2a5b88510a339b7be48dab6ecd975e46b93897535a094e97304dfd2f0`  
		Last Modified: Wed, 27 Jun 2018 13:42:33 GMT  
		Size: 7.6 MB (7606923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:34881f81738753da742fe6fed0c8b9284b1a8b5be3423c9990fbcd7dc605fcd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:74507f89bfac65bda4cdffc6f820fd3d380597e3851de3b2363a215706a8c167
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34729918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc660999d3bced283e1a742e07178811487e650477d7a11fefdea7cd1d83c11a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:29:15 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 06 Jul 2018 17:29:16 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 17:29:18 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 06 Jul 2018 17:29:19 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 06 Jul 2018 17:29:19 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 06 Jul 2018 17:29:19 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 17:29:20 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 06 Jul 2018 17:29:20 GMT
ENV RABBITMQ_VERSION=3.6.16
# Fri, 06 Jul 2018 17:29:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Fri, 06 Jul 2018 17:29:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 06 Jul 2018 17:29:27 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 06 Jul 2018 17:29:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 06 Jul 2018 17:29:28 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 06 Jul 2018 17:29:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 06 Jul 2018 17:29:30 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 06 Jul 2018 17:29:30 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Fri, 06 Jul 2018 17:29:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Jul 2018 17:29:31 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 06 Jul 2018 17:29:31 GMT
CMD ["rabbitmq-server"]
# Fri, 06 Jul 2018 17:29:41 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 06 Jul 2018 17:29:45 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 06 Jul 2018 17:29:45 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3ada08dcd1bcc390d7a568597ab3aa22c6d6a8e7ef1d79da461636b4331b12`  
		Last Modified: Fri, 06 Jul 2018 17:32:22 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8282b02d34777e27ef96ffdd9016f2ff6ec79ad271bcb8de52ad1903b4eec5`  
		Last Modified: Fri, 06 Jul 2018 17:32:21 GMT  
		Size: 8.5 KB (8466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f78b5cb32ef838571a48be0ebb63d4d8cf14bb43a2a9e4193b390e6068311b`  
		Last Modified: Fri, 06 Jul 2018 17:32:26 GMT  
		Size: 16.6 MB (16565942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333d2f2bad39f531461d685ec40375002a663dacc972d6a0847d99c9ea3eead0`  
		Last Modified: Fri, 06 Jul 2018 17:32:21 GMT  
		Size: 5.1 MB (5126933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e65d1e4595da56b490bcd5e9ec3fb866686773bf59bcae26514cbac1f1f0df`  
		Last Modified: Fri, 06 Jul 2018 17:32:19 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f547723de9012f141466aea8656b1922fa119d94f77f2786aded37a15a1b9d78`  
		Last Modified: Fri, 06 Jul 2018 17:32:20 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c65bb2a64976d377571cceb510ae6fa663fce5223d41258a3b9b49189978301`  
		Last Modified: Fri, 06 Jul 2018 17:32:19 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e02fca099c22674260eedbb25aa1d50578a6122fb0618e72ca8b5259a162f2`  
		Last Modified: Fri, 06 Jul 2018 17:32:19 GMT  
		Size: 4.0 KB (4033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1603cfe2ac4b635c34ceafb082605c75007cf1db77f12dd4fe749c7c24924763`  
		Last Modified: Fri, 06 Jul 2018 17:32:50 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24a1f645aa0fe7664f8c226eb64cad5289957d98211dceecc46337284bc8d55`  
		Last Modified: Fri, 06 Jul 2018 17:32:53 GMT  
		Size: 11.0 MB (11007994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:74d05b910e1a0efe9387960524df8b2c4920ac2d9cf5f335931f6abef258f5cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34317383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9545d49682dbd80042bf4da27e647dcb7a07416dbe567863c07be52844c64c1`
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
# Tue, 19 Jun 2018 10:24:46 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 10:24:47 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 10:24:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 10:24:56 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 10:24:58 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 10:24:58 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 10:25:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 10:25:02 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 10:25:03 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 10:25:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 10:25:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 10:25:09 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 10:25:27 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 10:25:34 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 10:25:35 GMT
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
	-	`sha256:66155e03221c295428f350487c9bf90c4aeb2621b47ce8d97fc2c818668d5e35`  
		Last Modified: Tue, 19 Jun 2018 10:29:21 GMT  
		Size: 5.1 MB (5127083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e35efa4e25e4f289c08b0388eee2ea24773c10b117a6127e1d8badd84444d3`  
		Last Modified: Tue, 19 Jun 2018 10:29:20 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:446c0fbd86f96db78438a97696862f4eeccfa95bb195b79a0ca02c10c85228bd`  
		Last Modified: Tue, 19 Jun 2018 10:29:20 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e32beb4061664a5eef512d527e571d982a22c70feececcc65a80f2b6221189`  
		Last Modified: Tue, 19 Jun 2018 10:29:20 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158ee216ef9b1f8f45706c5137d184ca0a5babfdb0d4926a520fe6874c2b9341`  
		Last Modified: Tue, 19 Jun 2018 10:29:19 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45a14ef10fad8b74eff45477138a3006636f4d20da711ccbc08d83f9edce9179`  
		Last Modified: Tue, 19 Jun 2018 10:29:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eba0aeda817a904670463a377b6e69ae2ae445c0bd287010d0326fc4c1d3068`  
		Last Modified: Tue, 19 Jun 2018 10:29:51 GMT  
		Size: 10.9 MB (10884264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:200014484091de8a80fbb89f6d65f7df0a8998da128980bf9dda23fad7f98b31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35028334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92645acb48eaa16557d2247f236055edd7072e9340826155ddea6f4d2db5aa30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 01 Jun 2018 06:57:18 GMT
ADD file:4a952fc4b81d50b342e26a818dac48a148a4d5eddb878219650e579a5c9faeaa in / 
# Fri, 01 Jun 2018 06:57:18 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Jun 2018 06:57:19 GMT
CMD ["/bin/sh"]
# Fri, 01 Jun 2018 14:13:42 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 01 Jun 2018 14:13:43 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 01 Jun 2018 14:13:54 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 01 Jun 2018 14:13:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 01 Jun 2018 14:13:54 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 01 Jun 2018 14:13:55 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Jun 2018 14:13:55 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 19 Jun 2018 10:42:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 10:42:34 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 10:42:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 10:42:53 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 10:42:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 10:42:54 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 10:42:55 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 10:42:56 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 10:42:56 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 10:42:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 10:42:57 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 10:42:57 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 10:43:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 10:43:17 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 10:43:17 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:ffe4428ef008913a7ec63449e4ad3aa536b26103943146a302591dfceb157d2f`  
		Last Modified: Sat, 17 Jun 2017 18:08:13 GMT  
		Size: 2.0 MB (2045593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b93c7840c461984306700458d2c2e47d0215171ed13e046861ec7572a3e3f44`  
		Last Modified: Fri, 01 Jun 2018 06:57:42 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5946c2a44b42f417b3f7853b2097c66b1932a4fda04c67aab3777d52413efe78`  
		Last Modified: Fri, 01 Jun 2018 14:16:46 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e0b3268c9f2050eeab7569ed784a548838d2b0ee475da36a61aa36c66f7b1c6`  
		Last Modified: Fri, 01 Jun 2018 14:16:46 GMT  
		Size: 8.3 KB (8300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ebe1972b8e2d72a217f85842869a45ace48ccaee4cadcf2c5e0400607683ab3`  
		Last Modified: Fri, 01 Jun 2018 14:16:52 GMT  
		Size: 16.7 MB (16714404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36fc1c2273390586d41ef82831713603c501fb729edee848ef6484a9d827369`  
		Last Modified: Tue, 19 Jun 2018 10:47:32 GMT  
		Size: 5.1 MB (5127143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2a40854e0af3a74f7255514bd9602ff706613176c67b07071e6d45ff2fade6`  
		Last Modified: Tue, 19 Jun 2018 10:47:31 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d091528dfb321262154deafa4beae659149564ed5d27f1bfaf2156509cb4ec`  
		Last Modified: Tue, 19 Jun 2018 10:47:31 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f39822fd122fcdb696a697168406089d39411e90d11b583b8826597fadadb`  
		Last Modified: Tue, 19 Jun 2018 10:47:30 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356b33778667bfef99aaf2839195542694b4e6bd6c5047122e7afc4a73579859`  
		Last Modified: Tue, 19 Jun 2018 10:47:30 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd851dcb2ab11a9b10fd533a0a9a4ba40ead9e0e328361deb193cd643048984`  
		Last Modified: Tue, 19 Jun 2018 10:47:48 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de3d686e5277a7267862423683ae818d51ad36d89aeac1dd4d6586dfaaaba64`  
		Last Modified: Tue, 19 Jun 2018 10:47:53 GMT  
		Size: 11.1 MB (11126777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:c54c7293a60bb97d860028a897f2548e15c1750250e480a8156b7e7838c564b8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34804301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c327ba49593fd47977093c29dbb8ec3f3e326031916d4b85df628c18135a2809`
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
# Tue, 19 Jun 2018 08:22:56 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 08:22:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 08:23:24 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:23:25 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:23:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:23:31 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:23:34 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:23:37 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:23:39 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:23:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:23:41 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:23:42 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 08:23:54 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 08:24:02 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 08:24:03 GMT
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
	-	`sha256:ddcd57ac3e314382aa5b075ac637b8f387edc5a2d616723be13a72b99853a06d`  
		Last Modified: Tue, 19 Jun 2018 08:27:22 GMT  
		Size: 5.1 MB (5127376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad752da0bb817897913f7014e31cc326445b7d562f20e4d1a957b464c63d2783`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 216.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d7b58e3afe058065f3a1bbd7f2daa0d2cd1a52276748949a8970457f40ca82`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca71317a7db4ef7c1af80578a284cf4f7de2b4fc7e6fa3210f1c5e9f5e1f7452`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4b48ba10e026193c467c98dcbf3ff397a9c57e7b6c99be46c9b93b764c2b3b`  
		Last Modified: Tue, 19 Jun 2018 08:27:21 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218e886dedb1e9e13708d12e92dd91e88e4d8fd5810d8f8e8e779da5c6984924`  
		Last Modified: Tue, 19 Jun 2018 08:27:38 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85872fd235111f77ca496109a5c32e46277d3768e3a96da0a6b832baa70f896`  
		Last Modified: Tue, 19 Jun 2018 08:27:42 GMT  
		Size: 11.0 MB (11049968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:7a96b3b9d98b464014b8076387b6dad963de6c74cd969c9af335b0147f9948f1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35091035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54048e4246e06aba9a4152bcb808fb1a6191d86d03e7058cc23fff9f8d09a610`
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
# Tue, 19 Jun 2018 11:46:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 11:46:34 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 11:46:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 11:46:40 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 11:46:40 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 11:46:40 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 11:46:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 11:46:42 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 11:46:42 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Tue, 19 Jun 2018 11:46:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 11:46:42 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 11:46:42 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 11:46:48 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 11:46:51 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 11:46:52 GMT
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
	-	`sha256:fdc6b0721ce9d3aa215a825aafba0ddd740aea8485d665cf119253319360f64e`  
		Last Modified: Tue, 19 Jun 2018 11:48:30 GMT  
		Size: 5.1 MB (5127061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f20df847693ff9f193a78037299bdeb325ec475e03202ffa9448d7552f6a3e`  
		Last Modified: Tue, 19 Jun 2018 11:48:29 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20d614d33dc19117e4d72a741022218ccf075bae738a63384a162dc245df868a`  
		Last Modified: Tue, 19 Jun 2018 11:48:30 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dadce3d6ec58309ba1d9a17efd508edf45f5e67499cc8e66ca35977ff4e574`  
		Last Modified: Tue, 19 Jun 2018 11:48:29 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7256f792a8a6ee2a9b0a3679d3d71658066db12b7b136369e5807cfee6469639`  
		Last Modified: Tue, 19 Jun 2018 11:48:30 GMT  
		Size: 4.0 KB (4035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01bb5d0bd14de1be6f2d206a544bad6e01fe4966695685ecf2e34978e93f4586`  
		Last Modified: Tue, 19 Jun 2018 11:48:39 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c867007265acb702bbacbc886891745d8f5f95274c25333451bb7ec982ca3742`  
		Last Modified: Tue, 19 Jun 2018 11:48:41 GMT  
		Size: 11.2 MB (11157248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7`

```console
$ docker pull rabbitmq@sha256:899b10984c94140d3a66f1baaf58286232e0c17143d48ed955a25fc20321ee7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7` - linux; amd64

```console
$ docker pull rabbitmq@sha256:33f689d670ca4601fd29dc64da7f7338c85e5bfafa3fdcefcac3fd36b954d2ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65777835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805eecabc1355c2f78c93a07ee1ec3f8968819a70adfad8d5c1a01d70f8e8e9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 00:58:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:58:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 00:58:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 00:59:16 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 00:59:17 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 27 Jun 2018 00:59:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:59:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 00:59:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 00:59:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:57:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Sat, 07 Jul 2018 03:58:10 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 03:58:10 GMT
ENV LANG=C.UTF-8
# Sat, 07 Jul 2018 03:58:10 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:58:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:58:13 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 07 Jul 2018 03:58:13 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:58:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 07 Jul 2018 03:58:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:58:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:58:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a58d97bcb569ba860f65d14aeb5ed171470841328c944423c5cb3e34a030e9`  
		Last Modified: Wed, 27 Jun 2018 01:05:00 GMT  
		Size: 4.5 MB (4498593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339d92e505149e43ef8461a7878a3c2651fe6dcc68173ce9c34430e7e39f612c`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cb74af4ef9bc8da6a9d155cdad9176f360c9b387fbb8826f10f87627002971`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 952.1 KB (952079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d613e36722e22a6271bf49b74dfc900ce4a9da0506d861cb712fb315b33ef76`  
		Last Modified: Wed, 27 Jun 2018 01:04:55 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b318f0f6ea270d2b80397460502b47f76169ceb6dff7cd207a1aa28c7a7e75`  
		Last Modified: Wed, 27 Jun 2018 01:04:59 GMT  
		Size: 27.5 MB (27503299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a88195c480067384c475833398f13fe23e1bf263fde1298e175586f568597e`  
		Last Modified: Sat, 07 Jul 2018 04:00:16 GMT  
		Size: 10.3 MB (10315617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f30a9a6ea8aae23bf3ddae575f0e16cf6b68017a83f6185dd3d190896a81e`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587595cdbb2e2dd187356885bb58559d96ff9454b5afaf570b793043f5633e87`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654850faf7449177b61397c063977f9a48049a69879d514b2e95e2c666b262b4`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78740d47dae34536365113f5083b4641e2e9ec91bc01b8f53a1e438324c9379`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1b6640bb406d2b67fb12956a80545febfba8dd3e92ef8d76b1272574e71160`  
		Last Modified: Sat, 07 Jul 2018 04:00:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.7`

```console
$ docker pull rabbitmq@sha256:899b10984c94140d3a66f1baaf58286232e0c17143d48ed955a25fc20321ee7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7.7` - linux; amd64

```console
$ docker pull rabbitmq@sha256:33f689d670ca4601fd29dc64da7f7338c85e5bfafa3fdcefcac3fd36b954d2ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65777835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805eecabc1355c2f78c93a07ee1ec3f8968819a70adfad8d5c1a01d70f8e8e9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 00:58:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:58:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 00:58:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 00:59:16 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 00:59:17 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 27 Jun 2018 00:59:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:59:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 00:59:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 00:59:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:57:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Sat, 07 Jul 2018 03:58:10 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 03:58:10 GMT
ENV LANG=C.UTF-8
# Sat, 07 Jul 2018 03:58:10 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:58:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:58:13 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 07 Jul 2018 03:58:13 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:58:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 07 Jul 2018 03:58:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:58:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:58:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a58d97bcb569ba860f65d14aeb5ed171470841328c944423c5cb3e34a030e9`  
		Last Modified: Wed, 27 Jun 2018 01:05:00 GMT  
		Size: 4.5 MB (4498593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339d92e505149e43ef8461a7878a3c2651fe6dcc68173ce9c34430e7e39f612c`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cb74af4ef9bc8da6a9d155cdad9176f360c9b387fbb8826f10f87627002971`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 952.1 KB (952079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d613e36722e22a6271bf49b74dfc900ce4a9da0506d861cb712fb315b33ef76`  
		Last Modified: Wed, 27 Jun 2018 01:04:55 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b318f0f6ea270d2b80397460502b47f76169ceb6dff7cd207a1aa28c7a7e75`  
		Last Modified: Wed, 27 Jun 2018 01:04:59 GMT  
		Size: 27.5 MB (27503299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a88195c480067384c475833398f13fe23e1bf263fde1298e175586f568597e`  
		Last Modified: Sat, 07 Jul 2018 04:00:16 GMT  
		Size: 10.3 MB (10315617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f30a9a6ea8aae23bf3ddae575f0e16cf6b68017a83f6185dd3d190896a81e`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587595cdbb2e2dd187356885bb58559d96ff9454b5afaf570b793043f5633e87`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654850faf7449177b61397c063977f9a48049a69879d514b2e95e2c666b262b4`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78740d47dae34536365113f5083b4641e2e9ec91bc01b8f53a1e438324c9379`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1b6640bb406d2b67fb12956a80545febfba8dd3e92ef8d76b1272574e71160`  
		Last Modified: Sat, 07 Jul 2018 04:00:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.7-alpine`

```console
$ docker pull rabbitmq@sha256:17730b9146f2760975d80fc4673566c9d63ba04187a78768268b1b49dd6c492c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7.7-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:20a8f6fecc2153662be5f39ea7c02b4789311ec5e3c91dbd2ff5440996750e1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31580301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12f39d144fcf5fc9a48f15da390b45187df179224e556802ed80766e1d4a0b4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:28:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 06 Jul 2018 17:28:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 17:28:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 06 Jul 2018 17:28:34 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 17:28:35 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:59:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 07 Jul 2018 03:59:18 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:59:20 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:59:21 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 07 Jul 2018 03:59:21 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:59:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:59:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:59:22 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51688d8a76e96147aa3ebf124539c54bd3a2400a33fbfc07d8fc4be547048c1`  
		Last Modified: Fri, 06 Jul 2018 17:30:11 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989614242420ba57f1be148a50bfae73db4e8fb7f937104d001c1c7b3317e711`  
		Last Modified: Fri, 06 Jul 2018 17:30:12 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a520058c07f29f8398a05eaf3970d0d7be8c66a2c0393329bdd151706c680f4`  
		Last Modified: Fri, 06 Jul 2018 17:30:16 GMT  
		Size: 18.7 MB (18656002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66886d9d819a05fd3174820175ec47f7f0b0b60a886ef781d98c5e67bbb32e91`  
		Last Modified: Sat, 07 Jul 2018 04:02:36 GMT  
		Size: 10.8 MB (10805985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c97437fbec9032bfcb947a34c82761e9967ddd29874fedfb4aa2afeab3f9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a64b5f67082bc94d54e259a8ac5138b3e6cace743da1a3312ca4ada4bc3df6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35f81fa53bf6a04529c4daa91f859cbab401a6eb58342f9a09a32354ea5b9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8764e7c5c8b0efc0036a0d03c4b56517f9d69816b3eaba390d1b7315bfbeec6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.7-management`

```console
$ docker pull rabbitmq@sha256:6b980b786afcec4ce0d1d57e6f74bae46867debf54f373038c86e69453154d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7.7-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:d5a5f1d3915a4692203dfa131f9e16dbb2f137e01f491b3f434fd05f9c0573fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73400693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bdffcb99c02b0f88d1cfcd696e2aea54b5bdf94da4ef7229819962d8b7a066`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 00:58:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:58:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 00:58:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 00:59:16 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 00:59:17 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 27 Jun 2018 00:59:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:59:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 00:59:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 00:59:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:57:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Sat, 07 Jul 2018 03:58:10 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 03:58:10 GMT
ENV LANG=C.UTF-8
# Sat, 07 Jul 2018 03:58:10 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:58:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:58:13 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 07 Jul 2018 03:58:13 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:58:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 07 Jul 2018 03:58:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:58:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:58:15 GMT
CMD ["rabbitmq-server"]
# Sat, 07 Jul 2018 03:58:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 07 Jul 2018 03:58:56 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 07 Jul 2018 03:58:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a58d97bcb569ba860f65d14aeb5ed171470841328c944423c5cb3e34a030e9`  
		Last Modified: Wed, 27 Jun 2018 01:05:00 GMT  
		Size: 4.5 MB (4498593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339d92e505149e43ef8461a7878a3c2651fe6dcc68173ce9c34430e7e39f612c`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cb74af4ef9bc8da6a9d155cdad9176f360c9b387fbb8826f10f87627002971`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 952.1 KB (952079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d613e36722e22a6271bf49b74dfc900ce4a9da0506d861cb712fb315b33ef76`  
		Last Modified: Wed, 27 Jun 2018 01:04:55 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b318f0f6ea270d2b80397460502b47f76169ceb6dff7cd207a1aa28c7a7e75`  
		Last Modified: Wed, 27 Jun 2018 01:04:59 GMT  
		Size: 27.5 MB (27503299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a88195c480067384c475833398f13fe23e1bf263fde1298e175586f568597e`  
		Last Modified: Sat, 07 Jul 2018 04:00:16 GMT  
		Size: 10.3 MB (10315617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f30a9a6ea8aae23bf3ddae575f0e16cf6b68017a83f6185dd3d190896a81e`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587595cdbb2e2dd187356885bb58559d96ff9454b5afaf570b793043f5633e87`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654850faf7449177b61397c063977f9a48049a69879d514b2e95e2c666b262b4`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78740d47dae34536365113f5083b4641e2e9ec91bc01b8f53a1e438324c9379`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1b6640bb406d2b67fb12956a80545febfba8dd3e92ef8d76b1272574e71160`  
		Last Modified: Sat, 07 Jul 2018 04:00:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6b2ad8f540315d9005daa2aaf5724512a8385deed505f14b7befbf04d3d529`  
		Last Modified: Sat, 07 Jul 2018 04:01:22 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dc7f071fb360c9e3d7dd0f116f5b4280f29cc9427705ca7db1fcb6f42a9aeb`  
		Last Modified: Sat, 07 Jul 2018 04:01:25 GMT  
		Size: 7.6 MB (7622667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.7-management-alpine`

```console
$ docker pull rabbitmq@sha256:dde7d9fbf37280553d1dd38a08d6105bac6d613d25f99ce0adc286004139c55a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7.7-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:dde774f6e9428f588e578aeeec8e6ae577f724058723070ef6623f7de23da7fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42604952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea9f74873a5bfd48eaa53d36b506c43feffdc6db622c07d6a23c2bbd44a2bc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:28:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 06 Jul 2018 17:28:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 17:28:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 06 Jul 2018 17:28:34 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 17:28:35 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:59:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 07 Jul 2018 03:59:18 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:59:20 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:59:21 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 07 Jul 2018 03:59:21 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:59:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:59:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:59:22 GMT
CMD ["rabbitmq-server"]
# Sat, 07 Jul 2018 03:59:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 07 Jul 2018 03:59:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 07 Jul 2018 03:59:43 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51688d8a76e96147aa3ebf124539c54bd3a2400a33fbfc07d8fc4be547048c1`  
		Last Modified: Fri, 06 Jul 2018 17:30:11 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989614242420ba57f1be148a50bfae73db4e8fb7f937104d001c1c7b3317e711`  
		Last Modified: Fri, 06 Jul 2018 17:30:12 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a520058c07f29f8398a05eaf3970d0d7be8c66a2c0393329bdd151706c680f4`  
		Last Modified: Fri, 06 Jul 2018 17:30:16 GMT  
		Size: 18.7 MB (18656002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66886d9d819a05fd3174820175ec47f7f0b0b60a886ef781d98c5e67bbb32e91`  
		Last Modified: Sat, 07 Jul 2018 04:02:36 GMT  
		Size: 10.8 MB (10805985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c97437fbec9032bfcb947a34c82761e9967ddd29874fedfb4aa2afeab3f9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a64b5f67082bc94d54e259a8ac5138b3e6cace743da1a3312ca4ada4bc3df6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35f81fa53bf6a04529c4daa91f859cbab401a6eb58342f9a09a32354ea5b9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8764e7c5c8b0efc0036a0d03c4b56517f9d69816b3eaba390d1b7315bfbeec6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675b60445a2a9a58a42417c0cf6523a0808fd93f287203754a5438e77875c667`  
		Last Modified: Sat, 07 Jul 2018 04:03:59 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffea025eafc662f81074cd8a571ab03ac953f16183d8605303344adf88b4a8e`  
		Last Modified: Sat, 07 Jul 2018 04:04:03 GMT  
		Size: 11.0 MB (11024459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-alpine`

```console
$ docker pull rabbitmq@sha256:17730b9146f2760975d80fc4673566c9d63ba04187a78768268b1b49dd6c492c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:20a8f6fecc2153662be5f39ea7c02b4789311ec5e3c91dbd2ff5440996750e1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31580301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12f39d144fcf5fc9a48f15da390b45187df179224e556802ed80766e1d4a0b4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:28:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 06 Jul 2018 17:28:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 17:28:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 06 Jul 2018 17:28:34 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 17:28:35 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:59:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 07 Jul 2018 03:59:18 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:59:20 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:59:21 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 07 Jul 2018 03:59:21 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:59:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:59:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:59:22 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51688d8a76e96147aa3ebf124539c54bd3a2400a33fbfc07d8fc4be547048c1`  
		Last Modified: Fri, 06 Jul 2018 17:30:11 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989614242420ba57f1be148a50bfae73db4e8fb7f937104d001c1c7b3317e711`  
		Last Modified: Fri, 06 Jul 2018 17:30:12 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a520058c07f29f8398a05eaf3970d0d7be8c66a2c0393329bdd151706c680f4`  
		Last Modified: Fri, 06 Jul 2018 17:30:16 GMT  
		Size: 18.7 MB (18656002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66886d9d819a05fd3174820175ec47f7f0b0b60a886ef781d98c5e67bbb32e91`  
		Last Modified: Sat, 07 Jul 2018 04:02:36 GMT  
		Size: 10.8 MB (10805985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c97437fbec9032bfcb947a34c82761e9967ddd29874fedfb4aa2afeab3f9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a64b5f67082bc94d54e259a8ac5138b3e6cace743da1a3312ca4ada4bc3df6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35f81fa53bf6a04529c4daa91f859cbab401a6eb58342f9a09a32354ea5b9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8764e7c5c8b0efc0036a0d03c4b56517f9d69816b3eaba390d1b7315bfbeec6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-management`

```console
$ docker pull rabbitmq@sha256:6b980b786afcec4ce0d1d57e6f74bae46867debf54f373038c86e69453154d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:d5a5f1d3915a4692203dfa131f9e16dbb2f137e01f491b3f434fd05f9c0573fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73400693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bdffcb99c02b0f88d1cfcd696e2aea54b5bdf94da4ef7229819962d8b7a066`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 00:58:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:58:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 00:58:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 00:59:16 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 00:59:17 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 27 Jun 2018 00:59:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:59:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 00:59:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 00:59:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:57:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Sat, 07 Jul 2018 03:58:10 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 03:58:10 GMT
ENV LANG=C.UTF-8
# Sat, 07 Jul 2018 03:58:10 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:58:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:58:13 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 07 Jul 2018 03:58:13 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:58:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 07 Jul 2018 03:58:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:58:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:58:15 GMT
CMD ["rabbitmq-server"]
# Sat, 07 Jul 2018 03:58:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 07 Jul 2018 03:58:56 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 07 Jul 2018 03:58:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a58d97bcb569ba860f65d14aeb5ed171470841328c944423c5cb3e34a030e9`  
		Last Modified: Wed, 27 Jun 2018 01:05:00 GMT  
		Size: 4.5 MB (4498593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339d92e505149e43ef8461a7878a3c2651fe6dcc68173ce9c34430e7e39f612c`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cb74af4ef9bc8da6a9d155cdad9176f360c9b387fbb8826f10f87627002971`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 952.1 KB (952079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d613e36722e22a6271bf49b74dfc900ce4a9da0506d861cb712fb315b33ef76`  
		Last Modified: Wed, 27 Jun 2018 01:04:55 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b318f0f6ea270d2b80397460502b47f76169ceb6dff7cd207a1aa28c7a7e75`  
		Last Modified: Wed, 27 Jun 2018 01:04:59 GMT  
		Size: 27.5 MB (27503299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a88195c480067384c475833398f13fe23e1bf263fde1298e175586f568597e`  
		Last Modified: Sat, 07 Jul 2018 04:00:16 GMT  
		Size: 10.3 MB (10315617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f30a9a6ea8aae23bf3ddae575f0e16cf6b68017a83f6185dd3d190896a81e`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587595cdbb2e2dd187356885bb58559d96ff9454b5afaf570b793043f5633e87`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654850faf7449177b61397c063977f9a48049a69879d514b2e95e2c666b262b4`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78740d47dae34536365113f5083b4641e2e9ec91bc01b8f53a1e438324c9379`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1b6640bb406d2b67fb12956a80545febfba8dd3e92ef8d76b1272574e71160`  
		Last Modified: Sat, 07 Jul 2018 04:00:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6b2ad8f540315d9005daa2aaf5724512a8385deed505f14b7befbf04d3d529`  
		Last Modified: Sat, 07 Jul 2018 04:01:22 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dc7f071fb360c9e3d7dd0f116f5b4280f29cc9427705ca7db1fcb6f42a9aeb`  
		Last Modified: Sat, 07 Jul 2018 04:01:25 GMT  
		Size: 7.6 MB (7622667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-management-alpine`

```console
$ docker pull rabbitmq@sha256:dde7d9fbf37280553d1dd38a08d6105bac6d613d25f99ce0adc286004139c55a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:dde774f6e9428f588e578aeeec8e6ae577f724058723070ef6623f7de23da7fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42604952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea9f74873a5bfd48eaa53d36b506c43feffdc6db622c07d6a23c2bbd44a2bc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:28:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 06 Jul 2018 17:28:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 17:28:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 06 Jul 2018 17:28:34 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 17:28:35 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:59:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 07 Jul 2018 03:59:18 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:59:20 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:59:21 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 07 Jul 2018 03:59:21 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:59:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:59:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:59:22 GMT
CMD ["rabbitmq-server"]
# Sat, 07 Jul 2018 03:59:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 07 Jul 2018 03:59:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 07 Jul 2018 03:59:43 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51688d8a76e96147aa3ebf124539c54bd3a2400a33fbfc07d8fc4be547048c1`  
		Last Modified: Fri, 06 Jul 2018 17:30:11 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989614242420ba57f1be148a50bfae73db4e8fb7f937104d001c1c7b3317e711`  
		Last Modified: Fri, 06 Jul 2018 17:30:12 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a520058c07f29f8398a05eaf3970d0d7be8c66a2c0393329bdd151706c680f4`  
		Last Modified: Fri, 06 Jul 2018 17:30:16 GMT  
		Size: 18.7 MB (18656002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66886d9d819a05fd3174820175ec47f7f0b0b60a886ef781d98c5e67bbb32e91`  
		Last Modified: Sat, 07 Jul 2018 04:02:36 GMT  
		Size: 10.8 MB (10805985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c97437fbec9032bfcb947a34c82761e9967ddd29874fedfb4aa2afeab3f9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a64b5f67082bc94d54e259a8ac5138b3e6cace743da1a3312ca4ada4bc3df6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35f81fa53bf6a04529c4daa91f859cbab401a6eb58342f9a09a32354ea5b9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8764e7c5c8b0efc0036a0d03c4b56517f9d69816b3eaba390d1b7315bfbeec6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675b60445a2a9a58a42417c0cf6523a0808fd93f287203754a5438e77875c667`  
		Last Modified: Sat, 07 Jul 2018 04:03:59 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffea025eafc662f81074cd8a571ab03ac953f16183d8605303344adf88b4a8e`  
		Last Modified: Sat, 07 Jul 2018 04:04:03 GMT  
		Size: 11.0 MB (11024459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:17730b9146f2760975d80fc4673566c9d63ba04187a78768268b1b49dd6c492c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:20a8f6fecc2153662be5f39ea7c02b4789311ec5e3c91dbd2ff5440996750e1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31580301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12f39d144fcf5fc9a48f15da390b45187df179224e556802ed80766e1d4a0b4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:28:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 06 Jul 2018 17:28:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 17:28:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 06 Jul 2018 17:28:34 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 17:28:35 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:59:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 07 Jul 2018 03:59:18 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:59:20 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:59:21 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 07 Jul 2018 03:59:21 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:59:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:59:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:59:22 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51688d8a76e96147aa3ebf124539c54bd3a2400a33fbfc07d8fc4be547048c1`  
		Last Modified: Fri, 06 Jul 2018 17:30:11 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989614242420ba57f1be148a50bfae73db4e8fb7f937104d001c1c7b3317e711`  
		Last Modified: Fri, 06 Jul 2018 17:30:12 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a520058c07f29f8398a05eaf3970d0d7be8c66a2c0393329bdd151706c680f4`  
		Last Modified: Fri, 06 Jul 2018 17:30:16 GMT  
		Size: 18.7 MB (18656002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66886d9d819a05fd3174820175ec47f7f0b0b60a886ef781d98c5e67bbb32e91`  
		Last Modified: Sat, 07 Jul 2018 04:02:36 GMT  
		Size: 10.8 MB (10805985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c97437fbec9032bfcb947a34c82761e9967ddd29874fedfb4aa2afeab3f9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a64b5f67082bc94d54e259a8ac5138b3e6cace743da1a3312ca4ada4bc3df6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35f81fa53bf6a04529c4daa91f859cbab401a6eb58342f9a09a32354ea5b9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8764e7c5c8b0efc0036a0d03c4b56517f9d69816b3eaba390d1b7315bfbeec6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:6b980b786afcec4ce0d1d57e6f74bae46867debf54f373038c86e69453154d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:d5a5f1d3915a4692203dfa131f9e16dbb2f137e01f491b3f434fd05f9c0573fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73400693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bdffcb99c02b0f88d1cfcd696e2aea54b5bdf94da4ef7229819962d8b7a066`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 00:58:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:58:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 00:58:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 00:59:16 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 00:59:17 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 27 Jun 2018 00:59:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:59:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 00:59:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 00:59:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:57:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Sat, 07 Jul 2018 03:58:10 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 03:58:10 GMT
ENV LANG=C.UTF-8
# Sat, 07 Jul 2018 03:58:10 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:58:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:58:13 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 07 Jul 2018 03:58:13 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:58:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 07 Jul 2018 03:58:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:58:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:58:15 GMT
CMD ["rabbitmq-server"]
# Sat, 07 Jul 2018 03:58:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 07 Jul 2018 03:58:56 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 07 Jul 2018 03:58:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a58d97bcb569ba860f65d14aeb5ed171470841328c944423c5cb3e34a030e9`  
		Last Modified: Wed, 27 Jun 2018 01:05:00 GMT  
		Size: 4.5 MB (4498593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339d92e505149e43ef8461a7878a3c2651fe6dcc68173ce9c34430e7e39f612c`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cb74af4ef9bc8da6a9d155cdad9176f360c9b387fbb8826f10f87627002971`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 952.1 KB (952079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d613e36722e22a6271bf49b74dfc900ce4a9da0506d861cb712fb315b33ef76`  
		Last Modified: Wed, 27 Jun 2018 01:04:55 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b318f0f6ea270d2b80397460502b47f76169ceb6dff7cd207a1aa28c7a7e75`  
		Last Modified: Wed, 27 Jun 2018 01:04:59 GMT  
		Size: 27.5 MB (27503299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a88195c480067384c475833398f13fe23e1bf263fde1298e175586f568597e`  
		Last Modified: Sat, 07 Jul 2018 04:00:16 GMT  
		Size: 10.3 MB (10315617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f30a9a6ea8aae23bf3ddae575f0e16cf6b68017a83f6185dd3d190896a81e`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587595cdbb2e2dd187356885bb58559d96ff9454b5afaf570b793043f5633e87`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654850faf7449177b61397c063977f9a48049a69879d514b2e95e2c666b262b4`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78740d47dae34536365113f5083b4641e2e9ec91bc01b8f53a1e438324c9379`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1b6640bb406d2b67fb12956a80545febfba8dd3e92ef8d76b1272574e71160`  
		Last Modified: Sat, 07 Jul 2018 04:00:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6b2ad8f540315d9005daa2aaf5724512a8385deed505f14b7befbf04d3d529`  
		Last Modified: Sat, 07 Jul 2018 04:01:22 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dc7f071fb360c9e3d7dd0f116f5b4280f29cc9427705ca7db1fcb6f42a9aeb`  
		Last Modified: Sat, 07 Jul 2018 04:01:25 GMT  
		Size: 7.6 MB (7622667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:dde7d9fbf37280553d1dd38a08d6105bac6d613d25f99ce0adc286004139c55a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:dde774f6e9428f588e578aeeec8e6ae577f724058723070ef6623f7de23da7fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42604952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea9f74873a5bfd48eaa53d36b506c43feffdc6db622c07d6a23c2bbd44a2bc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:28:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 06 Jul 2018 17:28:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 17:28:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 06 Jul 2018 17:28:34 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 17:28:35 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:59:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 07 Jul 2018 03:59:18 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:59:20 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:59:21 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 07 Jul 2018 03:59:21 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:59:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:59:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:59:22 GMT
CMD ["rabbitmq-server"]
# Sat, 07 Jul 2018 03:59:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 07 Jul 2018 03:59:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 07 Jul 2018 03:59:43 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51688d8a76e96147aa3ebf124539c54bd3a2400a33fbfc07d8fc4be547048c1`  
		Last Modified: Fri, 06 Jul 2018 17:30:11 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989614242420ba57f1be148a50bfae73db4e8fb7f937104d001c1c7b3317e711`  
		Last Modified: Fri, 06 Jul 2018 17:30:12 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a520058c07f29f8398a05eaf3970d0d7be8c66a2c0393329bdd151706c680f4`  
		Last Modified: Fri, 06 Jul 2018 17:30:16 GMT  
		Size: 18.7 MB (18656002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66886d9d819a05fd3174820175ec47f7f0b0b60a886ef781d98c5e67bbb32e91`  
		Last Modified: Sat, 07 Jul 2018 04:02:36 GMT  
		Size: 10.8 MB (10805985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c97437fbec9032bfcb947a34c82761e9967ddd29874fedfb4aa2afeab3f9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a64b5f67082bc94d54e259a8ac5138b3e6cace743da1a3312ca4ada4bc3df6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35f81fa53bf6a04529c4daa91f859cbab401a6eb58342f9a09a32354ea5b9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8764e7c5c8b0efc0036a0d03c4b56517f9d69816b3eaba390d1b7315bfbeec6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675b60445a2a9a58a42417c0cf6523a0808fd93f287203754a5438e77875c667`  
		Last Modified: Sat, 07 Jul 2018 04:03:59 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffea025eafc662f81074cd8a571ab03ac953f16183d8605303344adf88b4a8e`  
		Last Modified: Sat, 07 Jul 2018 04:04:03 GMT  
		Size: 11.0 MB (11024459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:17730b9146f2760975d80fc4673566c9d63ba04187a78768268b1b49dd6c492c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:20a8f6fecc2153662be5f39ea7c02b4789311ec5e3c91dbd2ff5440996750e1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.6 MB (31580301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12f39d144fcf5fc9a48f15da390b45187df179224e556802ed80766e1d4a0b4d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:28:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 06 Jul 2018 17:28:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 17:28:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 06 Jul 2018 17:28:34 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 17:28:35 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:59:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 07 Jul 2018 03:59:18 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:59:20 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:59:21 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 07 Jul 2018 03:59:21 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:59:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:59:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:59:22 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51688d8a76e96147aa3ebf124539c54bd3a2400a33fbfc07d8fc4be547048c1`  
		Last Modified: Fri, 06 Jul 2018 17:30:11 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989614242420ba57f1be148a50bfae73db4e8fb7f937104d001c1c7b3317e711`  
		Last Modified: Fri, 06 Jul 2018 17:30:12 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a520058c07f29f8398a05eaf3970d0d7be8c66a2c0393329bdd151706c680f4`  
		Last Modified: Fri, 06 Jul 2018 17:30:16 GMT  
		Size: 18.7 MB (18656002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66886d9d819a05fd3174820175ec47f7f0b0b60a886ef781d98c5e67bbb32e91`  
		Last Modified: Sat, 07 Jul 2018 04:02:36 GMT  
		Size: 10.8 MB (10805985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c97437fbec9032bfcb947a34c82761e9967ddd29874fedfb4aa2afeab3f9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a64b5f67082bc94d54e259a8ac5138b3e6cace743da1a3312ca4ada4bc3df6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35f81fa53bf6a04529c4daa91f859cbab401a6eb58342f9a09a32354ea5b9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8764e7c5c8b0efc0036a0d03c4b56517f9d69816b3eaba390d1b7315bfbeec6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:899b10984c94140d3a66f1baaf58286232e0c17143d48ed955a25fc20321ee7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

```console
$ docker pull rabbitmq@sha256:33f689d670ca4601fd29dc64da7f7338c85e5bfafa3fdcefcac3fd36b954d2ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65777835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805eecabc1355c2f78c93a07ee1ec3f8968819a70adfad8d5c1a01d70f8e8e9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 00:58:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:58:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 00:58:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 00:59:16 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 00:59:17 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 27 Jun 2018 00:59:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:59:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 00:59:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 00:59:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:57:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Sat, 07 Jul 2018 03:58:10 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 03:58:10 GMT
ENV LANG=C.UTF-8
# Sat, 07 Jul 2018 03:58:10 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:58:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:58:13 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 07 Jul 2018 03:58:13 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:58:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 07 Jul 2018 03:58:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:58:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:58:15 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a58d97bcb569ba860f65d14aeb5ed171470841328c944423c5cb3e34a030e9`  
		Last Modified: Wed, 27 Jun 2018 01:05:00 GMT  
		Size: 4.5 MB (4498593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339d92e505149e43ef8461a7878a3c2651fe6dcc68173ce9c34430e7e39f612c`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cb74af4ef9bc8da6a9d155cdad9176f360c9b387fbb8826f10f87627002971`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 952.1 KB (952079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d613e36722e22a6271bf49b74dfc900ce4a9da0506d861cb712fb315b33ef76`  
		Last Modified: Wed, 27 Jun 2018 01:04:55 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b318f0f6ea270d2b80397460502b47f76169ceb6dff7cd207a1aa28c7a7e75`  
		Last Modified: Wed, 27 Jun 2018 01:04:59 GMT  
		Size: 27.5 MB (27503299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a88195c480067384c475833398f13fe23e1bf263fde1298e175586f568597e`  
		Last Modified: Sat, 07 Jul 2018 04:00:16 GMT  
		Size: 10.3 MB (10315617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f30a9a6ea8aae23bf3ddae575f0e16cf6b68017a83f6185dd3d190896a81e`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587595cdbb2e2dd187356885bb58559d96ff9454b5afaf570b793043f5633e87`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654850faf7449177b61397c063977f9a48049a69879d514b2e95e2c666b262b4`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78740d47dae34536365113f5083b4641e2e9ec91bc01b8f53a1e438324c9379`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1b6640bb406d2b67fb12956a80545febfba8dd3e92ef8d76b1272574e71160`  
		Last Modified: Sat, 07 Jul 2018 04:00:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:6b980b786afcec4ce0d1d57e6f74bae46867debf54f373038c86e69453154d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:d5a5f1d3915a4692203dfa131f9e16dbb2f137e01f491b3f434fd05f9c0573fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73400693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68bdffcb99c02b0f88d1cfcd696e2aea54b5bdf94da4ef7229819962d8b7a066`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 00:58:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:58:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 00:58:56 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 00:59:16 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 00:59:17 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 27 Jun 2018 00:59:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 00:59:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 00:59:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 00:59:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:57:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:57:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Sat, 07 Jul 2018 03:58:10 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 03:58:10 GMT
ENV LANG=C.UTF-8
# Sat, 07 Jul 2018 03:58:10 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 07 Jul 2018 03:58:11 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:58:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:58:13 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 07 Jul 2018 03:58:13 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:58:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 07 Jul 2018 03:58:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:58:15 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:58:15 GMT
CMD ["rabbitmq-server"]
# Sat, 07 Jul 2018 03:58:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 07 Jul 2018 03:58:56 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 07 Jul 2018 03:58:57 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30a58d97bcb569ba860f65d14aeb5ed171470841328c944423c5cb3e34a030e9`  
		Last Modified: Wed, 27 Jun 2018 01:05:00 GMT  
		Size: 4.5 MB (4498593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:339d92e505149e43ef8461a7878a3c2651fe6dcc68173ce9c34430e7e39f612c`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cb74af4ef9bc8da6a9d155cdad9176f360c9b387fbb8826f10f87627002971`  
		Last Modified: Wed, 27 Jun 2018 01:04:56 GMT  
		Size: 952.1 KB (952079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d613e36722e22a6271bf49b74dfc900ce4a9da0506d861cb712fb315b33ef76`  
		Last Modified: Wed, 27 Jun 2018 01:04:55 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b318f0f6ea270d2b80397460502b47f76169ceb6dff7cd207a1aa28c7a7e75`  
		Last Modified: Wed, 27 Jun 2018 01:04:59 GMT  
		Size: 27.5 MB (27503299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a88195c480067384c475833398f13fe23e1bf263fde1298e175586f568597e`  
		Last Modified: Sat, 07 Jul 2018 04:00:16 GMT  
		Size: 10.3 MB (10315617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069f30a9a6ea8aae23bf3ddae575f0e16cf6b68017a83f6185dd3d190896a81e`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:587595cdbb2e2dd187356885bb58559d96ff9454b5afaf570b793043f5633e87`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:654850faf7449177b61397c063977f9a48049a69879d514b2e95e2c666b262b4`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78740d47dae34536365113f5083b4641e2e9ec91bc01b8f53a1e438324c9379`  
		Last Modified: Sat, 07 Jul 2018 04:00:12 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1b6640bb406d2b67fb12956a80545febfba8dd3e92ef8d76b1272574e71160`  
		Last Modified: Sat, 07 Jul 2018 04:00:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6b2ad8f540315d9005daa2aaf5724512a8385deed505f14b7befbf04d3d529`  
		Last Modified: Sat, 07 Jul 2018 04:01:22 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1dc7f071fb360c9e3d7dd0f116f5b4280f29cc9427705ca7db1fcb6f42a9aeb`  
		Last Modified: Sat, 07 Jul 2018 04:01:25 GMT  
		Size: 7.6 MB (7622667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:dde7d9fbf37280553d1dd38a08d6105bac6d613d25f99ce0adc286004139c55a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:dde774f6e9428f588e578aeeec8e6ae577f724058723070ef6623f7de23da7fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42604952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea9f74873a5bfd48eaa53d36b506c43feffdc6db622c07d6a23c2bbd44a2bc4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 17:28:27 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Fri, 06 Jul 2018 17:28:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 06 Jul 2018 17:28:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 06 Jul 2018 17:28:34 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Fri, 06 Jul 2018 17:28:34 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 17:28:35 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 03:59:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 03:59:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 07 Jul 2018 03:59:18 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 07 Jul 2018 03:59:19 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 03:59:20 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 03:59:21 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 07 Jul 2018 03:59:21 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 07 Jul 2018 03:59:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 03:59:22 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 03:59:22 GMT
CMD ["rabbitmq-server"]
# Sat, 07 Jul 2018 03:59:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 07 Jul 2018 03:59:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 07 Jul 2018 03:59:43 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c51688d8a76e96147aa3ebf124539c54bd3a2400a33fbfc07d8fc4be547048c1`  
		Last Modified: Fri, 06 Jul 2018 17:30:11 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989614242420ba57f1be148a50bfae73db4e8fb7f937104d001c1c7b3317e711`  
		Last Modified: Fri, 06 Jul 2018 17:30:12 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a520058c07f29f8398a05eaf3970d0d7be8c66a2c0393329bdd151706c680f4`  
		Last Modified: Fri, 06 Jul 2018 17:30:16 GMT  
		Size: 18.7 MB (18656002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66886d9d819a05fd3174820175ec47f7f0b0b60a886ef781d98c5e67bbb32e91`  
		Last Modified: Sat, 07 Jul 2018 04:02:36 GMT  
		Size: 10.8 MB (10805985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408c97437fbec9032bfcb947a34c82761e9967ddd29874fedfb4aa2afeab3f9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 203.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a64b5f67082bc94d54e259a8ac5138b3e6cace743da1a3312ca4ada4bc3df6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f35f81fa53bf6a04529c4daa91f859cbab401a6eb58342f9a09a32354ea5b9d`  
		Last Modified: Sat, 07 Jul 2018 04:02:34 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8764e7c5c8b0efc0036a0d03c4b56517f9d69816b3eaba390d1b7315bfbeec6`  
		Last Modified: Sat, 07 Jul 2018 04:02:33 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:675b60445a2a9a58a42417c0cf6523a0808fd93f287203754a5438e77875c667`  
		Last Modified: Sat, 07 Jul 2018 04:03:59 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ffea025eafc662f81074cd8a571ab03ac953f16183d8605303344adf88b4a8e`  
		Last Modified: Sat, 07 Jul 2018 04:04:03 GMT  
		Size: 11.0 MB (11024459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
