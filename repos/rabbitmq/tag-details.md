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
-	[`rabbitmq:3.7.6`](#rabbitmq376)
-	[`rabbitmq:3.7.6-alpine`](#rabbitmq376-alpine)
-	[`rabbitmq:3.7.6-management`](#rabbitmq376-management)
-	[`rabbitmq:3.7.6-management-alpine`](#rabbitmq376-management-alpine)
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
$ docker pull rabbitmq@sha256:21d82aa04389c88497f0a8eee17bff55b3991ff7c8850ba39314f1e25756b7c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3` - linux; amd64

```console
$ docker pull rabbitmq@sha256:8500b77c25f3b3d6b0c984c2ceba4712f345156ee89111844247986b69ba333d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65756492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3046c8947f1ff2bd7904ed8c40e44f5e9b0488e1c2495830c629f28db7a8fb6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 02 May 2018 03:31:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 03:31:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 02 May 2018 03:31:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 03:32:05 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 10 May 2018 20:36:24 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 10 May 2018 20:36:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 10 May 2018 20:36:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.6-1
# Mon, 18 Jun 2018 23:36:30 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:36:31 GMT
ENV LANG=C.UTF-8
# Mon, 18 Jun 2018 23:36:31 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:36:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:36:32 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:36:33 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:36:34 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 18 Jun 2018 23:36:34 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:36:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Jun 2018 23:36:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:36:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:36:36 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f062288ad9683931b2072ad973d4d90628546386dd617136c35e265558937548`  
		Last Modified: Wed, 02 May 2018 04:15:08 GMT  
		Size: 4.5 MB (4498413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9469379b849442214787f8e717507fd1d070efce5d4556b73a1638af928866`  
		Last Modified: Wed, 02 May 2018 04:15:06 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66af38c7566bba9f70940cc16e564a845480f8623bfb2bec6beeb92f749859`  
		Last Modified: Wed, 02 May 2018 04:15:05 GMT  
		Size: 952.0 KB (951993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d942356ed811a9d3a787654880f53985387b5d238d65601c40a4abc314254a19`  
		Last Modified: Thu, 10 May 2018 20:39:16 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd730b88925cc33442ebe21937ab74da4f1d5c54a1facbb9421e476791eab766`  
		Last Modified: Thu, 10 May 2018 20:39:18 GMT  
		Size: 27.5 MB (27501913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8883e559865310bda83cd04cdc90bdde710e279636ef176cd653319394f3c2`  
		Last Modified: Mon, 18 Jun 2018 23:39:22 GMT  
		Size: 10.3 MB (10296874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cf4a8a697ac2c9cc2812d427deeee1184eb45452d7d6d18f3df8cb20c29b73`  
		Last Modified: Mon, 18 Jun 2018 23:39:20 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949c1fb141de1b2affca1703f121785c7d29c66acdb9c7a39c11519e4dd3121c`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a31af4fdaf61e147c1d2807866e5b1f3b39f25b6306a75e2525f20cf23232ab`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756c3f877e561d85c1da2af27a3a31d0cba32cb1717f10d3b1b7dc3a21c2903a`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aba44abd46f72a6039c57570951012f2be157fc0ae0d2ec268816d37afdb0b5`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:c6829f88782e1f37f9b4a5d374864c14136da7ec5fef95f38c651e40cb805290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6` - linux; amd64

```console
$ docker pull rabbitmq@sha256:0c7edd3d8057f141821a96eb75067be603bc1bac923e5ee2271f3f7c8483abae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62969667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa16bbc401b94613630f7f6f255f9e5cee4d7ccdc319268e49ac1fd93e0544d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 02 May 2018 03:31:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 03:31:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 02 May 2018 03:31:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 03:32:05 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 04:13:31 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 04:13:31 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 02 May 2018 04:13:31 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 May 2018 04:13:32 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 18 Jun 2018 23:37:45 GMT
ENV RABBITMQ_VERSION=3.6.16
# Mon, 18 Jun 2018 23:37:45 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Mon, 18 Jun 2018 23:37:45 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Mon, 18 Jun 2018 23:38:01 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:38:01 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:38:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:38:02 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:38:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:38:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 18 Jun 2018 23:38:04 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:38:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Jun 2018 23:38:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:38:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:38:06 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f062288ad9683931b2072ad973d4d90628546386dd617136c35e265558937548`  
		Last Modified: Wed, 02 May 2018 04:15:08 GMT  
		Size: 4.5 MB (4498413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9469379b849442214787f8e717507fd1d070efce5d4556b73a1638af928866`  
		Last Modified: Wed, 02 May 2018 04:15:06 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66af38c7566bba9f70940cc16e564a845480f8623bfb2bec6beeb92f749859`  
		Last Modified: Wed, 02 May 2018 04:15:05 GMT  
		Size: 952.0 KB (951993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2349eb3352c447cde0c55e70e5a8a5a445a7a24a47c7d2e47519dae28f9a4a52`  
		Last Modified: Wed, 02 May 2018 04:41:10 GMT  
		Size: 27.7 MB (27704674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8f4eebe0c6d2bd1ed20992edce6ec125100ada2797a31db2e777efdab1a56`  
		Last Modified: Mon, 18 Jun 2018 23:42:39 GMT  
		Size: 7.3 MB (7307791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2708d575285b9919c8daf1089738a541cfe1cb8b2bb134ec961c3514b8236c65`  
		Last Modified: Mon, 18 Jun 2018 23:42:36 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f6ae8b63948aea40e36cde29383631d2fcbfe1aafa24b7de82900874363f09`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abc09e730ae0aae68ae568caaa38fec78e9a9122d119f2423605cd9876df7a4`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b31d27a91324e3ef4c0a10eb04f37a59dde9e3bb2e1ac497c31c13e24c9f14`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a401616cff4e7a353f6b3c28df44a706ab18b9b19a2dd7bd71d40860c2c453b0`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16`

```console
$ docker pull rabbitmq@sha256:c6829f88782e1f37f9b4a5d374864c14136da7ec5fef95f38c651e40cb805290
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.16` - linux; amd64

```console
$ docker pull rabbitmq@sha256:0c7edd3d8057f141821a96eb75067be603bc1bac923e5ee2271f3f7c8483abae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62969667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa16bbc401b94613630f7f6f255f9e5cee4d7ccdc319268e49ac1fd93e0544d6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 02 May 2018 03:31:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 03:31:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 02 May 2018 03:31:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 03:32:05 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 04:13:31 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 04:13:31 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 02 May 2018 04:13:31 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 May 2018 04:13:32 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 18 Jun 2018 23:37:45 GMT
ENV RABBITMQ_VERSION=3.6.16
# Mon, 18 Jun 2018 23:37:45 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Mon, 18 Jun 2018 23:37:45 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Mon, 18 Jun 2018 23:38:01 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:38:01 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:38:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:38:02 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:38:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:38:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 18 Jun 2018 23:38:04 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:38:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Jun 2018 23:38:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:38:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:38:06 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f062288ad9683931b2072ad973d4d90628546386dd617136c35e265558937548`  
		Last Modified: Wed, 02 May 2018 04:15:08 GMT  
		Size: 4.5 MB (4498413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9469379b849442214787f8e717507fd1d070efce5d4556b73a1638af928866`  
		Last Modified: Wed, 02 May 2018 04:15:06 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66af38c7566bba9f70940cc16e564a845480f8623bfb2bec6beeb92f749859`  
		Last Modified: Wed, 02 May 2018 04:15:05 GMT  
		Size: 952.0 KB (951993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2349eb3352c447cde0c55e70e5a8a5a445a7a24a47c7d2e47519dae28f9a4a52`  
		Last Modified: Wed, 02 May 2018 04:41:10 GMT  
		Size: 27.7 MB (27704674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8f4eebe0c6d2bd1ed20992edce6ec125100ada2797a31db2e777efdab1a56`  
		Last Modified: Mon, 18 Jun 2018 23:42:39 GMT  
		Size: 7.3 MB (7307791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2708d575285b9919c8daf1089738a541cfe1cb8b2bb134ec961c3514b8236c65`  
		Last Modified: Mon, 18 Jun 2018 23:42:36 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f6ae8b63948aea40e36cde29383631d2fcbfe1aafa24b7de82900874363f09`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abc09e730ae0aae68ae568caaa38fec78e9a9122d119f2423605cd9876df7a4`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b31d27a91324e3ef4c0a10eb04f37a59dde9e3bb2e1ac497c31c13e24c9f14`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a401616cff4e7a353f6b3c28df44a706ab18b9b19a2dd7bd71d40860c2c453b0`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16-alpine`

```console
$ docker pull rabbitmq@sha256:8274e93fa1a0d449987ab44274cea73cd136be8f7fa6d89278df16eba8e2b253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.16-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:37704aeedacfc74ed70633f5a0a504b63c5d8ca239cfb0ac08263213069eafcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23694162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3bc595a8588b4dbaf85b7e91730fa84784e25246c9da83b7c75accd299c18b`
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
# Mon, 18 Jun 2018 23:38:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Mon, 18 Jun 2018 23:38:34 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Mon, 18 Jun 2018 23:38:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 18 Jun 2018 23:38:41 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:38:42 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:38:42 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:38:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:38:44 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 18 Jun 2018 23:38:44 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:38:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:38:44 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:38:45 GMT
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
	-	`sha256:a47629513a8f3c2a2383b27d28ef365716662a000729c9a16fddbd0815ce5951`  
		Last Modified: Mon, 18 Jun 2018 23:43:30 GMT  
		Size: 5.1 MB (5126666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216ce157bcdd5d65edd13f70da6283f01653345430b056e2cec714570487c303`  
		Last Modified: Mon, 18 Jun 2018 23:43:28 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaabfbfd7a2d16971cd86f39116a6b487f83a98ff2c3d5f7f017196bd2bde68d`  
		Last Modified: Mon, 18 Jun 2018 23:43:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7f0c31ee60ec48b3c504ce14f3d648bbcf0e0d563e0bcba21b875610ab173f`  
		Last Modified: Mon, 18 Jun 2018 23:43:28 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9caa74204e8ab142a770ffcac675d636ca05989d01414d51077457fa740a2526`  
		Last Modified: Mon, 18 Jun 2018 23:43:29 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16-management`

```console
$ docker pull rabbitmq@sha256:bcd20cbd85e2c0cb9a17e60bc333a8debf3f004f867360a57d2952a4a9c79e2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.16-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4d8be27e0ba0c34b84bbe679fe14ac3cad1e020d53fc054c9154d30108a39211
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70604085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7cf2ed1b6a6e9a3e8043c9b48794395a2e81ee07ec84b2b97b2b412eff477ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 02 May 2018 03:31:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 03:31:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 02 May 2018 03:31:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 03:32:05 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 04:13:31 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 04:13:31 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 02 May 2018 04:13:31 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 May 2018 04:13:32 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 18 Jun 2018 23:37:45 GMT
ENV RABBITMQ_VERSION=3.6.16
# Mon, 18 Jun 2018 23:37:45 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Mon, 18 Jun 2018 23:37:45 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Mon, 18 Jun 2018 23:38:01 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:38:01 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:38:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:38:02 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:38:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:38:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 18 Jun 2018 23:38:04 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:38:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Jun 2018 23:38:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:38:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:38:06 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Jun 2018 23:38:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Jun 2018 23:38:25 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Mon, 18 Jun 2018 23:38:25 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f062288ad9683931b2072ad973d4d90628546386dd617136c35e265558937548`  
		Last Modified: Wed, 02 May 2018 04:15:08 GMT  
		Size: 4.5 MB (4498413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9469379b849442214787f8e717507fd1d070efce5d4556b73a1638af928866`  
		Last Modified: Wed, 02 May 2018 04:15:06 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66af38c7566bba9f70940cc16e564a845480f8623bfb2bec6beeb92f749859`  
		Last Modified: Wed, 02 May 2018 04:15:05 GMT  
		Size: 952.0 KB (951993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2349eb3352c447cde0c55e70e5a8a5a445a7a24a47c7d2e47519dae28f9a4a52`  
		Last Modified: Wed, 02 May 2018 04:41:10 GMT  
		Size: 27.7 MB (27704674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8f4eebe0c6d2bd1ed20992edce6ec125100ada2797a31db2e777efdab1a56`  
		Last Modified: Mon, 18 Jun 2018 23:42:39 GMT  
		Size: 7.3 MB (7307791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2708d575285b9919c8daf1089738a541cfe1cb8b2bb134ec961c3514b8236c65`  
		Last Modified: Mon, 18 Jun 2018 23:42:36 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f6ae8b63948aea40e36cde29383631d2fcbfe1aafa24b7de82900874363f09`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abc09e730ae0aae68ae568caaa38fec78e9a9122d119f2423605cd9876df7a4`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b31d27a91324e3ef4c0a10eb04f37a59dde9e3bb2e1ac497c31c13e24c9f14`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a401616cff4e7a353f6b3c28df44a706ab18b9b19a2dd7bd71d40860c2c453b0`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579fb9a28384662de0f660e8a49d5c02564d97b3cca40b320614645213505aa3`  
		Last Modified: Mon, 18 Jun 2018 23:43:02 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59fdd00ec010057355d02d3f5a7ebf387f87bbc511a0510e7610ca95960db9b6`  
		Last Modified: Mon, 18 Jun 2018 23:43:04 GMT  
		Size: 7.6 MB (7634225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16-management-alpine`

```console
$ docker pull rabbitmq@sha256:93cb70f7bf1882014fd90305144f8c813f38f06ca66eb3f6892247bf3996abbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6.16-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:04009d53fbf721187604bdc4c2fb461c2f31d7440d737818a832c28b5de2afd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34702186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d001a19523c27bb2bb69c1e691f2d34ed7986f2ec9348318e41b175b33116217`
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
# Mon, 18 Jun 2018 23:38:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Mon, 18 Jun 2018 23:38:34 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Mon, 18 Jun 2018 23:38:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 18 Jun 2018 23:38:41 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:38:42 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:38:42 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:38:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:38:44 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 18 Jun 2018 23:38:44 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:38:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:38:44 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:38:45 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Jun 2018 23:38:57 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Jun 2018 23:39:01 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 18 Jun 2018 23:39:02 GMT
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
	-	`sha256:a47629513a8f3c2a2383b27d28ef365716662a000729c9a16fddbd0815ce5951`  
		Last Modified: Mon, 18 Jun 2018 23:43:30 GMT  
		Size: 5.1 MB (5126666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216ce157bcdd5d65edd13f70da6283f01653345430b056e2cec714570487c303`  
		Last Modified: Mon, 18 Jun 2018 23:43:28 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaabfbfd7a2d16971cd86f39116a6b487f83a98ff2c3d5f7f017196bd2bde68d`  
		Last Modified: Mon, 18 Jun 2018 23:43:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7f0c31ee60ec48b3c504ce14f3d648bbcf0e0d563e0bcba21b875610ab173f`  
		Last Modified: Mon, 18 Jun 2018 23:43:28 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9caa74204e8ab142a770ffcac675d636ca05989d01414d51077457fa740a2526`  
		Last Modified: Mon, 18 Jun 2018 23:43:29 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424468e9ec53d3c601d55d0532ec641821193b0335b2b56d395b4535ab5589b0`  
		Last Modified: Mon, 18 Jun 2018 23:43:53 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0d89220f739fcdb4ae2b78940f029015c3388b95b5f75814aadcccf426a9a5`  
		Last Modified: Mon, 18 Jun 2018 23:43:56 GMT  
		Size: 11.0 MB (11007832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:8274e93fa1a0d449987ab44274cea73cd136be8f7fa6d89278df16eba8e2b253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:37704aeedacfc74ed70633f5a0a504b63c5d8ca239cfb0ac08263213069eafcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23694162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3bc595a8588b4dbaf85b7e91730fa84784e25246c9da83b7c75accd299c18b`
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
# Mon, 18 Jun 2018 23:38:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Mon, 18 Jun 2018 23:38:34 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Mon, 18 Jun 2018 23:38:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 18 Jun 2018 23:38:41 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:38:42 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:38:42 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:38:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:38:44 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 18 Jun 2018 23:38:44 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:38:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:38:44 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:38:45 GMT
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
	-	`sha256:a47629513a8f3c2a2383b27d28ef365716662a000729c9a16fddbd0815ce5951`  
		Last Modified: Mon, 18 Jun 2018 23:43:30 GMT  
		Size: 5.1 MB (5126666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216ce157bcdd5d65edd13f70da6283f01653345430b056e2cec714570487c303`  
		Last Modified: Mon, 18 Jun 2018 23:43:28 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaabfbfd7a2d16971cd86f39116a6b487f83a98ff2c3d5f7f017196bd2bde68d`  
		Last Modified: Mon, 18 Jun 2018 23:43:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7f0c31ee60ec48b3c504ce14f3d648bbcf0e0d563e0bcba21b875610ab173f`  
		Last Modified: Mon, 18 Jun 2018 23:43:28 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9caa74204e8ab142a770ffcac675d636ca05989d01414d51077457fa740a2526`  
		Last Modified: Mon, 18 Jun 2018 23:43:29 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:bcd20cbd85e2c0cb9a17e60bc333a8debf3f004f867360a57d2952a4a9c79e2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4d8be27e0ba0c34b84bbe679fe14ac3cad1e020d53fc054c9154d30108a39211
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70604085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7cf2ed1b6a6e9a3e8043c9b48794395a2e81ee07ec84b2b97b2b412eff477ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 02 May 2018 03:31:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 03:31:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 02 May 2018 03:31:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 03:32:05 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 02 May 2018 04:13:31 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 04:13:31 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 02 May 2018 04:13:31 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 May 2018 04:13:32 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 18 Jun 2018 23:37:45 GMT
ENV RABBITMQ_VERSION=3.6.16
# Mon, 18 Jun 2018 23:37:45 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Mon, 18 Jun 2018 23:37:45 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Mon, 18 Jun 2018 23:38:01 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:38:01 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:38:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:38:02 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:38:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:38:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 18 Jun 2018 23:38:04 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:38:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Jun 2018 23:38:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:38:06 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:38:06 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Jun 2018 23:38:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Jun 2018 23:38:25 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Mon, 18 Jun 2018 23:38:25 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f062288ad9683931b2072ad973d4d90628546386dd617136c35e265558937548`  
		Last Modified: Wed, 02 May 2018 04:15:08 GMT  
		Size: 4.5 MB (4498413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9469379b849442214787f8e717507fd1d070efce5d4556b73a1638af928866`  
		Last Modified: Wed, 02 May 2018 04:15:06 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66af38c7566bba9f70940cc16e564a845480f8623bfb2bec6beeb92f749859`  
		Last Modified: Wed, 02 May 2018 04:15:05 GMT  
		Size: 952.0 KB (951993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2349eb3352c447cde0c55e70e5a8a5a445a7a24a47c7d2e47519dae28f9a4a52`  
		Last Modified: Wed, 02 May 2018 04:41:10 GMT  
		Size: 27.7 MB (27704674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8f4eebe0c6d2bd1ed20992edce6ec125100ada2797a31db2e777efdab1a56`  
		Last Modified: Mon, 18 Jun 2018 23:42:39 GMT  
		Size: 7.3 MB (7307791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2708d575285b9919c8daf1089738a541cfe1cb8b2bb134ec961c3514b8236c65`  
		Last Modified: Mon, 18 Jun 2018 23:42:36 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f6ae8b63948aea40e36cde29383631d2fcbfe1aafa24b7de82900874363f09`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abc09e730ae0aae68ae568caaa38fec78e9a9122d119f2423605cd9876df7a4`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43b31d27a91324e3ef4c0a10eb04f37a59dde9e3bb2e1ac497c31c13e24c9f14`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a401616cff4e7a353f6b3c28df44a706ab18b9b19a2dd7bd71d40860c2c453b0`  
		Last Modified: Mon, 18 Jun 2018 23:42:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579fb9a28384662de0f660e8a49d5c02564d97b3cca40b320614645213505aa3`  
		Last Modified: Mon, 18 Jun 2018 23:43:02 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59fdd00ec010057355d02d3f5a7ebf387f87bbc511a0510e7610ca95960db9b6`  
		Last Modified: Mon, 18 Jun 2018 23:43:04 GMT  
		Size: 7.6 MB (7634225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:93cb70f7bf1882014fd90305144f8c813f38f06ca66eb3f6892247bf3996abbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.6-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:04009d53fbf721187604bdc4c2fb461c2f31d7440d737818a832c28b5de2afd0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.7 MB (34702186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d001a19523c27bb2bb69c1e691f2d34ed7986f2ec9348318e41b175b33116217`
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
# Mon, 18 Jun 2018 23:38:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Mon, 18 Jun 2018 23:38:34 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Mon, 18 Jun 2018 23:38:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 18 Jun 2018 23:38:41 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:38:42 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:38:42 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:38:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:38:44 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 18 Jun 2018 23:38:44 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:38:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:38:44 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:38:45 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Jun 2018 23:38:57 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Jun 2018 23:39:01 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 18 Jun 2018 23:39:02 GMT
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
	-	`sha256:a47629513a8f3c2a2383b27d28ef365716662a000729c9a16fddbd0815ce5951`  
		Last Modified: Mon, 18 Jun 2018 23:43:30 GMT  
		Size: 5.1 MB (5126666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216ce157bcdd5d65edd13f70da6283f01653345430b056e2cec714570487c303`  
		Last Modified: Mon, 18 Jun 2018 23:43:28 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaabfbfd7a2d16971cd86f39116a6b487f83a98ff2c3d5f7f017196bd2bde68d`  
		Last Modified: Mon, 18 Jun 2018 23:43:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7f0c31ee60ec48b3c504ce14f3d648bbcf0e0d563e0bcba21b875610ab173f`  
		Last Modified: Mon, 18 Jun 2018 23:43:28 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9caa74204e8ab142a770ffcac675d636ca05989d01414d51077457fa740a2526`  
		Last Modified: Mon, 18 Jun 2018 23:43:29 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424468e9ec53d3c601d55d0532ec641821193b0335b2b56d395b4535ab5589b0`  
		Last Modified: Mon, 18 Jun 2018 23:43:53 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be0d89220f739fcdb4ae2b78940f029015c3388b95b5f75814aadcccf426a9a5`  
		Last Modified: Mon, 18 Jun 2018 23:43:56 GMT  
		Size: 11.0 MB (11007832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7`

```console
$ docker pull rabbitmq@sha256:21d82aa04389c88497f0a8eee17bff55b3991ff7c8850ba39314f1e25756b7c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7` - linux; amd64

```console
$ docker pull rabbitmq@sha256:8500b77c25f3b3d6b0c984c2ceba4712f345156ee89111844247986b69ba333d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65756492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3046c8947f1ff2bd7904ed8c40e44f5e9b0488e1c2495830c629f28db7a8fb6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 02 May 2018 03:31:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 03:31:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 02 May 2018 03:31:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 03:32:05 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 10 May 2018 20:36:24 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 10 May 2018 20:36:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 10 May 2018 20:36:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.6-1
# Mon, 18 Jun 2018 23:36:30 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:36:31 GMT
ENV LANG=C.UTF-8
# Mon, 18 Jun 2018 23:36:31 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:36:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:36:32 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:36:33 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:36:34 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 18 Jun 2018 23:36:34 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:36:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Jun 2018 23:36:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:36:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:36:36 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f062288ad9683931b2072ad973d4d90628546386dd617136c35e265558937548`  
		Last Modified: Wed, 02 May 2018 04:15:08 GMT  
		Size: 4.5 MB (4498413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9469379b849442214787f8e717507fd1d070efce5d4556b73a1638af928866`  
		Last Modified: Wed, 02 May 2018 04:15:06 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66af38c7566bba9f70940cc16e564a845480f8623bfb2bec6beeb92f749859`  
		Last Modified: Wed, 02 May 2018 04:15:05 GMT  
		Size: 952.0 KB (951993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d942356ed811a9d3a787654880f53985387b5d238d65601c40a4abc314254a19`  
		Last Modified: Thu, 10 May 2018 20:39:16 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd730b88925cc33442ebe21937ab74da4f1d5c54a1facbb9421e476791eab766`  
		Last Modified: Thu, 10 May 2018 20:39:18 GMT  
		Size: 27.5 MB (27501913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8883e559865310bda83cd04cdc90bdde710e279636ef176cd653319394f3c2`  
		Last Modified: Mon, 18 Jun 2018 23:39:22 GMT  
		Size: 10.3 MB (10296874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cf4a8a697ac2c9cc2812d427deeee1184eb45452d7d6d18f3df8cb20c29b73`  
		Last Modified: Mon, 18 Jun 2018 23:39:20 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949c1fb141de1b2affca1703f121785c7d29c66acdb9c7a39c11519e4dd3121c`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a31af4fdaf61e147c1d2807866e5b1f3b39f25b6306a75e2525f20cf23232ab`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756c3f877e561d85c1da2af27a3a31d0cba32cb1717f10d3b1b7dc3a21c2903a`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aba44abd46f72a6039c57570951012f2be157fc0ae0d2ec268816d37afdb0b5`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.6`

```console
$ docker pull rabbitmq@sha256:21d82aa04389c88497f0a8eee17bff55b3991ff7c8850ba39314f1e25756b7c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7.6` - linux; amd64

```console
$ docker pull rabbitmq@sha256:8500b77c25f3b3d6b0c984c2ceba4712f345156ee89111844247986b69ba333d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65756492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3046c8947f1ff2bd7904ed8c40e44f5e9b0488e1c2495830c629f28db7a8fb6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 02 May 2018 03:31:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 03:31:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 02 May 2018 03:31:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 03:32:05 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 10 May 2018 20:36:24 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 10 May 2018 20:36:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 10 May 2018 20:36:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.6-1
# Mon, 18 Jun 2018 23:36:30 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:36:31 GMT
ENV LANG=C.UTF-8
# Mon, 18 Jun 2018 23:36:31 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:36:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:36:32 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:36:33 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:36:34 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 18 Jun 2018 23:36:34 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:36:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Jun 2018 23:36:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:36:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:36:36 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f062288ad9683931b2072ad973d4d90628546386dd617136c35e265558937548`  
		Last Modified: Wed, 02 May 2018 04:15:08 GMT  
		Size: 4.5 MB (4498413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9469379b849442214787f8e717507fd1d070efce5d4556b73a1638af928866`  
		Last Modified: Wed, 02 May 2018 04:15:06 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66af38c7566bba9f70940cc16e564a845480f8623bfb2bec6beeb92f749859`  
		Last Modified: Wed, 02 May 2018 04:15:05 GMT  
		Size: 952.0 KB (951993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d942356ed811a9d3a787654880f53985387b5d238d65601c40a4abc314254a19`  
		Last Modified: Thu, 10 May 2018 20:39:16 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd730b88925cc33442ebe21937ab74da4f1d5c54a1facbb9421e476791eab766`  
		Last Modified: Thu, 10 May 2018 20:39:18 GMT  
		Size: 27.5 MB (27501913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8883e559865310bda83cd04cdc90bdde710e279636ef176cd653319394f3c2`  
		Last Modified: Mon, 18 Jun 2018 23:39:22 GMT  
		Size: 10.3 MB (10296874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cf4a8a697ac2c9cc2812d427deeee1184eb45452d7d6d18f3df8cb20c29b73`  
		Last Modified: Mon, 18 Jun 2018 23:39:20 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949c1fb141de1b2affca1703f121785c7d29c66acdb9c7a39c11519e4dd3121c`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a31af4fdaf61e147c1d2807866e5b1f3b39f25b6306a75e2525f20cf23232ab`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756c3f877e561d85c1da2af27a3a31d0cba32cb1717f10d3b1b7dc3a21c2903a`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aba44abd46f72a6039c57570951012f2be157fc0ae0d2ec268816d37afdb0b5`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.6-alpine`

```console
$ docker pull rabbitmq@sha256:6378e041e1863074e26fabc94f8879a9e3b5c8162b8180d4fb1292a9a3dbd300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7.6-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:7b6d674963f8f96947184f8c8186efe42d0e2c41f35ac92441eb7987618d3852
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30299680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d93390a4f86820aa6d3d039f09de826a6186c5467621c8df21a2657de35c3e5`
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
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:37:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 18 Jun 2018 23:37:17 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 18 Jun 2018 23:37:20 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:37:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:37:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:37:20 GMT
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
	-	`sha256:17f39c065015dd2d067a71eed0c1ef0aa40e39624d3f24f51bb6fbd07e4fb46b`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 9.6 MB (9567280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf0ba373123476e83c9cc15fcf61fea3f34aa046be33b96d502d2a57d1e896`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e760ba2932400f6bc55e17c872b8923ed87abfa53afa8c0d516fe45ace71bd4`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0156c97b3e9eb3b600953c47178bf077cf9e1329de66b6a72538557621844a`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8a6b32497c8ad3eec3a781f265dd9a83d9a65f818ebb181a330280a107577`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.6-management`

```console
$ docker pull rabbitmq@sha256:8c2fbd827bb3a034ed14d3e8d39d436ab8d65926760578ccbfa4d49b4c87bba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7.6-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:e663fad8d800c72f89d0f60d3ad773d2ee21b42001c8682f56e99b81f479ca5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73379119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c63d465125221d9237448a8027c7c3744d693e72e1b3ce68f3d32ea2037761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 02 May 2018 03:31:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 03:31:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 02 May 2018 03:31:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 03:32:05 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 10 May 2018 20:36:24 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 10 May 2018 20:36:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 10 May 2018 20:36:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.6-1
# Mon, 18 Jun 2018 23:36:30 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:36:31 GMT
ENV LANG=C.UTF-8
# Mon, 18 Jun 2018 23:36:31 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:36:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:36:32 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:36:33 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:36:34 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 18 Jun 2018 23:36:34 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:36:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Jun 2018 23:36:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:36:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:36:36 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Jun 2018 23:36:48 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Jun 2018 23:36:59 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Mon, 18 Jun 2018 23:37:00 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f062288ad9683931b2072ad973d4d90628546386dd617136c35e265558937548`  
		Last Modified: Wed, 02 May 2018 04:15:08 GMT  
		Size: 4.5 MB (4498413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9469379b849442214787f8e717507fd1d070efce5d4556b73a1638af928866`  
		Last Modified: Wed, 02 May 2018 04:15:06 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66af38c7566bba9f70940cc16e564a845480f8623bfb2bec6beeb92f749859`  
		Last Modified: Wed, 02 May 2018 04:15:05 GMT  
		Size: 952.0 KB (951993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d942356ed811a9d3a787654880f53985387b5d238d65601c40a4abc314254a19`  
		Last Modified: Thu, 10 May 2018 20:39:16 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd730b88925cc33442ebe21937ab74da4f1d5c54a1facbb9421e476791eab766`  
		Last Modified: Thu, 10 May 2018 20:39:18 GMT  
		Size: 27.5 MB (27501913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8883e559865310bda83cd04cdc90bdde710e279636ef176cd653319394f3c2`  
		Last Modified: Mon, 18 Jun 2018 23:39:22 GMT  
		Size: 10.3 MB (10296874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cf4a8a697ac2c9cc2812d427deeee1184eb45452d7d6d18f3df8cb20c29b73`  
		Last Modified: Mon, 18 Jun 2018 23:39:20 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949c1fb141de1b2affca1703f121785c7d29c66acdb9c7a39c11519e4dd3121c`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a31af4fdaf61e147c1d2807866e5b1f3b39f25b6306a75e2525f20cf23232ab`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756c3f877e561d85c1da2af27a3a31d0cba32cb1717f10d3b1b7dc3a21c2903a`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aba44abd46f72a6039c57570951012f2be157fc0ae0d2ec268816d37afdb0b5`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0334f9743e3c86ab1ce64956c0b67c8c57d8d5099e55d53a3a80ec261c1cc217`  
		Last Modified: Mon, 18 Jun 2018 23:40:07 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e08089a463c8389c813039e66ed4e5809c7e9b61b065ea7cf787d72827811f9`  
		Last Modified: Mon, 18 Jun 2018 23:40:08 GMT  
		Size: 7.6 MB (7622435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:458b9756f73f4eeb8dae95f1b78a75218fd0087ed9378e606d7538fc980b7241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7.6-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:c109cf2904e6ce781baeda668e97d8928c36d928024dd097b02eb75cc22fc30d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41324368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be283ace10fea8843268b60bb2d9afce275272020aaa2e44a7eda2c87ba3fa22`
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
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:37:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 18 Jun 2018 23:37:17 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 18 Jun 2018 23:37:20 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:37:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:37:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:37:20 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Jun 2018 23:37:32 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Jun 2018 23:37:35 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 18 Jun 2018 23:37:35 GMT
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
	-	`sha256:17f39c065015dd2d067a71eed0c1ef0aa40e39624d3f24f51bb6fbd07e4fb46b`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 9.6 MB (9567280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf0ba373123476e83c9cc15fcf61fea3f34aa046be33b96d502d2a57d1e896`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e760ba2932400f6bc55e17c872b8923ed87abfa53afa8c0d516fe45ace71bd4`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0156c97b3e9eb3b600953c47178bf077cf9e1329de66b6a72538557621844a`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8a6b32497c8ad3eec3a781f265dd9a83d9a65f818ebb181a330280a107577`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52e5822991802f8f761173c1405b731c8cbe1d99b99a258f17d6a9afadf21a2`  
		Last Modified: Mon, 18 Jun 2018 23:41:45 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9fa62ddf7e4ec674f6c3c321a28ae3eec2482457bc2c3cdd1ab74ba4c5e888`  
		Last Modified: Mon, 18 Jun 2018 23:41:48 GMT  
		Size: 11.0 MB (11024497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-alpine`

```console
$ docker pull rabbitmq@sha256:6378e041e1863074e26fabc94f8879a9e3b5c8162b8180d4fb1292a9a3dbd300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:7b6d674963f8f96947184f8c8186efe42d0e2c41f35ac92441eb7987618d3852
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30299680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d93390a4f86820aa6d3d039f09de826a6186c5467621c8df21a2657de35c3e5`
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
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:37:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 18 Jun 2018 23:37:17 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 18 Jun 2018 23:37:20 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:37:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:37:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:37:20 GMT
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
	-	`sha256:17f39c065015dd2d067a71eed0c1ef0aa40e39624d3f24f51bb6fbd07e4fb46b`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 9.6 MB (9567280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf0ba373123476e83c9cc15fcf61fea3f34aa046be33b96d502d2a57d1e896`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e760ba2932400f6bc55e17c872b8923ed87abfa53afa8c0d516fe45ace71bd4`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0156c97b3e9eb3b600953c47178bf077cf9e1329de66b6a72538557621844a`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8a6b32497c8ad3eec3a781f265dd9a83d9a65f818ebb181a330280a107577`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-management`

```console
$ docker pull rabbitmq@sha256:8c2fbd827bb3a034ed14d3e8d39d436ab8d65926760578ccbfa4d49b4c87bba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:e663fad8d800c72f89d0f60d3ad773d2ee21b42001c8682f56e99b81f479ca5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73379119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c63d465125221d9237448a8027c7c3744d693e72e1b3ce68f3d32ea2037761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 02 May 2018 03:31:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 03:31:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 02 May 2018 03:31:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 03:32:05 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 10 May 2018 20:36:24 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 10 May 2018 20:36:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 10 May 2018 20:36:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.6-1
# Mon, 18 Jun 2018 23:36:30 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:36:31 GMT
ENV LANG=C.UTF-8
# Mon, 18 Jun 2018 23:36:31 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:36:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:36:32 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:36:33 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:36:34 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 18 Jun 2018 23:36:34 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:36:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Jun 2018 23:36:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:36:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:36:36 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Jun 2018 23:36:48 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Jun 2018 23:36:59 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Mon, 18 Jun 2018 23:37:00 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f062288ad9683931b2072ad973d4d90628546386dd617136c35e265558937548`  
		Last Modified: Wed, 02 May 2018 04:15:08 GMT  
		Size: 4.5 MB (4498413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9469379b849442214787f8e717507fd1d070efce5d4556b73a1638af928866`  
		Last Modified: Wed, 02 May 2018 04:15:06 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66af38c7566bba9f70940cc16e564a845480f8623bfb2bec6beeb92f749859`  
		Last Modified: Wed, 02 May 2018 04:15:05 GMT  
		Size: 952.0 KB (951993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d942356ed811a9d3a787654880f53985387b5d238d65601c40a4abc314254a19`  
		Last Modified: Thu, 10 May 2018 20:39:16 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd730b88925cc33442ebe21937ab74da4f1d5c54a1facbb9421e476791eab766`  
		Last Modified: Thu, 10 May 2018 20:39:18 GMT  
		Size: 27.5 MB (27501913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8883e559865310bda83cd04cdc90bdde710e279636ef176cd653319394f3c2`  
		Last Modified: Mon, 18 Jun 2018 23:39:22 GMT  
		Size: 10.3 MB (10296874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cf4a8a697ac2c9cc2812d427deeee1184eb45452d7d6d18f3df8cb20c29b73`  
		Last Modified: Mon, 18 Jun 2018 23:39:20 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949c1fb141de1b2affca1703f121785c7d29c66acdb9c7a39c11519e4dd3121c`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a31af4fdaf61e147c1d2807866e5b1f3b39f25b6306a75e2525f20cf23232ab`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756c3f877e561d85c1da2af27a3a31d0cba32cb1717f10d3b1b7dc3a21c2903a`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aba44abd46f72a6039c57570951012f2be157fc0ae0d2ec268816d37afdb0b5`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0334f9743e3c86ab1ce64956c0b67c8c57d8d5099e55d53a3a80ec261c1cc217`  
		Last Modified: Mon, 18 Jun 2018 23:40:07 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e08089a463c8389c813039e66ed4e5809c7e9b61b065ea7cf787d72827811f9`  
		Last Modified: Mon, 18 Jun 2018 23:40:08 GMT  
		Size: 7.6 MB (7622435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-management-alpine`

```console
$ docker pull rabbitmq@sha256:458b9756f73f4eeb8dae95f1b78a75218fd0087ed9378e606d7538fc980b7241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3.7-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:c109cf2904e6ce781baeda668e97d8928c36d928024dd097b02eb75cc22fc30d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41324368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be283ace10fea8843268b60bb2d9afce275272020aaa2e44a7eda2c87ba3fa22`
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
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:37:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 18 Jun 2018 23:37:17 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 18 Jun 2018 23:37:20 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:37:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:37:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:37:20 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Jun 2018 23:37:32 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Jun 2018 23:37:35 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 18 Jun 2018 23:37:35 GMT
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
	-	`sha256:17f39c065015dd2d067a71eed0c1ef0aa40e39624d3f24f51bb6fbd07e4fb46b`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 9.6 MB (9567280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf0ba373123476e83c9cc15fcf61fea3f34aa046be33b96d502d2a57d1e896`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e760ba2932400f6bc55e17c872b8923ed87abfa53afa8c0d516fe45ace71bd4`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0156c97b3e9eb3b600953c47178bf077cf9e1329de66b6a72538557621844a`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8a6b32497c8ad3eec3a781f265dd9a83d9a65f818ebb181a330280a107577`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52e5822991802f8f761173c1405b731c8cbe1d99b99a258f17d6a9afadf21a2`  
		Last Modified: Mon, 18 Jun 2018 23:41:45 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9fa62ddf7e4ec674f6c3c321a28ae3eec2482457bc2c3cdd1ab74ba4c5e888`  
		Last Modified: Mon, 18 Jun 2018 23:41:48 GMT  
		Size: 11.0 MB (11024497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:6378e041e1863074e26fabc94f8879a9e3b5c8162b8180d4fb1292a9a3dbd300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:7b6d674963f8f96947184f8c8186efe42d0e2c41f35ac92441eb7987618d3852
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30299680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d93390a4f86820aa6d3d039f09de826a6186c5467621c8df21a2657de35c3e5`
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
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:37:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 18 Jun 2018 23:37:17 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 18 Jun 2018 23:37:20 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:37:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:37:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:37:20 GMT
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
	-	`sha256:17f39c065015dd2d067a71eed0c1ef0aa40e39624d3f24f51bb6fbd07e4fb46b`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 9.6 MB (9567280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf0ba373123476e83c9cc15fcf61fea3f34aa046be33b96d502d2a57d1e896`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e760ba2932400f6bc55e17c872b8923ed87abfa53afa8c0d516fe45ace71bd4`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0156c97b3e9eb3b600953c47178bf077cf9e1329de66b6a72538557621844a`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8a6b32497c8ad3eec3a781f265dd9a83d9a65f818ebb181a330280a107577`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:8c2fbd827bb3a034ed14d3e8d39d436ab8d65926760578ccbfa4d49b4c87bba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:e663fad8d800c72f89d0f60d3ad773d2ee21b42001c8682f56e99b81f479ca5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73379119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c63d465125221d9237448a8027c7c3744d693e72e1b3ce68f3d32ea2037761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 02 May 2018 03:31:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 03:31:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 02 May 2018 03:31:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 03:32:05 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 10 May 2018 20:36:24 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 10 May 2018 20:36:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 10 May 2018 20:36:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.6-1
# Mon, 18 Jun 2018 23:36:30 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:36:31 GMT
ENV LANG=C.UTF-8
# Mon, 18 Jun 2018 23:36:31 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:36:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:36:32 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:36:33 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:36:34 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 18 Jun 2018 23:36:34 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:36:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Jun 2018 23:36:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:36:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:36:36 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Jun 2018 23:36:48 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Jun 2018 23:36:59 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Mon, 18 Jun 2018 23:37:00 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f062288ad9683931b2072ad973d4d90628546386dd617136c35e265558937548`  
		Last Modified: Wed, 02 May 2018 04:15:08 GMT  
		Size: 4.5 MB (4498413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9469379b849442214787f8e717507fd1d070efce5d4556b73a1638af928866`  
		Last Modified: Wed, 02 May 2018 04:15:06 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66af38c7566bba9f70940cc16e564a845480f8623bfb2bec6beeb92f749859`  
		Last Modified: Wed, 02 May 2018 04:15:05 GMT  
		Size: 952.0 KB (951993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d942356ed811a9d3a787654880f53985387b5d238d65601c40a4abc314254a19`  
		Last Modified: Thu, 10 May 2018 20:39:16 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd730b88925cc33442ebe21937ab74da4f1d5c54a1facbb9421e476791eab766`  
		Last Modified: Thu, 10 May 2018 20:39:18 GMT  
		Size: 27.5 MB (27501913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8883e559865310bda83cd04cdc90bdde710e279636ef176cd653319394f3c2`  
		Last Modified: Mon, 18 Jun 2018 23:39:22 GMT  
		Size: 10.3 MB (10296874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cf4a8a697ac2c9cc2812d427deeee1184eb45452d7d6d18f3df8cb20c29b73`  
		Last Modified: Mon, 18 Jun 2018 23:39:20 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949c1fb141de1b2affca1703f121785c7d29c66acdb9c7a39c11519e4dd3121c`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a31af4fdaf61e147c1d2807866e5b1f3b39f25b6306a75e2525f20cf23232ab`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756c3f877e561d85c1da2af27a3a31d0cba32cb1717f10d3b1b7dc3a21c2903a`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aba44abd46f72a6039c57570951012f2be157fc0ae0d2ec268816d37afdb0b5`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0334f9743e3c86ab1ce64956c0b67c8c57d8d5099e55d53a3a80ec261c1cc217`  
		Last Modified: Mon, 18 Jun 2018 23:40:07 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e08089a463c8389c813039e66ed4e5809c7e9b61b065ea7cf787d72827811f9`  
		Last Modified: Mon, 18 Jun 2018 23:40:08 GMT  
		Size: 7.6 MB (7622435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:458b9756f73f4eeb8dae95f1b78a75218fd0087ed9378e606d7538fc980b7241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:3-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:c109cf2904e6ce781baeda668e97d8928c36d928024dd097b02eb75cc22fc30d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41324368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be283ace10fea8843268b60bb2d9afce275272020aaa2e44a7eda2c87ba3fa22`
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
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:37:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 18 Jun 2018 23:37:17 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 18 Jun 2018 23:37:20 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:37:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:37:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:37:20 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Jun 2018 23:37:32 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Jun 2018 23:37:35 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 18 Jun 2018 23:37:35 GMT
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
	-	`sha256:17f39c065015dd2d067a71eed0c1ef0aa40e39624d3f24f51bb6fbd07e4fb46b`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 9.6 MB (9567280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf0ba373123476e83c9cc15fcf61fea3f34aa046be33b96d502d2a57d1e896`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e760ba2932400f6bc55e17c872b8923ed87abfa53afa8c0d516fe45ace71bd4`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0156c97b3e9eb3b600953c47178bf077cf9e1329de66b6a72538557621844a`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8a6b32497c8ad3eec3a781f265dd9a83d9a65f818ebb181a330280a107577`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52e5822991802f8f761173c1405b731c8cbe1d99b99a258f17d6a9afadf21a2`  
		Last Modified: Mon, 18 Jun 2018 23:41:45 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9fa62ddf7e4ec674f6c3c321a28ae3eec2482457bc2c3cdd1ab74ba4c5e888`  
		Last Modified: Mon, 18 Jun 2018 23:41:48 GMT  
		Size: 11.0 MB (11024497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:6378e041e1863074e26fabc94f8879a9e3b5c8162b8180d4fb1292a9a3dbd300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:7b6d674963f8f96947184f8c8186efe42d0e2c41f35ac92441eb7987618d3852
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.3 MB (30299680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d93390a4f86820aa6d3d039f09de826a6186c5467621c8df21a2657de35c3e5`
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
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:37:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 18 Jun 2018 23:37:17 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 18 Jun 2018 23:37:20 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:37:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:37:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:37:20 GMT
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
	-	`sha256:17f39c065015dd2d067a71eed0c1ef0aa40e39624d3f24f51bb6fbd07e4fb46b`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 9.6 MB (9567280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf0ba373123476e83c9cc15fcf61fea3f34aa046be33b96d502d2a57d1e896`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e760ba2932400f6bc55e17c872b8923ed87abfa53afa8c0d516fe45ace71bd4`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0156c97b3e9eb3b600953c47178bf077cf9e1329de66b6a72538557621844a`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8a6b32497c8ad3eec3a781f265dd9a83d9a65f818ebb181a330280a107577`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:b71366cf9b2675535bdafee03a7ef7af18cc3a9b3089f8dfa55e98e8cf48a94d
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

### `rabbitmq:latest` - linux; amd64

```console
$ docker pull rabbitmq@sha256:2652a884128ec43a9d737e00f26432f2782d3076604cc455794a8c0ba4315c86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65693286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64e7c1bc2efacef7f0cd2dfcf86d620bd198f1d1514fcb87c01728a6cf5ec9d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 02 May 2018 03:31:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 03:31:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 02 May 2018 03:31:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 03:32:05 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 10 May 2018 20:36:24 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 10 May 2018 20:36:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 10 May 2018 20:36:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 10 May 2018 20:37:45 GMT
ENV RABBITMQ_VERSION=3.7.5
# Thu, 10 May 2018 20:37:45 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.5
# Thu, 10 May 2018 20:37:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.5-1
# Thu, 10 May 2018 20:38:03 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 10 May 2018 20:38:04 GMT
ENV LANG=C.UTF-8
# Thu, 10 May 2018 20:38:04 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 10 May 2018 20:38:05 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 10 May 2018 20:38:05 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 10 May 2018 20:38:06 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 10 May 2018 20:38:06 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 10 May 2018 20:38:07 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 10 May 2018 20:38:08 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 10 May 2018 20:38:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 10 May 2018 20:38:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 10 May 2018 20:38:09 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f062288ad9683931b2072ad973d4d90628546386dd617136c35e265558937548`  
		Last Modified: Wed, 02 May 2018 04:15:08 GMT  
		Size: 4.5 MB (4498413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9469379b849442214787f8e717507fd1d070efce5d4556b73a1638af928866`  
		Last Modified: Wed, 02 May 2018 04:15:06 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66af38c7566bba9f70940cc16e564a845480f8623bfb2bec6beeb92f749859`  
		Last Modified: Wed, 02 May 2018 04:15:05 GMT  
		Size: 952.0 KB (951993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d942356ed811a9d3a787654880f53985387b5d238d65601c40a4abc314254a19`  
		Last Modified: Thu, 10 May 2018 20:39:16 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd730b88925cc33442ebe21937ab74da4f1d5c54a1facbb9421e476791eab766`  
		Last Modified: Thu, 10 May 2018 20:39:18 GMT  
		Size: 27.5 MB (27501913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:353d0c7f2496cd6c745bfbd6e79314e3c6ee60270f3a2c027f88296a859cd48b`  
		Last Modified: Thu, 10 May 2018 20:39:59 GMT  
		Size: 10.2 MB (10233673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f664faefe5ecbbb293127dee9e304b05199f03e116a1dfd671a50e952ed8d16`  
		Last Modified: Thu, 10 May 2018 20:39:53 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52f50b7979d08190bc5232ba149e5cb8d5cecf494000ce4c5cb5e361cdb282e`  
		Last Modified: Thu, 10 May 2018 20:39:54 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c785d5ce338c55a713aed24a0cc1618f54e522c6d27cb1b8f20ad217b528035c`  
		Last Modified: Thu, 10 May 2018 20:39:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6d0e07a9f476947367426ffabb3cdfee8ba6bbb565daf06573dc952e1cefca`  
		Last Modified: Thu, 10 May 2018 20:39:54 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cf1b609ffd29ada190b9db93f3bdc106fd9c48267356b934401296a5df8e91`  
		Last Modified: Thu, 10 May 2018 20:39:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:dffe8dc44e13cd6825ac94a0fd6f1dd3342dda0efb6f5e746f3b95b46a6f33d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61560392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c08e33534a7bca25bdcf959efc373c146aacaac3661bc7f317b8fa4334ba9fff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:17:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:17:48 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 28 Apr 2018 12:17:48 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 12:18:05 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 11 May 2018 08:48:40 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Fri, 11 May 2018 08:49:15 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 08:49:15 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 11 May 2018 08:49:15 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 08:49:16 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 11 May 2018 08:50:57 GMT
ENV RABBITMQ_VERSION=3.7.5
# Fri, 11 May 2018 08:50:58 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.5
# Fri, 11 May 2018 08:50:58 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.5-1
# Fri, 11 May 2018 08:51:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 08:51:32 GMT
ENV LANG=C.UTF-8
# Fri, 11 May 2018 08:51:33 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 11 May 2018 08:51:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 11 May 2018 08:51:34 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 11 May 2018 08:51:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 11 May 2018 08:51:36 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 11 May 2018 08:51:37 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 11 May 2018 08:51:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 May 2018 08:51:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 May 2018 08:51:39 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 11 May 2018 08:51:39 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c1d33590ce329f28266d5cdf82c8ed2075989bad02e0806335ecbb75631a96c`  
		Last Modified: Sat, 28 Apr 2018 12:23:36 GMT  
		Size: 4.2 MB (4231586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a7381f5a7bc09532879dd0a93f59baaa2220753821c7709f6bd883e40ffcf4`  
		Last Modified: Sat, 28 Apr 2018 12:23:35 GMT  
		Size: 4.1 KB (4088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf97d11657d4725c7757113edaecb0a28ba38cb0b54095084901e855a1995dc1`  
		Last Modified: Sat, 28 Apr 2018 12:23:34 GMT  
		Size: 942.5 KB (942475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b461859bb343994e85847272311525d2ee1bcb45ad00acaf4b98e59ab96457`  
		Last Modified: Fri, 11 May 2018 08:52:36 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6b73758857628552255022aec82922dfaa950ebb9433eff0116584841ad60c`  
		Last Modified: Fri, 11 May 2018 08:52:41 GMT  
		Size: 25.0 MB (24995161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba8881dc9ae87334298d7bfe0a9d48b6deedc03ae4de7de664706d2237b3f4b`  
		Last Modified: Fri, 11 May 2018 08:53:25 GMT  
		Size: 10.2 MB (10204227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c33b303c011652ee0129461961e0a343a19aec4157cca4fcdc928f03e026d0c5`  
		Last Modified: Fri, 11 May 2018 08:53:23 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab89a2b16c4b7a6657926b04447358aad6f0157506169bd75b6a6116798ccde1`  
		Last Modified: Fri, 11 May 2018 08:53:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29088b8b83d16380145db376bda44e2baaa8f438f48c2dc22603a6e38dd4317`  
		Last Modified: Fri, 11 May 2018 08:53:22 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14c7b10f146030f0353f359b7304b8b4a6172a0a2248fdf29e411c18b0193e74`  
		Last Modified: Fri, 11 May 2018 08:53:23 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bb5a54b8927730e8c31e76e4873a1c6af177d82f5dba9975e34982dea44bbb2`  
		Last Modified: Fri, 11 May 2018 08:53:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:9d08331f47af9315894ae319b4c3f7a5969d2a936ea2e792c380f14cd499581e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.0 MB (58961574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5df2b5c2b4161e161a4a4ea9f7afbca4a5cc8b2d97bb31b81cedae8695bb88b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:31:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:31:10 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 28 Apr 2018 15:31:11 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:31:24 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 11 May 2018 11:59:14 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Fri, 11 May 2018 11:59:43 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 11:59:43 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 11 May 2018 11:59:44 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 11:59:44 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 11 May 2018 12:03:02 GMT
ENV RABBITMQ_VERSION=3.7.5
# Fri, 11 May 2018 12:03:02 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.5
# Fri, 11 May 2018 12:03:03 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.5-1
# Fri, 11 May 2018 12:03:28 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 12:03:28 GMT
ENV LANG=C.UTF-8
# Fri, 11 May 2018 12:03:29 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 11 May 2018 12:03:29 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 11 May 2018 12:03:30 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 11 May 2018 12:03:31 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 11 May 2018 12:03:32 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 11 May 2018 12:03:33 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 11 May 2018 12:03:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 May 2018 12:03:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 May 2018 12:03:35 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 11 May 2018 12:03:36 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be2c60c00deb8110b9f69a14d31497a7871401f67f342ccf6f07946ec7b4a5a`  
		Last Modified: Sat, 28 Apr 2018 15:36:50 GMT  
		Size: 3.9 MB (3868681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8497b956d8c7497087dac9c0caa04ce835f5ec57373b6130e868608959d350b1`  
		Last Modified: Sat, 28 Apr 2018 15:36:49 GMT  
		Size: 4.1 KB (4089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a6d1a23851f28815a62a083c54067dd7458bd8a219c982e3fd3567fc74c58b`  
		Last Modified: Sat, 28 Apr 2018 15:36:49 GMT  
		Size: 926.2 KB (926207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d481afff788741f3c9caf2521d8dfa2bc973105c23bbf3108e59365f544823a`  
		Last Modified: Fri, 11 May 2018 12:04:34 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65fdcdbeb17866093193ce25a5ed2daaa9e42fc7f5fac273c4612a42812cfc4`  
		Last Modified: Fri, 11 May 2018 12:04:38 GMT  
		Size: 24.7 MB (24692699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967379ba0e6245b4eca9386686a5b9e2c796dfc95eefa57271b01536d5dd1c43`  
		Last Modified: Fri, 11 May 2018 12:05:28 GMT  
		Size: 10.2 MB (10175918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feee7275845d81211382622ebdce76c41c2b1e9d8b113f4c17d9cbe2ddc14003`  
		Last Modified: Fri, 11 May 2018 12:05:26 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1721777e6d7ef8c6bb3077f9a46ea1302abfa42ef198821085e6897834ddc4c9`  
		Last Modified: Fri, 11 May 2018 12:05:26 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b120421a8f91941c773da24c5766f183095aa536287e247c78939114ab139c34`  
		Last Modified: Fri, 11 May 2018 12:05:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a474571f8daa3f9dbac497b399ab1a757bb59c3daabdf564d18535251242127`  
		Last Modified: Fri, 11 May 2018 12:05:26 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:febb8c10a1629182956c517ed55ab2f84462cb18ca61a9e609da2201846adfa8`  
		Last Modified: Fri, 11 May 2018 12:05:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:e45994acb17bff984a019ca9a70c661db8e507268a765d36f0f878156f3aefe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60466394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c3a281b978191fabde99681f480f21c31fe26eb301325e64ec0acc08a6ed30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 12:31:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 12:31:38 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 01 May 2018 12:31:39 GMT
ENV GOSU_VERSION=1.10
# Tue, 01 May 2018 12:32:12 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 11 May 2018 09:20:10 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Fri, 11 May 2018 09:21:09 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 09:21:10 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 11 May 2018 09:21:11 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 09:21:11 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 11 May 2018 09:23:52 GMT
ENV RABBITMQ_VERSION=3.7.5
# Fri, 11 May 2018 09:23:53 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.5
# Fri, 11 May 2018 09:23:54 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.5-1
# Fri, 11 May 2018 09:24:49 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 09:24:50 GMT
ENV LANG=C.UTF-8
# Fri, 11 May 2018 09:24:51 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 11 May 2018 09:24:55 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 11 May 2018 09:24:56 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 11 May 2018 09:25:00 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 11 May 2018 09:25:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 11 May 2018 09:25:05 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 11 May 2018 09:25:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 May 2018 09:25:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 May 2018 09:25:11 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 11 May 2018 09:25:14 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238f106a40f04d32d470da0993a7ad891f855cdc0145e90a1c6a8f4a1d9e7965`  
		Last Modified: Tue, 01 May 2018 12:46:12 GMT  
		Size: 4.1 MB (4073296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856b0782ccb37ea02c62abf28f51f63e1c330f7f9194b584c3cb666f8aeacc88`  
		Last Modified: Tue, 01 May 2018 12:46:09 GMT  
		Size: 4.1 KB (4076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9343307f02ef6a68fcaf94722cff3820b9867e5b68ea3e1e251f5ad6792b4897`  
		Last Modified: Tue, 01 May 2018 12:46:09 GMT  
		Size: 919.4 KB (919432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14041da3e4e2b4f10b6f4a733848154996e8fba373678c1b660545b4dc2d8bb6`  
		Last Modified: Fri, 11 May 2018 09:28:08 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f02c832d80ac10c51bb65772ef185cd404a8d3aa304d2edd8204e979b83fec8`  
		Last Modified: Fri, 11 May 2018 09:28:14 GMT  
		Size: 24.9 MB (24916544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c94dab6279c22d03c730d6c495731ef6009ce87e061bf5ac522e7e1c3073bf`  
		Last Modified: Fri, 11 May 2018 09:28:59 GMT  
		Size: 10.2 MB (10197943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23faafe8b06128a8a702835df2e68572e038453f56c99bc085ce9087009cc1dd`  
		Last Modified: Fri, 11 May 2018 09:28:56 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d335933683f2bc33a44d976b043997a9008103666b62fa71427ebd553bea55f`  
		Last Modified: Fri, 11 May 2018 09:28:56 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143e22bd26975b44a7af5259870f6a499b82dd2a2c81dfd1d93e80cbd133fdcb`  
		Last Modified: Fri, 11 May 2018 09:28:56 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd551dadce06317c9b42bbf5cc399fc9f2229fe06a22f943c6d32dd886c11d52`  
		Last Modified: Fri, 11 May 2018 09:28:56 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c234cdc062ecea82058a5a06585662f90d479595bbd80c121e831c9c608f71b`  
		Last Modified: Fri, 11 May 2018 09:28:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; 386

```console
$ docker pull rabbitmq@sha256:176a3e780c6b03b36bafd15e8ec4cbf786e2f44165e5402421a41444e7c2be1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66839698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df22016e38801d687422150d204f3373873feb67fbc5013dcce34a8ba04faed9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Thu, 31 May 2018 10:25:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 10:25:11 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 31 May 2018 10:25:11 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 May 2018 10:25:32 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 31 May 2018 10:25:33 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 31 May 2018 10:26:19 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 10:26:19 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 31 May 2018 10:26:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 May 2018 10:26:20 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 31 May 2018 10:26:20 GMT
ENV RABBITMQ_VERSION=3.7.5
# Thu, 31 May 2018 10:26:20 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.5
# Thu, 31 May 2018 10:26:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.5-1
# Thu, 31 May 2018 10:27:00 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 10:27:00 GMT
ENV LANG=C.UTF-8
# Thu, 31 May 2018 10:27:00 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 31 May 2018 10:27:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 31 May 2018 10:27:01 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 31 May 2018 10:27:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 31 May 2018 10:27:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 31 May 2018 10:27:03 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 31 May 2018 10:27:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 31 May 2018 10:27:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 10:27:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 31 May 2018 10:27:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8334bade1e9c12d806f8551192fa31b0c044e86eddeb3a391e9d8df496325a26`  
		Last Modified: Thu, 31 May 2018 10:32:58 GMT  
		Size: 4.8 MB (4803908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3b92dd448b4c9e379aab3cfd2e4da403d7492abe9b4f82e979ee4ef9d6e22b`  
		Last Modified: Thu, 31 May 2018 10:32:54 GMT  
		Size: 4.1 KB (4065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140d86e6551681ad52e61f7bb8bed2e44d16f4c853a9874a16c536db1f448d5b`  
		Last Modified: Thu, 31 May 2018 10:32:55 GMT  
		Size: 931.6 KB (931608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98783df0ad17b681f2c60c943be77d32fd1292e92a57b67e72ea451b99654b1e`  
		Last Modified: Thu, 31 May 2018 10:32:53 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704c4596caac6dfefffa0f97fe7cf492c09ef521af1ce327d6a2d53a29ecac0c`  
		Last Modified: Thu, 31 May 2018 10:33:05 GMT  
		Size: 27.7 MB (27700714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69b69a415bfb4d1bb4bfdf4aede699af8cd053421116e3e7a32df4c4038acc8f`  
		Last Modified: Thu, 31 May 2018 10:32:55 GMT  
		Size: 10.3 MB (10253687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c2a95c789b37cc14c529e2347284d3e0b692705e76631d94de122fe021f4b3`  
		Last Modified: Thu, 31 May 2018 10:32:51 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9de500e084f7fad95673cfcee904a13c222b52084652b59f319845206c122c3`  
		Last Modified: Thu, 31 May 2018 10:32:51 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711a67e1a202bb2b7fcb3a079923076564da2b6e6bd097aff24aee859f88caaf`  
		Last Modified: Thu, 31 May 2018 10:32:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be0e7cc2a1ba14850639161825d4b3382c6ecd10a83d2d2038c77c96766bc0a`  
		Last Modified: Thu, 31 May 2018 10:32:50 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d169ba0d4dbb74601fe02db96653884e773045c9b300fa17fe6c0cc27768dd94`  
		Last Modified: Thu, 31 May 2018 10:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:14788c2895041805f23d0abddb131e9ebfce4e8f7b4a9f2266a657096f457fa1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63453745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905e5996aff8bbdc356d3984b651004c50ec86b63fce2a75803be796d06b61bd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:10:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:10:43 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 28 Apr 2018 13:10:46 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 13:11:08 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 12 May 2018 10:29:11 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Sat, 12 May 2018 10:30:11 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 12 May 2018 10:30:12 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 12 May 2018 10:30:13 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 May 2018 10:30:13 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 12 May 2018 10:32:23 GMT
ENV RABBITMQ_VERSION=3.7.5
# Sat, 12 May 2018 10:32:23 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.5
# Sat, 12 May 2018 10:32:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.5-1
# Sat, 12 May 2018 10:33:04 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 12 May 2018 10:33:05 GMT
ENV LANG=C.UTF-8
# Sat, 12 May 2018 10:33:06 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 12 May 2018 10:33:08 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 12 May 2018 10:33:09 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 12 May 2018 10:33:11 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 12 May 2018 10:33:13 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 12 May 2018 10:33:13 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 12 May 2018 10:33:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 12 May 2018 10:33:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 12 May 2018 10:33:18 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 12 May 2018 10:33:19 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9c85edfcb301e599f5f0315dca6425a12ac2a053fb40247b573c4acde87b0f`  
		Last Modified: Sat, 28 Apr 2018 13:21:21 GMT  
		Size: 4.4 MB (4360611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8e06a79b62f5a35266cb563d4ea95ffc26c9cd335ed50f100ce2b40f408614`  
		Last Modified: Sat, 28 Apr 2018 13:21:17 GMT  
		Size: 4.1 KB (4102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05732cb65ce9eee55b858160cdda0dacf46abe4cc5d59ca43b55cdd4bef303a5`  
		Last Modified: Sat, 28 Apr 2018 13:21:17 GMT  
		Size: 920.6 KB (920597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0afc7813e3ff11216f7ed21ac7a265d49a14ab9050ff64be4e6825ba0c407d1`  
		Last Modified: Sat, 12 May 2018 10:35:50 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dbed34172620f049fcc2ba3b479ffaebdf4801210d44a9934f5c8bc2682c8fc`  
		Last Modified: Sat, 12 May 2018 10:35:55 GMT  
		Size: 25.2 MB (25191016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2dee9110cee398dc5e1fd278fd21ea66ebd2b7231c1e6dc9d79a2670358369`  
		Last Modified: Sat, 12 May 2018 10:36:39 GMT  
		Size: 10.2 MB (10217131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4768b9a43be83f3d0a2fe2f1812e73004fd8392319c473daf8bd85661053287`  
		Last Modified: Sat, 12 May 2018 10:36:34 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a72038d4fe7d529bbe515e1f2148de64032fd4444b102ed5cad4846d679d6fa`  
		Last Modified: Sat, 12 May 2018 10:36:34 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97059964bcac0da11cece77eae3bcde2a5076c1afb57cec9bc67d58166f1690`  
		Last Modified: Sat, 12 May 2018 10:36:34 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e46e3091e11179d0c259d7efcc034a110abad9b7ecf33b795f4f2d3510bad3a`  
		Last Modified: Sat, 12 May 2018 10:36:34 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b25c443db22c92088070a212a0417266cc6b7d87c84f416012380d3772fa12f`  
		Last Modified: Sat, 12 May 2018 10:36:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; s390x

```console
$ docker pull rabbitmq@sha256:c3ef9259cf0f5f9dcf78d0dddc93e6ee770e0f6ab1f161dcc33db87278e81421
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63154384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4029adccf547d03282916f03c6916acff210a308efe22a107e4db5a5be1c9da4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:15:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:15:41 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 28 Apr 2018 15:15:41 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 15:15:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 11 May 2018 12:21:09 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Fri, 11 May 2018 12:21:38 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 12:21:38 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 11 May 2018 12:21:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 12:21:39 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 11 May 2018 12:22:50 GMT
ENV RABBITMQ_VERSION=3.7.5
# Fri, 11 May 2018 12:22:50 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.5
# Fri, 11 May 2018 12:22:50 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.5-1
# Fri, 11 May 2018 12:23:09 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 12:23:09 GMT
ENV LANG=C.UTF-8
# Fri, 11 May 2018 12:23:09 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 11 May 2018 12:23:10 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 11 May 2018 12:23:10 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 11 May 2018 12:23:11 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 11 May 2018 12:23:12 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 11 May 2018 12:23:12 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 11 May 2018 12:23:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 May 2018 12:23:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 May 2018 12:23:13 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 11 May 2018 12:23:13 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c28c176e55c5a939c81a75498b4875e423808d1f8e662571b9962c63d37f39e1`  
		Last Modified: Sat, 28 Apr 2018 15:19:40 GMT  
		Size: 4.5 MB (4529947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d1e3fe0c8acdf9ee07dff0ab865ad3d2a37e78e277c5aab37befb512a22f7c`  
		Last Modified: Sat, 28 Apr 2018 15:19:37 GMT  
		Size: 4.1 KB (4080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:991f8f1f94f0d56463b9463ab86b2d99caaaf4c8c25eb0a20f127ec76e38c2ba`  
		Last Modified: Sat, 28 Apr 2018 15:19:37 GMT  
		Size: 938.0 KB (938049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:186cb687b07ff69330cb235fc08d36277665e31ffa2a857083dbbb6d3a94f6f9`  
		Last Modified: Fri, 11 May 2018 12:24:39 GMT  
		Size: 355.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4f72a3388a81557b5705669c373a8ec5ff0508e2d79c2ca9e1b3306e535e01c`  
		Last Modified: Fri, 11 May 2018 12:24:42 GMT  
		Size: 25.1 MB (25095517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:658e2bb1352e89c59068f0711cebe43f1668efb98c8e2a85b3bf9a78af2b4501`  
		Last Modified: Fri, 11 May 2018 12:25:21 GMT  
		Size: 10.2 MB (10229704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d8ed82dc4abb0b5e137350350f9bc3ba0af6b0320295eeef478415603f1e00e`  
		Last Modified: Fri, 11 May 2018 12:25:18 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae6c2fcfd701ea7262d6ceb1284ac80b623dcb20a54969b08df4f2d463946b29`  
		Last Modified: Fri, 11 May 2018 12:25:18 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ec6f2ff3421b1a2de5d6e87598a52e89d3b0349185cfabe9889e66bc4c05a1`  
		Last Modified: Fri, 11 May 2018 12:25:18 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da37a676bb4121df724dab0c821387458f2686d463dcd20b6fee9d97e2240e1`  
		Last Modified: Fri, 11 May 2018 12:25:18 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dcdc6ee390103d5fc1d17c35516aaf0a83539c9f6fdac77b7e69d24bd206d3a`  
		Last Modified: Fri, 11 May 2018 12:25:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:8c2fbd827bb3a034ed14d3e8d39d436ab8d65926760578ccbfa4d49b4c87bba2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:e663fad8d800c72f89d0f60d3ad773d2ee21b42001c8682f56e99b81f479ca5b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73379119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1c63d465125221d9237448a8027c7c3744d693e72e1b3ce68f3d32ea2037761`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 02 May 2018 03:31:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 03:31:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 02 May 2018 03:31:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 02 May 2018 03:32:05 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 10 May 2018 20:36:24 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 10 May 2018 20:36:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 10 May 2018 20:36:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 10 May 2018 20:36:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:36:05 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.6-1
# Mon, 18 Jun 2018 23:36:30 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 18 Jun 2018 23:36:31 GMT
ENV LANG=C.UTF-8
# Mon, 18 Jun 2018 23:36:31 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:36:32 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 18 Jun 2018 23:36:32 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:36:33 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:36:34 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 18 Jun 2018 23:36:34 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:36:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 18 Jun 2018 23:36:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:36:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:36:36 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Jun 2018 23:36:48 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Jun 2018 23:36:59 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Mon, 18 Jun 2018 23:37:00 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f062288ad9683931b2072ad973d4d90628546386dd617136c35e265558937548`  
		Last Modified: Wed, 02 May 2018 04:15:08 GMT  
		Size: 4.5 MB (4498413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9469379b849442214787f8e717507fd1d070efce5d4556b73a1638af928866`  
		Last Modified: Wed, 02 May 2018 04:15:06 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66af38c7566bba9f70940cc16e564a845480f8623bfb2bec6beeb92f749859`  
		Last Modified: Wed, 02 May 2018 04:15:05 GMT  
		Size: 952.0 KB (951993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d942356ed811a9d3a787654880f53985387b5d238d65601c40a4abc314254a19`  
		Last Modified: Thu, 10 May 2018 20:39:16 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd730b88925cc33442ebe21937ab74da4f1d5c54a1facbb9421e476791eab766`  
		Last Modified: Thu, 10 May 2018 20:39:18 GMT  
		Size: 27.5 MB (27501913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b8883e559865310bda83cd04cdc90bdde710e279636ef176cd653319394f3c2`  
		Last Modified: Mon, 18 Jun 2018 23:39:22 GMT  
		Size: 10.3 MB (10296874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cf4a8a697ac2c9cc2812d427deeee1184eb45452d7d6d18f3df8cb20c29b73`  
		Last Modified: Mon, 18 Jun 2018 23:39:20 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949c1fb141de1b2affca1703f121785c7d29c66acdb9c7a39c11519e4dd3121c`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a31af4fdaf61e147c1d2807866e5b1f3b39f25b6306a75e2525f20cf23232ab`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756c3f877e561d85c1da2af27a3a31d0cba32cb1717f10d3b1b7dc3a21c2903a`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aba44abd46f72a6039c57570951012f2be157fc0ae0d2ec268816d37afdb0b5`  
		Last Modified: Mon, 18 Jun 2018 23:39:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0334f9743e3c86ab1ce64956c0b67c8c57d8d5099e55d53a3a80ec261c1cc217`  
		Last Modified: Mon, 18 Jun 2018 23:40:07 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e08089a463c8389c813039e66ed4e5809c7e9b61b065ea7cf787d72827811f9`  
		Last Modified: Mon, 18 Jun 2018 23:40:08 GMT  
		Size: 7.6 MB (7622435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:458b9756f73f4eeb8dae95f1b78a75218fd0087ed9378e606d7538fc980b7241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:c109cf2904e6ce781baeda668e97d8928c36d928024dd097b02eb75cc22fc30d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.3 MB (41324368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be283ace10fea8843268b60bb2d9afce275272020aaa2e44a7eda2c87ba3fa22`
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
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_VERSION=3.7.6
# Mon, 18 Jun 2018 23:37:09 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Mon, 18 Jun 2018 23:37:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Mon, 18 Jun 2018 23:37:17 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Mon, 18 Jun 2018 23:37:18 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 18 Jun 2018 23:37:19 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Mon, 18 Jun 2018 23:37:20 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Mon, 18 Jun 2018 23:37:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 18 Jun 2018 23:37:20 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 18 Jun 2018 23:37:20 GMT
CMD ["rabbitmq-server"]
# Mon, 18 Jun 2018 23:37:32 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Mon, 18 Jun 2018 23:37:35 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Mon, 18 Jun 2018 23:37:35 GMT
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
	-	`sha256:17f39c065015dd2d067a71eed0c1ef0aa40e39624d3f24f51bb6fbd07e4fb46b`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 9.6 MB (9567280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdf0ba373123476e83c9cc15fcf61fea3f34aa046be33b96d502d2a57d1e896`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e760ba2932400f6bc55e17c872b8923ed87abfa53afa8c0d516fe45ace71bd4`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0156c97b3e9eb3b600953c47178bf077cf9e1329de66b6a72538557621844a`  
		Last Modified: Mon, 18 Jun 2018 23:40:56 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a8a6b32497c8ad3eec3a781f265dd9a83d9a65f818ebb181a330280a107577`  
		Last Modified: Mon, 18 Jun 2018 23:40:55 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52e5822991802f8f761173c1405b731c8cbe1d99b99a258f17d6a9afadf21a2`  
		Last Modified: Mon, 18 Jun 2018 23:41:45 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f9fa62ddf7e4ec674f6c3c321a28ae3eec2482457bc2c3cdd1ab74ba4c5e888`  
		Last Modified: Mon, 18 Jun 2018 23:41:48 GMT  
		Size: 11.0 MB (11024497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
