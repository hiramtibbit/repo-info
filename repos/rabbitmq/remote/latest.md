## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:2cd00c31d2e443ab170dac2b3b37ef85fc09effb0c2528f8e81a806ccc3d9455
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
$ docker pull rabbitmq@sha256:298435b282e3378eccbab8bd5ca12837b37887cc21eb9aaeaf41eae07294387c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68068561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72cee1616e7377109a873423d3873ee9531108006520e0988d2162072f0e5144`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:40:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:40:50 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:40:50 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:25:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:25:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:25:37 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:25:37 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:25:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:25:38 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 01 Feb 2018 01:41:21 GMT
ENV RABBITMQ_VERSION=3.7.3
# Thu, 01 Feb 2018 01:41:21 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.3
# Thu, 01 Feb 2018 01:41:21 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.3-1
# Thu, 01 Feb 2018 01:42:28 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 01 Feb 2018 01:42:28 GMT
ENV LANG=C.UTF-8
# Thu, 01 Feb 2018 01:42:29 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 01 Feb 2018 01:42:30 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 01 Feb 2018 01:42:30 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 01 Feb 2018 01:42:31 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 01 Feb 2018 01:42:32 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 01 Feb 2018 01:42:32 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 01 Feb 2018 01:42:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 01 Feb 2018 01:42:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Feb 2018 01:42:44 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 01 Feb 2018 01:42:45 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad90649c4d840febdaefa1afaad7ef8bbf2e0087ba1d11a95968afce0503f342`  
		Last Modified: Tue, 12 Dec 2017 21:45:30 GMT  
		Size: 4.5 MB (4498351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a318b914d6cead2434cc74ee74c48511ad6ec06a38ab190157246497f44afb1`  
		Last Modified: Tue, 12 Dec 2017 21:45:28 GMT  
		Size: 4.1 KB (4066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedd60f70052462179e86a0439f5fb3fa7b40f41dc55be9152bd147181481594`  
		Last Modified: Tue, 12 Dec 2017 23:26:36 GMT  
		Size: 951.9 KB (951937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ec28761801c452cb366afa1cbb7946bada161eb77899d9ca9a59a219e9ff42`  
		Last Modified: Tue, 12 Dec 2017 23:26:35 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8fa44aa9074bb2e24649ebe2dae2f852f9443a052fd9cdfd4d11bcd86d967f7`  
		Last Modified: Tue, 12 Dec 2017 23:26:38 GMT  
		Size: 27.3 MB (27330555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8002a209c244c237961816ecbb1f3439c1649415e4a2a467da3f33af240b827`  
		Last Modified: Thu, 01 Feb 2018 01:46:30 GMT  
		Size: 12.8 MB (12790747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1206edcd4379b0d8389b9b1fce29b6299194bc2013b92f9c28b7821711d8cd`  
		Last Modified: Thu, 01 Feb 2018 01:46:27 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769be07270746a8805a767e3376387f5e0b87d676a0963a01cab5e9dea759b25`  
		Last Modified: Thu, 01 Feb 2018 01:46:27 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308b93d35af9e1a44a4ea8de2b93770a334602685b0f1b0dfe183114935effa`  
		Last Modified: Thu, 01 Feb 2018 01:46:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4102ef22c2986d9d0f3a46a5bbcd92ef86982cc31b6e245e7a11a5f89be285e`  
		Last Modified: Thu, 01 Feb 2018 01:46:27 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fefc8e1aa4b544bc597f37c116f615cb754b1ff41d6f3ce13db8c05ee35012dd`  
		Last Modified: Thu, 01 Feb 2018 01:46:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:07054fe415d5d29684d2d321aa64c5bc1ae506aa49ecf5396bf7eb562aa33914
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63942956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48607aada35e94898e764616c7e1b3deabbb2d56d31d775f17d46dbac9460006`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 23:14:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:14:46 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 23:14:46 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 23:15:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 23:15:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 23:15:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 23:15:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 23:15:45 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 23:15:46 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 01 Feb 2018 15:14:28 GMT
ENV RABBITMQ_VERSION=3.7.3
# Thu, 01 Feb 2018 15:14:28 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.3
# Thu, 01 Feb 2018 15:14:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.3-1
# Thu, 01 Feb 2018 15:15:07 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 01 Feb 2018 15:15:08 GMT
ENV LANG=C.UTF-8
# Thu, 01 Feb 2018 15:15:08 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 01 Feb 2018 15:15:09 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 01 Feb 2018 15:15:09 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 01 Feb 2018 15:15:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 01 Feb 2018 15:15:11 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 01 Feb 2018 15:15:11 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 01 Feb 2018 15:15:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 01 Feb 2018 15:15:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Feb 2018 15:15:13 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 01 Feb 2018 15:15:13 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608d8fd7a6001a09dff4cc76414aa4711207466847dfa91271aa6dd09becdd6a`  
		Last Modified: Tue, 12 Dec 2017 23:21:52 GMT  
		Size: 4.2 MB (4231488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d214c26ea8bd4ea1468f2b7c9806f8f3cde7cd6c2f09660325ea38b81dcb9c13`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 4.1 KB (4082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9640468e3e315e94fa5dfdb6b79a97eb7f83beebca51e85a68ab3ef6a4b13106`  
		Last Modified: Tue, 12 Dec 2017 23:21:51 GMT  
		Size: 942.4 KB (942449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce50058b2ae9912872489ab639895bd412cd17a9a299fe4e208704d0ef03dd1f`  
		Last Modified: Tue, 12 Dec 2017 23:21:50 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de8bff935da4e19ec18fec56ba68c2cf72e41a4ad936934d6927c22d50d69dab`  
		Last Modified: Tue, 12 Dec 2017 23:21:56 GMT  
		Size: 24.8 MB (24837409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c761648fe31aca3c186d9a73c682c22ffcb30a594f22b96fa2e78b23d6a30d`  
		Last Modified: Thu, 01 Feb 2018 15:16:13 GMT  
		Size: 12.8 MB (12759712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be90f41eb672d64d2293c1f2b7b9e3dfc0c37cc4804b9047d2f018e2ca40eace`  
		Last Modified: Thu, 01 Feb 2018 15:16:10 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e65f360697bb21895fbaebdef4e47fa9f2bc452083681f59c0ea65f611cf02c`  
		Last Modified: Thu, 01 Feb 2018 15:16:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0568be132cb145edaacb300a276499170df1680725d228ecea02c28662a705`  
		Last Modified: Thu, 01 Feb 2018 15:16:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05ebfa4a8a75674fdfb61ff128e516c87da9136785875d92470002b7ba3f661`  
		Last Modified: Thu, 01 Feb 2018 15:16:10 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a97bc9ddcc109a4661f6c253f383a9dc803f48dc9cf80be643373ab4a62884`  
		Last Modified: Thu, 01 Feb 2018 15:16:10 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:fa71d9f1e1c9fe7cb21daa3f0ec8d513bb89772779bc8e7a7f5446a7b32ea147
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.3 MB (61348924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97265a45d7280976b4895b10f6f9b22f6c80781aecddb0d3614195fd17bdc72f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:07:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:07:51 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:07:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:08:30 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:08:31 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:09:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:09:05 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:09:05 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 01 Feb 2018 14:07:30 GMT
ENV RABBITMQ_VERSION=3.7.3
# Thu, 01 Feb 2018 14:07:30 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.3
# Thu, 01 Feb 2018 14:07:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.3-1
# Thu, 01 Feb 2018 14:08:24 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 01 Feb 2018 14:08:25 GMT
ENV LANG=C.UTF-8
# Thu, 01 Feb 2018 14:08:25 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 01 Feb 2018 14:08:26 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 01 Feb 2018 14:08:26 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 01 Feb 2018 14:08:27 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 01 Feb 2018 14:08:28 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 01 Feb 2018 14:08:28 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 01 Feb 2018 14:08:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 01 Feb 2018 14:08:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Feb 2018 14:08:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 01 Feb 2018 14:08:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681dc17295c86c86ee974da339cea0f010f6f5780ffd3b6fd3fa6b2a3d124fdd`  
		Last Modified: Wed, 13 Dec 2017 14:13:29 GMT  
		Size: 3.9 MB (3868482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03995e4857910fd538adfc3a896164f12117829662b917fd93835e24ec792b07`  
		Last Modified: Wed, 13 Dec 2017 14:13:28 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a7dd231e7e929346f4a5183b1f2df19bd46ef0f6ea9b79077593abd76f02737`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 926.2 KB (926167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a6235a7077293b77a5763b50aeb4468250c3243e9a414e68ade282ba5457045`  
		Last Modified: Wed, 13 Dec 2017 14:13:27 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de253191eb0702e608f45381e5cf3de24ea4a760bc740b04a51e8bd4f577b6c7`  
		Last Modified: Wed, 13 Dec 2017 14:13:32 GMT  
		Size: 24.5 MB (24541142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4466e64daea2ec86ac042badd050dfa3691f5edf0f232d49eec7903b5aa4703`  
		Last Modified: Thu, 01 Feb 2018 14:09:19 GMT  
		Size: 12.7 MB (12730832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8313bcb6cdebd2cd1035326a88e3a23aae2006da4b1d31b7932cf5b2bb71f489`  
		Last Modified: Thu, 01 Feb 2018 14:09:16 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6130edf7d8cafb6ab0f560edc779cd8914152b6442a09f03029845ffd65db5`  
		Last Modified: Thu, 01 Feb 2018 14:09:16 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f2a2e7493fde7d3e76d81efdbdc3586ed14d63a0e259c7927e4e934f86aed2`  
		Last Modified: Thu, 01 Feb 2018 14:09:16 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603288233c60fcaead0f0707791cb8157ea1f36ef9ffabf549bbbc7a003c6125`  
		Last Modified: Thu, 01 Feb 2018 14:09:17 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb5929c8bc156e9be3c7979d2ad6a66f6499d8cfd3cf6eb3c1a26f7ae64bc20`  
		Last Modified: Thu, 01 Feb 2018 14:09:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:70398a58338a84fc0eb62c874ffde8f19634491d9f4e2e8fc88599cec3cbaf14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 MB (62852559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c4a58a373b93feb5938c010c2277e5da33d2a2ddcbc8d668dbdea01c3667a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 14:53:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:53:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 14:53:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 14:54:26 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 14:54:27 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 14:55:29 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 14:55:29 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 14:55:30 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 14:55:31 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 01 Feb 2018 14:52:56 GMT
ENV RABBITMQ_VERSION=3.7.3
# Thu, 01 Feb 2018 14:52:56 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.3
# Thu, 01 Feb 2018 14:52:57 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.3-1
# Thu, 01 Feb 2018 14:53:52 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 01 Feb 2018 14:53:52 GMT
ENV LANG=C.UTF-8
# Thu, 01 Feb 2018 14:53:53 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 01 Feb 2018 14:53:54 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 01 Feb 2018 14:53:55 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 01 Feb 2018 14:53:57 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 01 Feb 2018 14:53:58 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 01 Feb 2018 14:53:59 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 01 Feb 2018 14:54:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 01 Feb 2018 14:54:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Feb 2018 14:54:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 01 Feb 2018 14:54:03 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb3f7722e72f404b7e544c9a358cc7390f02c0b391a14ea7dbecd85dca7d195`  
		Last Modified: Wed, 13 Dec 2017 15:03:22 GMT  
		Size: 4.1 MB (4073192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c72eaa15e586a9eb8cbde84a24922fdabb2aa060ef64831fb867757ac6f83a`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 4.1 KB (4073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0ebe8f28a8d2ed828ab5c0431545a097e3f46a3ac45e36976fde6daa9fb405d`  
		Last Modified: Wed, 13 Dec 2017 15:03:21 GMT  
		Size: 919.4 KB (919386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf8546d6f1127383410e3244beb4a3873b3305deab0f469ac13d1d0b112dee1`  
		Last Modified: Wed, 13 Dec 2017 15:03:19 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aabe4d57c4c33847b3343b87c3d4b7f0efe523535a70b98185a7237848d3780d`  
		Last Modified: Wed, 13 Dec 2017 15:03:23 GMT  
		Size: 24.8 MB (24762935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f72441aa92bfe5d320721b4d60839ac9182521122e3ba2a370f78654bc5a397`  
		Last Modified: Thu, 01 Feb 2018 14:56:57 GMT  
		Size: 12.8 MB (12754512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de287ca7892482e0148c2a0eb092eac74ef44baf20798d51896adab42b12b148`  
		Last Modified: Thu, 01 Feb 2018 14:56:52 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fd65eac9a233da0946af64f74ffd44f99e87cd532e0f4fa1b2a277390314b4`  
		Last Modified: Thu, 01 Feb 2018 14:56:52 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9766a24171f4b56ba95b9b9fbd18a39fa1c561ff06321bb91d2b9a848ad36ce3`  
		Last Modified: Thu, 01 Feb 2018 14:56:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4902cea5556aa117df2e85ff4c4d77225ee7489ee8b00c0bfac0eec19ed0072a`  
		Last Modified: Thu, 01 Feb 2018 14:56:52 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41b2d9ff1048e430ec1d1c925fe4d238fb38931fcad8f6ec4710c9c900a4080a`  
		Last Modified: Thu, 01 Feb 2018 14:56:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; 386

```console
$ docker pull rabbitmq@sha256:1338a85a7be9549ca0f710852fad6a80ff724090fbc879ead955f167df1a630a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69199180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dad84ea2d581227e24d1cdc8f9191cba6b746451b2ee73a8ac8c7bae83463f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:14:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:14:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 12 Dec 2017 21:14:36 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Dec 2017 21:14:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Dec 2017 21:14:52 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 12 Dec 2017 21:15:34 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:16:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 12 Dec 2017 21:16:46 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:16:47 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 01 Feb 2018 11:54:27 GMT
ENV RABBITMQ_VERSION=3.7.3
# Thu, 01 Feb 2018 11:54:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.3
# Thu, 01 Feb 2018 11:54:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.3-1
# Thu, 01 Feb 2018 11:56:47 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 01 Feb 2018 11:56:47 GMT
ENV LANG=C.UTF-8
# Thu, 01 Feb 2018 11:56:48 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 01 Feb 2018 11:56:49 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 01 Feb 2018 11:56:49 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 01 Feb 2018 11:56:50 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 01 Feb 2018 11:56:51 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 01 Feb 2018 11:56:51 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 01 Feb 2018 11:56:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 01 Feb 2018 11:56:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Feb 2018 11:56:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 01 Feb 2018 11:56:53 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7c11e0bc622b0180ed093c8a4da0dc404613fc4331a2436a3669aa08c6e818`  
		Last Modified: Tue, 12 Dec 2017 21:33:10 GMT  
		Size: 4.8 MB (4803791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f7b212f68d587a5e50aa75b4635c7d49a9c744d221e091404cb2d1cf4327a1`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 4.1 KB (4055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb0df0b481030711e1f4ccd5b60509dc4796c769e4d46ddf668819aba41c5d2`  
		Last Modified: Tue, 12 Dec 2017 21:33:05 GMT  
		Size: 931.6 KB (931574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e040f21d8962aea7005a7379e4852e408931ff4c1985b8debde30f1bcf14ca`  
		Last Modified: Tue, 12 Dec 2017 21:33:04 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5bbc5be701d46339ee9aa060f79d61ef2ea60c0a862dc9663bac7b97a8e169`  
		Last Modified: Tue, 12 Dec 2017 21:33:12 GMT  
		Size: 27.5 MB (27520131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3e676bc122e3f05b7706c65069da77fdf3eb258cbb8c0dd73441d4f0935957`  
		Last Modified: Thu, 01 Feb 2018 12:17:05 GMT  
		Size: 12.8 MB (12809988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f078553d1a95326bb442e663ee26a6e512fc94622417e62c2b1c2cc4af0d6f6`  
		Last Modified: Thu, 01 Feb 2018 12:17:02 GMT  
		Size: 2.3 KB (2259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1b18703f43ebd9ede39e94b391d5823f182c51abbd725c7725351da454b1f50`  
		Last Modified: Thu, 01 Feb 2018 12:17:02 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22bedc658b88b7aa3bb62e286660cd1ad422dda21c255a4f7ab026e0adba373d`  
		Last Modified: Thu, 01 Feb 2018 12:17:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af14323f69ce788e0337f399ca3c9ea14549d8b593864b95ff338a9fe299a883`  
		Last Modified: Thu, 01 Feb 2018 12:17:02 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385b9723324a61f027b9ff7be3fb01d0e96cbd56a7fab369d8061a9d706195ab`  
		Last Modified: Thu, 01 Feb 2018 12:17:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:1c414ecf35911ae43bcf4cebdeb5b915a372c892713ae0ba418485b4c20532de
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65817634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83006baa37d5075b07cb0753ef2e0a4f9de94314ec442ffe7953bf849c40bbe0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Wed, 13 Dec 2017 08:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:12:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 13 Dec 2017 08:12:32 GMT
ENV GOSU_VERSION=1.10
# Wed, 13 Dec 2017 08:14:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 13 Dec 2017 08:14:18 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 13 Dec 2017 08:15:55 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 08:15:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 13 Dec 2017 08:15:58 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 08:15:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 01 Feb 2018 08:11:26 GMT
ENV RABBITMQ_VERSION=3.7.3
# Thu, 01 Feb 2018 08:11:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.3
# Thu, 01 Feb 2018 08:11:28 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.3-1
# Thu, 01 Feb 2018 08:12:42 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 01 Feb 2018 08:12:43 GMT
ENV LANG=C.UTF-8
# Thu, 01 Feb 2018 08:12:44 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 01 Feb 2018 08:12:47 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 01 Feb 2018 08:12:49 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 01 Feb 2018 08:12:52 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 01 Feb 2018 08:12:56 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 01 Feb 2018 08:12:57 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 01 Feb 2018 08:13:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 01 Feb 2018 08:13:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Feb 2018 08:13:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 01 Feb 2018 08:13:04 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074d2b018f7cf8971581f936aa1922718699254821ac925337d59075ff941e16`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 4.4 MB (4360551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b59ed4bf511e4fbf8389c0a178fefb54388dd09f9fd41997517b5a18a77175`  
		Last Modified: Wed, 13 Dec 2017 08:25:12 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd7fb01f62115b9286f1e6a7d47d0c323e3b09c6bd6d04e59fd6af3b2fd8704`  
		Last Modified: Wed, 13 Dec 2017 08:25:13 GMT  
		Size: 920.7 KB (920674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:099a031f5f0df72a460e1d66fecbf4ebbbf062936d2d9a8474264bb64a6a9648`  
		Last Modified: Wed, 13 Dec 2017 08:25:11 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb365591fec586b108056a7461f34fbbecd7f579b59712c6a72e43c3f8a1ef2`  
		Last Modified: Wed, 13 Dec 2017 08:25:16 GMT  
		Size: 25.0 MB (25011533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b29e4617a690e87fc355b17ac2fbab9b82846f5d281836dbdf0622c0719b17`  
		Last Modified: Thu, 01 Feb 2018 08:16:06 GMT  
		Size: 12.8 MB (12773862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591609afe9e7d9c345b911f868fc371881a2b95815b7e0f1d1deb4d5657ff01b`  
		Last Modified: Thu, 01 Feb 2018 08:16:01 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200326206a650d21222cd387f7ba3dbea3a081413f67d14f7f8539ca0d24bbd4`  
		Last Modified: Thu, 01 Feb 2018 08:16:01 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010ec8e290fdc2fffb6110f6287089cfd892b2bcc0dda2630cde92e99e362240`  
		Last Modified: Thu, 01 Feb 2018 08:16:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422cc6def271c0ea33b40300abb9913be412063c9e228c94ed8219d8024b620f`  
		Last Modified: Thu, 01 Feb 2018 08:16:01 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d05a3a3364f4b3e1e9c2d46588bbfe56761a2cdbce654dc19b77fb0649f3ba2`  
		Last Modified: Thu, 01 Feb 2018 08:16:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; s390x

```console
$ docker pull rabbitmq@sha256:780b63c289ed222f834ad3e35d544402807679a4df1903e274e642cd01ea6769
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.6 MB (65625008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:914de7dab03783468914bff10b9d4ac1e1f50caa22ceec9af9a5e15addd01cc2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 12 Dec 2017 06:25:50 GMT
ADD file:8cd208817150f41f5b21f5c2b6641af023ddeaa6d842fe490190e20effe94a08 in / 
# Tue, 12 Dec 2017 06:25:51 GMT
CMD ["bash"]
# Sun, 07 Jan 2018 05:50:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 05:50:04 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sun, 07 Jan 2018 05:50:04 GMT
ENV GOSU_VERSION=1.10
# Sun, 07 Jan 2018 05:50:18 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sun, 07 Jan 2018 05:50:19 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Sun, 07 Jan 2018 05:51:02 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sun, 07 Jan 2018 05:51:02 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sun, 07 Jan 2018 05:51:02 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 07 Jan 2018 05:51:03 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Thu, 01 Feb 2018 18:06:27 GMT
ENV RABBITMQ_VERSION=3.7.3
# Thu, 01 Feb 2018 18:06:27 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.3
# Thu, 01 Feb 2018 18:06:27 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.3-1
# Thu, 01 Feb 2018 18:06:50 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Thu, 01 Feb 2018 18:06:51 GMT
ENV LANG=C.UTF-8
# Thu, 01 Feb 2018 18:06:51 GMT
ENV HOME=/var/lib/rabbitmq
# Thu, 01 Feb 2018 18:06:51 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Thu, 01 Feb 2018 18:06:52 GMT
VOLUME [/var/lib/rabbitmq]
# Thu, 01 Feb 2018 18:06:52 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Thu, 01 Feb 2018 18:06:53 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Thu, 01 Feb 2018 18:06:53 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Thu, 01 Feb 2018 18:06:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 01 Feb 2018 18:06:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Feb 2018 18:06:54 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Thu, 01 Feb 2018 18:06:54 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:da91ecedba56836763b256841bfd01198234139e3e4824510318c25fa8cf140a`  
		Last Modified: Tue, 12 Dec 2017 06:31:22 GMT  
		Size: 22.3 MB (22333855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828bba68c3a5fb8a8970c0bc5d5319d4552bc5dc3c334387d709190b6f8df02e`  
		Last Modified: Sun, 07 Jan 2018 05:54:47 GMT  
		Size: 4.5 MB (4529920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda3635ae18c288126a481e27c84795e7e5a235ec47eb7e774e0da2145355b38`  
		Last Modified: Sun, 07 Jan 2018 05:54:45 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e791d2361744e0037e87af1c41e6b8320fdfddef20a2dea4e014482a16b7a2`  
		Last Modified: Sun, 07 Jan 2018 05:54:45 GMT  
		Size: 938.0 KB (938026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed14a357281639c5a892c2a8ad78eaa46a4ed15b3282b83a2e8f91c99e4c11d5`  
		Last Modified: Sun, 07 Jan 2018 05:54:45 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d7af3a92e569f6f131ce807ddf9704ca23b7d0124b3b5116e7e7ca981bea37`  
		Last Modified: Sun, 07 Jan 2018 05:54:47 GMT  
		Size: 25.0 MB (25026153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992958526a1b3a23b8ded7d2116a78e433420915ac913db2428c380b53084187`  
		Last Modified: Thu, 01 Feb 2018 18:08:22 GMT  
		Size: 12.8 MB (12785797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efdd0369f73e181923b4eab2caa5697a7df6e03de3979672954ea5dfeed5e615`  
		Last Modified: Thu, 01 Feb 2018 18:08:19 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a86efeaf45316af92a492e412043e5cdfeddb24c475ba46710427e2a3d1f89d`  
		Last Modified: Thu, 01 Feb 2018 18:08:19 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ef7e27c02eb67e768b350f9c25f9b8be53819dcc877c506fc977f1b0f598671`  
		Last Modified: Thu, 01 Feb 2018 18:08:18 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d7ceebd0c02d3dbd380ce80e837e9d33be5729cf292e1a20d4ef3f1f107e07a`  
		Last Modified: Thu, 01 Feb 2018 18:08:19 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cad3c5348309c9e8fe9535ffdb2057d18ec363150ea35637b3de596409b400af`  
		Last Modified: Thu, 01 Feb 2018 18:08:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
