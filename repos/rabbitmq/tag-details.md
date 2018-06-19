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
$ docker pull rabbitmq@sha256:a02c4feab072e34b4dc2d6c1b1e026869438f5956ee4145bc9fd45033bf26d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:0c0de794872f255acffbd7f5244f4e71a500814a6645b56e7e11b8f27a7fbf9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63516059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:239a8d5051e6cf50af3fc2657f71725eda222f629e0ae40674ec1a7bb4757498`
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
# Tue, 19 Jun 2018 08:16:53 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:16:54 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:16:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.6-1
# Tue, 19 Jun 2018 08:18:25 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 19 Jun 2018 08:18:27 GMT
ENV LANG=C.UTF-8
# Tue, 19 Jun 2018 08:18:28 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:18:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:18:32 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:18:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:18:39 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 19 Jun 2018 08:18:44 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:18:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Jun 2018 08:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:18:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:18:52 GMT
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
	-	`sha256:9c85adea2ac5ae6ab5e7ad5347058d8ee7d92b465293d8b08f22aa801eaec6ee`  
		Last Modified: Tue, 19 Jun 2018 08:24:25 GMT  
		Size: 10.3 MB (10279439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095ceb41d9ac21a7989cabf6ba2454c3c8965f0903df30e00ad80a52231f86bf`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7283b3f6d2b8fe8a91c87162125747ac05f8ea8291a13226a0663ecfff90b4df`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c11b9c09d0afbcbcc5aa5edfbdf8498219ef45fa16959f8c850dc272cc1ca0`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fa7e20c02b93f5b0c7107354a4ec70a0440f2b77b99110fd31753297743c8c`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea0d8527195467cf6b08635385bf314534ee049037cc58221ce626942ef504`  
		Last Modified: Tue, 19 Jun 2018 08:24:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:f406d134c5eaf7eb8e27bef4c48e0f81d814b172d9836fe3cb624e4e413b0e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3.6` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:b93a466f94e93d889432e4446cd8f6deb0480cfd3e41d4226402edb3791e2e5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60504655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b0be7aff7d51aba7b1960924621ffc49c67e000c20bb45fbcc97df5df6bb7b`
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
# Sat, 28 Apr 2018 13:18:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:18:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 28 Apr 2018 13:18:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 13:18:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 19 Jun 2018 08:20:54 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 08:20:55 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 08:20:56 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Tue, 19 Jun 2018 08:21:38 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 19 Jun 2018 08:21:39 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:21:41 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:21:42 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:21:45 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:21:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 19 Jun 2018 08:21:49 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:21:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Jun 2018 08:21:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:21:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:21:54 GMT
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
	-	`sha256:e66d74700c9f22f3a8bb25ca5acc0898aeb7812d3a09484d9c855336660af36e`  
		Last Modified: Sat, 28 Apr 2018 13:23:16 GMT  
		Size: 25.5 MB (25492744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfbbea3af0efd5f6e24e1b6e35097fbcb92679b56fa40d75252514945c88472`  
		Last Modified: Tue, 19 Jun 2018 08:26:41 GMT  
		Size: 7.0 MB (6966808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1cc6251d9670e85c3c98c396466a9315479b92849432dc1bd4ae0086f86d16`  
		Last Modified: Tue, 19 Jun 2018 08:26:38 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5531fe8ef10db6d6cef373e8b2bf9f22c4deac8e25da9087d0512dbea69b3968`  
		Last Modified: Tue, 19 Jun 2018 08:26:37 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23b7a6736f90eb624937092063b9c94c4b814375b0e57f7da7d2cc968f98c8a`  
		Last Modified: Tue, 19 Jun 2018 08:26:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e3e9233d78db706155ce12e7ed32c7053329f3066a706ac36244a49d38e39d`  
		Last Modified: Tue, 19 Jun 2018 08:26:38 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796e639baa02d97f3c1126a3439637c8047c967862c6e2f60d0b27cda1b8c8ee`  
		Last Modified: Tue, 19 Jun 2018 08:26:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16`

```console
$ docker pull rabbitmq@sha256:f406d134c5eaf7eb8e27bef4c48e0f81d814b172d9836fe3cb624e4e413b0e18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3.6.16` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:b93a466f94e93d889432e4446cd8f6deb0480cfd3e41d4226402edb3791e2e5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60504655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b0be7aff7d51aba7b1960924621ffc49c67e000c20bb45fbcc97df5df6bb7b`
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
# Sat, 28 Apr 2018 13:18:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:18:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 28 Apr 2018 13:18:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 13:18:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 19 Jun 2018 08:20:54 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 08:20:55 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 08:20:56 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Tue, 19 Jun 2018 08:21:38 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 19 Jun 2018 08:21:39 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:21:41 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:21:42 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:21:45 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:21:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 19 Jun 2018 08:21:49 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:21:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Jun 2018 08:21:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:21:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:21:54 GMT
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
	-	`sha256:e66d74700c9f22f3a8bb25ca5acc0898aeb7812d3a09484d9c855336660af36e`  
		Last Modified: Sat, 28 Apr 2018 13:23:16 GMT  
		Size: 25.5 MB (25492744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfbbea3af0efd5f6e24e1b6e35097fbcb92679b56fa40d75252514945c88472`  
		Last Modified: Tue, 19 Jun 2018 08:26:41 GMT  
		Size: 7.0 MB (6966808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1cc6251d9670e85c3c98c396466a9315479b92849432dc1bd4ae0086f86d16`  
		Last Modified: Tue, 19 Jun 2018 08:26:38 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5531fe8ef10db6d6cef373e8b2bf9f22c4deac8e25da9087d0512dbea69b3968`  
		Last Modified: Tue, 19 Jun 2018 08:26:37 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23b7a6736f90eb624937092063b9c94c4b814375b0e57f7da7d2cc968f98c8a`  
		Last Modified: Tue, 19 Jun 2018 08:26:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e3e9233d78db706155ce12e7ed32c7053329f3066a706ac36244a49d38e39d`  
		Last Modified: Tue, 19 Jun 2018 08:26:38 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796e639baa02d97f3c1126a3439637c8047c967862c6e2f60d0b27cda1b8c8ee`  
		Last Modified: Tue, 19 Jun 2018 08:26:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16-alpine`

```console
$ docker pull rabbitmq@sha256:13799ed817624b3f51dd740985586f0beea54591626a53c548c621e877e728e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

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

## `rabbitmq:3.6.16-management`

```console
$ docker pull rabbitmq@sha256:dd5800270eaa42ef2197185aa4858e4c1baecc7057d9f8f5bbfdc12954cdaa95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3.6.16-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:a5a945f4d5efcd59277f4aebfcf9e736584ba04acad8612a2814204828b45848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68342634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0737ecc86a91f5fda8fd8fe0e23924aa76362bd9b8f038bb04f294a37f6a2650`
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
# Sat, 28 Apr 2018 13:18:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:18:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 28 Apr 2018 13:18:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 13:18:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 19 Jun 2018 08:20:54 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 08:20:55 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 08:20:56 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Tue, 19 Jun 2018 08:21:38 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 19 Jun 2018 08:21:39 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:21:41 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:21:42 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:21:45 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:21:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 19 Jun 2018 08:21:49 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:21:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Jun 2018 08:21:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:21:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:21:54 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 08:22:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 08:22:41 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 08:22:43 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:e66d74700c9f22f3a8bb25ca5acc0898aeb7812d3a09484d9c855336660af36e`  
		Last Modified: Sat, 28 Apr 2018 13:23:16 GMT  
		Size: 25.5 MB (25492744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfbbea3af0efd5f6e24e1b6e35097fbcb92679b56fa40d75252514945c88472`  
		Last Modified: Tue, 19 Jun 2018 08:26:41 GMT  
		Size: 7.0 MB (6966808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1cc6251d9670e85c3c98c396466a9315479b92849432dc1bd4ae0086f86d16`  
		Last Modified: Tue, 19 Jun 2018 08:26:38 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5531fe8ef10db6d6cef373e8b2bf9f22c4deac8e25da9087d0512dbea69b3968`  
		Last Modified: Tue, 19 Jun 2018 08:26:37 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23b7a6736f90eb624937092063b9c94c4b814375b0e57f7da7d2cc968f98c8a`  
		Last Modified: Tue, 19 Jun 2018 08:26:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e3e9233d78db706155ce12e7ed32c7053329f3066a706ac36244a49d38e39d`  
		Last Modified: Tue, 19 Jun 2018 08:26:38 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796e639baa02d97f3c1126a3439637c8047c967862c6e2f60d0b27cda1b8c8ee`  
		Last Modified: Tue, 19 Jun 2018 08:26:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0016d66039713c33f8e8c6e9a434bdbf654e5dbb8f49a0cd17e64e90a3fa0e5f`  
		Last Modified: Tue, 19 Jun 2018 08:27:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b716699b6b9ca03a5fc06d64be2ba5c79af459146ce69e6909ae3647a34471d`  
		Last Modified: Tue, 19 Jun 2018 08:27:04 GMT  
		Size: 7.8 MB (7837785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16-management-alpine`

```console
$ docker pull rabbitmq@sha256:c8f2a00d1e04354cefc814ffbfe6387bb7b074302944da3a3f50142906b92d83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:13799ed817624b3f51dd740985586f0beea54591626a53c548c621e877e728e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; ppc64le

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

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:dd5800270eaa42ef2197185aa4858e4c1baecc7057d9f8f5bbfdc12954cdaa95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3.6-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:a5a945f4d5efcd59277f4aebfcf9e736584ba04acad8612a2814204828b45848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68342634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0737ecc86a91f5fda8fd8fe0e23924aa76362bd9b8f038bb04f294a37f6a2650`
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
# Sat, 28 Apr 2018 13:18:51 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:18:54 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 28 Apr 2018 13:18:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 13:18:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 19 Jun 2018 08:20:54 GMT
ENV RABBITMQ_VERSION=3.6.16
# Tue, 19 Jun 2018 08:20:55 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Tue, 19 Jun 2018 08:20:56 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Tue, 19 Jun 2018 08:21:38 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 19 Jun 2018 08:21:39 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:21:41 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:21:42 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:21:45 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:21:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 19 Jun 2018 08:21:49 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:21:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Jun 2018 08:21:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:21:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:21:54 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 08:22:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 08:22:41 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 08:22:43 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:e66d74700c9f22f3a8bb25ca5acc0898aeb7812d3a09484d9c855336660af36e`  
		Last Modified: Sat, 28 Apr 2018 13:23:16 GMT  
		Size: 25.5 MB (25492744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfbbea3af0efd5f6e24e1b6e35097fbcb92679b56fa40d75252514945c88472`  
		Last Modified: Tue, 19 Jun 2018 08:26:41 GMT  
		Size: 7.0 MB (6966808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d1cc6251d9670e85c3c98c396466a9315479b92849432dc1bd4ae0086f86d16`  
		Last Modified: Tue, 19 Jun 2018 08:26:38 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5531fe8ef10db6d6cef373e8b2bf9f22c4deac8e25da9087d0512dbea69b3968`  
		Last Modified: Tue, 19 Jun 2018 08:26:37 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23b7a6736f90eb624937092063b9c94c4b814375b0e57f7da7d2cc968f98c8a`  
		Last Modified: Tue, 19 Jun 2018 08:26:37 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e3e9233d78db706155ce12e7ed32c7053329f3066a706ac36244a49d38e39d`  
		Last Modified: Tue, 19 Jun 2018 08:26:38 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:796e639baa02d97f3c1126a3439637c8047c967862c6e2f60d0b27cda1b8c8ee`  
		Last Modified: Tue, 19 Jun 2018 08:26:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0016d66039713c33f8e8c6e9a434bdbf654e5dbb8f49a0cd17e64e90a3fa0e5f`  
		Last Modified: Tue, 19 Jun 2018 08:27:00 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b716699b6b9ca03a5fc06d64be2ba5c79af459146ce69e6909ae3647a34471d`  
		Last Modified: Tue, 19 Jun 2018 08:27:04 GMT  
		Size: 7.8 MB (7837785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:c8f2a00d1e04354cefc814ffbfe6387bb7b074302944da3a3f50142906b92d83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

## `rabbitmq:3.7`

```console
$ docker pull rabbitmq@sha256:a02c4feab072e34b4dc2d6c1b1e026869438f5956ee4145bc9fd45033bf26d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3.7` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:0c0de794872f255acffbd7f5244f4e71a500814a6645b56e7e11b8f27a7fbf9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63516059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:239a8d5051e6cf50af3fc2657f71725eda222f629e0ae40674ec1a7bb4757498`
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
# Tue, 19 Jun 2018 08:16:53 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:16:54 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:16:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.6-1
# Tue, 19 Jun 2018 08:18:25 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 19 Jun 2018 08:18:27 GMT
ENV LANG=C.UTF-8
# Tue, 19 Jun 2018 08:18:28 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:18:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:18:32 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:18:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:18:39 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 19 Jun 2018 08:18:44 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:18:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Jun 2018 08:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:18:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:18:52 GMT
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
	-	`sha256:9c85adea2ac5ae6ab5e7ad5347058d8ee7d92b465293d8b08f22aa801eaec6ee`  
		Last Modified: Tue, 19 Jun 2018 08:24:25 GMT  
		Size: 10.3 MB (10279439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095ceb41d9ac21a7989cabf6ba2454c3c8965f0903df30e00ad80a52231f86bf`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7283b3f6d2b8fe8a91c87162125747ac05f8ea8291a13226a0663ecfff90b4df`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c11b9c09d0afbcbcc5aa5edfbdf8498219ef45fa16959f8c850dc272cc1ca0`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fa7e20c02b93f5b0c7107354a4ec70a0440f2b77b99110fd31753297743c8c`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea0d8527195467cf6b08635385bf314534ee049037cc58221ce626942ef504`  
		Last Modified: Tue, 19 Jun 2018 08:24:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.6`

```console
$ docker pull rabbitmq@sha256:a02c4feab072e34b4dc2d6c1b1e026869438f5956ee4145bc9fd45033bf26d3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3.7.6` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:0c0de794872f255acffbd7f5244f4e71a500814a6645b56e7e11b8f27a7fbf9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.5 MB (63516059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:239a8d5051e6cf50af3fc2657f71725eda222f629e0ae40674ec1a7bb4757498`
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
# Tue, 19 Jun 2018 08:16:53 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:16:54 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:16:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.6-1
# Tue, 19 Jun 2018 08:18:25 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 19 Jun 2018 08:18:27 GMT
ENV LANG=C.UTF-8
# Tue, 19 Jun 2018 08:18:28 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:18:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:18:32 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:18:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:18:39 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 19 Jun 2018 08:18:44 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:18:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Jun 2018 08:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:18:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:18:52 GMT
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
	-	`sha256:9c85adea2ac5ae6ab5e7ad5347058d8ee7d92b465293d8b08f22aa801eaec6ee`  
		Last Modified: Tue, 19 Jun 2018 08:24:25 GMT  
		Size: 10.3 MB (10279439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095ceb41d9ac21a7989cabf6ba2454c3c8965f0903df30e00ad80a52231f86bf`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7283b3f6d2b8fe8a91c87162125747ac05f8ea8291a13226a0663ecfff90b4df`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c11b9c09d0afbcbcc5aa5edfbdf8498219ef45fa16959f8c850dc272cc1ca0`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fa7e20c02b93f5b0c7107354a4ec70a0440f2b77b99110fd31753297743c8c`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea0d8527195467cf6b08635385bf314534ee049037cc58221ce626942ef504`  
		Last Modified: Tue, 19 Jun 2018 08:24:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.6-alpine`

```console
$ docker pull rabbitmq@sha256:9de1a046c5f499e8fcaf4c4ae86a08f522a0ba18d4f741914f2cccc75f50d669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3.7.6-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:5ad60f5cc5fceb4195fafdd8a9eac163fe3118b2a79744d81e8794e62dce57d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28112835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3691fbc77ffa86fcd9f50d431e9c3c77d4a157db1c5f5d22513e4df85303d224`
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
# Tue, 19 Jun 2018 08:19:41 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:19:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:19:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:19:55 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:19:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Tue, 19 Jun 2018 08:20:02 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:20:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:20:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:20:17 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:20:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:20:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:20:26 GMT
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
	-	`sha256:4606a9c95b318034cc0868e6731598fe422d1909bae49ba2016ea6df59d67e89`  
		Last Modified: Tue, 19 Jun 2018 08:25:34 GMT  
		Size: 9.6 MB (9559585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5aa57609a2bcd577196f663e3650de5471ce115916ef4dbb993148c7394047`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecaf2634fa7ae085bb079065bae47d4afa6635aaf7b459df019904dbce65f83`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ef93ef0529245b52f97438ce5d46aa8873d72520edaf71b1921bbd0dcff2e6`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3466b43f4f4f4b807ef22a3a692bcc924dcd975b1b8a471745c69bcf8f3c945`  
		Last Modified: Tue, 19 Jun 2018 08:25:32 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.6-management`

```console
$ docker pull rabbitmq@sha256:4836667b1fbb2488f276c460b60631cd9ba95ce913bad4220d828c8bab9a52cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3.7.6-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:104e23b0fac410bbc4dbb45031b656641af8c94038553077f5779ae4ed5892c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71341746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ceb11b2c5a88aafd7bb14e2b1afdc76bd8014c06167438d63d5894e47017fa`
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
# Tue, 19 Jun 2018 08:16:53 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:16:54 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:16:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.6-1
# Tue, 19 Jun 2018 08:18:25 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 19 Jun 2018 08:18:27 GMT
ENV LANG=C.UTF-8
# Tue, 19 Jun 2018 08:18:28 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:18:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:18:32 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:18:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:18:39 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 19 Jun 2018 08:18:44 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:18:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Jun 2018 08:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:18:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:18:52 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 08:19:09 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 08:19:32 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 08:19:33 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:9c85adea2ac5ae6ab5e7ad5347058d8ee7d92b465293d8b08f22aa801eaec6ee`  
		Last Modified: Tue, 19 Jun 2018 08:24:25 GMT  
		Size: 10.3 MB (10279439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095ceb41d9ac21a7989cabf6ba2454c3c8965f0903df30e00ad80a52231f86bf`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7283b3f6d2b8fe8a91c87162125747ac05f8ea8291a13226a0663ecfff90b4df`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c11b9c09d0afbcbcc5aa5edfbdf8498219ef45fa16959f8c850dc272cc1ca0`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fa7e20c02b93f5b0c7107354a4ec70a0440f2b77b99110fd31753297743c8c`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea0d8527195467cf6b08635385bf314534ee049037cc58221ce626942ef504`  
		Last Modified: Tue, 19 Jun 2018 08:24:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0dab1558e22d7c96581e1d7585f851a2155e3153cd596523240c3f9eaccc99b`  
		Last Modified: Tue, 19 Jun 2018 08:24:59 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d9970a38b032e41ef328736cf3f5db45f8774ff3b4c8d5bc19cf306d2f6524`  
		Last Modified: Tue, 19 Jun 2018 08:25:02 GMT  
		Size: 7.8 MB (7825493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:309e5f8832100edf90abf4a97c85790c23788fdc97aad20aa5a532843732505c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3.7.6-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:e6c55a8b9f144baeb0aefadf44e0e4b0b537d9621aaeae6417a4838361b23ea4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39181086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b8635131e5993924d85fccba1d9c66db6ff14314e775521995325e0f342426`
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
# Tue, 19 Jun 2018 08:19:41 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:19:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:19:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:19:55 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:19:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Tue, 19 Jun 2018 08:20:02 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:20:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:20:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:20:17 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:20:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:20:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:20:26 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 08:20:40 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 08:20:47 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 08:20:48 GMT
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
	-	`sha256:4606a9c95b318034cc0868e6731598fe422d1909bae49ba2016ea6df59d67e89`  
		Last Modified: Tue, 19 Jun 2018 08:25:34 GMT  
		Size: 9.6 MB (9559585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5aa57609a2bcd577196f663e3650de5471ce115916ef4dbb993148c7394047`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecaf2634fa7ae085bb079065bae47d4afa6635aaf7b459df019904dbce65f83`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ef93ef0529245b52f97438ce5d46aa8873d72520edaf71b1921bbd0dcff2e6`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3466b43f4f4f4b807ef22a3a692bcc924dcd975b1b8a471745c69bcf8f3c945`  
		Last Modified: Tue, 19 Jun 2018 08:25:32 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afa15e35724e74ffb8f193e7428c464579488d59a63b4bb9f30e3012b446094`  
		Last Modified: Tue, 19 Jun 2018 08:26:04 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecedb9bea99ef601468679896adc7c5f9013732ba7894794f4050ae1bf34842`  
		Last Modified: Tue, 19 Jun 2018 08:26:08 GMT  
		Size: 11.1 MB (11068060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-alpine`

```console
$ docker pull rabbitmq@sha256:9de1a046c5f499e8fcaf4c4ae86a08f522a0ba18d4f741914f2cccc75f50d669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3.7-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:5ad60f5cc5fceb4195fafdd8a9eac163fe3118b2a79744d81e8794e62dce57d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28112835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3691fbc77ffa86fcd9f50d431e9c3c77d4a157db1c5f5d22513e4df85303d224`
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
# Tue, 19 Jun 2018 08:19:41 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:19:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:19:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:19:55 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:19:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Tue, 19 Jun 2018 08:20:02 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:20:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:20:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:20:17 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:20:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:20:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:20:26 GMT
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
	-	`sha256:4606a9c95b318034cc0868e6731598fe422d1909bae49ba2016ea6df59d67e89`  
		Last Modified: Tue, 19 Jun 2018 08:25:34 GMT  
		Size: 9.6 MB (9559585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5aa57609a2bcd577196f663e3650de5471ce115916ef4dbb993148c7394047`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecaf2634fa7ae085bb079065bae47d4afa6635aaf7b459df019904dbce65f83`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ef93ef0529245b52f97438ce5d46aa8873d72520edaf71b1921bbd0dcff2e6`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3466b43f4f4f4b807ef22a3a692bcc924dcd975b1b8a471745c69bcf8f3c945`  
		Last Modified: Tue, 19 Jun 2018 08:25:32 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-management`

```console
$ docker pull rabbitmq@sha256:4836667b1fbb2488f276c460b60631cd9ba95ce913bad4220d828c8bab9a52cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3.7-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:104e23b0fac410bbc4dbb45031b656641af8c94038553077f5779ae4ed5892c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71341746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ceb11b2c5a88aafd7bb14e2b1afdc76bd8014c06167438d63d5894e47017fa`
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
# Tue, 19 Jun 2018 08:16:53 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:16:54 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:16:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.6-1
# Tue, 19 Jun 2018 08:18:25 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 19 Jun 2018 08:18:27 GMT
ENV LANG=C.UTF-8
# Tue, 19 Jun 2018 08:18:28 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:18:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:18:32 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:18:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:18:39 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 19 Jun 2018 08:18:44 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:18:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Jun 2018 08:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:18:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:18:52 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 08:19:09 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 08:19:32 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 08:19:33 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:9c85adea2ac5ae6ab5e7ad5347058d8ee7d92b465293d8b08f22aa801eaec6ee`  
		Last Modified: Tue, 19 Jun 2018 08:24:25 GMT  
		Size: 10.3 MB (10279439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095ceb41d9ac21a7989cabf6ba2454c3c8965f0903df30e00ad80a52231f86bf`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7283b3f6d2b8fe8a91c87162125747ac05f8ea8291a13226a0663ecfff90b4df`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c11b9c09d0afbcbcc5aa5edfbdf8498219ef45fa16959f8c850dc272cc1ca0`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fa7e20c02b93f5b0c7107354a4ec70a0440f2b77b99110fd31753297743c8c`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea0d8527195467cf6b08635385bf314534ee049037cc58221ce626942ef504`  
		Last Modified: Tue, 19 Jun 2018 08:24:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0dab1558e22d7c96581e1d7585f851a2155e3153cd596523240c3f9eaccc99b`  
		Last Modified: Tue, 19 Jun 2018 08:24:59 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d9970a38b032e41ef328736cf3f5db45f8774ff3b4c8d5bc19cf306d2f6524`  
		Last Modified: Tue, 19 Jun 2018 08:25:02 GMT  
		Size: 7.8 MB (7825493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-management-alpine`

```console
$ docker pull rabbitmq@sha256:309e5f8832100edf90abf4a97c85790c23788fdc97aad20aa5a532843732505c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3.7-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:e6c55a8b9f144baeb0aefadf44e0e4b0b537d9621aaeae6417a4838361b23ea4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39181086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b8635131e5993924d85fccba1d9c66db6ff14314e775521995325e0f342426`
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
# Tue, 19 Jun 2018 08:19:41 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:19:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:19:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:19:55 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:19:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Tue, 19 Jun 2018 08:20:02 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:20:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:20:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:20:17 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:20:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:20:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:20:26 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 08:20:40 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 08:20:47 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 08:20:48 GMT
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
	-	`sha256:4606a9c95b318034cc0868e6731598fe422d1909bae49ba2016ea6df59d67e89`  
		Last Modified: Tue, 19 Jun 2018 08:25:34 GMT  
		Size: 9.6 MB (9559585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5aa57609a2bcd577196f663e3650de5471ce115916ef4dbb993148c7394047`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecaf2634fa7ae085bb079065bae47d4afa6635aaf7b459df019904dbce65f83`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ef93ef0529245b52f97438ce5d46aa8873d72520edaf71b1921bbd0dcff2e6`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3466b43f4f4f4b807ef22a3a692bcc924dcd975b1b8a471745c69bcf8f3c945`  
		Last Modified: Tue, 19 Jun 2018 08:25:32 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afa15e35724e74ffb8f193e7428c464579488d59a63b4bb9f30e3012b446094`  
		Last Modified: Tue, 19 Jun 2018 08:26:04 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecedb9bea99ef601468679896adc7c5f9013732ba7894794f4050ae1bf34842`  
		Last Modified: Tue, 19 Jun 2018 08:26:08 GMT  
		Size: 11.1 MB (11068060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:9de1a046c5f499e8fcaf4c4ae86a08f522a0ba18d4f741914f2cccc75f50d669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:5ad60f5cc5fceb4195fafdd8a9eac163fe3118b2a79744d81e8794e62dce57d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28112835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3691fbc77ffa86fcd9f50d431e9c3c77d4a157db1c5f5d22513e4df85303d224`
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
# Tue, 19 Jun 2018 08:19:41 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:19:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:19:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:19:55 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:19:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Tue, 19 Jun 2018 08:20:02 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:20:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:20:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:20:17 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:20:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:20:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:20:26 GMT
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
	-	`sha256:4606a9c95b318034cc0868e6731598fe422d1909bae49ba2016ea6df59d67e89`  
		Last Modified: Tue, 19 Jun 2018 08:25:34 GMT  
		Size: 9.6 MB (9559585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5aa57609a2bcd577196f663e3650de5471ce115916ef4dbb993148c7394047`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecaf2634fa7ae085bb079065bae47d4afa6635aaf7b459df019904dbce65f83`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ef93ef0529245b52f97438ce5d46aa8873d72520edaf71b1921bbd0dcff2e6`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3466b43f4f4f4b807ef22a3a692bcc924dcd975b1b8a471745c69bcf8f3c945`  
		Last Modified: Tue, 19 Jun 2018 08:25:32 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:4836667b1fbb2488f276c460b60631cd9ba95ce913bad4220d828c8bab9a52cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:104e23b0fac410bbc4dbb45031b656641af8c94038553077f5779ae4ed5892c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71341746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ceb11b2c5a88aafd7bb14e2b1afdc76bd8014c06167438d63d5894e47017fa`
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
# Tue, 19 Jun 2018 08:16:53 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:16:54 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:16:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.6-1
# Tue, 19 Jun 2018 08:18:25 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 19 Jun 2018 08:18:27 GMT
ENV LANG=C.UTF-8
# Tue, 19 Jun 2018 08:18:28 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:18:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:18:32 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:18:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:18:39 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 19 Jun 2018 08:18:44 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:18:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Jun 2018 08:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:18:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:18:52 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 08:19:09 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 08:19:32 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 08:19:33 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:9c85adea2ac5ae6ab5e7ad5347058d8ee7d92b465293d8b08f22aa801eaec6ee`  
		Last Modified: Tue, 19 Jun 2018 08:24:25 GMT  
		Size: 10.3 MB (10279439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095ceb41d9ac21a7989cabf6ba2454c3c8965f0903df30e00ad80a52231f86bf`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7283b3f6d2b8fe8a91c87162125747ac05f8ea8291a13226a0663ecfff90b4df`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c11b9c09d0afbcbcc5aa5edfbdf8498219ef45fa16959f8c850dc272cc1ca0`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fa7e20c02b93f5b0c7107354a4ec70a0440f2b77b99110fd31753297743c8c`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea0d8527195467cf6b08635385bf314534ee049037cc58221ce626942ef504`  
		Last Modified: Tue, 19 Jun 2018 08:24:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0dab1558e22d7c96581e1d7585f851a2155e3153cd596523240c3f9eaccc99b`  
		Last Modified: Tue, 19 Jun 2018 08:24:59 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d9970a38b032e41ef328736cf3f5db45f8774ff3b4c8d5bc19cf306d2f6524`  
		Last Modified: Tue, 19 Jun 2018 08:25:02 GMT  
		Size: 7.8 MB (7825493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:309e5f8832100edf90abf4a97c85790c23788fdc97aad20aa5a532843732505c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:3-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:e6c55a8b9f144baeb0aefadf44e0e4b0b537d9621aaeae6417a4838361b23ea4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39181086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b8635131e5993924d85fccba1d9c66db6ff14314e775521995325e0f342426`
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
# Tue, 19 Jun 2018 08:19:41 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:19:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:19:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:19:55 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:19:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Tue, 19 Jun 2018 08:20:02 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:20:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:20:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:20:17 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:20:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:20:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:20:26 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 08:20:40 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 08:20:47 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 08:20:48 GMT
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
	-	`sha256:4606a9c95b318034cc0868e6731598fe422d1909bae49ba2016ea6df59d67e89`  
		Last Modified: Tue, 19 Jun 2018 08:25:34 GMT  
		Size: 9.6 MB (9559585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5aa57609a2bcd577196f663e3650de5471ce115916ef4dbb993148c7394047`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecaf2634fa7ae085bb079065bae47d4afa6635aaf7b459df019904dbce65f83`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ef93ef0529245b52f97438ce5d46aa8873d72520edaf71b1921bbd0dcff2e6`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3466b43f4f4f4b807ef22a3a692bcc924dcd975b1b8a471745c69bcf8f3c945`  
		Last Modified: Tue, 19 Jun 2018 08:25:32 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afa15e35724e74ffb8f193e7428c464579488d59a63b4bb9f30e3012b446094`  
		Last Modified: Tue, 19 Jun 2018 08:26:04 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecedb9bea99ef601468679896adc7c5f9013732ba7894794f4050ae1bf34842`  
		Last Modified: Tue, 19 Jun 2018 08:26:08 GMT  
		Size: 11.1 MB (11068060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:9de1a046c5f499e8fcaf4c4ae86a08f522a0ba18d4f741914f2cccc75f50d669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:5ad60f5cc5fceb4195fafdd8a9eac163fe3118b2a79744d81e8794e62dce57d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28112835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3691fbc77ffa86fcd9f50d431e9c3c77d4a157db1c5f5d22513e4df85303d224`
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
# Tue, 19 Jun 2018 08:19:41 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:19:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:19:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:19:55 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:19:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Tue, 19 Jun 2018 08:20:02 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:20:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:20:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:20:17 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:20:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:20:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:20:26 GMT
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
	-	`sha256:4606a9c95b318034cc0868e6731598fe422d1909bae49ba2016ea6df59d67e89`  
		Last Modified: Tue, 19 Jun 2018 08:25:34 GMT  
		Size: 9.6 MB (9559585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5aa57609a2bcd577196f663e3650de5471ce115916ef4dbb993148c7394047`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecaf2634fa7ae085bb079065bae47d4afa6635aaf7b459df019904dbce65f83`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ef93ef0529245b52f97438ce5d46aa8873d72520edaf71b1921bbd0dcff2e6`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3466b43f4f4f4b807ef22a3a692bcc924dcd975b1b8a471745c69bcf8f3c945`  
		Last Modified: Tue, 19 Jun 2018 08:25:32 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:21d82aa04389c88497f0a8eee17bff55b3991ff7c8850ba39314f1e25756b7c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rabbitmq:latest` - linux; amd64

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

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:4836667b1fbb2488f276c460b60631cd9ba95ce913bad4220d828c8bab9a52cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:104e23b0fac410bbc4dbb45031b656641af8c94038553077f5779ae4ed5892c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71341746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ceb11b2c5a88aafd7bb14e2b1afdc76bd8014c06167438d63d5894e47017fa`
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
# Tue, 19 Jun 2018 08:16:53 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:16:54 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:16:55 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.6-1
# Tue, 19 Jun 2018 08:18:25 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 19 Jun 2018 08:18:27 GMT
ENV LANG=C.UTF-8
# Tue, 19 Jun 2018 08:18:28 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:18:31 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 19 Jun 2018 08:18:32 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:18:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:18:39 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 19 Jun 2018 08:18:44 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:18:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 19 Jun 2018 08:18:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:18:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:18:52 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 08:19:09 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 08:19:32 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 08:19:33 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:9c85adea2ac5ae6ab5e7ad5347058d8ee7d92b465293d8b08f22aa801eaec6ee`  
		Last Modified: Tue, 19 Jun 2018 08:24:25 GMT  
		Size: 10.3 MB (10279439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:095ceb41d9ac21a7989cabf6ba2454c3c8965f0903df30e00ad80a52231f86bf`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7283b3f6d2b8fe8a91c87162125747ac05f8ea8291a13226a0663ecfff90b4df`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c11b9c09d0afbcbcc5aa5edfbdf8498219ef45fa16959f8c850dc272cc1ca0`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fa7e20c02b93f5b0c7107354a4ec70a0440f2b77b99110fd31753297743c8c`  
		Last Modified: Tue, 19 Jun 2018 08:24:20 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acea0d8527195467cf6b08635385bf314534ee049037cc58221ce626942ef504`  
		Last Modified: Tue, 19 Jun 2018 08:24:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0dab1558e22d7c96581e1d7585f851a2155e3153cd596523240c3f9eaccc99b`  
		Last Modified: Tue, 19 Jun 2018 08:24:59 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27d9970a38b032e41ef328736cf3f5db45f8774ff3b4c8d5bc19cf306d2f6524`  
		Last Modified: Tue, 19 Jun 2018 08:25:02 GMT  
		Size: 7.8 MB (7825493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:309e5f8832100edf90abf4a97c85790c23788fdc97aad20aa5a532843732505c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

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

### `rabbitmq:management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:e6c55a8b9f144baeb0aefadf44e0e4b0b537d9621aaeae6417a4838361b23ea4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.2 MB (39181086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b8635131e5993924d85fccba1d9c66db6ff14314e775521995325e0f342426`
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
# Tue, 19 Jun 2018 08:19:41 GMT
ENV RABBITMQ_VERSION=3.7.6
# Tue, 19 Jun 2018 08:19:42 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.6
# Tue, 19 Jun 2018 08:19:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Tue, 19 Jun 2018 08:19:55 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 19 Jun 2018 08:19:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Tue, 19 Jun 2018 08:20:02 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 19 Jun 2018 08:20:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 19 Jun 2018 08:20:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Tue, 19 Jun 2018 08:20:17 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Tue, 19 Jun 2018 08:20:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 19 Jun 2018 08:20:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 19 Jun 2018 08:20:26 GMT
CMD ["rabbitmq-server"]
# Tue, 19 Jun 2018 08:20:40 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 19 Jun 2018 08:20:47 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Tue, 19 Jun 2018 08:20:48 GMT
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
	-	`sha256:4606a9c95b318034cc0868e6731598fe422d1909bae49ba2016ea6df59d67e89`  
		Last Modified: Tue, 19 Jun 2018 08:25:34 GMT  
		Size: 9.6 MB (9559585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5aa57609a2bcd577196f663e3650de5471ce115916ef4dbb993148c7394047`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fecaf2634fa7ae085bb079065bae47d4afa6635aaf7b459df019904dbce65f83`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ef93ef0529245b52f97438ce5d46aa8873d72520edaf71b1921bbd0dcff2e6`  
		Last Modified: Tue, 19 Jun 2018 08:25:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3466b43f4f4f4b807ef22a3a692bcc924dcd975b1b8a471745c69bcf8f3c945`  
		Last Modified: Tue, 19 Jun 2018 08:25:32 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afa15e35724e74ffb8f193e7428c464579488d59a63b4bb9f30e3012b446094`  
		Last Modified: Tue, 19 Jun 2018 08:26:04 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecedb9bea99ef601468679896adc7c5f9013732ba7894794f4050ae1bf34842`  
		Last Modified: Tue, 19 Jun 2018 08:26:08 GMT  
		Size: 11.1 MB (11068060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
