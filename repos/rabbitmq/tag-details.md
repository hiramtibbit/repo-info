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
-	[`rabbitmq:3.7.8`](#rabbitmq378)
-	[`rabbitmq:3.7.8-alpine`](#rabbitmq378-alpine)
-	[`rabbitmq:3.7.8-management`](#rabbitmq378-management)
-	[`rabbitmq:3.7.8-management-alpine`](#rabbitmq378-management-alpine)
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
$ docker pull rabbitmq@sha256:c019c868551be133c712ffaadb52951fd4ffdf0ef31e45d81dcb76fbba1cd9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3` - linux; amd64

```console
$ docker pull rabbitmq@sha256:5c8a8b5454ddae4fb5597223515c3a6e7e252fb83403cdf72162f7f0c354e8f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65789829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fdcccc8ade180bbc149f2834c3fca45e64bc1c3829309576d8eee6c8f20f3f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:02 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 05:21:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 05:21:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 05:21:14 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 05:21:38 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:38 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 05:21:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 05:21:39 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Fri, 21 Sep 2018 19:20:44 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 19:20:44 GMT
ENV LANG=C.UTF-8
# Fri, 21 Sep 2018 19:20:44 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:20:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:20:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 21 Sep 2018 19:20:47 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:20:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Sep 2018 19:20:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:20:49 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe35f04ebea261787064fcf29714d8a188578fd3aae88a1672366b5243a1b4`  
		Last Modified: Wed, 05 Sep 2018 05:24:51 GMT  
		Size: 4.5 MB (4498555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a118dc68c2e54abc54162dd19892c08a71709d7499eabe7f6ac95205c2494f`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c19971869789806dbf507bf25ba148decd6223ec7dcf5621f7555ebb9fcd41`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 951.9 KB (951900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74b797281ea162830289012ea83cfe1e59f93ac0f85f76ad9386dd41305fd30`  
		Last Modified: Wed, 05 Sep 2018 05:24:49 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b0494f0e3c744f09fd327476571006c12f9f6cfc048f97f2c9e6c66999db94`  
		Last Modified: Wed, 05 Sep 2018 05:24:52 GMT  
		Size: 27.5 MB (27500750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d980114df034ef4993a83465524fafa7344b25e19528982353c9cf74bf5f55a`  
		Last Modified: Fri, 21 Sep 2018 19:22:19 GMT  
		Size: 10.3 MB (10341393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ca5fedb825835294e2565cc58d227196127ecc0edc0c281346b26197bc100f`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1e615d6da0531fe7024d2a969229da3883db973c818a56c5d6a400c3a5c271`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9a78cfa9a669c16e12c1a9ac682402319955e856326ec083e07081a19b0b25`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6dad79c7b8b87e34a5e1daaf7feb10cbad88e100db107941e83f8794fb278cc`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bf45b8fd5229e3afde232d882b510fe05c8cdafb7a601bbb654e3f54767b8a`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:e6fd3fc0220e4f7d17f84105fabdd368ed1acab58e2eafe357ca046923f828cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61646967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8332c91fde7966d6387b24ae67e583ed6935fcde4c427438368de5e1a500bee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:45:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:45:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:46:06 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:46:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:46:07 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:46:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:58:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:58:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:58:44 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:58:44 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:58:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:58:46 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:58:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:58:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:58:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:58:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:58:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:58:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:58:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483021b9c38437adcd233ec231bbe3d5f2262264fdb2cfdd6040e28622abfeed`  
		Last Modified: Wed, 05 Sep 2018 11:49:48 GMT  
		Size: 4.2 MB (4231636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de799b221ef6d17d523a8146fae2f4c5b756afa8dbcde3436ebe67d2cfb3760`  
		Last Modified: Wed, 05 Sep 2018 11:49:46 GMT  
		Size: 4.1 KB (4086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e2b5ada6e33dc5ae042bd4ae10d7d2e5cef590482f162b4fc967c577be9776`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 942.3 KB (942332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65428a380acc7019931c23005421c6f7eacc5c73ae5a77a6340977af268cdb29`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4f4592eb0138d0e1a977e797f6b1b1861414b013b17251558a55338917b431`  
		Last Modified: Wed, 05 Sep 2018 11:49:50 GMT  
		Size: 25.0 MB (24988439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a36e2eac1d50e768d2e155c3fa6eb8e7ed70d329f075619ed2eedb3ce65da4`  
		Last Modified: Sat, 22 Sep 2018 09:00:04 GMT  
		Size: 10.3 MB (10310410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb90657b133110385ab6178da97ba097dc953c4db394ffff1370ef7f0b39b59`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42d8ba2e5a411d9a0e012ae3d4b234f938de9cbba8993655cd48317a78d8108`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9767a7551c4b2ee7f7101af8e55721ce83af6c18e25606d15095e146108ad04a`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859bd681e58f37404c3814d419985804f6fd270b5f056d568fce48e2e1d6ffbd`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a722bdd44282ba09454c487b7c111669310847853a6f817ec1e002625cf1ead`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:3d9d8c6470d4fbed7b38e7cce08f5530b87cfc019af5549052abacc99d41c532
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60688478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd979cc47d934888fc861b1a5e17d344fdf8107e11f00e5ccc6544081054dfc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 17:59:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:59:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 17:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 18:01:08 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 18:01:10 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 18:02:48 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:02:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 18:02:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 18:02:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:51:38 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:51:47 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:51:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:52:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:52:49 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:52:49 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:52:51 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:52:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:53:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:53:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:53:14 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:53:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:53:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:53:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:53:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e37db5cf675e4afee42d261d405850f9661011376c9e32dcf161b994b5784`  
		Last Modified: Wed, 05 Sep 2018 18:10:27 GMT  
		Size: 4.1 MB (4073269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a489138492c1c3398d5e832adb250d71806f6d1c1ee77f0d4386d242770e4f5`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786d0df6cef56007fb33342e229dc469e545f3fbd266b4b427d1fcd6f265084`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 919.2 KB (919245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8290a5f844dc24fafb21b0cc2eefa710b721caab388788f0f84fb6c5304125`  
		Last Modified: Wed, 05 Sep 2018 18:10:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacda0a12c7cb0992a5d95f75099782e66e2f4561cfa697f95a32df5c592bc68`  
		Last Modified: Wed, 05 Sep 2018 18:10:30 GMT  
		Size: 25.0 MB (25045917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf4ae8997417961ed19100842c7e6c280e4c623403e85c0047ae7cbdfa9208`  
		Last Modified: Sat, 22 Sep 2018 08:59:14 GMT  
		Size: 10.3 MB (10307125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62359fecc08685998249d40a89ab975841f91f6d7dda13315a83d8f3c7f50ab1`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d142bc95a688efcc89d03f06eb191ff71ac493a62059adbe7c8322f301fee`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbfe2ca2db93d20210ba636666631f84f380156d7fa7a98fe93a68cd7d9a366`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ee8a3aecd0459b8894c132648bdfb8b441130ca853ba2bba585daa25e7412`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0ab2b1147790075787c5b2251cf77110a3da7fa083d1fd2c40e5824d0c25f2`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:51afde8e3fd650c0531f0799984efea6ed6a234059185cdb859e46886617fc15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63737741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863b375131d15f8ec258360b0e8fe00cbe1eb2c0f54a8baaaf12a3a4f3785deb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:31:34 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:31:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:32:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:32:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:34:45 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:34:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:34:51 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:34:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:29:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:29:29 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:29:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:30:22 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:30:25 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:30:26 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:30:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:30:39 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:30:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:30:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:30:55 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:30:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:31:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:31:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:31:10 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579e7691721557327e3927ed84719e320cf6617c3acc48457fbe3ecd5d70f853`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 4.4 MB (4360587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2457b86f9cd5532629687ff9153d277b80e5c5c805dfbba681b8a51bc205fcc5`  
		Last Modified: Wed, 05 Sep 2018 11:41:29 GMT  
		Size: 4.1 KB (4105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69a3893e8f4d42d93f333b4f7a04240b2f1f8efe56cbf832b105ae32483ce4`  
		Last Modified: Wed, 05 Sep 2018 11:41:30 GMT  
		Size: 920.5 KB (920546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87de592d09499649ca13a67a2de44d7c46855451105c18148090363fc0cbb78c`  
		Last Modified: Wed, 05 Sep 2018 11:41:28 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd733fc519ab91b0b6f3b8dd93802dcff0937fa8db79069713e23b163526e8`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 25.4 MB (25378924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70161d40899550476a55bade31bc5e0e735c4ca8803318ed7c1370946c7ebc01`  
		Last Modified: Sat, 22 Sep 2018 08:34:27 GMT  
		Size: 10.3 MB (10325845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebe8c120af2d5327a3af173abe786ed49f8b73245005b32362fce5c6cba732`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d0bc3e2a4b9cfee255c21e4b04280da963048c8448361528ee06a25584c35e`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d898013a8c86393481ab0469058ec22bb6fe436e1c1a2630a4de118164c6b3d`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2e6de4feb935b3c11825f0894903590e2a6b059e53c3e73faf5f8804936600`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5760ba94169f92060fdfb0b4b2923580978c247695bb08c382dae2605ef71196`  
		Last Modified: Sat, 22 Sep 2018 08:34:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6`

```console
$ docker pull rabbitmq@sha256:2b99b9775526ced647e4668f539604bfb345463f0bdc7f0475ad05896982dcc2
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
$ docker pull rabbitmq@sha256:3b541e1951b52d1a221d68445f13df516d80d2b60820ebb2c2b2ea6e363760aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62960750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf679fb92ef8c4815da026f10fa14069445f2a0b70197568488d9f86d54ed2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:02 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 05:21:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 05:21:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 05:23:43 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:23:43 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 05:23:43 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 05:23:43 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 05:23:43 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 05:23:44 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 05:23:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 05:23:58 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:23:58 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 05:23:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 05:23:59 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 05:24:00 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 05:24:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 05:24:01 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 05:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 05:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 05:24:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 05:24:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe35f04ebea261787064fcf29714d8a188578fd3aae88a1672366b5243a1b4`  
		Last Modified: Wed, 05 Sep 2018 05:24:51 GMT  
		Size: 4.5 MB (4498555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a118dc68c2e54abc54162dd19892c08a71709d7499eabe7f6ac95205c2494f`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c19971869789806dbf507bf25ba148decd6223ec7dcf5621f7555ebb9fcd41`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 951.9 KB (951900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ff106f052e045acc2f662465dabd9b4cc66c251f17e0d8d46f599ca36b255c`  
		Last Modified: Wed, 05 Sep 2018 05:25:46 GMT  
		Size: 27.7 MB (27705749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111bf6d92c1e69b136135e9f1da0dfa7b0cc04403ccab3136749261515f49d63`  
		Last Modified: Wed, 05 Sep 2018 05:25:45 GMT  
		Size: 7.3 MB (7307812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e36093ef72e4f743ab6749c01e596fef19a17e732aa7514cac2684b3647ce3b`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d25d421b5177a3679c9efe92ebcaa0bdf8a5a79002b1cc30c397d542b73d017`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d7127dec7410754406af50e6dfab991a7f4ffdf46cd1c0fd164f53db47d18`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a257c140b2399677a05700396cfa57e1496073dc1d8d224a23d635d814fabc3`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502613d4d38962cfa6ae02acadc4a8071ca181d8cdd54a97534425b52db79f92`  
		Last Modified: Wed, 05 Sep 2018 05:25:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:d145a0f1d1e6d10332c77293451671cd973927e8c990823580a7de3598d86a2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58543915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7662755d86629e766757441c5314fa821ea92bfea0c63e213a39b3034ca77716`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:45:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:48:18 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:48:19 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:48:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:48:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 11:48:20 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 11:48:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 11:48:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 11:48:45 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:48:46 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 11:48:47 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 11:48:47 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 11:48:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 11:48:50 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 11:48:50 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:48:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 11:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:48:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 11:48:53 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483021b9c38437adcd233ec231bbe3d5f2262264fdb2cfdd6040e28622abfeed`  
		Last Modified: Wed, 05 Sep 2018 11:49:48 GMT  
		Size: 4.2 MB (4231636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de799b221ef6d17d523a8146fae2f4c5b756afa8dbcde3436ebe67d2cfb3760`  
		Last Modified: Wed, 05 Sep 2018 11:49:46 GMT  
		Size: 4.1 KB (4086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e2b5ada6e33dc5ae042bd4ae10d7d2e5cef590482f162b4fc967c577be9776`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 942.3 KB (942332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3095de2e908123bbe4b7d9dde4ed43bc9d0c9607b0fa38d3738d94cb5b42`  
		Last Modified: Wed, 05 Sep 2018 11:51:01 GMT  
		Size: 25.2 MB (25172498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a9618d145480ed9526a25eba5a4e1965da47f9408e923684cca9db33565ce7`  
		Last Modified: Wed, 05 Sep 2018 11:50:56 GMT  
		Size: 7.0 MB (7023800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256c7f54122b0496bfff1288e4e96acbfa61b011455253e51634de67fb0e5067`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a8f18af17a6a087f2f71cdc256d9de6e7d2673988e997e2d42d017247312e8`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1c89cb6b369b5f2b6cde6d0f2b5eb41298e9460ca070fbb0eaf256f6075a0b`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813557f2ea7e63daba256462e5395fb17715d792b71d98e5486d4e9db105001b`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3cabcfb7c82b626786aa491f7c694e0748e1c83aab94c68c70d9de6dd60aca`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:47f29bf6e9982b58491f6970285f7455732a819d5fbbc10ee7dfd50ef4521ef7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55795215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353c227f594b531dbf6bc49d7a2d6e0c04bc1392233b7dce25e95ed14b7c297f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:47:28 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 15:47:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:47:43 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 15:50:18 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:50:19 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 15:50:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:50:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 15:50:19 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 15:50:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 15:50:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 15:50:41 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:50:41 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 15:50:43 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 15:50:44 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 15:50:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 15:50:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 15:50:48 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:50:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 15:50:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:50:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 15:50:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5141246d136f294078d95e58ccfe7ad4e4cb36e3f326facc50866aa09e2b87b`  
		Last Modified: Wed, 05 Sep 2018 15:51:43 GMT  
		Size: 3.9 MB (3868671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31f084a36199cdd4d59bd6189376f7eaf477a8bef7fef0eba52f25fae320a9f`  
		Last Modified: Wed, 05 Sep 2018 15:51:42 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8fd793fb8cf44bd0327de96340e9367b4baaabaad4e35d2f36080d8b6ea5e9`  
		Last Modified: Wed, 05 Sep 2018 15:51:43 GMT  
		Size: 926.0 KB (926006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef243f4a8f0dcab8c778cf39b9defd95d5d784f60730e3b9c3afdae77e58fe7`  
		Last Modified: Wed, 05 Sep 2018 15:52:59 GMT  
		Size: 24.8 MB (24785252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a66e80f665b9e1dbcced8f8f151aba5ece6d7849737b67fcf356b7c2650395`  
		Last Modified: Wed, 05 Sep 2018 15:52:56 GMT  
		Size: 6.9 MB (6934344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a452ae6c6932c658c5ce57429b903810c8a7182594d69e714c93dbad347081c`  
		Last Modified: Wed, 05 Sep 2018 15:52:53 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4103b8222bb9c6d2c4d14c2d21293d17dce4018a5909a9f27ab67f561567a2a5`  
		Last Modified: Wed, 05 Sep 2018 15:52:54 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b41cc3daee5890e405122dcbf4bb102fc23ad0178d6e14cd96a520e469a90ac`  
		Last Modified: Wed, 05 Sep 2018 15:52:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f6f32459681107e5bab08dd4cf4b0c6e4d3476c4c68135c8937f8fbd33676`  
		Last Modified: Wed, 05 Sep 2018 15:52:54 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d530ba860e872a8bf07d2e820473f4235a3afc99a72455f5e8099f202046ab`  
		Last Modified: Wed, 05 Sep 2018 15:52:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:359c1ab6e1020f23b8f912f0b0087be88d68e7413b0efb977099a8fd48529d57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57385520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972ad8e09c66b49b37c71c405bec87bb5720a2a988c4ec419a42d60dcb72e326`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 17:59:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:59:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 17:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 18:01:08 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 18:06:56 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:06:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 18:06:57 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 18:06:58 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 18:06:59 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 18:07:00 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 18:07:01 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 18:07:54 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:07:55 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 18:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 18:07:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 18:08:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 18:08:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 18:08:04 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 18:08:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 18:08:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 18:08:09 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 18:08:10 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e37db5cf675e4afee42d261d405850f9661011376c9e32dcf161b994b5784`  
		Last Modified: Wed, 05 Sep 2018 18:10:27 GMT  
		Size: 4.1 MB (4073269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a489138492c1c3398d5e832adb250d71806f6d1c1ee77f0d4386d242770e4f5`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786d0df6cef56007fb33342e229dc469e545f3fbd266b4b427d1fcd6f265084`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 919.2 KB (919245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f28d2f910748dac84b3653ff2b93ea964b441f037fff2ac03dab9948e1f601`  
		Last Modified: Wed, 05 Sep 2018 18:14:22 GMT  
		Size: 25.0 MB (25043293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efd255458d46fa2b469b2e7cc982b2dda5cdb1297ead801422adc54537597bf`  
		Last Modified: Wed, 05 Sep 2018 18:14:17 GMT  
		Size: 7.0 MB (7007289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bdf91c364e692aedf21301b617487603c998f2177c02b1ddd1ac7eae05e58a`  
		Last Modified: Wed, 05 Sep 2018 18:14:13 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1c7dedfeb3b216373ddbfb403cc1fedf6bf932daa44fb7ab121a7971dcffd2`  
		Last Modified: Wed, 05 Sep 2018 18:14:14 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0647f0d7cec0d4f8771412ee350759fbc79416a7e530ecbdd481ed231b080c2d`  
		Last Modified: Wed, 05 Sep 2018 18:14:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3978682f63e5a01fbcb25c5a54b73974913c22b89174bf03a01f474089bed8`  
		Last Modified: Wed, 05 Sep 2018 18:14:14 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ec5a0b215cb6314ed172367b5a321c1e1dbf73aa51222ea09ecb3fcf5c5a51`  
		Last Modified: Wed, 05 Sep 2018 18:14:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; 386

```console
$ docker pull rabbitmq@sha256:28e8f4e485a3ed42868f72a25603936ed8da015edd2b0af1b0116bab45c377df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (64014674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53a523065515a7197610ed9279701189c32127d9d7ad19522898f10a3dd641e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 00:46:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:46:57 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 07 Sep 2018 00:46:58 GMT
ENV GOSU_VERSION=1.10
# Fri, 07 Sep 2018 00:47:09 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 07 Sep 2018 00:49:17 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 07 Sep 2018 00:49:18 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_VERSION=3.6.16
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Fri, 07 Sep 2018 00:49:19 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Fri, 07 Sep 2018 00:49:34 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:49:34 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 07 Sep 2018 00:49:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Sep 2018 00:49:35 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Sep 2018 00:49:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Sep 2018 00:49:36 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 07 Sep 2018 00:49:36 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 07 Sep 2018 00:49:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Sep 2018 00:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 00:49:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Sep 2018 00:49:38 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4dae48f2c41c273519bd218a68670fd300dd05b610af53de52cbd92e018d83`  
		Last Modified: Fri, 07 Sep 2018 00:50:33 GMT  
		Size: 4.8 MB (4803829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec4312e65d61f18a107cd8e5936a2ced8a79d49d10dc094a2e1c17d33a1810b`  
		Last Modified: Fri, 07 Sep 2018 00:50:31 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111d7d048cfd3b5609811a3f5c8139eb45fb2824715b10855d24520943ffb47d`  
		Last Modified: Fri, 07 Sep 2018 00:50:31 GMT  
		Size: 931.4 KB (931361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c662c03e1a8b23147d4634860b779e3068b1fdda263cd9d2470ade66bcfb93af`  
		Last Modified: Fri, 07 Sep 2018 00:51:36 GMT  
		Size: 27.8 MB (27820117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ee3c72fcc0ae938f4f272f3560172954b0d0ef482f0defb3d613be47cb99d6`  
		Last Modified: Fri, 07 Sep 2018 00:51:32 GMT  
		Size: 7.3 MB (7322124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e0e44bf8f31b9ec8bcd33438395cba207359939f1dad4b20a01682348701ae`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e25139e908330ec8225f8a2934fb7c0b4e0908f47af1c9de1be1e8e9d9669`  
		Last Modified: Fri, 07 Sep 2018 00:51:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca4fb17c89720c4149d56bce43815115e91bc0f9c163d58c94c1e9694c93bcc`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e013a87df8ef82eb032b6388b54488fb95f70f5a8dd58849f76b6af9624f2f4`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca62ed2a08a25bc86c44f76fd560258858c8af3954ab319279a6d5c9d0b8ffb`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:44fe34df4a5a95602e9e5ae8655a5418dd411a0de879d0e7a2af6bb9aeef9ac0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60491751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:889131bc4dbaa8c2390fc1ac8ec04ce57a7dc8c031beb219680fce2b13c68d5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:31:34 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:31:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:32:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:38:47 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:38:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:38:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:38:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 11:38:51 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 11:38:52 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 11:38:53 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 11:39:45 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:47 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 11:39:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 11:39:51 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 11:39:54 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 11:39:57 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 11:39:58 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:40:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 11:40:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:40:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 11:40:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579e7691721557327e3927ed84719e320cf6617c3acc48457fbe3ecd5d70f853`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 4.4 MB (4360587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2457b86f9cd5532629687ff9153d277b80e5c5c805dfbba681b8a51bc205fcc5`  
		Last Modified: Wed, 05 Sep 2018 11:41:29 GMT  
		Size: 4.1 KB (4105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69a3893e8f4d42d93f333b4f7a04240b2f1f8efe56cbf832b105ae32483ce4`  
		Last Modified: Wed, 05 Sep 2018 11:41:30 GMT  
		Size: 920.5 KB (920546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81251c6d8805204161b4f826152f551ebaa010ee2eb465a5e9a63b9f15414501`  
		Last Modified: Wed, 05 Sep 2018 11:43:03 GMT  
		Size: 25.5 MB (25492633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2abefcd57965d66cb26fa7a7b1c78f0a76beb340762f4366252a9b8966533`  
		Last Modified: Wed, 05 Sep 2018 11:43:00 GMT  
		Size: 7.0 MB (6966654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8683a012eb214223511b02577788e5370bd42086d17b27ac895b1dd1621889f`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5661e30c4b93f152706ce9084c6af0c615ba39bb81fa3b8baeda1f46b96a370`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463dd1237ead64047606a54860760d3983e2c043d9fbcfff43a8a086f520b0ac`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535176d7b5948a93d575525c10a6f95e29ea1ccc81f687ea40c56712bb5a9a14`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbe4cdd1c81b77b825dd09760a96eeb842901da81e135366f225ee6ef691e11`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6` - linux; s390x

```console
$ docker pull rabbitmq@sha256:c52f63d13fe9455a7848e371dd69a0a1680d4060861d42713af92ff0e4e024c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60476922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0c487d8000da711a12b32b2dc06398c849a6b36bb03f7282c392ef37d53b08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:10:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:10:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 14:10:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 14:10:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 14:12:32 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:12:32 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 14:12:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 14:13:00 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:13:00 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 14:13:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 14:13:01 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 14:13:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 14:13:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 14:13:03 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:13:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 14:13:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 14:13:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 14:13:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486c2c2490eb81017dce27f813906639a902cc88712d9ac2b0f82224a2be95c5`  
		Last Modified: Wed, 05 Sep 2018 14:14:13 GMT  
		Size: 4.5 MB (4529994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34d0bc6dcfc4dbdedfaa97c4ac5437d8e256e085c4e404c22abf6aa34f047ba`  
		Last Modified: Wed, 05 Sep 2018 14:14:10 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69d2beab3371bbcea2702a538b5f6eda37ed482f86855cf0ca02a0d2dd00372`  
		Last Modified: Wed, 05 Sep 2018 14:14:10 GMT  
		Size: 937.9 KB (937895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57745f11284bfc512fc0bd9c6c541022c4b9a9dc1fe17eda6db5757b2fb69f5`  
		Last Modified: Wed, 05 Sep 2018 14:15:18 GMT  
		Size: 25.6 MB (25622378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804b881b30adb95339becf45a308eb656a75487f49f9c32a4559a3436fff0635`  
		Last Modified: Wed, 05 Sep 2018 14:15:15 GMT  
		Size: 7.0 MB (7041269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20abb4e74be2763e44aa24e6c0b10f3625fd76ae19518971a6443a7506f15180`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ea3fe27b1b45a20aced370325bbe8c06228712b7f21ec1412bac09580ad85c`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1441a3bc9631da6a87b32d8c01932b76563ab22fe62994146207fea62010e7eb`  
		Last Modified: Wed, 05 Sep 2018 14:15:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b50483b73ddd77f26d203bafdd444eeab15f85a125266bd905379d272c521f`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4210fa5ff5f97c5afece3cde079c799a7d77062437f6a488302334319dc73a0a`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16`

```console
$ docker pull rabbitmq@sha256:2b99b9775526ced647e4668f539604bfb345463f0bdc7f0475ad05896982dcc2
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
$ docker pull rabbitmq@sha256:3b541e1951b52d1a221d68445f13df516d80d2b60820ebb2c2b2ea6e363760aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62960750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf679fb92ef8c4815da026f10fa14069445f2a0b70197568488d9f86d54ed2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:02 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 05:21:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 05:21:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 05:23:43 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:23:43 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 05:23:43 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 05:23:43 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 05:23:43 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 05:23:44 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 05:23:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 05:23:58 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:23:58 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 05:23:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 05:23:59 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 05:24:00 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 05:24:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 05:24:01 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 05:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 05:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 05:24:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 05:24:02 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe35f04ebea261787064fcf29714d8a188578fd3aae88a1672366b5243a1b4`  
		Last Modified: Wed, 05 Sep 2018 05:24:51 GMT  
		Size: 4.5 MB (4498555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a118dc68c2e54abc54162dd19892c08a71709d7499eabe7f6ac95205c2494f`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c19971869789806dbf507bf25ba148decd6223ec7dcf5621f7555ebb9fcd41`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 951.9 KB (951900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ff106f052e045acc2f662465dabd9b4cc66c251f17e0d8d46f599ca36b255c`  
		Last Modified: Wed, 05 Sep 2018 05:25:46 GMT  
		Size: 27.7 MB (27705749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111bf6d92c1e69b136135e9f1da0dfa7b0cc04403ccab3136749261515f49d63`  
		Last Modified: Wed, 05 Sep 2018 05:25:45 GMT  
		Size: 7.3 MB (7307812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e36093ef72e4f743ab6749c01e596fef19a17e732aa7514cac2684b3647ce3b`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d25d421b5177a3679c9efe92ebcaa0bdf8a5a79002b1cc30c397d542b73d017`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d7127dec7410754406af50e6dfab991a7f4ffdf46cd1c0fd164f53db47d18`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a257c140b2399677a05700396cfa57e1496073dc1d8d224a23d635d814fabc3`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502613d4d38962cfa6ae02acadc4a8071ca181d8cdd54a97534425b52db79f92`  
		Last Modified: Wed, 05 Sep 2018 05:25:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:d145a0f1d1e6d10332c77293451671cd973927e8c990823580a7de3598d86a2c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58543915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7662755d86629e766757441c5314fa821ea92bfea0c63e213a39b3034ca77716`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:45:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:48:18 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:48:19 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:48:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:48:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 11:48:20 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 11:48:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 11:48:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 11:48:45 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:48:46 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 11:48:47 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 11:48:47 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 11:48:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 11:48:50 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 11:48:50 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:48:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 11:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:48:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 11:48:53 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483021b9c38437adcd233ec231bbe3d5f2262264fdb2cfdd6040e28622abfeed`  
		Last Modified: Wed, 05 Sep 2018 11:49:48 GMT  
		Size: 4.2 MB (4231636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de799b221ef6d17d523a8146fae2f4c5b756afa8dbcde3436ebe67d2cfb3760`  
		Last Modified: Wed, 05 Sep 2018 11:49:46 GMT  
		Size: 4.1 KB (4086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e2b5ada6e33dc5ae042bd4ae10d7d2e5cef590482f162b4fc967c577be9776`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 942.3 KB (942332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3095de2e908123bbe4b7d9dde4ed43bc9d0c9607b0fa38d3738d94cb5b42`  
		Last Modified: Wed, 05 Sep 2018 11:51:01 GMT  
		Size: 25.2 MB (25172498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a9618d145480ed9526a25eba5a4e1965da47f9408e923684cca9db33565ce7`  
		Last Modified: Wed, 05 Sep 2018 11:50:56 GMT  
		Size: 7.0 MB (7023800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256c7f54122b0496bfff1288e4e96acbfa61b011455253e51634de67fb0e5067`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a8f18af17a6a087f2f71cdc256d9de6e7d2673988e997e2d42d017247312e8`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1c89cb6b369b5f2b6cde6d0f2b5eb41298e9460ca070fbb0eaf256f6075a0b`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813557f2ea7e63daba256462e5395fb17715d792b71d98e5486d4e9db105001b`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3cabcfb7c82b626786aa491f7c694e0748e1c83aab94c68c70d9de6dd60aca`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:47f29bf6e9982b58491f6970285f7455732a819d5fbbc10ee7dfd50ef4521ef7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55795215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353c227f594b531dbf6bc49d7a2d6e0c04bc1392233b7dce25e95ed14b7c297f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:47:28 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 15:47:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:47:43 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 15:50:18 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:50:19 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 15:50:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:50:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 15:50:19 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 15:50:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 15:50:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 15:50:41 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:50:41 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 15:50:43 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 15:50:44 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 15:50:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 15:50:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 15:50:48 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:50:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 15:50:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:50:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 15:50:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5141246d136f294078d95e58ccfe7ad4e4cb36e3f326facc50866aa09e2b87b`  
		Last Modified: Wed, 05 Sep 2018 15:51:43 GMT  
		Size: 3.9 MB (3868671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31f084a36199cdd4d59bd6189376f7eaf477a8bef7fef0eba52f25fae320a9f`  
		Last Modified: Wed, 05 Sep 2018 15:51:42 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8fd793fb8cf44bd0327de96340e9367b4baaabaad4e35d2f36080d8b6ea5e9`  
		Last Modified: Wed, 05 Sep 2018 15:51:43 GMT  
		Size: 926.0 KB (926006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef243f4a8f0dcab8c778cf39b9defd95d5d784f60730e3b9c3afdae77e58fe7`  
		Last Modified: Wed, 05 Sep 2018 15:52:59 GMT  
		Size: 24.8 MB (24785252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a66e80f665b9e1dbcced8f8f151aba5ece6d7849737b67fcf356b7c2650395`  
		Last Modified: Wed, 05 Sep 2018 15:52:56 GMT  
		Size: 6.9 MB (6934344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a452ae6c6932c658c5ce57429b903810c8a7182594d69e714c93dbad347081c`  
		Last Modified: Wed, 05 Sep 2018 15:52:53 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4103b8222bb9c6d2c4d14c2d21293d17dce4018a5909a9f27ab67f561567a2a5`  
		Last Modified: Wed, 05 Sep 2018 15:52:54 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b41cc3daee5890e405122dcbf4bb102fc23ad0178d6e14cd96a520e469a90ac`  
		Last Modified: Wed, 05 Sep 2018 15:52:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f6f32459681107e5bab08dd4cf4b0c6e4d3476c4c68135c8937f8fbd33676`  
		Last Modified: Wed, 05 Sep 2018 15:52:54 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d530ba860e872a8bf07d2e820473f4235a3afc99a72455f5e8099f202046ab`  
		Last Modified: Wed, 05 Sep 2018 15:52:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:359c1ab6e1020f23b8f912f0b0087be88d68e7413b0efb977099a8fd48529d57
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57385520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972ad8e09c66b49b37c71c405bec87bb5720a2a988c4ec419a42d60dcb72e326`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 17:59:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:59:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 17:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 18:01:08 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 18:06:56 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:06:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 18:06:57 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 18:06:58 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 18:06:59 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 18:07:00 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 18:07:01 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 18:07:54 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:07:55 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 18:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 18:07:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 18:08:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 18:08:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 18:08:04 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 18:08:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 18:08:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 18:08:09 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 18:08:10 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e37db5cf675e4afee42d261d405850f9661011376c9e32dcf161b994b5784`  
		Last Modified: Wed, 05 Sep 2018 18:10:27 GMT  
		Size: 4.1 MB (4073269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a489138492c1c3398d5e832adb250d71806f6d1c1ee77f0d4386d242770e4f5`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786d0df6cef56007fb33342e229dc469e545f3fbd266b4b427d1fcd6f265084`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 919.2 KB (919245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f28d2f910748dac84b3653ff2b93ea964b441f037fff2ac03dab9948e1f601`  
		Last Modified: Wed, 05 Sep 2018 18:14:22 GMT  
		Size: 25.0 MB (25043293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efd255458d46fa2b469b2e7cc982b2dda5cdb1297ead801422adc54537597bf`  
		Last Modified: Wed, 05 Sep 2018 18:14:17 GMT  
		Size: 7.0 MB (7007289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bdf91c364e692aedf21301b617487603c998f2177c02b1ddd1ac7eae05e58a`  
		Last Modified: Wed, 05 Sep 2018 18:14:13 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1c7dedfeb3b216373ddbfb403cc1fedf6bf932daa44fb7ab121a7971dcffd2`  
		Last Modified: Wed, 05 Sep 2018 18:14:14 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0647f0d7cec0d4f8771412ee350759fbc79416a7e530ecbdd481ed231b080c2d`  
		Last Modified: Wed, 05 Sep 2018 18:14:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3978682f63e5a01fbcb25c5a54b73974913c22b89174bf03a01f474089bed8`  
		Last Modified: Wed, 05 Sep 2018 18:14:14 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ec5a0b215cb6314ed172367b5a321c1e1dbf73aa51222ea09ecb3fcf5c5a51`  
		Last Modified: Wed, 05 Sep 2018 18:14:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16` - linux; 386

```console
$ docker pull rabbitmq@sha256:28e8f4e485a3ed42868f72a25603936ed8da015edd2b0af1b0116bab45c377df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (64014674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b53a523065515a7197610ed9279701189c32127d9d7ad19522898f10a3dd641e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 00:46:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:46:57 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 07 Sep 2018 00:46:58 GMT
ENV GOSU_VERSION=1.10
# Fri, 07 Sep 2018 00:47:09 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 07 Sep 2018 00:49:17 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 07 Sep 2018 00:49:18 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_VERSION=3.6.16
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Fri, 07 Sep 2018 00:49:19 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Fri, 07 Sep 2018 00:49:34 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:49:34 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 07 Sep 2018 00:49:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Sep 2018 00:49:35 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Sep 2018 00:49:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Sep 2018 00:49:36 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 07 Sep 2018 00:49:36 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 07 Sep 2018 00:49:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Sep 2018 00:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 00:49:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Sep 2018 00:49:38 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4dae48f2c41c273519bd218a68670fd300dd05b610af53de52cbd92e018d83`  
		Last Modified: Fri, 07 Sep 2018 00:50:33 GMT  
		Size: 4.8 MB (4803829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec4312e65d61f18a107cd8e5936a2ced8a79d49d10dc094a2e1c17d33a1810b`  
		Last Modified: Fri, 07 Sep 2018 00:50:31 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111d7d048cfd3b5609811a3f5c8139eb45fb2824715b10855d24520943ffb47d`  
		Last Modified: Fri, 07 Sep 2018 00:50:31 GMT  
		Size: 931.4 KB (931361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c662c03e1a8b23147d4634860b779e3068b1fdda263cd9d2470ade66bcfb93af`  
		Last Modified: Fri, 07 Sep 2018 00:51:36 GMT  
		Size: 27.8 MB (27820117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ee3c72fcc0ae938f4f272f3560172954b0d0ef482f0defb3d613be47cb99d6`  
		Last Modified: Fri, 07 Sep 2018 00:51:32 GMT  
		Size: 7.3 MB (7322124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e0e44bf8f31b9ec8bcd33438395cba207359939f1dad4b20a01682348701ae`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e25139e908330ec8225f8a2934fb7c0b4e0908f47af1c9de1be1e8e9d9669`  
		Last Modified: Fri, 07 Sep 2018 00:51:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca4fb17c89720c4149d56bce43815115e91bc0f9c163d58c94c1e9694c93bcc`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e013a87df8ef82eb032b6388b54488fb95f70f5a8dd58849f76b6af9624f2f4`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca62ed2a08a25bc86c44f76fd560258858c8af3954ab319279a6d5c9d0b8ffb`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:44fe34df4a5a95602e9e5ae8655a5418dd411a0de879d0e7a2af6bb9aeef9ac0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60491751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:889131bc4dbaa8c2390fc1ac8ec04ce57a7dc8c031beb219680fce2b13c68d5c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:31:34 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:31:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:32:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:38:47 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:38:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:38:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:38:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 11:38:51 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 11:38:52 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 11:38:53 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 11:39:45 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:47 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 11:39:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 11:39:51 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 11:39:54 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 11:39:57 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 11:39:58 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:40:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 11:40:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:40:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 11:40:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579e7691721557327e3927ed84719e320cf6617c3acc48457fbe3ecd5d70f853`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 4.4 MB (4360587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2457b86f9cd5532629687ff9153d277b80e5c5c805dfbba681b8a51bc205fcc5`  
		Last Modified: Wed, 05 Sep 2018 11:41:29 GMT  
		Size: 4.1 KB (4105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69a3893e8f4d42d93f333b4f7a04240b2f1f8efe56cbf832b105ae32483ce4`  
		Last Modified: Wed, 05 Sep 2018 11:41:30 GMT  
		Size: 920.5 KB (920546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81251c6d8805204161b4f826152f551ebaa010ee2eb465a5e9a63b9f15414501`  
		Last Modified: Wed, 05 Sep 2018 11:43:03 GMT  
		Size: 25.5 MB (25492633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2abefcd57965d66cb26fa7a7b1c78f0a76beb340762f4366252a9b8966533`  
		Last Modified: Wed, 05 Sep 2018 11:43:00 GMT  
		Size: 7.0 MB (6966654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8683a012eb214223511b02577788e5370bd42086d17b27ac895b1dd1621889f`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5661e30c4b93f152706ce9084c6af0c615ba39bb81fa3b8baeda1f46b96a370`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463dd1237ead64047606a54860760d3983e2c043d9fbcfff43a8a086f520b0ac`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535176d7b5948a93d575525c10a6f95e29ea1ccc81f687ea40c56712bb5a9a14`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbe4cdd1c81b77b825dd09760a96eeb842901da81e135366f225ee6ef691e11`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16` - linux; s390x

```console
$ docker pull rabbitmq@sha256:c52f63d13fe9455a7848e371dd69a0a1680d4060861d42713af92ff0e4e024c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60476922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0c487d8000da711a12b32b2dc06398c849a6b36bb03f7282c392ef37d53b08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:10:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:10:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 14:10:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 14:10:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 14:12:32 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:12:32 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 14:12:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 14:13:00 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:13:00 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 14:13:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 14:13:01 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 14:13:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 14:13:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 14:13:03 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:13:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 14:13:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 14:13:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 14:13:05 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486c2c2490eb81017dce27f813906639a902cc88712d9ac2b0f82224a2be95c5`  
		Last Modified: Wed, 05 Sep 2018 14:14:13 GMT  
		Size: 4.5 MB (4529994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34d0bc6dcfc4dbdedfaa97c4ac5437d8e256e085c4e404c22abf6aa34f047ba`  
		Last Modified: Wed, 05 Sep 2018 14:14:10 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69d2beab3371bbcea2702a538b5f6eda37ed482f86855cf0ca02a0d2dd00372`  
		Last Modified: Wed, 05 Sep 2018 14:14:10 GMT  
		Size: 937.9 KB (937895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57745f11284bfc512fc0bd9c6c541022c4b9a9dc1fe17eda6db5757b2fb69f5`  
		Last Modified: Wed, 05 Sep 2018 14:15:18 GMT  
		Size: 25.6 MB (25622378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804b881b30adb95339becf45a308eb656a75487f49f9c32a4559a3436fff0635`  
		Last Modified: Wed, 05 Sep 2018 14:15:15 GMT  
		Size: 7.0 MB (7041269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20abb4e74be2763e44aa24e6c0b10f3625fd76ae19518971a6443a7506f15180`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ea3fe27b1b45a20aced370325bbe8c06228712b7f21ec1412bac09580ad85c`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1441a3bc9631da6a87b32d8c01932b76563ab22fe62994146207fea62010e7eb`  
		Last Modified: Wed, 05 Sep 2018 14:15:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b50483b73ddd77f26d203bafdd444eeab15f85a125266bd905379d272c521f`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4210fa5ff5f97c5afece3cde079c799a7d77062437f6a488302334319dc73a0a`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16-alpine`

```console
$ docker pull rabbitmq@sha256:af2dead3ff41233279a86d9c5a19fc5b7fdbbe01521d18bb64fc7cedba0a830f
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
$ docker pull rabbitmq@sha256:2c15184a7074b530282e6133dad792d4a46aac7c4cc8933e8ec847c0f320f45e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26069154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab9b6cf31f915597143428a003b4664bdaf32561b938310e234752bba040cba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 02:53:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 02:53:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 02:53:56 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 02:53:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 02:54:29 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 02:54:29 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 02:54:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 02:54:34 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 02:54:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 02:54:34 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 02:54:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 02:54:36 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 02:54:36 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 02:54:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 02:54:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 02:54:36 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0839f7c4bc75ca0f7cdac3608503344e6b4aceeaf40ca2808d0c5eb577ae49`  
		Last Modified: Wed, 12 Sep 2018 02:55:10 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ca51e7c431a28e32ee85a8a5626326770d4cc7c6982b6718f2496308bb3f8`  
		Last Modified: Wed, 12 Sep 2018 02:55:09 GMT  
		Size: 9.1 KB (9060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b799497b1c496754f3279b4ea0dfdf1808c34a711408ebdf6b1885f6f34d9bb8`  
		Last Modified: Wed, 12 Sep 2018 02:55:13 GMT  
		Size: 18.7 MB (18709062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68437d33170edc8f1b4a93d17e0d777544599025b13cc1c6aeeb5844122ebd2a`  
		Last Modified: Wed, 12 Sep 2018 02:56:25 GMT  
		Size: 5.1 MB (5138369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2851b70f7d057198a161ad549ae87277834eee521d02b4f923762f60fef32e9`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14125ba850e22a0b8fa1d5fba6eecb3b00c6b6986f949f9c82f8bd09f7754ea`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99f62867a20307fbb899c190a7e9dbb92a777c99629edfe41a79ac62b14ed4`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3f51ec38dbde16ba66fb06e3a598e8bebb88295d23da58ef76888879ccb0c4`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:8000670e5258ddc7585b6547f420d7948493123dcec8358fb3f0e519f6208526
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23598893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c600f20e8befd7321bba4e55d3c930e1ccecd89deeaa2bc5f814e46095b0279`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:15:03 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 08:15:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 08:15:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 08:15:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:15:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 08:15:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 08:15:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Sat, 15 Sep 2018 09:11:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 15 Sep 2018 09:11:06 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 15 Sep 2018 09:11:08 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 15 Sep 2018 09:11:08 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 15 Sep 2018 09:11:09 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 15 Sep 2018 09:11:10 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 15 Sep 2018 09:11:11 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:11:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 09:11:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 15 Sep 2018 09:11:12 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ab7d82bf045d6b83b49344082af7a63d456866771ec60323e02d8ba54d348`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404cd7746429b5adac001a8efa2a282b5106a8a7c8d2ef2e225eda23e4a69ef`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 9.0 KB (8987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04b3620c9d7a0f231a2b41fb9ee2016ac2d8bfdfd2ba7917679aa1e2cd0f822`  
		Last Modified: Sat, 15 Sep 2018 09:11:49 GMT  
		Size: 16.3 MB (16308397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77bfdd632b812d99cf633b13a2c2d871c3115ee9c3f649d350f2849ccb7ec420`  
		Last Modified: Sat, 15 Sep 2018 09:12:29 GMT  
		Size: 5.1 MB (5129079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef01881b2358f5d25ce5c6b2257b95666cc025a015785c927767c38e4ca4787`  
		Last Modified: Sat, 15 Sep 2018 09:12:28 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1d8f79ae17ff4ce1931e34245ed48f50414e6bd418e51d098e2a636c76b3df`  
		Last Modified: Sat, 15 Sep 2018 09:12:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbb78620a14bec4c8ad5880da27cc8c1dd709f382e1ce160d6c65b2d420e58e`  
		Last Modified: Sat, 15 Sep 2018 09:12:28 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ac3271b8a6435c044c874bae1c37dc2d4cbce3ff92bc732f7b483d80db2d88`  
		Last Modified: Sat, 15 Sep 2018 09:12:29 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:f1c70e3201d1d72c1a9814f8eaaa759c2e4449c577c37f6d4339eb2122a00592
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23528434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c711bea8e9b108cbf7b54d8f59cda09172267032a14f17c3752ebfdd7ae40672`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 22 Sep 2018 08:55:17 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 22 Sep 2018 08:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 22 Sep 2018 08:55:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 22 Sep 2018 08:55:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Sep 2018 08:55:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:57:57 GMT
ENV RABBITMQ_VERSION=3.6.16
# Sat, 22 Sep 2018 08:57:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Sat, 22 Sep 2018 08:58:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:58:08 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:58:10 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:58:10 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:58:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:58:14 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:58:15 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:58:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:58:17 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:58:17 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9855a7536b42bdcc9774489c4e1e9b8ee79a04e7abb5de9a61878f0870cbfc1`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8ae4b960c46131b8c15e06d3fd15a734a2737404ae494ca98a9973bb8e3fcb`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e020a68ecb622c4ef5b488b3fd801d8b0a903b0b593a7d653f544775add7`  
		Last Modified: Sat, 22 Sep 2018 09:01:03 GMT  
		Size: 16.3 MB (16285564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3a906a74a50a301c03b928558e96ea3d1c5a9f8af47136a361df0515ab9f7f`  
		Last Modified: Sat, 22 Sep 2018 09:02:49 GMT  
		Size: 5.1 MB (5128243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15db32b1b4d4744c807b66ac2e0e7b1199b31a8d24ed517e543b96997273190`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14dd28958e3c95c33b6b4b0f56286149ed324eb3eb8791b1892a644dd1e125a`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f844937f230d0067f1915bc8cb24c3b741b9315c073d3de9e86b3e5358462f94`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eab78232377aba8aaf7c26774c59c8c2e4bc14fe4f36991f34f4b28ce8eb3f`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:f141e4db297ea701b8ece755f4d3c97f8831f569c58ee376b4281c86105d628b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26291466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b21b4ca61b47c749dce3d452a843c706b20785d9de7798f8be608aea1a42cfbb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 16:56:45 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 16:56:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 16:56:48 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 16:56:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 16:57:22 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 16:57:22 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 16:57:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 16:57:27 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 16:57:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 16:57:28 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 16:57:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 16:57:29 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 16:57:29 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 16:57:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 16:57:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 16:57:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9e27f0211a0ac7e9b4d031a8ae3842bbcbd2fe5e0c67e195888f9910cb2f53`  
		Last Modified: Wed, 12 Sep 2018 16:57:57 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9cdf242dd2dd8af9fe8a1f1b06d07423cb042e98d120ffbb156012f1bcf33c`  
		Last Modified: Wed, 12 Sep 2018 16:57:57 GMT  
		Size: 9.1 KB (9125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2298b98abbf8927784e111ad51b75a75de27173f8e35f46961b5d992a08f63`  
		Last Modified: Wed, 12 Sep 2018 16:58:01 GMT  
		Size: 18.9 MB (18868324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6e0cc486919d1ea3222d60e3e50c12356505d38612c1fba03baad5b83b47d7`  
		Last Modified: Wed, 12 Sep 2018 16:58:44 GMT  
		Size: 5.1 MB (5136642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce934f63d0af9de52fc50a959fda57b5567fcc6c9cf8ad89bafcdbc9cfeb7c75`  
		Last Modified: Wed, 12 Sep 2018 16:58:44 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db01e66a72334ed66a6ae5920141db1311b00af3ea21c6b47cc8a0eb1985735`  
		Last Modified: Wed, 12 Sep 2018 16:58:43 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06b1296b580d49fbd698f619b5258e7ca51dbb6cb6ec09d667fd40e0d465ecb`  
		Last Modified: Wed, 12 Sep 2018 16:58:43 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235393388c92ea8a5de1a9fd0265a181ed7554612f7c4632535266954af4c3d5`  
		Last Modified: Wed, 12 Sep 2018 16:58:43 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:196f69585a6170003992c56ead3bdf9cd81daf7fc3dbe3a772e41e41c33c6a10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23827035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddc4fc9266526384aa30eb5f3ac796cf13ee89ef5ddec1ce2b690bff859f350`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:32:06 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:32:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:32:21 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:32:22 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:32:24 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:32:25 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:32:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 11:33:52 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 11:33:53 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 11:34:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 11:34:04 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 11:34:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 11:34:13 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 11:34:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 11:34:20 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 11:34:21 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 11:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 11:34:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 11:34:25 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9690f1f749a7f0b179eb76f9cc4ebcc64b209d5e28215bb0b7c34b7dcd4c86`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf99cc7ead890ac43c261cd845b9158794d9a5ea0df4e1b8baa5f584f3e5045`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8dcc93812fc0b7d5834d65e6589d35279fba3160ba5a65182ae12d3f0eb9d6`  
		Last Modified: Wed, 12 Sep 2018 11:35:37 GMT  
		Size: 16.5 MB (16486759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2888c195335431abdebfdd6223e8dff635c36327e3bada3e3f4c65e543394c96`  
		Last Modified: Wed, 12 Sep 2018 11:37:24 GMT  
		Size: 5.1 MB (5129565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510c9b8e38b8fa56fb4637965b1aa7d83777cfbae5dec0d90b2a8ce96ccfa553`  
		Last Modified: Wed, 12 Sep 2018 11:37:24 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003f4733ae11239de8aacecbeac031bdef03bb794517855484612f3020bfafa8`  
		Last Modified: Wed, 12 Sep 2018 11:37:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35aa75aa667765b2649ead7135566222ddeea29e508eb3f5790ab09e2f4b2852`  
		Last Modified: Wed, 12 Sep 2018 11:37:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332a9bce33f3edcda41a6dfcd5cd0a7c4acd7b4aa398abf9b39a250fb2186d09`  
		Last Modified: Wed, 12 Sep 2018 11:37:23 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:bd6765646002ad323bae87c02052f8abc55c2d3bfdb59f42c91ffbf647ed9395
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23998916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0625dd2bcba6d2e6f038e2642a5633c0d98ccb7cac990fddefaf7978d446baa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:59:13 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:59:14 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:59:16 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:59:16 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:59:21 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:59:21 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:59:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 12:00:18 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 12:00:18 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 12:00:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 12:00:23 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 12:00:24 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 12:00:24 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 12:00:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 12:00:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 12:00:25 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:00:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:00:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 12:00:26 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddbf87a168e8733a785b17536a3eb54aedb277a2d0e0f52c86314a84faef4fd`  
		Last Modified: Wed, 12 Sep 2018 12:01:02 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19950773dd5ab0e23347cb5381921e23f6115b1768ce3e049e87707941a71d8`  
		Last Modified: Wed, 12 Sep 2018 12:01:02 GMT  
		Size: 9.2 KB (9220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ce7cec2dc244c5557f2c3bc9caf5e1ba6c76a377a8b7ad45401ca96e6bfecd`  
		Last Modified: Wed, 12 Sep 2018 12:01:06 GMT  
		Size: 16.5 MB (16547705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89de51b44f53f8c996864691052be7c2bc0507c9406081570fff3f2d065eba7a`  
		Last Modified: Wed, 12 Sep 2018 12:02:12 GMT  
		Size: 5.1 MB (5128329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d3115e9f985e20b462cd0eb7ab688108f5f2edd6f61a85e51ef4bb0bdbee9f`  
		Last Modified: Wed, 12 Sep 2018 12:02:11 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db886e1580d45d47dbf4f3cdaf9fe7d2cd14038dbd8958d3538e6fd71d6df13`  
		Last Modified: Wed, 12 Sep 2018 12:02:11 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf79a1687607f72419a1825a1d38fea6b4a869318aa7bf2b4c12faf9b54782c5`  
		Last Modified: Wed, 12 Sep 2018 12:02:12 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70adce003d27d86ccc15c438505598c1c4bbb8d5a6de1b6436835c1bbea95d90`  
		Last Modified: Wed, 12 Sep 2018 12:02:11 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16-management`

```console
$ docker pull rabbitmq@sha256:3f2a7e193143c957fcdc837f3c9aefef188332dfe101900422be84adc1c1ce2c
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
$ docker pull rabbitmq@sha256:f821a6153608dc6cdff453eca4d54e210c890469784311af771f9998bc500d47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70595194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa516f32cebce5d49a7b2992f8652affbfca186919f47232329c29bcd0f1808f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:02 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 05:21:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 05:21:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 05:23:43 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:23:43 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 05:23:43 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 05:23:43 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 05:23:43 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 05:23:44 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 05:23:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 05:23:58 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:23:58 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 05:23:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 05:23:59 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 05:24:00 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 05:24:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 05:24:01 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 05:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 05:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 05:24:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 05:24:02 GMT
CMD ["rabbitmq-server"]
# Wed, 05 Sep 2018 05:24:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 05 Sep 2018 05:24:16 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 05 Sep 2018 05:24:16 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe35f04ebea261787064fcf29714d8a188578fd3aae88a1672366b5243a1b4`  
		Last Modified: Wed, 05 Sep 2018 05:24:51 GMT  
		Size: 4.5 MB (4498555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a118dc68c2e54abc54162dd19892c08a71709d7499eabe7f6ac95205c2494f`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c19971869789806dbf507bf25ba148decd6223ec7dcf5621f7555ebb9fcd41`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 951.9 KB (951900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ff106f052e045acc2f662465dabd9b4cc66c251f17e0d8d46f599ca36b255c`  
		Last Modified: Wed, 05 Sep 2018 05:25:46 GMT  
		Size: 27.7 MB (27705749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111bf6d92c1e69b136135e9f1da0dfa7b0cc04403ccab3136749261515f49d63`  
		Last Modified: Wed, 05 Sep 2018 05:25:45 GMT  
		Size: 7.3 MB (7307812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e36093ef72e4f743ab6749c01e596fef19a17e732aa7514cac2684b3647ce3b`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d25d421b5177a3679c9efe92ebcaa0bdf8a5a79002b1cc30c397d542b73d017`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d7127dec7410754406af50e6dfab991a7f4ffdf46cd1c0fd164f53db47d18`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a257c140b2399677a05700396cfa57e1496073dc1d8d224a23d635d814fabc3`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502613d4d38962cfa6ae02acadc4a8071ca181d8cdd54a97534425b52db79f92`  
		Last Modified: Wed, 05 Sep 2018 05:25:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e2771bc3ea10ca3651c0fd9a4d7b8f6a55c280cd08d9aaac5be3b96329a9f6`  
		Last Modified: Wed, 05 Sep 2018 05:25:54 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d680341ffdf08c6d3b9cf893d841ca5f92d4d55bd31ddb83a71d5a1ed8ed64`  
		Last Modified: Wed, 05 Sep 2018 05:25:55 GMT  
		Size: 7.6 MB (7634250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:4ceb84b8ba17510c31d148aa0d35c0767bd139628f808035fb7928fb283aa2f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66030964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:668a3b154f82cf88f224d56c33ee01ee2558b81ba8771f079c64d6b8be474920`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:45:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:48:18 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:48:19 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:48:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:48:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 11:48:20 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 11:48:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 11:48:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 11:48:45 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:48:46 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 11:48:47 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 11:48:47 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 11:48:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 11:48:50 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 11:48:50 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:48:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 11:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:48:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 11:48:53 GMT
CMD ["rabbitmq-server"]
# Wed, 05 Sep 2018 11:49:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 05 Sep 2018 11:49:28 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 05 Sep 2018 11:49:28 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483021b9c38437adcd233ec231bbe3d5f2262264fdb2cfdd6040e28622abfeed`  
		Last Modified: Wed, 05 Sep 2018 11:49:48 GMT  
		Size: 4.2 MB (4231636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de799b221ef6d17d523a8146fae2f4c5b756afa8dbcde3436ebe67d2cfb3760`  
		Last Modified: Wed, 05 Sep 2018 11:49:46 GMT  
		Size: 4.1 KB (4086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e2b5ada6e33dc5ae042bd4ae10d7d2e5cef590482f162b4fc967c577be9776`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 942.3 KB (942332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3095de2e908123bbe4b7d9dde4ed43bc9d0c9607b0fa38d3738d94cb5b42`  
		Last Modified: Wed, 05 Sep 2018 11:51:01 GMT  
		Size: 25.2 MB (25172498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a9618d145480ed9526a25eba5a4e1965da47f9408e923684cca9db33565ce7`  
		Last Modified: Wed, 05 Sep 2018 11:50:56 GMT  
		Size: 7.0 MB (7023800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256c7f54122b0496bfff1288e4e96acbfa61b011455253e51634de67fb0e5067`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a8f18af17a6a087f2f71cdc256d9de6e7d2673988e997e2d42d017247312e8`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1c89cb6b369b5f2b6cde6d0f2b5eb41298e9460ca070fbb0eaf256f6075a0b`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813557f2ea7e63daba256462e5395fb17715d792b71d98e5486d4e9db105001b`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3cabcfb7c82b626786aa491f7c694e0748e1c83aab94c68c70d9de6dd60aca`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9734c216d4f053fb9b0c5d3a9f2415a5dac4a0cdb387c617241b7403e4e01efa`  
		Last Modified: Wed, 05 Sep 2018 11:51:17 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab4f4a3902a13161f3bc13965bb2cd8e0bb0ad7d7bc12b3c4945f838680d90d`  
		Last Modified: Wed, 05 Sep 2018 11:51:19 GMT  
		Size: 7.5 MB (7486855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:931e5186e13d9cdec9f5fb07d339e64131ca1ac507e2d6f7226089ce6b3e4a0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62991580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9a050e2185bdf17e4a134d3983f5c30002d318cdeaa5bb0e006323d2b71ef0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:47:28 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 15:47:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:47:43 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 15:50:18 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:50:19 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 15:50:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:50:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 15:50:19 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 15:50:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 15:50:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 15:50:41 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:50:41 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 15:50:43 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 15:50:44 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 15:50:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 15:50:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 15:50:48 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:50:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 15:50:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:50:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 15:50:52 GMT
CMD ["rabbitmq-server"]
# Wed, 05 Sep 2018 15:51:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 05 Sep 2018 15:51:21 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 05 Sep 2018 15:51:22 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5141246d136f294078d95e58ccfe7ad4e4cb36e3f326facc50866aa09e2b87b`  
		Last Modified: Wed, 05 Sep 2018 15:51:43 GMT  
		Size: 3.9 MB (3868671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31f084a36199cdd4d59bd6189376f7eaf477a8bef7fef0eba52f25fae320a9f`  
		Last Modified: Wed, 05 Sep 2018 15:51:42 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8fd793fb8cf44bd0327de96340e9367b4baaabaad4e35d2f36080d8b6ea5e9`  
		Last Modified: Wed, 05 Sep 2018 15:51:43 GMT  
		Size: 926.0 KB (926006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef243f4a8f0dcab8c778cf39b9defd95d5d784f60730e3b9c3afdae77e58fe7`  
		Last Modified: Wed, 05 Sep 2018 15:52:59 GMT  
		Size: 24.8 MB (24785252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a66e80f665b9e1dbcced8f8f151aba5ece6d7849737b67fcf356b7c2650395`  
		Last Modified: Wed, 05 Sep 2018 15:52:56 GMT  
		Size: 6.9 MB (6934344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a452ae6c6932c658c5ce57429b903810c8a7182594d69e714c93dbad347081c`  
		Last Modified: Wed, 05 Sep 2018 15:52:53 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4103b8222bb9c6d2c4d14c2d21293d17dce4018a5909a9f27ab67f561567a2a5`  
		Last Modified: Wed, 05 Sep 2018 15:52:54 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b41cc3daee5890e405122dcbf4bb102fc23ad0178d6e14cd96a520e469a90ac`  
		Last Modified: Wed, 05 Sep 2018 15:52:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f6f32459681107e5bab08dd4cf4b0c6e4d3476c4c68135c8937f8fbd33676`  
		Last Modified: Wed, 05 Sep 2018 15:52:54 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d530ba860e872a8bf07d2e820473f4235a3afc99a72455f5e8099f202046ab`  
		Last Modified: Wed, 05 Sep 2018 15:52:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2c3922d6c93a977e05fa08517ea77308bb30d767c542e127b50146305d8996`  
		Last Modified: Wed, 05 Sep 2018 15:53:17 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a25c266c71a02f9d2e9f17f0538d7b5bf0c9f05462f5f1f14dc1e7e6eafb26`  
		Last Modified: Wed, 05 Sep 2018 15:53:20 GMT  
		Size: 7.2 MB (7196173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:eb50177a6ed58d1745d70f582d7a2b1199071c01cc49741d78c07fe5a286ed5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64873492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93d1e273104dfaf40cb4f031be421d33ea3249762e27ed1f17edd9d4dca898c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 17:59:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:59:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 17:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 18:01:08 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 18:06:56 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:06:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 18:06:57 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 18:06:58 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 18:06:59 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 18:07:00 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 18:07:01 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 18:07:54 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:07:55 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 18:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 18:07:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 18:08:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 18:08:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 18:08:04 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 18:08:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 18:08:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 18:08:09 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 18:08:10 GMT
CMD ["rabbitmq-server"]
# Wed, 05 Sep 2018 18:08:58 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 05 Sep 2018 18:09:27 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 05 Sep 2018 18:09:29 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e37db5cf675e4afee42d261d405850f9661011376c9e32dcf161b994b5784`  
		Last Modified: Wed, 05 Sep 2018 18:10:27 GMT  
		Size: 4.1 MB (4073269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a489138492c1c3398d5e832adb250d71806f6d1c1ee77f0d4386d242770e4f5`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786d0df6cef56007fb33342e229dc469e545f3fbd266b4b427d1fcd6f265084`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 919.2 KB (919245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f28d2f910748dac84b3653ff2b93ea964b441f037fff2ac03dab9948e1f601`  
		Last Modified: Wed, 05 Sep 2018 18:14:22 GMT  
		Size: 25.0 MB (25043293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efd255458d46fa2b469b2e7cc982b2dda5cdb1297ead801422adc54537597bf`  
		Last Modified: Wed, 05 Sep 2018 18:14:17 GMT  
		Size: 7.0 MB (7007289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bdf91c364e692aedf21301b617487603c998f2177c02b1ddd1ac7eae05e58a`  
		Last Modified: Wed, 05 Sep 2018 18:14:13 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1c7dedfeb3b216373ddbfb403cc1fedf6bf932daa44fb7ab121a7971dcffd2`  
		Last Modified: Wed, 05 Sep 2018 18:14:14 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0647f0d7cec0d4f8771412ee350759fbc79416a7e530ecbdd481ed231b080c2d`  
		Last Modified: Wed, 05 Sep 2018 18:14:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3978682f63e5a01fbcb25c5a54b73974913c22b89174bf03a01f474089bed8`  
		Last Modified: Wed, 05 Sep 2018 18:14:14 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ec5a0b215cb6314ed172367b5a321c1e1dbf73aa51222ea09ecb3fcf5c5a51`  
		Last Modified: Wed, 05 Sep 2018 18:14:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21317e468f462d8004ff3e41c00076a1e98dda77289bd387ed6bc39a112099fc`  
		Last Modified: Wed, 05 Sep 2018 18:15:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6cc36f4697ce6806ea34ff603f78ec4da7bfcb7a0d909fac2e4f80b4f9dfb9`  
		Last Modified: Wed, 05 Sep 2018 18:15:16 GMT  
		Size: 7.5 MB (7487778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:ba2b124c52610c1b6c92b24994dd79fbf9cbf3f993acb4a4c3d6d8d77916f8f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71743255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a961192860ab45e82b3d89c1bbbdf001346f9a6c4a58811ed1481c5d0e67cceb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 00:46:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:46:57 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 07 Sep 2018 00:46:58 GMT
ENV GOSU_VERSION=1.10
# Fri, 07 Sep 2018 00:47:09 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 07 Sep 2018 00:49:17 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 07 Sep 2018 00:49:18 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_VERSION=3.6.16
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Fri, 07 Sep 2018 00:49:19 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Fri, 07 Sep 2018 00:49:34 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:49:34 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 07 Sep 2018 00:49:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Sep 2018 00:49:35 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Sep 2018 00:49:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Sep 2018 00:49:36 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 07 Sep 2018 00:49:36 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 07 Sep 2018 00:49:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Sep 2018 00:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 00:49:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Sep 2018 00:49:38 GMT
CMD ["rabbitmq-server"]
# Fri, 07 Sep 2018 00:49:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 07 Sep 2018 00:49:55 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 07 Sep 2018 00:49:55 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4dae48f2c41c273519bd218a68670fd300dd05b610af53de52cbd92e018d83`  
		Last Modified: Fri, 07 Sep 2018 00:50:33 GMT  
		Size: 4.8 MB (4803829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec4312e65d61f18a107cd8e5936a2ced8a79d49d10dc094a2e1c17d33a1810b`  
		Last Modified: Fri, 07 Sep 2018 00:50:31 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111d7d048cfd3b5609811a3f5c8139eb45fb2824715b10855d24520943ffb47d`  
		Last Modified: Fri, 07 Sep 2018 00:50:31 GMT  
		Size: 931.4 KB (931361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c662c03e1a8b23147d4634860b779e3068b1fdda263cd9d2470ade66bcfb93af`  
		Last Modified: Fri, 07 Sep 2018 00:51:36 GMT  
		Size: 27.8 MB (27820117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ee3c72fcc0ae938f4f272f3560172954b0d0ef482f0defb3d613be47cb99d6`  
		Last Modified: Fri, 07 Sep 2018 00:51:32 GMT  
		Size: 7.3 MB (7322124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e0e44bf8f31b9ec8bcd33438395cba207359939f1dad4b20a01682348701ae`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e25139e908330ec8225f8a2934fb7c0b4e0908f47af1c9de1be1e8e9d9669`  
		Last Modified: Fri, 07 Sep 2018 00:51:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca4fb17c89720c4149d56bce43815115e91bc0f9c163d58c94c1e9694c93bcc`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e013a87df8ef82eb032b6388b54488fb95f70f5a8dd58849f76b6af9624f2f4`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca62ed2a08a25bc86c44f76fd560258858c8af3954ab319279a6d5c9d0b8ffb`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db3022189b32d4e5633e3f05307f0bb99bcd66a2b8e053711d759288539f155`  
		Last Modified: Fri, 07 Sep 2018 00:51:45 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69458dbca984a422d154ee50090b142906396e2fa00132344b5a3a69a28c9d4`  
		Last Modified: Fri, 07 Sep 2018 00:51:48 GMT  
		Size: 7.7 MB (7728388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:15b56134041cc4ff5ec42c45736945a4a7514bdbc68c74a4a3a10c6fb403bd25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68329631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada78ca4a2c4c91774e15cac576700573e28c820bd17e56bf7a5814514019710`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:31:34 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:31:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:32:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:38:47 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:38:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:38:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:38:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 11:38:51 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 11:38:52 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 11:38:53 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 11:39:45 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:47 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 11:39:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 11:39:51 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 11:39:54 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 11:39:57 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 11:39:58 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:40:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 11:40:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:40:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 11:40:05 GMT
CMD ["rabbitmq-server"]
# Wed, 05 Sep 2018 11:40:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 05 Sep 2018 11:40:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 05 Sep 2018 11:40:44 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579e7691721557327e3927ed84719e320cf6617c3acc48457fbe3ecd5d70f853`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 4.4 MB (4360587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2457b86f9cd5532629687ff9153d277b80e5c5c805dfbba681b8a51bc205fcc5`  
		Last Modified: Wed, 05 Sep 2018 11:41:29 GMT  
		Size: 4.1 KB (4105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69a3893e8f4d42d93f333b4f7a04240b2f1f8efe56cbf832b105ae32483ce4`  
		Last Modified: Wed, 05 Sep 2018 11:41:30 GMT  
		Size: 920.5 KB (920546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81251c6d8805204161b4f826152f551ebaa010ee2eb465a5e9a63b9f15414501`  
		Last Modified: Wed, 05 Sep 2018 11:43:03 GMT  
		Size: 25.5 MB (25492633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2abefcd57965d66cb26fa7a7b1c78f0a76beb340762f4366252a9b8966533`  
		Last Modified: Wed, 05 Sep 2018 11:43:00 GMT  
		Size: 7.0 MB (6966654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8683a012eb214223511b02577788e5370bd42086d17b27ac895b1dd1621889f`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5661e30c4b93f152706ce9084c6af0c615ba39bb81fa3b8baeda1f46b96a370`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463dd1237ead64047606a54860760d3983e2c043d9fbcfff43a8a086f520b0ac`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535176d7b5948a93d575525c10a6f95e29ea1ccc81f687ea40c56712bb5a9a14`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbe4cdd1c81b77b825dd09760a96eeb842901da81e135366f225ee6ef691e11`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7aa7814554c131189c5ddc9cb0c9533740c1de57808b5bba379a85474990a4`  
		Last Modified: Wed, 05 Sep 2018 11:43:24 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dceb97257c6a9808f74f0eea4dabcb88c22bf4700791ab6df83c8d1cf8abeb10`  
		Last Modified: Wed, 05 Sep 2018 11:43:26 GMT  
		Size: 7.8 MB (7837687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:5160736adb0bb2cbe3b0ea85794a27584432fb7865034a895edf5e4362a17622
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68084160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb98a3113b2d37cc778bc3c5d07ac4e5a39bf7c132553c2e0c9a9d4325b0d0d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:10:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:10:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 14:10:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 14:10:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 14:12:32 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:12:32 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 14:12:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 14:13:00 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:13:00 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 14:13:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 14:13:01 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 14:13:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 14:13:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 14:13:03 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:13:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 14:13:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 14:13:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 14:13:05 GMT
CMD ["rabbitmq-server"]
# Wed, 05 Sep 2018 14:13:24 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 05 Sep 2018 14:13:36 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 05 Sep 2018 14:13:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486c2c2490eb81017dce27f813906639a902cc88712d9ac2b0f82224a2be95c5`  
		Last Modified: Wed, 05 Sep 2018 14:14:13 GMT  
		Size: 4.5 MB (4529994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34d0bc6dcfc4dbdedfaa97c4ac5437d8e256e085c4e404c22abf6aa34f047ba`  
		Last Modified: Wed, 05 Sep 2018 14:14:10 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69d2beab3371bbcea2702a538b5f6eda37ed482f86855cf0ca02a0d2dd00372`  
		Last Modified: Wed, 05 Sep 2018 14:14:10 GMT  
		Size: 937.9 KB (937895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57745f11284bfc512fc0bd9c6c541022c4b9a9dc1fe17eda6db5757b2fb69f5`  
		Last Modified: Wed, 05 Sep 2018 14:15:18 GMT  
		Size: 25.6 MB (25622378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804b881b30adb95339becf45a308eb656a75487f49f9c32a4559a3436fff0635`  
		Last Modified: Wed, 05 Sep 2018 14:15:15 GMT  
		Size: 7.0 MB (7041269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20abb4e74be2763e44aa24e6c0b10f3625fd76ae19518971a6443a7506f15180`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ea3fe27b1b45a20aced370325bbe8c06228712b7f21ec1412bac09580ad85c`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1441a3bc9631da6a87b32d8c01932b76563ab22fe62994146207fea62010e7eb`  
		Last Modified: Wed, 05 Sep 2018 14:15:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b50483b73ddd77f26d203bafdd444eeab15f85a125266bd905379d272c521f`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4210fa5ff5f97c5afece3cde079c799a7d77062437f6a488302334319dc73a0a`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a260edd1688215830fb9aec0097a4484bb0bbe988c4896882ef34a599499fcd`  
		Last Modified: Wed, 05 Sep 2018 14:15:34 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fcf29664afb7d758a8f30337e588371efc3d93828ea10330adfe895437f583d`  
		Last Modified: Wed, 05 Sep 2018 14:15:38 GMT  
		Size: 7.6 MB (7607045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6.16-management-alpine`

```console
$ docker pull rabbitmq@sha256:62e5893fa71583ee80a6f7889a3ae7a0c26c7651a811040b397d1e1730352202
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:3.6.16-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:2277f68e65132a24a0ce8ac4c017b1a00f726d49e294f5ef6fc99fd61ca5b6f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37089543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:328816ce58edabbe34fcd0a55ed58fcaa85cc1d00dfeffb444e1bf2cdc39af22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 02:53:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 02:53:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 02:53:56 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 02:53:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 02:54:29 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 02:54:29 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 02:54:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 02:54:34 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 02:54:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 02:54:34 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 02:54:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 02:54:36 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 02:54:36 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 02:54:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 02:54:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 02:54:36 GMT
CMD ["rabbitmq-server"]
# Wed, 12 Sep 2018 02:54:50 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 12 Sep 2018 02:54:53 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Wed, 12 Sep 2018 02:54:54 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0839f7c4bc75ca0f7cdac3608503344e6b4aceeaf40ca2808d0c5eb577ae49`  
		Last Modified: Wed, 12 Sep 2018 02:55:10 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ca51e7c431a28e32ee85a8a5626326770d4cc7c6982b6718f2496308bb3f8`  
		Last Modified: Wed, 12 Sep 2018 02:55:09 GMT  
		Size: 9.1 KB (9060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b799497b1c496754f3279b4ea0dfdf1808c34a711408ebdf6b1885f6f34d9bb8`  
		Last Modified: Wed, 12 Sep 2018 02:55:13 GMT  
		Size: 18.7 MB (18709062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68437d33170edc8f1b4a93d17e0d777544599025b13cc1c6aeeb5844122ebd2a`  
		Last Modified: Wed, 12 Sep 2018 02:56:25 GMT  
		Size: 5.1 MB (5138369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2851b70f7d057198a161ad549ae87277834eee521d02b4f923762f60fef32e9`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14125ba850e22a0b8fa1d5fba6eecb3b00c6b6986f949f9c82f8bd09f7754ea`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99f62867a20307fbb899c190a7e9dbb92a777c99629edfe41a79ac62b14ed4`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3f51ec38dbde16ba66fb06e3a598e8bebb88295d23da58ef76888879ccb0c4`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd805a7d6c1c80064d2914e524bb9f1f2a25c1ebede950d784efc801881c803a`  
		Last Modified: Wed, 12 Sep 2018 02:56:43 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98919663853b04480fa7458e82e0a8680ec9c02bfcc7a54acc079159e4a0a5c`  
		Last Modified: Wed, 12 Sep 2018 02:56:48 GMT  
		Size: 11.0 MB (11020198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:054a5cb145cf356ed442de3227bba79f571c8e0c9089c9d5f4b49369a0bb77ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34479434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7acdd13c8e7cf67e49ec27efd86dc0fe2e3030bcda7c4b7c607bcb41fabf73e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:15:03 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 08:15:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 08:15:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 08:15:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:15:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 08:15:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 08:15:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Sat, 15 Sep 2018 09:11:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 15 Sep 2018 09:11:06 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 15 Sep 2018 09:11:08 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 15 Sep 2018 09:11:08 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 15 Sep 2018 09:11:09 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 15 Sep 2018 09:11:10 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 15 Sep 2018 09:11:11 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:11:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 09:11:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 15 Sep 2018 09:11:12 GMT
CMD ["rabbitmq-server"]
# Sat, 15 Sep 2018 09:11:25 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 15 Sep 2018 09:11:32 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 15 Sep 2018 09:11:33 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ab7d82bf045d6b83b49344082af7a63d456866771ec60323e02d8ba54d348`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404cd7746429b5adac001a8efa2a282b5106a8a7c8d2ef2e225eda23e4a69ef`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 9.0 KB (8987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04b3620c9d7a0f231a2b41fb9ee2016ac2d8bfdfd2ba7917679aa1e2cd0f822`  
		Last Modified: Sat, 15 Sep 2018 09:11:49 GMT  
		Size: 16.3 MB (16308397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77bfdd632b812d99cf633b13a2c2d871c3115ee9c3f649d350f2849ccb7ec420`  
		Last Modified: Sat, 15 Sep 2018 09:12:29 GMT  
		Size: 5.1 MB (5129079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef01881b2358f5d25ce5c6b2257b95666cc025a015785c927767c38e4ca4787`  
		Last Modified: Sat, 15 Sep 2018 09:12:28 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1d8f79ae17ff4ce1931e34245ed48f50414e6bd418e51d098e2a636c76b3df`  
		Last Modified: Sat, 15 Sep 2018 09:12:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbb78620a14bec4c8ad5880da27cc8c1dd709f382e1ce160d6c65b2d420e58e`  
		Last Modified: Sat, 15 Sep 2018 09:12:28 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ac3271b8a6435c044c874bae1c37dc2d4cbce3ff92bc732f7b483d80db2d88`  
		Last Modified: Sat, 15 Sep 2018 09:12:29 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0bb4089ba5510a5437cc2505ccb0f62723dce859a4a8fc979245c3f04e89d4`  
		Last Modified: Sat, 15 Sep 2018 09:12:39 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1277683167a1540b3922c072a3c8ad339d748d39ad3ad72dccd91aa68dfbfeee`  
		Last Modified: Sat, 15 Sep 2018 09:12:43 GMT  
		Size: 10.9 MB (10880348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:19c9e4a021d27745e651c906a7f4b5b4b41e54f4b12f8c41c485d6f4decdcd96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34375579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814ac5b5a03c28cfb52feda25b5bc748e8411c686ce637fccdc2424c556ef527`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 22 Sep 2018 08:55:17 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 22 Sep 2018 08:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 22 Sep 2018 08:55:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 22 Sep 2018 08:55:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Sep 2018 08:55:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:57:57 GMT
ENV RABBITMQ_VERSION=3.6.16
# Sat, 22 Sep 2018 08:57:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Sat, 22 Sep 2018 08:58:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:58:08 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:58:10 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:58:10 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:58:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:58:14 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:58:15 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:58:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:58:17 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:58:17 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:58:36 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:58:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:58:45 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9855a7536b42bdcc9774489c4e1e9b8ee79a04e7abb5de9a61878f0870cbfc1`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8ae4b960c46131b8c15e06d3fd15a734a2737404ae494ca98a9973bb8e3fcb`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e020a68ecb622c4ef5b488b3fd801d8b0a903b0b593a7d653f544775add7`  
		Last Modified: Sat, 22 Sep 2018 09:01:03 GMT  
		Size: 16.3 MB (16285564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3a906a74a50a301c03b928558e96ea3d1c5a9f8af47136a361df0515ab9f7f`  
		Last Modified: Sat, 22 Sep 2018 09:02:49 GMT  
		Size: 5.1 MB (5128243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15db32b1b4d4744c807b66ac2e0e7b1199b31a8d24ed517e543b96997273190`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14dd28958e3c95c33b6b4b0f56286149ed324eb3eb8791b1892a644dd1e125a`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f844937f230d0067f1915bc8cb24c3b741b9315c073d3de9e86b3e5358462f94`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eab78232377aba8aaf7c26774c59c8c2e4bc14fe4f36991f34f4b28ce8eb3f`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68001f217ff2c820b19b63bfd5b2a35178de38939d86889b043fbc0756b5334`  
		Last Modified: Sat, 22 Sep 2018 09:03:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e1b0b9a7eda64a1838cb5fc3b9b6258d77cd770e17b58e48c2f5d6aa9f47d4`  
		Last Modified: Sat, 22 Sep 2018 09:03:21 GMT  
		Size: 10.8 MB (10846954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:a4878269c8e2d1f8e9a2a651a2a208b0c9cae080543a22f0bcfda04b8ffc07b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37430839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8e08f1e7947dd09676aebd37d7ea7b83861af39c72f0bb13efd598c5541eb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 16:56:45 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 16:56:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 16:56:48 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 16:56:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 16:57:22 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 16:57:22 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 16:57:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 16:57:27 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 16:57:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 16:57:28 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 16:57:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 16:57:29 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 16:57:29 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 16:57:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 16:57:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 16:57:30 GMT
CMD ["rabbitmq-server"]
# Wed, 12 Sep 2018 16:57:39 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 12 Sep 2018 16:57:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Wed, 12 Sep 2018 16:57:43 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9e27f0211a0ac7e9b4d031a8ae3842bbcbd2fe5e0c67e195888f9910cb2f53`  
		Last Modified: Wed, 12 Sep 2018 16:57:57 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9cdf242dd2dd8af9fe8a1f1b06d07423cb042e98d120ffbb156012f1bcf33c`  
		Last Modified: Wed, 12 Sep 2018 16:57:57 GMT  
		Size: 9.1 KB (9125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2298b98abbf8927784e111ad51b75a75de27173f8e35f46961b5d992a08f63`  
		Last Modified: Wed, 12 Sep 2018 16:58:01 GMT  
		Size: 18.9 MB (18868324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6e0cc486919d1ea3222d60e3e50c12356505d38612c1fba03baad5b83b47d7`  
		Last Modified: Wed, 12 Sep 2018 16:58:44 GMT  
		Size: 5.1 MB (5136642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce934f63d0af9de52fc50a959fda57b5567fcc6c9cf8ad89bafcdbc9cfeb7c75`  
		Last Modified: Wed, 12 Sep 2018 16:58:44 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db01e66a72334ed66a6ae5920141db1311b00af3ea21c6b47cc8a0eb1985735`  
		Last Modified: Wed, 12 Sep 2018 16:58:43 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06b1296b580d49fbd698f619b5258e7ca51dbb6cb6ec09d667fd40e0d465ecb`  
		Last Modified: Wed, 12 Sep 2018 16:58:43 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235393388c92ea8a5de1a9fd0265a181ed7554612f7c4632535266954af4c3d5`  
		Last Modified: Wed, 12 Sep 2018 16:58:43 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adda1f075940fc9910de0aa45139d3093717001469c4b0816f84d031907f0271`  
		Last Modified: Wed, 12 Sep 2018 16:58:54 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67099543798c6bb01af3255405060612b4e892df4eca087c6d1d536655604073`  
		Last Modified: Wed, 12 Sep 2018 16:58:57 GMT  
		Size: 11.1 MB (11139181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:4eafac32dcfdf1e8726506a1dec4678e6f97cbae36a8c588e9ed1a554f2303ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34849816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbde5e0238f1651211ccff760ed3965b724b16b6ffbb7db01265127648cd31e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:32:06 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:32:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:32:21 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:32:22 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:32:24 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:32:25 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:32:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 11:33:52 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 11:33:53 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 11:34:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 11:34:04 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 11:34:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 11:34:13 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 11:34:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 11:34:20 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 11:34:21 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 11:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 11:34:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 11:34:25 GMT
CMD ["rabbitmq-server"]
# Wed, 12 Sep 2018 11:34:48 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 12 Sep 2018 11:34:58 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Wed, 12 Sep 2018 11:35:00 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9690f1f749a7f0b179eb76f9cc4ebcc64b209d5e28215bb0b7c34b7dcd4c86`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf99cc7ead890ac43c261cd845b9158794d9a5ea0df4e1b8baa5f584f3e5045`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8dcc93812fc0b7d5834d65e6589d35279fba3160ba5a65182ae12d3f0eb9d6`  
		Last Modified: Wed, 12 Sep 2018 11:35:37 GMT  
		Size: 16.5 MB (16486759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2888c195335431abdebfdd6223e8dff635c36327e3bada3e3f4c65e543394c96`  
		Last Modified: Wed, 12 Sep 2018 11:37:24 GMT  
		Size: 5.1 MB (5129565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510c9b8e38b8fa56fb4637965b1aa7d83777cfbae5dec0d90b2a8ce96ccfa553`  
		Last Modified: Wed, 12 Sep 2018 11:37:24 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003f4733ae11239de8aacecbeac031bdef03bb794517855484612f3020bfafa8`  
		Last Modified: Wed, 12 Sep 2018 11:37:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35aa75aa667765b2649ead7135566222ddeea29e508eb3f5790ab09e2f4b2852`  
		Last Modified: Wed, 12 Sep 2018 11:37:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332a9bce33f3edcda41a6dfcd5cd0a7c4acd7b4aa398abf9b39a250fb2186d09`  
		Last Modified: Wed, 12 Sep 2018 11:37:23 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d7eb389b77f972484537666532f61355f2bef16002e927875c6c9dcfcc9a71`  
		Last Modified: Wed, 12 Sep 2018 11:37:56 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363f0401b368c19d483f8b25f42bde00d01864a7423a03030530fbfb3126c824`  
		Last Modified: Wed, 12 Sep 2018 11:37:59 GMT  
		Size: 11.0 MB (11022590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6.16-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:53ea4e02e518a7e0b214667bb72f67c8af80c3fe4be00f6c91978e23fe55c950
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35128256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dadf15eb539ab8c24788f9a22ffc1e94deb3fc413b158f0330c5a8261b86427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:59:13 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:59:14 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:59:16 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:59:16 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:59:21 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:59:21 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:59:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 12:00:18 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 12:00:18 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 12:00:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 12:00:23 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 12:00:24 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 12:00:24 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 12:00:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 12:00:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 12:00:25 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:00:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:00:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 12:00:26 GMT
CMD ["rabbitmq-server"]
# Wed, 12 Sep 2018 12:00:35 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 12 Sep 2018 12:00:38 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Wed, 12 Sep 2018 12:00:42 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddbf87a168e8733a785b17536a3eb54aedb277a2d0e0f52c86314a84faef4fd`  
		Last Modified: Wed, 12 Sep 2018 12:01:02 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19950773dd5ab0e23347cb5381921e23f6115b1768ce3e049e87707941a71d8`  
		Last Modified: Wed, 12 Sep 2018 12:01:02 GMT  
		Size: 9.2 KB (9220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ce7cec2dc244c5557f2c3bc9caf5e1ba6c76a377a8b7ad45401ca96e6bfecd`  
		Last Modified: Wed, 12 Sep 2018 12:01:06 GMT  
		Size: 16.5 MB (16547705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89de51b44f53f8c996864691052be7c2bc0507c9406081570fff3f2d065eba7a`  
		Last Modified: Wed, 12 Sep 2018 12:02:12 GMT  
		Size: 5.1 MB (5128329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d3115e9f985e20b462cd0eb7ab688108f5f2edd6f61a85e51ef4bb0bdbee9f`  
		Last Modified: Wed, 12 Sep 2018 12:02:11 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db886e1580d45d47dbf4f3cdaf9fe7d2cd14038dbd8958d3538e6fd71d6df13`  
		Last Modified: Wed, 12 Sep 2018 12:02:11 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf79a1687607f72419a1825a1d38fea6b4a869318aa7bf2b4c12faf9b54782c5`  
		Last Modified: Wed, 12 Sep 2018 12:02:12 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70adce003d27d86ccc15c438505598c1c4bbb8d5a6de1b6436835c1bbea95d90`  
		Last Modified: Wed, 12 Sep 2018 12:02:11 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bc12d101f6b839ca2e44f79d2eec7ed34e0a313c16efded609c786a2f99807`  
		Last Modified: Wed, 12 Sep 2018 12:02:29 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4cad48c204c3037f78dc8032c8da8cb09674d5889613563c1e8f0225a0af252`  
		Last Modified: Wed, 12 Sep 2018 12:02:32 GMT  
		Size: 11.1 MB (11129149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-alpine`

```console
$ docker pull rabbitmq@sha256:af2dead3ff41233279a86d9c5a19fc5b7fdbbe01521d18bb64fc7cedba0a830f
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
$ docker pull rabbitmq@sha256:2c15184a7074b530282e6133dad792d4a46aac7c4cc8933e8ec847c0f320f45e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26069154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab9b6cf31f915597143428a003b4664bdaf32561b938310e234752bba040cba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 02:53:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 02:53:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 02:53:56 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 02:53:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 02:54:29 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 02:54:29 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 02:54:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 02:54:34 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 02:54:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 02:54:34 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 02:54:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 02:54:36 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 02:54:36 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 02:54:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 02:54:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 02:54:36 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0839f7c4bc75ca0f7cdac3608503344e6b4aceeaf40ca2808d0c5eb577ae49`  
		Last Modified: Wed, 12 Sep 2018 02:55:10 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ca51e7c431a28e32ee85a8a5626326770d4cc7c6982b6718f2496308bb3f8`  
		Last Modified: Wed, 12 Sep 2018 02:55:09 GMT  
		Size: 9.1 KB (9060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b799497b1c496754f3279b4ea0dfdf1808c34a711408ebdf6b1885f6f34d9bb8`  
		Last Modified: Wed, 12 Sep 2018 02:55:13 GMT  
		Size: 18.7 MB (18709062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68437d33170edc8f1b4a93d17e0d777544599025b13cc1c6aeeb5844122ebd2a`  
		Last Modified: Wed, 12 Sep 2018 02:56:25 GMT  
		Size: 5.1 MB (5138369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2851b70f7d057198a161ad549ae87277834eee521d02b4f923762f60fef32e9`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14125ba850e22a0b8fa1d5fba6eecb3b00c6b6986f949f9c82f8bd09f7754ea`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99f62867a20307fbb899c190a7e9dbb92a777c99629edfe41a79ac62b14ed4`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3f51ec38dbde16ba66fb06e3a598e8bebb88295d23da58ef76888879ccb0c4`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:8000670e5258ddc7585b6547f420d7948493123dcec8358fb3f0e519f6208526
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23598893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c600f20e8befd7321bba4e55d3c930e1ccecd89deeaa2bc5f814e46095b0279`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:15:03 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 08:15:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 08:15:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 08:15:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:15:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 08:15:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 08:15:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Sat, 15 Sep 2018 09:11:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 15 Sep 2018 09:11:06 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 15 Sep 2018 09:11:08 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 15 Sep 2018 09:11:08 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 15 Sep 2018 09:11:09 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 15 Sep 2018 09:11:10 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 15 Sep 2018 09:11:11 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:11:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 09:11:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 15 Sep 2018 09:11:12 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ab7d82bf045d6b83b49344082af7a63d456866771ec60323e02d8ba54d348`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404cd7746429b5adac001a8efa2a282b5106a8a7c8d2ef2e225eda23e4a69ef`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 9.0 KB (8987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04b3620c9d7a0f231a2b41fb9ee2016ac2d8bfdfd2ba7917679aa1e2cd0f822`  
		Last Modified: Sat, 15 Sep 2018 09:11:49 GMT  
		Size: 16.3 MB (16308397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77bfdd632b812d99cf633b13a2c2d871c3115ee9c3f649d350f2849ccb7ec420`  
		Last Modified: Sat, 15 Sep 2018 09:12:29 GMT  
		Size: 5.1 MB (5129079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef01881b2358f5d25ce5c6b2257b95666cc025a015785c927767c38e4ca4787`  
		Last Modified: Sat, 15 Sep 2018 09:12:28 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1d8f79ae17ff4ce1931e34245ed48f50414e6bd418e51d098e2a636c76b3df`  
		Last Modified: Sat, 15 Sep 2018 09:12:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbb78620a14bec4c8ad5880da27cc8c1dd709f382e1ce160d6c65b2d420e58e`  
		Last Modified: Sat, 15 Sep 2018 09:12:28 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ac3271b8a6435c044c874bae1c37dc2d4cbce3ff92bc732f7b483d80db2d88`  
		Last Modified: Sat, 15 Sep 2018 09:12:29 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:f1c70e3201d1d72c1a9814f8eaaa759c2e4449c577c37f6d4339eb2122a00592
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23528434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c711bea8e9b108cbf7b54d8f59cda09172267032a14f17c3752ebfdd7ae40672`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 22 Sep 2018 08:55:17 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 22 Sep 2018 08:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 22 Sep 2018 08:55:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 22 Sep 2018 08:55:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Sep 2018 08:55:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:57:57 GMT
ENV RABBITMQ_VERSION=3.6.16
# Sat, 22 Sep 2018 08:57:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Sat, 22 Sep 2018 08:58:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:58:08 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:58:10 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:58:10 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:58:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:58:14 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:58:15 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:58:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:58:17 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:58:17 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9855a7536b42bdcc9774489c4e1e9b8ee79a04e7abb5de9a61878f0870cbfc1`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8ae4b960c46131b8c15e06d3fd15a734a2737404ae494ca98a9973bb8e3fcb`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e020a68ecb622c4ef5b488b3fd801d8b0a903b0b593a7d653f544775add7`  
		Last Modified: Sat, 22 Sep 2018 09:01:03 GMT  
		Size: 16.3 MB (16285564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3a906a74a50a301c03b928558e96ea3d1c5a9f8af47136a361df0515ab9f7f`  
		Last Modified: Sat, 22 Sep 2018 09:02:49 GMT  
		Size: 5.1 MB (5128243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15db32b1b4d4744c807b66ac2e0e7b1199b31a8d24ed517e543b96997273190`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14dd28958e3c95c33b6b4b0f56286149ed324eb3eb8791b1892a644dd1e125a`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f844937f230d0067f1915bc8cb24c3b741b9315c073d3de9e86b3e5358462f94`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eab78232377aba8aaf7c26774c59c8c2e4bc14fe4f36991f34f4b28ce8eb3f`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:f141e4db297ea701b8ece755f4d3c97f8831f569c58ee376b4281c86105d628b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26291466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b21b4ca61b47c749dce3d452a843c706b20785d9de7798f8be608aea1a42cfbb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 16:56:45 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 16:56:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 16:56:48 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 16:56:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 16:57:22 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 16:57:22 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 16:57:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 16:57:27 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 16:57:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 16:57:28 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 16:57:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 16:57:29 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 16:57:29 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 16:57:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 16:57:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 16:57:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9e27f0211a0ac7e9b4d031a8ae3842bbcbd2fe5e0c67e195888f9910cb2f53`  
		Last Modified: Wed, 12 Sep 2018 16:57:57 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9cdf242dd2dd8af9fe8a1f1b06d07423cb042e98d120ffbb156012f1bcf33c`  
		Last Modified: Wed, 12 Sep 2018 16:57:57 GMT  
		Size: 9.1 KB (9125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2298b98abbf8927784e111ad51b75a75de27173f8e35f46961b5d992a08f63`  
		Last Modified: Wed, 12 Sep 2018 16:58:01 GMT  
		Size: 18.9 MB (18868324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6e0cc486919d1ea3222d60e3e50c12356505d38612c1fba03baad5b83b47d7`  
		Last Modified: Wed, 12 Sep 2018 16:58:44 GMT  
		Size: 5.1 MB (5136642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce934f63d0af9de52fc50a959fda57b5567fcc6c9cf8ad89bafcdbc9cfeb7c75`  
		Last Modified: Wed, 12 Sep 2018 16:58:44 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db01e66a72334ed66a6ae5920141db1311b00af3ea21c6b47cc8a0eb1985735`  
		Last Modified: Wed, 12 Sep 2018 16:58:43 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06b1296b580d49fbd698f619b5258e7ca51dbb6cb6ec09d667fd40e0d465ecb`  
		Last Modified: Wed, 12 Sep 2018 16:58:43 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235393388c92ea8a5de1a9fd0265a181ed7554612f7c4632535266954af4c3d5`  
		Last Modified: Wed, 12 Sep 2018 16:58:43 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:196f69585a6170003992c56ead3bdf9cd81daf7fc3dbe3a772e41e41c33c6a10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23827035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ddc4fc9266526384aa30eb5f3ac796cf13ee89ef5ddec1ce2b690bff859f350`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:32:06 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:32:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:32:21 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:32:22 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:32:24 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:32:25 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:32:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 11:33:52 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 11:33:53 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 11:34:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 11:34:04 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 11:34:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 11:34:13 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 11:34:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 11:34:20 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 11:34:21 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 11:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 11:34:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 11:34:25 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9690f1f749a7f0b179eb76f9cc4ebcc64b209d5e28215bb0b7c34b7dcd4c86`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf99cc7ead890ac43c261cd845b9158794d9a5ea0df4e1b8baa5f584f3e5045`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8dcc93812fc0b7d5834d65e6589d35279fba3160ba5a65182ae12d3f0eb9d6`  
		Last Modified: Wed, 12 Sep 2018 11:35:37 GMT  
		Size: 16.5 MB (16486759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2888c195335431abdebfdd6223e8dff635c36327e3bada3e3f4c65e543394c96`  
		Last Modified: Wed, 12 Sep 2018 11:37:24 GMT  
		Size: 5.1 MB (5129565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510c9b8e38b8fa56fb4637965b1aa7d83777cfbae5dec0d90b2a8ce96ccfa553`  
		Last Modified: Wed, 12 Sep 2018 11:37:24 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003f4733ae11239de8aacecbeac031bdef03bb794517855484612f3020bfafa8`  
		Last Modified: Wed, 12 Sep 2018 11:37:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35aa75aa667765b2649ead7135566222ddeea29e508eb3f5790ab09e2f4b2852`  
		Last Modified: Wed, 12 Sep 2018 11:37:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332a9bce33f3edcda41a6dfcd5cd0a7c4acd7b4aa398abf9b39a250fb2186d09`  
		Last Modified: Wed, 12 Sep 2018 11:37:23 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:bd6765646002ad323bae87c02052f8abc55c2d3bfdb59f42c91ffbf647ed9395
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23998916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0625dd2bcba6d2e6f038e2642a5633c0d98ccb7cac990fddefaf7978d446baa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:59:13 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:59:14 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:59:16 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:59:16 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:59:21 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:59:21 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:59:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 12:00:18 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 12:00:18 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 12:00:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 12:00:23 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 12:00:24 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 12:00:24 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 12:00:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 12:00:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 12:00:25 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:00:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:00:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 12:00:26 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddbf87a168e8733a785b17536a3eb54aedb277a2d0e0f52c86314a84faef4fd`  
		Last Modified: Wed, 12 Sep 2018 12:01:02 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19950773dd5ab0e23347cb5381921e23f6115b1768ce3e049e87707941a71d8`  
		Last Modified: Wed, 12 Sep 2018 12:01:02 GMT  
		Size: 9.2 KB (9220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ce7cec2dc244c5557f2c3bc9caf5e1ba6c76a377a8b7ad45401ca96e6bfecd`  
		Last Modified: Wed, 12 Sep 2018 12:01:06 GMT  
		Size: 16.5 MB (16547705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89de51b44f53f8c996864691052be7c2bc0507c9406081570fff3f2d065eba7a`  
		Last Modified: Wed, 12 Sep 2018 12:02:12 GMT  
		Size: 5.1 MB (5128329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d3115e9f985e20b462cd0eb7ab688108f5f2edd6f61a85e51ef4bb0bdbee9f`  
		Last Modified: Wed, 12 Sep 2018 12:02:11 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db886e1580d45d47dbf4f3cdaf9fe7d2cd14038dbd8958d3538e6fd71d6df13`  
		Last Modified: Wed, 12 Sep 2018 12:02:11 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf79a1687607f72419a1825a1d38fea6b4a869318aa7bf2b4c12faf9b54782c5`  
		Last Modified: Wed, 12 Sep 2018 12:02:12 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70adce003d27d86ccc15c438505598c1c4bbb8d5a6de1b6436835c1bbea95d90`  
		Last Modified: Wed, 12 Sep 2018 12:02:11 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management`

```console
$ docker pull rabbitmq@sha256:3f2a7e193143c957fcdc837f3c9aefef188332dfe101900422be84adc1c1ce2c
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
$ docker pull rabbitmq@sha256:f821a6153608dc6cdff453eca4d54e210c890469784311af771f9998bc500d47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70595194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa516f32cebce5d49a7b2992f8652affbfca186919f47232329c29bcd0f1808f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:02 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 05:21:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 05:21:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 05:23:43 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:23:43 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 05:23:43 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 05:23:43 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 05:23:43 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 05:23:44 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 05:23:44 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 05:23:58 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:23:58 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 05:23:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 05:23:59 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 05:24:00 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 05:24:00 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 05:24:01 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 05:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 05:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 05:24:02 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 05:24:02 GMT
CMD ["rabbitmq-server"]
# Wed, 05 Sep 2018 05:24:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 05 Sep 2018 05:24:16 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 05 Sep 2018 05:24:16 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe35f04ebea261787064fcf29714d8a188578fd3aae88a1672366b5243a1b4`  
		Last Modified: Wed, 05 Sep 2018 05:24:51 GMT  
		Size: 4.5 MB (4498555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a118dc68c2e54abc54162dd19892c08a71709d7499eabe7f6ac95205c2494f`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c19971869789806dbf507bf25ba148decd6223ec7dcf5621f7555ebb9fcd41`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 951.9 KB (951900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ff106f052e045acc2f662465dabd9b4cc66c251f17e0d8d46f599ca36b255c`  
		Last Modified: Wed, 05 Sep 2018 05:25:46 GMT  
		Size: 27.7 MB (27705749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111bf6d92c1e69b136135e9f1da0dfa7b0cc04403ccab3136749261515f49d63`  
		Last Modified: Wed, 05 Sep 2018 05:25:45 GMT  
		Size: 7.3 MB (7307812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e36093ef72e4f743ab6749c01e596fef19a17e732aa7514cac2684b3647ce3b`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d25d421b5177a3679c9efe92ebcaa0bdf8a5a79002b1cc30c397d542b73d017`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986d7127dec7410754406af50e6dfab991a7f4ffdf46cd1c0fd164f53db47d18`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a257c140b2399677a05700396cfa57e1496073dc1d8d224a23d635d814fabc3`  
		Last Modified: Wed, 05 Sep 2018 05:25:42 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:502613d4d38962cfa6ae02acadc4a8071ca181d8cdd54a97534425b52db79f92`  
		Last Modified: Wed, 05 Sep 2018 05:25:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91e2771bc3ea10ca3651c0fd9a4d7b8f6a55c280cd08d9aaac5be3b96329a9f6`  
		Last Modified: Wed, 05 Sep 2018 05:25:54 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8d680341ffdf08c6d3b9cf893d841ca5f92d4d55bd31ddb83a71d5a1ed8ed64`  
		Last Modified: Wed, 05 Sep 2018 05:25:55 GMT  
		Size: 7.6 MB (7634250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:4ceb84b8ba17510c31d148aa0d35c0767bd139628f808035fb7928fb283aa2f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66030964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:668a3b154f82cf88f224d56c33ee01ee2558b81ba8771f079c64d6b8be474920`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:45:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:48:18 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:48:19 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:48:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:48:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 11:48:20 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 11:48:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 11:48:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 11:48:45 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:48:46 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 11:48:47 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 11:48:47 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 11:48:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 11:48:50 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 11:48:50 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:48:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 11:48:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:48:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 11:48:53 GMT
CMD ["rabbitmq-server"]
# Wed, 05 Sep 2018 11:49:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 05 Sep 2018 11:49:28 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 05 Sep 2018 11:49:28 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483021b9c38437adcd233ec231bbe3d5f2262264fdb2cfdd6040e28622abfeed`  
		Last Modified: Wed, 05 Sep 2018 11:49:48 GMT  
		Size: 4.2 MB (4231636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de799b221ef6d17d523a8146fae2f4c5b756afa8dbcde3436ebe67d2cfb3760`  
		Last Modified: Wed, 05 Sep 2018 11:49:46 GMT  
		Size: 4.1 KB (4086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e2b5ada6e33dc5ae042bd4ae10d7d2e5cef590482f162b4fc967c577be9776`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 942.3 KB (942332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3d3095de2e908123bbe4b7d9dde4ed43bc9d0c9607b0fa38d3738d94cb5b42`  
		Last Modified: Wed, 05 Sep 2018 11:51:01 GMT  
		Size: 25.2 MB (25172498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a9618d145480ed9526a25eba5a4e1965da47f9408e923684cca9db33565ce7`  
		Last Modified: Wed, 05 Sep 2018 11:50:56 GMT  
		Size: 7.0 MB (7023800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256c7f54122b0496bfff1288e4e96acbfa61b011455253e51634de67fb0e5067`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03a8f18af17a6a087f2f71cdc256d9de6e7d2673988e997e2d42d017247312e8`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db1c89cb6b369b5f2b6cde6d0f2b5eb41298e9460ca070fbb0eaf256f6075a0b`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813557f2ea7e63daba256462e5395fb17715d792b71d98e5486d4e9db105001b`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 4.0 KB (4038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3cabcfb7c82b626786aa491f7c694e0748e1c83aab94c68c70d9de6dd60aca`  
		Last Modified: Wed, 05 Sep 2018 11:50:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9734c216d4f053fb9b0c5d3a9f2415a5dac4a0cdb387c617241b7403e4e01efa`  
		Last Modified: Wed, 05 Sep 2018 11:51:17 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bab4f4a3902a13161f3bc13965bb2cd8e0bb0ad7d7bc12b3c4945f838680d90d`  
		Last Modified: Wed, 05 Sep 2018 11:51:19 GMT  
		Size: 7.5 MB (7486855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:931e5186e13d9cdec9f5fb07d339e64131ca1ac507e2d6f7226089ce6b3e4a0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62991580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9a050e2185bdf17e4a134d3983f5c30002d318cdeaa5bb0e006323d2b71ef0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:38 GMT
ADD file:d20313e46e6d5f092327691d5bc0e83ad6b16d7b44a8dc82fa973c25a13257e7 in / 
# Wed, 05 Sep 2018 12:04:38 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:47:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:47:28 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 15:47:28 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 15:47:43 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 15:50:18 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:50:19 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 15:50:19 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:50:19 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 15:50:19 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 15:50:20 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 15:50:20 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 15:50:41 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:50:41 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 15:50:43 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 15:50:44 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 15:50:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 15:50:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 15:50:48 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 15:50:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 15:50:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:50:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 15:50:52 GMT
CMD ["rabbitmq-server"]
# Wed, 05 Sep 2018 15:51:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 05 Sep 2018 15:51:21 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 05 Sep 2018 15:51:22 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:2e5bbd238113a2057012dfb78ac9665531c276c48962d208492c8802fb0503c0`  
		Last Modified: Wed, 05 Sep 2018 12:13:41 GMT  
		Size: 19.3 MB (19270166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5141246d136f294078d95e58ccfe7ad4e4cb36e3f326facc50866aa09e2b87b`  
		Last Modified: Wed, 05 Sep 2018 15:51:43 GMT  
		Size: 3.9 MB (3868671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b31f084a36199cdd4d59bd6189376f7eaf477a8bef7fef0eba52f25fae320a9f`  
		Last Modified: Wed, 05 Sep 2018 15:51:42 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8fd793fb8cf44bd0327de96340e9367b4baaabaad4e35d2f36080d8b6ea5e9`  
		Last Modified: Wed, 05 Sep 2018 15:51:43 GMT  
		Size: 926.0 KB (926006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef243f4a8f0dcab8c778cf39b9defd95d5d784f60730e3b9c3afdae77e58fe7`  
		Last Modified: Wed, 05 Sep 2018 15:52:59 GMT  
		Size: 24.8 MB (24785252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a66e80f665b9e1dbcced8f8f151aba5ece6d7849737b67fcf356b7c2650395`  
		Last Modified: Wed, 05 Sep 2018 15:52:56 GMT  
		Size: 6.9 MB (6934344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a452ae6c6932c658c5ce57429b903810c8a7182594d69e714c93dbad347081c`  
		Last Modified: Wed, 05 Sep 2018 15:52:53 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4103b8222bb9c6d2c4d14c2d21293d17dce4018a5909a9f27ab67f561567a2a5`  
		Last Modified: Wed, 05 Sep 2018 15:52:54 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b41cc3daee5890e405122dcbf4bb102fc23ad0178d6e14cd96a520e469a90ac`  
		Last Modified: Wed, 05 Sep 2018 15:52:53 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589f6f32459681107e5bab08dd4cf4b0c6e4d3476c4c68135c8937f8fbd33676`  
		Last Modified: Wed, 05 Sep 2018 15:52:54 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d530ba860e872a8bf07d2e820473f4235a3afc99a72455f5e8099f202046ab`  
		Last Modified: Wed, 05 Sep 2018 15:52:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2c3922d6c93a977e05fa08517ea77308bb30d767c542e127b50146305d8996`  
		Last Modified: Wed, 05 Sep 2018 15:53:17 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a25c266c71a02f9d2e9f17f0538d7b5bf0c9f05462f5f1f14dc1e7e6eafb26`  
		Last Modified: Wed, 05 Sep 2018 15:53:20 GMT  
		Size: 7.2 MB (7196173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:eb50177a6ed58d1745d70f582d7a2b1199071c01cc49741d78c07fe5a286ed5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.9 MB (64873492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f93d1e273104dfaf40cb4f031be421d33ea3249762e27ed1f17edd9d4dca898c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 17:59:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:59:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 17:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 18:01:08 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 18:06:56 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:06:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 18:06:57 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 18:06:58 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 18:06:59 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 18:07:00 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 18:07:01 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 18:07:54 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:07:55 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 18:07:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 18:07:58 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 18:08:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 18:08:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 18:08:04 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 18:08:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 18:08:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 18:08:09 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 18:08:10 GMT
CMD ["rabbitmq-server"]
# Wed, 05 Sep 2018 18:08:58 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 05 Sep 2018 18:09:27 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 05 Sep 2018 18:09:29 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e37db5cf675e4afee42d261d405850f9661011376c9e32dcf161b994b5784`  
		Last Modified: Wed, 05 Sep 2018 18:10:27 GMT  
		Size: 4.1 MB (4073269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a489138492c1c3398d5e832adb250d71806f6d1c1ee77f0d4386d242770e4f5`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786d0df6cef56007fb33342e229dc469e545f3fbd266b4b427d1fcd6f265084`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 919.2 KB (919245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f28d2f910748dac84b3653ff2b93ea964b441f037fff2ac03dab9948e1f601`  
		Last Modified: Wed, 05 Sep 2018 18:14:22 GMT  
		Size: 25.0 MB (25043293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9efd255458d46fa2b469b2e7cc982b2dda5cdb1297ead801422adc54537597bf`  
		Last Modified: Wed, 05 Sep 2018 18:14:17 GMT  
		Size: 7.0 MB (7007289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bdf91c364e692aedf21301b617487603c998f2177c02b1ddd1ac7eae05e58a`  
		Last Modified: Wed, 05 Sep 2018 18:14:13 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1c7dedfeb3b216373ddbfb403cc1fedf6bf932daa44fb7ab121a7971dcffd2`  
		Last Modified: Wed, 05 Sep 2018 18:14:14 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0647f0d7cec0d4f8771412ee350759fbc79416a7e530ecbdd481ed231b080c2d`  
		Last Modified: Wed, 05 Sep 2018 18:14:13 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3978682f63e5a01fbcb25c5a54b73974913c22b89174bf03a01f474089bed8`  
		Last Modified: Wed, 05 Sep 2018 18:14:14 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ec5a0b215cb6314ed172367b5a321c1e1dbf73aa51222ea09ecb3fcf5c5a51`  
		Last Modified: Wed, 05 Sep 2018 18:14:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21317e468f462d8004ff3e41c00076a1e98dda77289bd387ed6bc39a112099fc`  
		Last Modified: Wed, 05 Sep 2018 18:15:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6cc36f4697ce6806ea34ff603f78ec4da7bfcb7a0d909fac2e4f80b4f9dfb9`  
		Last Modified: Wed, 05 Sep 2018 18:15:16 GMT  
		Size: 7.5 MB (7487778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:ba2b124c52610c1b6c92b24994dd79fbf9cbf3f993acb4a4c3d6d8d77916f8f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71743255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a961192860ab45e82b3d89c1bbbdf001346f9a6c4a58811ed1481c5d0e67cceb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 10:43:58 GMT
ADD file:e2998c599fe122e866e9244aa7fdb1d3bdddb454863a1d003340392684d2388d in / 
# Wed, 05 Sep 2018 10:43:59 GMT
CMD ["bash"]
# Fri, 07 Sep 2018 00:46:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:46:57 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 07 Sep 2018 00:46:58 GMT
ENV GOSU_VERSION=1.10
# Fri, 07 Sep 2018 00:47:09 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 07 Sep 2018 00:49:17 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 07 Sep 2018 00:49:18 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_VERSION=3.6.16
# Fri, 07 Sep 2018 00:49:18 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Fri, 07 Sep 2018 00:49:19 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Fri, 07 Sep 2018 00:49:34 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 00:49:34 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 07 Sep 2018 00:49:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 07 Sep 2018 00:49:35 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 07 Sep 2018 00:49:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 07 Sep 2018 00:49:36 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 07 Sep 2018 00:49:36 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Fri, 07 Sep 2018 00:49:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 07 Sep 2018 00:49:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 07 Sep 2018 00:49:38 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 07 Sep 2018 00:49:38 GMT
CMD ["rabbitmq-server"]
# Fri, 07 Sep 2018 00:49:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 07 Sep 2018 00:49:55 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 07 Sep 2018 00:49:55 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6a04e6fc95134a0f0b1fc5f312d7930a2abb685ce0081538c60b7d51a221cbb1`  
		Last Modified: Wed, 05 Sep 2018 10:52:19 GMT  
		Size: 23.1 MB (23126488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a4dae48f2c41c273519bd218a68670fd300dd05b610af53de52cbd92e018d83`  
		Last Modified: Fri, 07 Sep 2018 00:50:33 GMT  
		Size: 4.8 MB (4803829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec4312e65d61f18a107cd8e5936a2ced8a79d49d10dc094a2e1c17d33a1810b`  
		Last Modified: Fri, 07 Sep 2018 00:50:31 GMT  
		Size: 4.1 KB (4061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111d7d048cfd3b5609811a3f5c8139eb45fb2824715b10855d24520943ffb47d`  
		Last Modified: Fri, 07 Sep 2018 00:50:31 GMT  
		Size: 931.4 KB (931361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c662c03e1a8b23147d4634860b779e3068b1fdda263cd9d2470ade66bcfb93af`  
		Last Modified: Fri, 07 Sep 2018 00:51:36 GMT  
		Size: 27.8 MB (27820117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ee3c72fcc0ae938f4f272f3560172954b0d0ef482f0defb3d613be47cb99d6`  
		Last Modified: Fri, 07 Sep 2018 00:51:32 GMT  
		Size: 7.3 MB (7322124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e0e44bf8f31b9ec8bcd33438395cba207359939f1dad4b20a01682348701ae`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d3e25139e908330ec8225f8a2934fb7c0b4e0908f47af1c9de1be1e8e9d9669`  
		Last Modified: Fri, 07 Sep 2018 00:51:31 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca4fb17c89720c4149d56bce43815115e91bc0f9c163d58c94c1e9694c93bcc`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e013a87df8ef82eb032b6388b54488fb95f70f5a8dd58849f76b6af9624f2f4`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 4.0 KB (4039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ca62ed2a08a25bc86c44f76fd560258858c8af3954ab319279a6d5c9d0b8ffb`  
		Last Modified: Fri, 07 Sep 2018 00:51:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db3022189b32d4e5633e3f05307f0bb99bcd66a2b8e053711d759288539f155`  
		Last Modified: Fri, 07 Sep 2018 00:51:45 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69458dbca984a422d154ee50090b142906396e2fa00132344b5a3a69a28c9d4`  
		Last Modified: Fri, 07 Sep 2018 00:51:48 GMT  
		Size: 7.7 MB (7728388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:15b56134041cc4ff5ec42c45736945a4a7514bdbc68c74a4a3a10c6fb403bd25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.3 MB (68329631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada78ca4a2c4c91774e15cac576700573e28c820bd17e56bf7a5814514019710`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:31:34 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:31:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:32:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:38:47 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:38:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:38:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:38:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 11:38:51 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 11:38:52 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 11:38:53 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 11:39:45 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:47 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 11:39:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 11:39:51 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 11:39:54 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 11:39:57 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 11:39:58 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 11:40:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 11:40:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 11:40:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 11:40:05 GMT
CMD ["rabbitmq-server"]
# Wed, 05 Sep 2018 11:40:19 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 05 Sep 2018 11:40:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 05 Sep 2018 11:40:44 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579e7691721557327e3927ed84719e320cf6617c3acc48457fbe3ecd5d70f853`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 4.4 MB (4360587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2457b86f9cd5532629687ff9153d277b80e5c5c805dfbba681b8a51bc205fcc5`  
		Last Modified: Wed, 05 Sep 2018 11:41:29 GMT  
		Size: 4.1 KB (4105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69a3893e8f4d42d93f333b4f7a04240b2f1f8efe56cbf832b105ae32483ce4`  
		Last Modified: Wed, 05 Sep 2018 11:41:30 GMT  
		Size: 920.5 KB (920546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81251c6d8805204161b4f826152f551ebaa010ee2eb465a5e9a63b9f15414501`  
		Last Modified: Wed, 05 Sep 2018 11:43:03 GMT  
		Size: 25.5 MB (25492633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af2abefcd57965d66cb26fa7a7b1c78f0a76beb340762f4366252a9b8966533`  
		Last Modified: Wed, 05 Sep 2018 11:43:00 GMT  
		Size: 7.0 MB (6966654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8683a012eb214223511b02577788e5370bd42086d17b27ac895b1dd1621889f`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5661e30c4b93f152706ce9084c6af0c615ba39bb81fa3b8baeda1f46b96a370`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:463dd1237ead64047606a54860760d3983e2c043d9fbcfff43a8a086f520b0ac`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535176d7b5948a93d575525c10a6f95e29ea1ccc81f687ea40c56712bb5a9a14`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbe4cdd1c81b77b825dd09760a96eeb842901da81e135366f225ee6ef691e11`  
		Last Modified: Wed, 05 Sep 2018 11:42:56 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7aa7814554c131189c5ddc9cb0c9533740c1de57808b5bba379a85474990a4`  
		Last Modified: Wed, 05 Sep 2018 11:43:24 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dceb97257c6a9808f74f0eea4dabcb88c22bf4700791ab6df83c8d1cf8abeb10`  
		Last Modified: Wed, 05 Sep 2018 11:43:26 GMT  
		Size: 7.8 MB (7837687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:5160736adb0bb2cbe3b0ea85794a27584432fb7865034a895edf5e4362a17622
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.1 MB (68084160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb98a3113b2d37cc778bc3c5d07ac4e5a39bf7c132553c2e0c9a9d4325b0d0d5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 11:44:28 GMT
ADD file:f5f366bce70b148326259fed081f171c5f1789dbd1954137fb79deb38cf5cef1 in / 
# Wed, 05 Sep 2018 11:44:29 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 14:10:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:10:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 14:10:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 14:10:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 14:12:32 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:12:32 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 14:12:33 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 05 Sep 2018 14:12:33 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.6.16-1
# Wed, 05 Sep 2018 14:13:00 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 14:13:00 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 05 Sep 2018 14:13:01 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 05 Sep 2018 14:13:01 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 05 Sep 2018 14:13:02 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 05 Sep 2018 14:13:03 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 05 Sep 2018 14:13:03 GMT
COPY file:7f3c1def1757a323e01e9cd9e65a31daea4925bdbddb08efd80abc7fe43d605e in /usr/local/bin/ 
# Wed, 05 Sep 2018 14:13:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 05 Sep 2018 14:13:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 14:13:05 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 05 Sep 2018 14:13:05 GMT
CMD ["rabbitmq-server"]
# Wed, 05 Sep 2018 14:13:24 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 05 Sep 2018 14:13:36 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 05 Sep 2018 14:13:36 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:599d69132c0524467aafceacede5f8ea0a07f3ae6d5c97a28cf25ce9e1cd4580`  
		Last Modified: Wed, 05 Sep 2018 11:49:20 GMT  
		Size: 22.3 MB (22334611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486c2c2490eb81017dce27f813906639a902cc88712d9ac2b0f82224a2be95c5`  
		Last Modified: Wed, 05 Sep 2018 14:14:13 GMT  
		Size: 4.5 MB (4529994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34d0bc6dcfc4dbdedfaa97c4ac5437d8e256e085c4e404c22abf6aa34f047ba`  
		Last Modified: Wed, 05 Sep 2018 14:14:10 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69d2beab3371bbcea2702a538b5f6eda37ed482f86855cf0ca02a0d2dd00372`  
		Last Modified: Wed, 05 Sep 2018 14:14:10 GMT  
		Size: 937.9 KB (937895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d57745f11284bfc512fc0bd9c6c541022c4b9a9dc1fe17eda6db5757b2fb69f5`  
		Last Modified: Wed, 05 Sep 2018 14:15:18 GMT  
		Size: 25.6 MB (25622378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804b881b30adb95339becf45a308eb656a75487f49f9c32a4559a3436fff0635`  
		Last Modified: Wed, 05 Sep 2018 14:15:15 GMT  
		Size: 7.0 MB (7041269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20abb4e74be2763e44aa24e6c0b10f3625fd76ae19518971a6443a7506f15180`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63ea3fe27b1b45a20aced370325bbe8c06228712b7f21ec1412bac09580ad85c`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1441a3bc9631da6a87b32d8c01932b76563ab22fe62994146207fea62010e7eb`  
		Last Modified: Wed, 05 Sep 2018 14:15:14 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b50483b73ddd77f26d203bafdd444eeab15f85a125266bd905379d272c521f`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 4.0 KB (4040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4210fa5ff5f97c5afece3cde079c799a7d77062437f6a488302334319dc73a0a`  
		Last Modified: Wed, 05 Sep 2018 14:15:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a260edd1688215830fb9aec0097a4484bb0bbe988c4896882ef34a599499fcd`  
		Last Modified: Wed, 05 Sep 2018 14:15:34 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fcf29664afb7d758a8f30337e588371efc3d93828ea10330adfe895437f583d`  
		Last Modified: Wed, 05 Sep 2018 14:15:38 GMT  
		Size: 7.6 MB (7607045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.6-management-alpine`

```console
$ docker pull rabbitmq@sha256:62e5893fa71583ee80a6f7889a3ae7a0c26c7651a811040b397d1e1730352202
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
$ docker pull rabbitmq@sha256:2277f68e65132a24a0ce8ac4c017b1a00f726d49e294f5ef6fc99fd61ca5b6f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 MB (37089543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:328816ce58edabbe34fcd0a55ed58fcaa85cc1d00dfeffb444e1bf2cdc39af22`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 02:53:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 02:53:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 02:53:56 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 02:53:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 02:54:29 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 02:54:29 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 02:54:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 02:54:34 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 02:54:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 02:54:34 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 02:54:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 02:54:36 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 02:54:36 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 02:54:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 02:54:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 02:54:36 GMT
CMD ["rabbitmq-server"]
# Wed, 12 Sep 2018 02:54:50 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 12 Sep 2018 02:54:53 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Wed, 12 Sep 2018 02:54:54 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0839f7c4bc75ca0f7cdac3608503344e6b4aceeaf40ca2808d0c5eb577ae49`  
		Last Modified: Wed, 12 Sep 2018 02:55:10 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ca51e7c431a28e32ee85a8a5626326770d4cc7c6982b6718f2496308bb3f8`  
		Last Modified: Wed, 12 Sep 2018 02:55:09 GMT  
		Size: 9.1 KB (9060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b799497b1c496754f3279b4ea0dfdf1808c34a711408ebdf6b1885f6f34d9bb8`  
		Last Modified: Wed, 12 Sep 2018 02:55:13 GMT  
		Size: 18.7 MB (18709062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68437d33170edc8f1b4a93d17e0d777544599025b13cc1c6aeeb5844122ebd2a`  
		Last Modified: Wed, 12 Sep 2018 02:56:25 GMT  
		Size: 5.1 MB (5138369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2851b70f7d057198a161ad549ae87277834eee521d02b4f923762f60fef32e9`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14125ba850e22a0b8fa1d5fba6eecb3b00c6b6986f949f9c82f8bd09f7754ea`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a99f62867a20307fbb899c190a7e9dbb92a777c99629edfe41a79ac62b14ed4`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3f51ec38dbde16ba66fb06e3a598e8bebb88295d23da58ef76888879ccb0c4`  
		Last Modified: Wed, 12 Sep 2018 02:56:24 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd805a7d6c1c80064d2914e524bb9f1f2a25c1ebede950d784efc801881c803a`  
		Last Modified: Wed, 12 Sep 2018 02:56:43 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98919663853b04480fa7458e82e0a8680ec9c02bfcc7a54acc079159e4a0a5c`  
		Last Modified: Wed, 12 Sep 2018 02:56:48 GMT  
		Size: 11.0 MB (11020198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:054a5cb145cf356ed442de3227bba79f571c8e0c9089c9d5f4b49369a0bb77ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.5 MB (34479434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7acdd13c8e7cf67e49ec27efd86dc0fe2e3030bcda7c4b7c607bcb41fabf73e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:15:03 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 08:15:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 08:15:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 08:15:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:15:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 08:15:34 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 08:15:35 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Sat, 15 Sep 2018 09:11:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 15 Sep 2018 09:11:06 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 15 Sep 2018 09:11:08 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 15 Sep 2018 09:11:08 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 15 Sep 2018 09:11:09 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 15 Sep 2018 09:11:10 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 15 Sep 2018 09:11:11 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Sat, 15 Sep 2018 09:11:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 15 Sep 2018 09:11:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 15 Sep 2018 09:11:12 GMT
CMD ["rabbitmq-server"]
# Sat, 15 Sep 2018 09:11:25 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 15 Sep 2018 09:11:32 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 15 Sep 2018 09:11:33 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ab7d82bf045d6b83b49344082af7a63d456866771ec60323e02d8ba54d348`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404cd7746429b5adac001a8efa2a282b5106a8a7c8d2ef2e225eda23e4a69ef`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 9.0 KB (8987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04b3620c9d7a0f231a2b41fb9ee2016ac2d8bfdfd2ba7917679aa1e2cd0f822`  
		Last Modified: Sat, 15 Sep 2018 09:11:49 GMT  
		Size: 16.3 MB (16308397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77bfdd632b812d99cf633b13a2c2d871c3115ee9c3f649d350f2849ccb7ec420`  
		Last Modified: Sat, 15 Sep 2018 09:12:29 GMT  
		Size: 5.1 MB (5129079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ef01881b2358f5d25ce5c6b2257b95666cc025a015785c927767c38e4ca4787`  
		Last Modified: Sat, 15 Sep 2018 09:12:28 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1d8f79ae17ff4ce1931e34245ed48f50414e6bd418e51d098e2a636c76b3df`  
		Last Modified: Sat, 15 Sep 2018 09:12:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbb78620a14bec4c8ad5880da27cc8c1dd709f382e1ce160d6c65b2d420e58e`  
		Last Modified: Sat, 15 Sep 2018 09:12:28 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1ac3271b8a6435c044c874bae1c37dc2d4cbce3ff92bc732f7b483d80db2d88`  
		Last Modified: Sat, 15 Sep 2018 09:12:29 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0bb4089ba5510a5437cc2505ccb0f62723dce859a4a8fc979245c3f04e89d4`  
		Last Modified: Sat, 15 Sep 2018 09:12:39 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1277683167a1540b3922c072a3c8ad339d748d39ad3ad72dccd91aa68dfbfeee`  
		Last Modified: Sat, 15 Sep 2018 09:12:43 GMT  
		Size: 10.9 MB (10880348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:19c9e4a021d27745e651c906a7f4b5b4b41e54f4b12f8c41c485d6f4decdcd96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 MB (34375579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814ac5b5a03c28cfb52feda25b5bc748e8411c686ce637fccdc2424c556ef527`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 22 Sep 2018 08:55:17 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 22 Sep 2018 08:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 22 Sep 2018 08:55:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 22 Sep 2018 08:55:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Sep 2018 08:55:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:57:57 GMT
ENV RABBITMQ_VERSION=3.6.16
# Sat, 22 Sep 2018 08:57:57 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Sat, 22 Sep 2018 08:58:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:58:08 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:58:10 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:58:10 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:58:12 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:58:14 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:58:15 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:58:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:58:17 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:58:17 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:58:36 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:58:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:58:45 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9855a7536b42bdcc9774489c4e1e9b8ee79a04e7abb5de9a61878f0870cbfc1`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8ae4b960c46131b8c15e06d3fd15a734a2737404ae494ca98a9973bb8e3fcb`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e020a68ecb622c4ef5b488b3fd801d8b0a903b0b593a7d653f544775add7`  
		Last Modified: Sat, 22 Sep 2018 09:01:03 GMT  
		Size: 16.3 MB (16285564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f3a906a74a50a301c03b928558e96ea3d1c5a9f8af47136a361df0515ab9f7f`  
		Last Modified: Sat, 22 Sep 2018 09:02:49 GMT  
		Size: 5.1 MB (5128243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15db32b1b4d4744c807b66ac2e0e7b1199b31a8d24ed517e543b96997273190`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14dd28958e3c95c33b6b4b0f56286149ed324eb3eb8791b1892a644dd1e125a`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f844937f230d0067f1915bc8cb24c3b741b9315c073d3de9e86b3e5358462f94`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eab78232377aba8aaf7c26774c59c8c2e4bc14fe4f36991f34f4b28ce8eb3f`  
		Last Modified: Sat, 22 Sep 2018 09:02:48 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68001f217ff2c820b19b63bfd5b2a35178de38939d86889b043fbc0756b5334`  
		Last Modified: Sat, 22 Sep 2018 09:03:15 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e1b0b9a7eda64a1838cb5fc3b9b6258d77cd770e17b58e48c2f5d6aa9f47d4`  
		Last Modified: Sat, 22 Sep 2018 09:03:21 GMT  
		Size: 10.8 MB (10846954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; 386

```console
$ docker pull rabbitmq@sha256:a4878269c8e2d1f8e9a2a651a2a208b0c9cae080543a22f0bcfda04b8ffc07b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 MB (37430839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c8e08f1e7947dd09676aebd37d7ea7b83861af39c72f0bb13efd598c5541eb1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 16:56:45 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 16:56:46 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 16:56:48 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 16:56:49 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 16:56:49 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 16:57:22 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 16:57:22 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 16:57:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 16:57:27 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 16:57:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 16:57:28 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 16:57:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 16:57:29 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 16:57:29 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 16:57:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 16:57:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 16:57:30 GMT
CMD ["rabbitmq-server"]
# Wed, 12 Sep 2018 16:57:39 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 12 Sep 2018 16:57:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Wed, 12 Sep 2018 16:57:43 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9e27f0211a0ac7e9b4d031a8ae3842bbcbd2fe5e0c67e195888f9910cb2f53`  
		Last Modified: Wed, 12 Sep 2018 16:57:57 GMT  
		Size: 1.3 KB (1275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9cdf242dd2dd8af9fe8a1f1b06d07423cb042e98d120ffbb156012f1bcf33c`  
		Last Modified: Wed, 12 Sep 2018 16:57:57 GMT  
		Size: 9.1 KB (9125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2298b98abbf8927784e111ad51b75a75de27173f8e35f46961b5d992a08f63`  
		Last Modified: Wed, 12 Sep 2018 16:58:01 GMT  
		Size: 18.9 MB (18868324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6e0cc486919d1ea3222d60e3e50c12356505d38612c1fba03baad5b83b47d7`  
		Last Modified: Wed, 12 Sep 2018 16:58:44 GMT  
		Size: 5.1 MB (5136642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce934f63d0af9de52fc50a959fda57b5567fcc6c9cf8ad89bafcdbc9cfeb7c75`  
		Last Modified: Wed, 12 Sep 2018 16:58:44 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db01e66a72334ed66a6ae5920141db1311b00af3ea21c6b47cc8a0eb1985735`  
		Last Modified: Wed, 12 Sep 2018 16:58:43 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06b1296b580d49fbd698f619b5258e7ca51dbb6cb6ec09d667fd40e0d465ecb`  
		Last Modified: Wed, 12 Sep 2018 16:58:43 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235393388c92ea8a5de1a9fd0265a181ed7554612f7c4632535266954af4c3d5`  
		Last Modified: Wed, 12 Sep 2018 16:58:43 GMT  
		Size: 4.0 KB (4036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adda1f075940fc9910de0aa45139d3093717001469c4b0816f84d031907f0271`  
		Last Modified: Wed, 12 Sep 2018 16:58:54 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67099543798c6bb01af3255405060612b4e892df4eca087c6d1d536655604073`  
		Last Modified: Wed, 12 Sep 2018 16:58:57 GMT  
		Size: 11.1 MB (11139181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:4eafac32dcfdf1e8726506a1dec4678e6f97cbae36a8c588e9ed1a554f2303ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.8 MB (34849816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbde5e0238f1651211ccff760ed3965b724b16b6ffbb7db01265127648cd31e5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:32:06 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:32:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:32:21 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:32:22 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:32:24 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:32:25 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:32:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 11:33:52 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 11:33:53 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 11:34:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 11:34:04 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 11:34:11 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 11:34:13 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 11:34:17 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 11:34:20 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 11:34:21 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 11:34:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 11:34:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 11:34:25 GMT
CMD ["rabbitmq-server"]
# Wed, 12 Sep 2018 11:34:48 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 12 Sep 2018 11:34:58 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Wed, 12 Sep 2018 11:35:00 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9690f1f749a7f0b179eb76f9cc4ebcc64b209d5e28215bb0b7c34b7dcd4c86`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf99cc7ead890ac43c261cd845b9158794d9a5ea0df4e1b8baa5f584f3e5045`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8dcc93812fc0b7d5834d65e6589d35279fba3160ba5a65182ae12d3f0eb9d6`  
		Last Modified: Wed, 12 Sep 2018 11:35:37 GMT  
		Size: 16.5 MB (16486759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2888c195335431abdebfdd6223e8dff635c36327e3bada3e3f4c65e543394c96`  
		Last Modified: Wed, 12 Sep 2018 11:37:24 GMT  
		Size: 5.1 MB (5129565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510c9b8e38b8fa56fb4637965b1aa7d83777cfbae5dec0d90b2a8ce96ccfa553`  
		Last Modified: Wed, 12 Sep 2018 11:37:24 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003f4733ae11239de8aacecbeac031bdef03bb794517855484612f3020bfafa8`  
		Last Modified: Wed, 12 Sep 2018 11:37:22 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35aa75aa667765b2649ead7135566222ddeea29e508eb3f5790ab09e2f4b2852`  
		Last Modified: Wed, 12 Sep 2018 11:37:22 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332a9bce33f3edcda41a6dfcd5cd0a7c4acd7b4aa398abf9b39a250fb2186d09`  
		Last Modified: Wed, 12 Sep 2018 11:37:23 GMT  
		Size: 4.0 KB (4032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d7eb389b77f972484537666532f61355f2bef16002e927875c6c9dcfcc9a71`  
		Last Modified: Wed, 12 Sep 2018 11:37:56 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:363f0401b368c19d483f8b25f42bde00d01864a7423a03030530fbfb3126c824`  
		Last Modified: Wed, 12 Sep 2018 11:37:59 GMT  
		Size: 11.0 MB (11022590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.6-management-alpine` - linux; s390x

```console
$ docker pull rabbitmq@sha256:53ea4e02e518a7e0b214667bb72f67c8af80c3fe4be00f6c91978e23fe55c950
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.1 MB (35128256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dadf15eb539ab8c24788f9a22ffc1e94deb3fc413b158f0330c5a8261b86427`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:59:13 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:59:14 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:59:16 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:59:16 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:59:21 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:59:21 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:59:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 12 Sep 2018 12:00:18 GMT
ENV RABBITMQ_VERSION=3.6.16
# Wed, 12 Sep 2018 12:00:18 GMT
ENV RABBITMQ_GITHUB_TAG=rabbitmq_v3_6_16
# Wed, 12 Sep 2018 12:00:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Wed, 12 Sep 2018 12:00:23 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 12 Sep 2018 12:00:24 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 12 Sep 2018 12:00:24 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 12 Sep 2018 12:00:24 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 12 Sep 2018 12:00:25 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Wed, 12 Sep 2018 12:00:25 GMT
COPY file:59489bc2db97468b45a849e458889641a2f61b9a804db835bb9c32cb28661d1c in /usr/local/bin/ 
# Wed, 12 Sep 2018 12:00:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 12 Sep 2018 12:00:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 12 Sep 2018 12:00:26 GMT
CMD ["rabbitmq-server"]
# Wed, 12 Sep 2018 12:00:35 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 12 Sep 2018 12:00:38 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Wed, 12 Sep 2018 12:00:42 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddbf87a168e8733a785b17536a3eb54aedb277a2d0e0f52c86314a84faef4fd`  
		Last Modified: Wed, 12 Sep 2018 12:01:02 GMT  
		Size: 1.3 KB (1273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19950773dd5ab0e23347cb5381921e23f6115b1768ce3e049e87707941a71d8`  
		Last Modified: Wed, 12 Sep 2018 12:01:02 GMT  
		Size: 9.2 KB (9220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ce7cec2dc244c5557f2c3bc9caf5e1ba6c76a377a8b7ad45401ca96e6bfecd`  
		Last Modified: Wed, 12 Sep 2018 12:01:06 GMT  
		Size: 16.5 MB (16547705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89de51b44f53f8c996864691052be7c2bc0507c9406081570fff3f2d065eba7a`  
		Last Modified: Wed, 12 Sep 2018 12:02:12 GMT  
		Size: 5.1 MB (5128329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d3115e9f985e20b462cd0eb7ab688108f5f2edd6f61a85e51ef4bb0bdbee9f`  
		Last Modified: Wed, 12 Sep 2018 12:02:11 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db886e1580d45d47dbf4f3cdaf9fe7d2cd14038dbd8958d3538e6fd71d6df13`  
		Last Modified: Wed, 12 Sep 2018 12:02:11 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf79a1687607f72419a1825a1d38fea6b4a869318aa7bf2b4c12faf9b54782c5`  
		Last Modified: Wed, 12 Sep 2018 12:02:12 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70adce003d27d86ccc15c438505598c1c4bbb8d5a6de1b6436835c1bbea95d90`  
		Last Modified: Wed, 12 Sep 2018 12:02:11 GMT  
		Size: 4.0 KB (4037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2bc12d101f6b839ca2e44f79d2eec7ed34e0a313c16efded609c786a2f99807`  
		Last Modified: Wed, 12 Sep 2018 12:02:29 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4cad48c204c3037f78dc8032c8da8cb09674d5889613563c1e8f0225a0af252`  
		Last Modified: Wed, 12 Sep 2018 12:02:32 GMT  
		Size: 11.1 MB (11129149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7`

```console
$ docker pull rabbitmq@sha256:c019c868551be133c712ffaadb52951fd4ffdf0ef31e45d81dcb76fbba1cd9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3.7` - linux; amd64

```console
$ docker pull rabbitmq@sha256:5c8a8b5454ddae4fb5597223515c3a6e7e252fb83403cdf72162f7f0c354e8f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65789829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fdcccc8ade180bbc149f2834c3fca45e64bc1c3829309576d8eee6c8f20f3f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:02 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 05:21:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 05:21:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 05:21:14 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 05:21:38 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:38 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 05:21:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 05:21:39 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Fri, 21 Sep 2018 19:20:44 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 19:20:44 GMT
ENV LANG=C.UTF-8
# Fri, 21 Sep 2018 19:20:44 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:20:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:20:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 21 Sep 2018 19:20:47 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:20:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Sep 2018 19:20:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:20:49 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe35f04ebea261787064fcf29714d8a188578fd3aae88a1672366b5243a1b4`  
		Last Modified: Wed, 05 Sep 2018 05:24:51 GMT  
		Size: 4.5 MB (4498555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a118dc68c2e54abc54162dd19892c08a71709d7499eabe7f6ac95205c2494f`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c19971869789806dbf507bf25ba148decd6223ec7dcf5621f7555ebb9fcd41`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 951.9 KB (951900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74b797281ea162830289012ea83cfe1e59f93ac0f85f76ad9386dd41305fd30`  
		Last Modified: Wed, 05 Sep 2018 05:24:49 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b0494f0e3c744f09fd327476571006c12f9f6cfc048f97f2c9e6c66999db94`  
		Last Modified: Wed, 05 Sep 2018 05:24:52 GMT  
		Size: 27.5 MB (27500750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d980114df034ef4993a83465524fafa7344b25e19528982353c9cf74bf5f55a`  
		Last Modified: Fri, 21 Sep 2018 19:22:19 GMT  
		Size: 10.3 MB (10341393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ca5fedb825835294e2565cc58d227196127ecc0edc0c281346b26197bc100f`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1e615d6da0531fe7024d2a969229da3883db973c818a56c5d6a400c3a5c271`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9a78cfa9a669c16e12c1a9ac682402319955e856326ec083e07081a19b0b25`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6dad79c7b8b87e34a5e1daaf7feb10cbad88e100db107941e83f8794fb278cc`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bf45b8fd5229e3afde232d882b510fe05c8cdafb7a601bbb654e3f54767b8a`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:e6fd3fc0220e4f7d17f84105fabdd368ed1acab58e2eafe357ca046923f828cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61646967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8332c91fde7966d6387b24ae67e583ed6935fcde4c427438368de5e1a500bee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:45:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:45:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:46:06 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:46:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:46:07 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:46:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:58:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:58:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:58:44 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:58:44 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:58:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:58:46 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:58:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:58:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:58:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:58:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:58:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:58:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:58:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483021b9c38437adcd233ec231bbe3d5f2262264fdb2cfdd6040e28622abfeed`  
		Last Modified: Wed, 05 Sep 2018 11:49:48 GMT  
		Size: 4.2 MB (4231636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de799b221ef6d17d523a8146fae2f4c5b756afa8dbcde3436ebe67d2cfb3760`  
		Last Modified: Wed, 05 Sep 2018 11:49:46 GMT  
		Size: 4.1 KB (4086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e2b5ada6e33dc5ae042bd4ae10d7d2e5cef590482f162b4fc967c577be9776`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 942.3 KB (942332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65428a380acc7019931c23005421c6f7eacc5c73ae5a77a6340977af268cdb29`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4f4592eb0138d0e1a977e797f6b1b1861414b013b17251558a55338917b431`  
		Last Modified: Wed, 05 Sep 2018 11:49:50 GMT  
		Size: 25.0 MB (24988439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a36e2eac1d50e768d2e155c3fa6eb8e7ed70d329f075619ed2eedb3ce65da4`  
		Last Modified: Sat, 22 Sep 2018 09:00:04 GMT  
		Size: 10.3 MB (10310410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb90657b133110385ab6178da97ba097dc953c4db394ffff1370ef7f0b39b59`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42d8ba2e5a411d9a0e012ae3d4b234f938de9cbba8993655cd48317a78d8108`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9767a7551c4b2ee7f7101af8e55721ce83af6c18e25606d15095e146108ad04a`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859bd681e58f37404c3814d419985804f6fd270b5f056d568fce48e2e1d6ffbd`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a722bdd44282ba09454c487b7c111669310847853a6f817ec1e002625cf1ead`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:3d9d8c6470d4fbed7b38e7cce08f5530b87cfc019af5549052abacc99d41c532
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60688478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd979cc47d934888fc861b1a5e17d344fdf8107e11f00e5ccc6544081054dfc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 17:59:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:59:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 17:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 18:01:08 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 18:01:10 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 18:02:48 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:02:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 18:02:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 18:02:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:51:38 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:51:47 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:51:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:52:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:52:49 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:52:49 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:52:51 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:52:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:53:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:53:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:53:14 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:53:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:53:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:53:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:53:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e37db5cf675e4afee42d261d405850f9661011376c9e32dcf161b994b5784`  
		Last Modified: Wed, 05 Sep 2018 18:10:27 GMT  
		Size: 4.1 MB (4073269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a489138492c1c3398d5e832adb250d71806f6d1c1ee77f0d4386d242770e4f5`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786d0df6cef56007fb33342e229dc469e545f3fbd266b4b427d1fcd6f265084`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 919.2 KB (919245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8290a5f844dc24fafb21b0cc2eefa710b721caab388788f0f84fb6c5304125`  
		Last Modified: Wed, 05 Sep 2018 18:10:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacda0a12c7cb0992a5d95f75099782e66e2f4561cfa697f95a32df5c592bc68`  
		Last Modified: Wed, 05 Sep 2018 18:10:30 GMT  
		Size: 25.0 MB (25045917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf4ae8997417961ed19100842c7e6c280e4c623403e85c0047ae7cbdfa9208`  
		Last Modified: Sat, 22 Sep 2018 08:59:14 GMT  
		Size: 10.3 MB (10307125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62359fecc08685998249d40a89ab975841f91f6d7dda13315a83d8f3c7f50ab1`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d142bc95a688efcc89d03f06eb191ff71ac493a62059adbe7c8322f301fee`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbfe2ca2db93d20210ba636666631f84f380156d7fa7a98fe93a68cd7d9a366`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ee8a3aecd0459b8894c132648bdfb8b441130ca853ba2bba585daa25e7412`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0ab2b1147790075787c5b2251cf77110a3da7fa083d1fd2c40e5824d0c25f2`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:51afde8e3fd650c0531f0799984efea6ed6a234059185cdb859e46886617fc15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63737741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863b375131d15f8ec258360b0e8fe00cbe1eb2c0f54a8baaaf12a3a4f3785deb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:31:34 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:31:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:32:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:32:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:34:45 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:34:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:34:51 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:34:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:29:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:29:29 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:29:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:30:22 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:30:25 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:30:26 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:30:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:30:39 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:30:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:30:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:30:55 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:30:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:31:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:31:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:31:10 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579e7691721557327e3927ed84719e320cf6617c3acc48457fbe3ecd5d70f853`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 4.4 MB (4360587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2457b86f9cd5532629687ff9153d277b80e5c5c805dfbba681b8a51bc205fcc5`  
		Last Modified: Wed, 05 Sep 2018 11:41:29 GMT  
		Size: 4.1 KB (4105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69a3893e8f4d42d93f333b4f7a04240b2f1f8efe56cbf832b105ae32483ce4`  
		Last Modified: Wed, 05 Sep 2018 11:41:30 GMT  
		Size: 920.5 KB (920546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87de592d09499649ca13a67a2de44d7c46855451105c18148090363fc0cbb78c`  
		Last Modified: Wed, 05 Sep 2018 11:41:28 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd733fc519ab91b0b6f3b8dd93802dcff0937fa8db79069713e23b163526e8`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 25.4 MB (25378924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70161d40899550476a55bade31bc5e0e735c4ca8803318ed7c1370946c7ebc01`  
		Last Modified: Sat, 22 Sep 2018 08:34:27 GMT  
		Size: 10.3 MB (10325845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebe8c120af2d5327a3af173abe786ed49f8b73245005b32362fce5c6cba732`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d0bc3e2a4b9cfee255c21e4b04280da963048c8448361528ee06a25584c35e`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d898013a8c86393481ab0469058ec22bb6fe436e1c1a2630a4de118164c6b3d`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2e6de4feb935b3c11825f0894903590e2a6b059e53c3e73faf5f8804936600`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5760ba94169f92060fdfb0b4b2923580978c247695bb08c382dae2605ef71196`  
		Last Modified: Sat, 22 Sep 2018 08:34:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.8`

```console
$ docker pull rabbitmq@sha256:c019c868551be133c712ffaadb52951fd4ffdf0ef31e45d81dcb76fbba1cd9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3.7.8` - linux; amd64

```console
$ docker pull rabbitmq@sha256:5c8a8b5454ddae4fb5597223515c3a6e7e252fb83403cdf72162f7f0c354e8f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65789829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fdcccc8ade180bbc149f2834c3fca45e64bc1c3829309576d8eee6c8f20f3f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:02 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 05:21:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 05:21:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 05:21:14 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 05:21:38 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:38 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 05:21:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 05:21:39 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Fri, 21 Sep 2018 19:20:44 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 19:20:44 GMT
ENV LANG=C.UTF-8
# Fri, 21 Sep 2018 19:20:44 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:20:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:20:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 21 Sep 2018 19:20:47 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:20:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Sep 2018 19:20:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:20:49 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe35f04ebea261787064fcf29714d8a188578fd3aae88a1672366b5243a1b4`  
		Last Modified: Wed, 05 Sep 2018 05:24:51 GMT  
		Size: 4.5 MB (4498555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a118dc68c2e54abc54162dd19892c08a71709d7499eabe7f6ac95205c2494f`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c19971869789806dbf507bf25ba148decd6223ec7dcf5621f7555ebb9fcd41`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 951.9 KB (951900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74b797281ea162830289012ea83cfe1e59f93ac0f85f76ad9386dd41305fd30`  
		Last Modified: Wed, 05 Sep 2018 05:24:49 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b0494f0e3c744f09fd327476571006c12f9f6cfc048f97f2c9e6c66999db94`  
		Last Modified: Wed, 05 Sep 2018 05:24:52 GMT  
		Size: 27.5 MB (27500750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d980114df034ef4993a83465524fafa7344b25e19528982353c9cf74bf5f55a`  
		Last Modified: Fri, 21 Sep 2018 19:22:19 GMT  
		Size: 10.3 MB (10341393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ca5fedb825835294e2565cc58d227196127ecc0edc0c281346b26197bc100f`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1e615d6da0531fe7024d2a969229da3883db973c818a56c5d6a400c3a5c271`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9a78cfa9a669c16e12c1a9ac682402319955e856326ec083e07081a19b0b25`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6dad79c7b8b87e34a5e1daaf7feb10cbad88e100db107941e83f8794fb278cc`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bf45b8fd5229e3afde232d882b510fe05c8cdafb7a601bbb654e3f54767b8a`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.8` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:e6fd3fc0220e4f7d17f84105fabdd368ed1acab58e2eafe357ca046923f828cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61646967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8332c91fde7966d6387b24ae67e583ed6935fcde4c427438368de5e1a500bee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:45:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:45:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:46:06 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:46:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:46:07 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:46:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:58:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:58:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:58:44 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:58:44 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:58:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:58:46 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:58:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:58:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:58:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:58:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:58:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:58:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:58:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483021b9c38437adcd233ec231bbe3d5f2262264fdb2cfdd6040e28622abfeed`  
		Last Modified: Wed, 05 Sep 2018 11:49:48 GMT  
		Size: 4.2 MB (4231636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de799b221ef6d17d523a8146fae2f4c5b756afa8dbcde3436ebe67d2cfb3760`  
		Last Modified: Wed, 05 Sep 2018 11:49:46 GMT  
		Size: 4.1 KB (4086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e2b5ada6e33dc5ae042bd4ae10d7d2e5cef590482f162b4fc967c577be9776`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 942.3 KB (942332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65428a380acc7019931c23005421c6f7eacc5c73ae5a77a6340977af268cdb29`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4f4592eb0138d0e1a977e797f6b1b1861414b013b17251558a55338917b431`  
		Last Modified: Wed, 05 Sep 2018 11:49:50 GMT  
		Size: 25.0 MB (24988439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a36e2eac1d50e768d2e155c3fa6eb8e7ed70d329f075619ed2eedb3ce65da4`  
		Last Modified: Sat, 22 Sep 2018 09:00:04 GMT  
		Size: 10.3 MB (10310410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb90657b133110385ab6178da97ba097dc953c4db394ffff1370ef7f0b39b59`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42d8ba2e5a411d9a0e012ae3d4b234f938de9cbba8993655cd48317a78d8108`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9767a7551c4b2ee7f7101af8e55721ce83af6c18e25606d15095e146108ad04a`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859bd681e58f37404c3814d419985804f6fd270b5f056d568fce48e2e1d6ffbd`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a722bdd44282ba09454c487b7c111669310847853a6f817ec1e002625cf1ead`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.8` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:3d9d8c6470d4fbed7b38e7cce08f5530b87cfc019af5549052abacc99d41c532
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60688478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd979cc47d934888fc861b1a5e17d344fdf8107e11f00e5ccc6544081054dfc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 17:59:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:59:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 17:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 18:01:08 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 18:01:10 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 18:02:48 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:02:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 18:02:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 18:02:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:51:38 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:51:47 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:51:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:52:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:52:49 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:52:49 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:52:51 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:52:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:53:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:53:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:53:14 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:53:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:53:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:53:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:53:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e37db5cf675e4afee42d261d405850f9661011376c9e32dcf161b994b5784`  
		Last Modified: Wed, 05 Sep 2018 18:10:27 GMT  
		Size: 4.1 MB (4073269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a489138492c1c3398d5e832adb250d71806f6d1c1ee77f0d4386d242770e4f5`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786d0df6cef56007fb33342e229dc469e545f3fbd266b4b427d1fcd6f265084`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 919.2 KB (919245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8290a5f844dc24fafb21b0cc2eefa710b721caab388788f0f84fb6c5304125`  
		Last Modified: Wed, 05 Sep 2018 18:10:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacda0a12c7cb0992a5d95f75099782e66e2f4561cfa697f95a32df5c592bc68`  
		Last Modified: Wed, 05 Sep 2018 18:10:30 GMT  
		Size: 25.0 MB (25045917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf4ae8997417961ed19100842c7e6c280e4c623403e85c0047ae7cbdfa9208`  
		Last Modified: Sat, 22 Sep 2018 08:59:14 GMT  
		Size: 10.3 MB (10307125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62359fecc08685998249d40a89ab975841f91f6d7dda13315a83d8f3c7f50ab1`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d142bc95a688efcc89d03f06eb191ff71ac493a62059adbe7c8322f301fee`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbfe2ca2db93d20210ba636666631f84f380156d7fa7a98fe93a68cd7d9a366`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ee8a3aecd0459b8894c132648bdfb8b441130ca853ba2bba585daa25e7412`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0ab2b1147790075787c5b2251cf77110a3da7fa083d1fd2c40e5824d0c25f2`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.8` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:51afde8e3fd650c0531f0799984efea6ed6a234059185cdb859e46886617fc15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63737741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863b375131d15f8ec258360b0e8fe00cbe1eb2c0f54a8baaaf12a3a4f3785deb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:31:34 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:31:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:32:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:32:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:34:45 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:34:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:34:51 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:34:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:29:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:29:29 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:29:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:30:22 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:30:25 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:30:26 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:30:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:30:39 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:30:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:30:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:30:55 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:30:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:31:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:31:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:31:10 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579e7691721557327e3927ed84719e320cf6617c3acc48457fbe3ecd5d70f853`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 4.4 MB (4360587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2457b86f9cd5532629687ff9153d277b80e5c5c805dfbba681b8a51bc205fcc5`  
		Last Modified: Wed, 05 Sep 2018 11:41:29 GMT  
		Size: 4.1 KB (4105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69a3893e8f4d42d93f333b4f7a04240b2f1f8efe56cbf832b105ae32483ce4`  
		Last Modified: Wed, 05 Sep 2018 11:41:30 GMT  
		Size: 920.5 KB (920546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87de592d09499649ca13a67a2de44d7c46855451105c18148090363fc0cbb78c`  
		Last Modified: Wed, 05 Sep 2018 11:41:28 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd733fc519ab91b0b6f3b8dd93802dcff0937fa8db79069713e23b163526e8`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 25.4 MB (25378924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70161d40899550476a55bade31bc5e0e735c4ca8803318ed7c1370946c7ebc01`  
		Last Modified: Sat, 22 Sep 2018 08:34:27 GMT  
		Size: 10.3 MB (10325845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebe8c120af2d5327a3af173abe786ed49f8b73245005b32362fce5c6cba732`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d0bc3e2a4b9cfee255c21e4b04280da963048c8448361528ee06a25584c35e`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d898013a8c86393481ab0469058ec22bb6fe436e1c1a2630a4de118164c6b3d`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2e6de4feb935b3c11825f0894903590e2a6b059e53c3e73faf5f8804936600`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5760ba94169f92060fdfb0b4b2923580978c247695bb08c382dae2605ef71196`  
		Last Modified: Sat, 22 Sep 2018 08:34:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.8-alpine`

```console
$ docker pull rabbitmq@sha256:0c9920d16dd06fd7eb6e6606392491ec5cf034ee8e9bf8c329fbf2a87a9c3608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3.7.8-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:f6d2ffafc5de292fee80127044662f6050db643eaf1c676bfc43b8ccc7519d8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30541256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e247dd4271d82186e4af26206413d6f8284634fc0ba64787ea190f62c90fab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 02:53:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 02:53:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 02:53:56 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 02:53:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:21:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Sep 2018 19:21:33 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:21:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:21:36 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Sep 2018 19:21:36 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:21:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:21:37 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0839f7c4bc75ca0f7cdac3608503344e6b4aceeaf40ca2808d0c5eb577ae49`  
		Last Modified: Wed, 12 Sep 2018 02:55:10 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ca51e7c431a28e32ee85a8a5626326770d4cc7c6982b6718f2496308bb3f8`  
		Last Modified: Wed, 12 Sep 2018 02:55:09 GMT  
		Size: 9.1 KB (9060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b799497b1c496754f3279b4ea0dfdf1808c34a711408ebdf6b1885f6f34d9bb8`  
		Last Modified: Wed, 12 Sep 2018 02:55:13 GMT  
		Size: 18.7 MB (18709062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37182edcd725512ba66a43c7413e11c6abe61745ec455a1988c43174a6b26925`  
		Last Modified: Fri, 21 Sep 2018 19:24:14 GMT  
		Size: 9.6 MB (9610293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d46aaa928ecec2d1dac9dd832759d30a1bfb28dab8c30efa093051dafe3c7e`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf4e7cafa853217330815ed6cf788f2fce6653fb226a00ae1be943d4f56abf5`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c08ec4a215de07dc5f4c870a2294e4ae818ef1134311b33b12eabc589fc9d9d`  
		Last Modified: Fri, 21 Sep 2018 19:24:15 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1e71b1c518e7aadd4cce1888778672c617a9a80718c5bf1f7a5d5ff9c18215`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.8-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:f0564e3fcbe7d7c1b040605c6f602fdce17210c04936f5caa3bb410233805ffe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28071724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6cda7206676fcde8263b1eea906da2874d621547596887aa8cdee402176a60e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:15:03 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 08:15:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 08:15:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 08:15:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:15:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 07:49:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 07:49:37 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 07:49:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 07:49:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 07:49:41 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 07:49:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 07:49:41 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 07:49:42 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ab7d82bf045d6b83b49344082af7a63d456866771ec60323e02d8ba54d348`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404cd7746429b5adac001a8efa2a282b5106a8a7c8d2ef2e225eda23e4a69ef`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 9.0 KB (8987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04b3620c9d7a0f231a2b41fb9ee2016ac2d8bfdfd2ba7917679aa1e2cd0f822`  
		Last Modified: Sat, 15 Sep 2018 09:11:49 GMT  
		Size: 16.3 MB (16308397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29887a548de2ac179ecd61832fbd472e766477c4b3aa7cff4a0d230566c479`  
		Last Modified: Sat, 22 Sep 2018 07:50:32 GMT  
		Size: 9.6 MB (9601720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d5d2d5cc4b433ad521d9b9f4d3995a29e50fe9a145b9d8d98bd11955d7ea88`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af353bad0a54ab06e651f3fb1537b6c9d5cc20c017c51c04d7735672cac138e`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e0d38fb780816b21f097f227b53e86aacf4a272948e659b23c40ac86007bd`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bcce22d98cb3045f9edc61ff44926f9ca03a0dcfb0ee50b0f5c5071cbb4ed55`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.8-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:20273012056ba9f2e13589c0b151ac9a23b8d0cbf3eae28f728e615f8e339a2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28001524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcce1a05a40d92293a3069a46f66bc9bc309432a668184953a91358e7935d915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 22 Sep 2018 08:55:17 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 22 Sep 2018 08:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 22 Sep 2018 08:55:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 22 Sep 2018 08:55:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Sep 2018 08:55:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:56:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:56:01 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:56:03 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:56:04 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:56:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:56:08 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:56:09 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:56:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:56:10 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:56:11 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9855a7536b42bdcc9774489c4e1e9b8ee79a04e7abb5de9a61878f0870cbfc1`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8ae4b960c46131b8c15e06d3fd15a734a2737404ae494ca98a9973bb8e3fcb`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e020a68ecb622c4ef5b488b3fd801d8b0a903b0b593a7d653f544775add7`  
		Last Modified: Sat, 22 Sep 2018 09:01:03 GMT  
		Size: 16.3 MB (16285564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485ad31f9447e87fdaffd18fc3bc83b5c59d764f89bfb3696e91749f9281d5de`  
		Last Modified: Sat, 22 Sep 2018 09:00:58 GMT  
		Size: 9.6 MB (9601164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476af5da395239e47879eff2e8ba1681b6af40218d29ceed8be4aa1bfd56c39b`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3351fe81eb63ac3194a322bee4b9d0b7da0df23eac261860ad69d320709bef0d`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e687bdb217e857ecd717e1aca6b6808973af3c67cbb1f78f49dd9e72c95640`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc01c7ad324ea3bcdab6e82cb32f15cac03aea1c042bba3cbedce937f00fab0`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.8-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:d495426699987608d4d4bf2e1884f1d65264a98061b8cdd2dbe93048990836e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28299790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4652f4a1b6dad8d894e66e7e7d26d0b0a524e06aafafb5f1f3cc1f34dca6b0b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:32:06 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:32:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:32:21 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:32:22 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:32:24 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:32:25 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:32:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:32:43 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:32:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:32:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:32:57 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:32:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:33:00 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:33:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:33:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:33:16 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:33:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:33:18 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:33:18 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9690f1f749a7f0b179eb76f9cc4ebcc64b209d5e28215bb0b7c34b7dcd4c86`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf99cc7ead890ac43c261cd845b9158794d9a5ea0df4e1b8baa5f584f3e5045`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8dcc93812fc0b7d5834d65e6589d35279fba3160ba5a65182ae12d3f0eb9d6`  
		Last Modified: Wed, 12 Sep 2018 11:35:37 GMT  
		Size: 16.5 MB (16486759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a947879a4415212cdd2d12b785c16e26edc0979d7724d0662127639f69f6f23b`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 9.6 MB (9602131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8d3beb7645cd509c84c1eb5c9d05fb12e708c6f09d0af854436de90681a2b6`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee1fb084188df9bc42f84a521c287d1ecc584bb28279f9b9720844d70df8243`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359a0174d4a84100a84ff4b192f2f4e1ad614fa6efbc6e1326f37326360b69e`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3290cc586183801a8edbfeffe0cf986c4575f9faca3065df93186f8816be6a`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.8-management`

```console
$ docker pull rabbitmq@sha256:05c346c27fb1da343c27af8e8ee31baf3ca70d2d9c856a7676605c54e7e63841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3.7.8-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4a8179df47a2296104d168a75be033de028b41e3e4c8ba973dfbd1dc1c458464
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73413278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75472a5c510b61464a1791eaa76edf71080d5f9208388f0e018fdd79582330c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:02 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 05:21:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 05:21:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 05:21:14 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 05:21:38 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:38 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 05:21:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 05:21:39 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Fri, 21 Sep 2018 19:20:44 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 19:20:44 GMT
ENV LANG=C.UTF-8
# Fri, 21 Sep 2018 19:20:44 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:20:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:20:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 21 Sep 2018 19:20:47 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:20:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Sep 2018 19:20:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:20:49 GMT
CMD ["rabbitmq-server"]
# Fri, 21 Sep 2018 19:21:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 21 Sep 2018 19:21:18 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 21 Sep 2018 19:21:19 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe35f04ebea261787064fcf29714d8a188578fd3aae88a1672366b5243a1b4`  
		Last Modified: Wed, 05 Sep 2018 05:24:51 GMT  
		Size: 4.5 MB (4498555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a118dc68c2e54abc54162dd19892c08a71709d7499eabe7f6ac95205c2494f`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c19971869789806dbf507bf25ba148decd6223ec7dcf5621f7555ebb9fcd41`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 951.9 KB (951900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74b797281ea162830289012ea83cfe1e59f93ac0f85f76ad9386dd41305fd30`  
		Last Modified: Wed, 05 Sep 2018 05:24:49 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b0494f0e3c744f09fd327476571006c12f9f6cfc048f97f2c9e6c66999db94`  
		Last Modified: Wed, 05 Sep 2018 05:24:52 GMT  
		Size: 27.5 MB (27500750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d980114df034ef4993a83465524fafa7344b25e19528982353c9cf74bf5f55a`  
		Last Modified: Fri, 21 Sep 2018 19:22:19 GMT  
		Size: 10.3 MB (10341393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ca5fedb825835294e2565cc58d227196127ecc0edc0c281346b26197bc100f`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1e615d6da0531fe7024d2a969229da3883db973c818a56c5d6a400c3a5c271`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9a78cfa9a669c16e12c1a9ac682402319955e856326ec083e07081a19b0b25`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6dad79c7b8b87e34a5e1daaf7feb10cbad88e100db107941e83f8794fb278cc`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bf45b8fd5229e3afde232d882b510fe05c8cdafb7a601bbb654e3f54767b8a`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f290272ddb5f56456b3882a4b2b6f93b851b92c8e7433e7d27489aa99700fd53`  
		Last Modified: Fri, 21 Sep 2018 19:23:17 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f528c58708d2416177b680923c69beb1685c0f2c73d7fe0f801c204e420b5`  
		Last Modified: Fri, 21 Sep 2018 19:23:19 GMT  
		Size: 7.6 MB (7623256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.8-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:f5303690765cafcf06bf200bc88d91988206cf31fe1dfb965c45cac5ab2b1313
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69120818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e3caa41d04ab4619888b24becf69c21faf9a9447ca8eb6456741b24c98e1f64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:45:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:45:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:46:06 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:46:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:46:07 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:46:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:58:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:58:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:58:44 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:58:44 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:58:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:58:46 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:58:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:58:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:58:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:58:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:58:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:58:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:58:52 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:59:10 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:59:32 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:59:32 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483021b9c38437adcd233ec231bbe3d5f2262264fdb2cfdd6040e28622abfeed`  
		Last Modified: Wed, 05 Sep 2018 11:49:48 GMT  
		Size: 4.2 MB (4231636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de799b221ef6d17d523a8146fae2f4c5b756afa8dbcde3436ebe67d2cfb3760`  
		Last Modified: Wed, 05 Sep 2018 11:49:46 GMT  
		Size: 4.1 KB (4086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e2b5ada6e33dc5ae042bd4ae10d7d2e5cef590482f162b4fc967c577be9776`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 942.3 KB (942332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65428a380acc7019931c23005421c6f7eacc5c73ae5a77a6340977af268cdb29`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4f4592eb0138d0e1a977e797f6b1b1861414b013b17251558a55338917b431`  
		Last Modified: Wed, 05 Sep 2018 11:49:50 GMT  
		Size: 25.0 MB (24988439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a36e2eac1d50e768d2e155c3fa6eb8e7ed70d329f075619ed2eedb3ce65da4`  
		Last Modified: Sat, 22 Sep 2018 09:00:04 GMT  
		Size: 10.3 MB (10310410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb90657b133110385ab6178da97ba097dc953c4db394ffff1370ef7f0b39b59`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42d8ba2e5a411d9a0e012ae3d4b234f938de9cbba8993655cd48317a78d8108`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9767a7551c4b2ee7f7101af8e55721ce83af6c18e25606d15095e146108ad04a`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859bd681e58f37404c3814d419985804f6fd270b5f056d568fce48e2e1d6ffbd`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a722bdd44282ba09454c487b7c111669310847853a6f817ec1e002625cf1ead`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1332ceb5af448fbb61f0e5ce04fea17c7c697fd68be085cc67659a41239577`  
		Last Modified: Sat, 22 Sep 2018 09:00:48 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563761b3da829e663850b495b9c438bd60379087eb4174f51fd39ce5588a4f8a`  
		Last Modified: Sat, 22 Sep 2018 09:00:51 GMT  
		Size: 7.5 MB (7473660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.8-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:431e006e72d705dd7c4f127028311a1b1599df350afde3ea6a2650931599d4c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68164651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c555744928dd03693e679a134f4f32e7f982349fa1593718669cadcca2ccf9b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 17:59:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:59:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 17:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 18:01:08 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 18:01:10 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 18:02:48 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:02:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 18:02:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 18:02:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:51:38 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:51:47 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:51:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:52:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:52:49 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:52:49 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:52:51 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:52:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:53:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:53:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:53:14 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:53:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:53:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:53:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:53:27 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:54:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:54:37 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:54:38 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e37db5cf675e4afee42d261d405850f9661011376c9e32dcf161b994b5784`  
		Last Modified: Wed, 05 Sep 2018 18:10:27 GMT  
		Size: 4.1 MB (4073269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a489138492c1c3398d5e832adb250d71806f6d1c1ee77f0d4386d242770e4f5`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786d0df6cef56007fb33342e229dc469e545f3fbd266b4b427d1fcd6f265084`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 919.2 KB (919245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8290a5f844dc24fafb21b0cc2eefa710b721caab388788f0f84fb6c5304125`  
		Last Modified: Wed, 05 Sep 2018 18:10:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacda0a12c7cb0992a5d95f75099782e66e2f4561cfa697f95a32df5c592bc68`  
		Last Modified: Wed, 05 Sep 2018 18:10:30 GMT  
		Size: 25.0 MB (25045917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf4ae8997417961ed19100842c7e6c280e4c623403e85c0047ae7cbdfa9208`  
		Last Modified: Sat, 22 Sep 2018 08:59:14 GMT  
		Size: 10.3 MB (10307125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62359fecc08685998249d40a89ab975841f91f6d7dda13315a83d8f3c7f50ab1`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d142bc95a688efcc89d03f06eb191ff71ac493a62059adbe7c8322f301fee`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbfe2ca2db93d20210ba636666631f84f380156d7fa7a98fe93a68cd7d9a366`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ee8a3aecd0459b8894c132648bdfb8b441130ca853ba2bba585daa25e7412`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0ab2b1147790075787c5b2251cf77110a3da7fa083d1fd2c40e5824d0c25f2`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0966060600a02d135bd1d95fa69313f34a18325cc3c2702f86423a290b961b2`  
		Last Modified: Sat, 22 Sep 2018 09:00:04 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c7c4d3288ee7f0b504ceaf3a731636f036ed45255e7bf7e116e912a769f3ce`  
		Last Modified: Sat, 22 Sep 2018 09:00:06 GMT  
		Size: 7.5 MB (7475982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.8-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:471150e80601823c3b9a8fb47ec02831802ed61e95077ea08167f611d5ca8103
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71564161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef86c8e2362adf535eb5879f5a5212f01dd7eb9e1a5029306d64d5876d18429`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:31:34 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:31:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:32:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:32:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:34:45 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:34:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:34:51 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:34:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:29:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:29:29 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:29:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:30:22 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:30:25 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:30:26 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:30:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:30:39 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:30:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:30:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:30:55 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:30:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:31:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:31:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:31:10 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:31:31 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:31:58 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:32:00 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579e7691721557327e3927ed84719e320cf6617c3acc48457fbe3ecd5d70f853`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 4.4 MB (4360587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2457b86f9cd5532629687ff9153d277b80e5c5c805dfbba681b8a51bc205fcc5`  
		Last Modified: Wed, 05 Sep 2018 11:41:29 GMT  
		Size: 4.1 KB (4105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69a3893e8f4d42d93f333b4f7a04240b2f1f8efe56cbf832b105ae32483ce4`  
		Last Modified: Wed, 05 Sep 2018 11:41:30 GMT  
		Size: 920.5 KB (920546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87de592d09499649ca13a67a2de44d7c46855451105c18148090363fc0cbb78c`  
		Last Modified: Wed, 05 Sep 2018 11:41:28 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd733fc519ab91b0b6f3b8dd93802dcff0937fa8db79069713e23b163526e8`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 25.4 MB (25378924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70161d40899550476a55bade31bc5e0e735c4ca8803318ed7c1370946c7ebc01`  
		Last Modified: Sat, 22 Sep 2018 08:34:27 GMT  
		Size: 10.3 MB (10325845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebe8c120af2d5327a3af173abe786ed49f8b73245005b32362fce5c6cba732`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d0bc3e2a4b9cfee255c21e4b04280da963048c8448361528ee06a25584c35e`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d898013a8c86393481ab0469058ec22bb6fe436e1c1a2630a4de118164c6b3d`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2e6de4feb935b3c11825f0894903590e2a6b059e53c3e73faf5f8804936600`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5760ba94169f92060fdfb0b4b2923580978c247695bb08c382dae2605ef71196`  
		Last Modified: Sat, 22 Sep 2018 08:34:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389dd83932053d9aa869f7c2116672991d7567db9225cd0d946fa10c97ded528`  
		Last Modified: Sat, 22 Sep 2018 08:35:33 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb5f47fc4afe027e048745ab3ce432aee1781fd2a838cee4449e9eff42c76b`  
		Last Modified: Sat, 22 Sep 2018 08:35:37 GMT  
		Size: 7.8 MB (7826228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7.8-management-alpine`

```console
$ docker pull rabbitmq@sha256:6c137bdbdca13b6e20dcbab7cb8171c0282e24d10581f3a19dcd2b3adf74f810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3.7.8-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:045bcd514a4d23f3bb897de6f539a503a38c5f18ad693302b0bbc41ffa5aa2e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41562106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe0d284b5ed546b601459f3f351fa629ab0bf2bd93a2211f791138030f155c8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 02:53:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 02:53:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 02:53:56 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 02:53:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:21:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Sep 2018 19:21:33 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:21:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:21:36 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Sep 2018 19:21:36 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:21:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:21:37 GMT
CMD ["rabbitmq-server"]
# Fri, 21 Sep 2018 19:21:49 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 21 Sep 2018 19:21:53 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 21 Sep 2018 19:21:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0839f7c4bc75ca0f7cdac3608503344e6b4aceeaf40ca2808d0c5eb577ae49`  
		Last Modified: Wed, 12 Sep 2018 02:55:10 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ca51e7c431a28e32ee85a8a5626326770d4cc7c6982b6718f2496308bb3f8`  
		Last Modified: Wed, 12 Sep 2018 02:55:09 GMT  
		Size: 9.1 KB (9060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b799497b1c496754f3279b4ea0dfdf1808c34a711408ebdf6b1885f6f34d9bb8`  
		Last Modified: Wed, 12 Sep 2018 02:55:13 GMT  
		Size: 18.7 MB (18709062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37182edcd725512ba66a43c7413e11c6abe61745ec455a1988c43174a6b26925`  
		Last Modified: Fri, 21 Sep 2018 19:24:14 GMT  
		Size: 9.6 MB (9610293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d46aaa928ecec2d1dac9dd832759d30a1bfb28dab8c30efa093051dafe3c7e`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf4e7cafa853217330815ed6cf788f2fce6653fb226a00ae1be943d4f56abf5`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c08ec4a215de07dc5f4c870a2294e4ae818ef1134311b33b12eabc589fc9d9d`  
		Last Modified: Fri, 21 Sep 2018 19:24:15 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1e71b1c518e7aadd4cce1888778672c617a9a80718c5bf1f7a5d5ff9c18215`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e65bf69b0767b35e0c02cb6a3ecec4f430bf0ded0b4bb44f6275e3b725fd49`  
		Last Modified: Fri, 21 Sep 2018 19:24:52 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f2a928b6ef5f937e4f2cab0c941602e9e10df16b5177e9b3a70dc8556202f1`  
		Last Modified: Fri, 21 Sep 2018 19:24:56 GMT  
		Size: 11.0 MB (11020659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.8-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:a2b41b6e35bc8944672953ee9be9bafc26f20d6e9490576b6015ae289d47ca8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (38952654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4912a3780a00f636017b7ec22285b11c480215f5c9148fb6f67b82dab0fcb9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:15:03 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 08:15:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 08:15:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 08:15:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:15:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 07:49:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 07:49:37 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 07:49:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 07:49:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 07:49:41 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 07:49:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 07:49:41 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 07:49:42 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 07:49:59 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 07:50:09 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 07:50:10 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ab7d82bf045d6b83b49344082af7a63d456866771ec60323e02d8ba54d348`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404cd7746429b5adac001a8efa2a282b5106a8a7c8d2ef2e225eda23e4a69ef`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 9.0 KB (8987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04b3620c9d7a0f231a2b41fb9ee2016ac2d8bfdfd2ba7917679aa1e2cd0f822`  
		Last Modified: Sat, 15 Sep 2018 09:11:49 GMT  
		Size: 16.3 MB (16308397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29887a548de2ac179ecd61832fbd472e766477c4b3aa7cff4a0d230566c479`  
		Last Modified: Sat, 22 Sep 2018 07:50:32 GMT  
		Size: 9.6 MB (9601720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d5d2d5cc4b433ad521d9b9f4d3995a29e50fe9a145b9d8d98bd11955d7ea88`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af353bad0a54ab06e651f3fb1537b6c9d5cc20c017c51c04d7735672cac138e`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e0d38fb780816b21f097f227b53e86aacf4a272948e659b23c40ac86007bd`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bcce22d98cb3045f9edc61ff44926f9ca03a0dcfb0ee50b0f5c5071cbb4ed55`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f32aa0580787db67b407557e59c97438915e6fb9bdbdb4b92a25422db52edc3`  
		Last Modified: Sat, 22 Sep 2018 07:50:54 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bdb320194c15a1a05c6c05c0ad095e2c94f82073e99ec5c2b84cd8021180a1`  
		Last Modified: Sat, 22 Sep 2018 07:50:58 GMT  
		Size: 10.9 MB (10880738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.8-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:c4ffd708da99d1d51e1fb3be051041f805584b2da224895d235964c84706ecdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38849006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22baa886845395b5af750b68c98608ec4e8e789965554f4e7e8e6970627c1141`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 22 Sep 2018 08:55:17 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 22 Sep 2018 08:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 22 Sep 2018 08:55:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 22 Sep 2018 08:55:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Sep 2018 08:55:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:56:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:56:01 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:56:03 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:56:04 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:56:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:56:08 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:56:09 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:56:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:56:10 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:56:11 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:56:49 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:57:04 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:57:10 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9855a7536b42bdcc9774489c4e1e9b8ee79a04e7abb5de9a61878f0870cbfc1`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8ae4b960c46131b8c15e06d3fd15a734a2737404ae494ca98a9973bb8e3fcb`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e020a68ecb622c4ef5b488b3fd801d8b0a903b0b593a7d653f544775add7`  
		Last Modified: Sat, 22 Sep 2018 09:01:03 GMT  
		Size: 16.3 MB (16285564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485ad31f9447e87fdaffd18fc3bc83b5c59d764f89bfb3696e91749f9281d5de`  
		Last Modified: Sat, 22 Sep 2018 09:00:58 GMT  
		Size: 9.6 MB (9601164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476af5da395239e47879eff2e8ba1681b6af40218d29ceed8be4aa1bfd56c39b`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3351fe81eb63ac3194a322bee4b9d0b7da0df23eac261860ad69d320709bef0d`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e687bdb217e857ecd717e1aca6b6808973af3c67cbb1f78f49dd9e72c95640`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc01c7ad324ea3bcdab6e82cb32f15cac03aea1c042bba3cbedce937f00fab0`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d3d606a94a8e900bfcb45ace22391114ad7fbc5c31cbbeca5d1e7846314b8f`  
		Last Modified: Sat, 22 Sep 2018 09:01:52 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e78e3d156b154ad43993991cbfc249f8c3476281ed5f2941091b060c260f9c1`  
		Last Modified: Sat, 22 Sep 2018 09:01:58 GMT  
		Size: 10.8 MB (10847291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7.8-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:859c0191f3f082e4f8dfcddd49da74fa9a9b4adc7cef71a5fefae54ea7036e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39322974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dac40104080dbde3443b9ad5370b25317a867789670506da84f31549406a135`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:32:06 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:32:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:32:21 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:32:22 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:32:24 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:32:25 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:32:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:32:43 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:32:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:32:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:32:57 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:32:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:33:00 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:33:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:33:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:33:16 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:33:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:33:18 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:33:18 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:33:37 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:33:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:33:44 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9690f1f749a7f0b179eb76f9cc4ebcc64b209d5e28215bb0b7c34b7dcd4c86`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf99cc7ead890ac43c261cd845b9158794d9a5ea0df4e1b8baa5f584f3e5045`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8dcc93812fc0b7d5834d65e6589d35279fba3160ba5a65182ae12d3f0eb9d6`  
		Last Modified: Wed, 12 Sep 2018 11:35:37 GMT  
		Size: 16.5 MB (16486759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a947879a4415212cdd2d12b785c16e26edc0979d7724d0662127639f69f6f23b`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 9.6 MB (9602131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8d3beb7645cd509c84c1eb5c9d05fb12e708c6f09d0af854436de90681a2b6`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee1fb084188df9bc42f84a521c287d1ecc584bb28279f9b9720844d70df8243`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359a0174d4a84100a84ff4b192f2f4e1ad614fa6efbc6e1326f37326360b69e`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3290cc586183801a8edbfeffe0cf986c4575f9faca3065df93186f8816be6a`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10b6db18368b3f4554b0b06b22b8170da03d9d9c7e1c79a5e842217108677a6`  
		Last Modified: Sat, 22 Sep 2018 08:37:53 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7e552f3cdd79bfc98cf5e0afe33cc66d5d0d9b14cb6f99c1759d5573ce597d`  
		Last Modified: Sat, 22 Sep 2018 08:38:00 GMT  
		Size: 11.0 MB (11022993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-alpine`

```console
$ docker pull rabbitmq@sha256:0c9920d16dd06fd7eb6e6606392491ec5cf034ee8e9bf8c329fbf2a87a9c3608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3.7-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:f6d2ffafc5de292fee80127044662f6050db643eaf1c676bfc43b8ccc7519d8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30541256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e247dd4271d82186e4af26206413d6f8284634fc0ba64787ea190f62c90fab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 02:53:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 02:53:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 02:53:56 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 02:53:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:21:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Sep 2018 19:21:33 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:21:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:21:36 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Sep 2018 19:21:36 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:21:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:21:37 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0839f7c4bc75ca0f7cdac3608503344e6b4aceeaf40ca2808d0c5eb577ae49`  
		Last Modified: Wed, 12 Sep 2018 02:55:10 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ca51e7c431a28e32ee85a8a5626326770d4cc7c6982b6718f2496308bb3f8`  
		Last Modified: Wed, 12 Sep 2018 02:55:09 GMT  
		Size: 9.1 KB (9060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b799497b1c496754f3279b4ea0dfdf1808c34a711408ebdf6b1885f6f34d9bb8`  
		Last Modified: Wed, 12 Sep 2018 02:55:13 GMT  
		Size: 18.7 MB (18709062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37182edcd725512ba66a43c7413e11c6abe61745ec455a1988c43174a6b26925`  
		Last Modified: Fri, 21 Sep 2018 19:24:14 GMT  
		Size: 9.6 MB (9610293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d46aaa928ecec2d1dac9dd832759d30a1bfb28dab8c30efa093051dafe3c7e`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf4e7cafa853217330815ed6cf788f2fce6653fb226a00ae1be943d4f56abf5`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c08ec4a215de07dc5f4c870a2294e4ae818ef1134311b33b12eabc589fc9d9d`  
		Last Modified: Fri, 21 Sep 2018 19:24:15 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1e71b1c518e7aadd4cce1888778672c617a9a80718c5bf1f7a5d5ff9c18215`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:f0564e3fcbe7d7c1b040605c6f602fdce17210c04936f5caa3bb410233805ffe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28071724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6cda7206676fcde8263b1eea906da2874d621547596887aa8cdee402176a60e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:15:03 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 08:15:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 08:15:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 08:15:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:15:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 07:49:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 07:49:37 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 07:49:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 07:49:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 07:49:41 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 07:49:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 07:49:41 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 07:49:42 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ab7d82bf045d6b83b49344082af7a63d456866771ec60323e02d8ba54d348`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404cd7746429b5adac001a8efa2a282b5106a8a7c8d2ef2e225eda23e4a69ef`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 9.0 KB (8987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04b3620c9d7a0f231a2b41fb9ee2016ac2d8bfdfd2ba7917679aa1e2cd0f822`  
		Last Modified: Sat, 15 Sep 2018 09:11:49 GMT  
		Size: 16.3 MB (16308397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29887a548de2ac179ecd61832fbd472e766477c4b3aa7cff4a0d230566c479`  
		Last Modified: Sat, 22 Sep 2018 07:50:32 GMT  
		Size: 9.6 MB (9601720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d5d2d5cc4b433ad521d9b9f4d3995a29e50fe9a145b9d8d98bd11955d7ea88`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af353bad0a54ab06e651f3fb1537b6c9d5cc20c017c51c04d7735672cac138e`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e0d38fb780816b21f097f227b53e86aacf4a272948e659b23c40ac86007bd`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bcce22d98cb3045f9edc61ff44926f9ca03a0dcfb0ee50b0f5c5071cbb4ed55`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:20273012056ba9f2e13589c0b151ac9a23b8d0cbf3eae28f728e615f8e339a2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28001524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcce1a05a40d92293a3069a46f66bc9bc309432a668184953a91358e7935d915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 22 Sep 2018 08:55:17 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 22 Sep 2018 08:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 22 Sep 2018 08:55:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 22 Sep 2018 08:55:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Sep 2018 08:55:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:56:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:56:01 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:56:03 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:56:04 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:56:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:56:08 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:56:09 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:56:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:56:10 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:56:11 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9855a7536b42bdcc9774489c4e1e9b8ee79a04e7abb5de9a61878f0870cbfc1`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8ae4b960c46131b8c15e06d3fd15a734a2737404ae494ca98a9973bb8e3fcb`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e020a68ecb622c4ef5b488b3fd801d8b0a903b0b593a7d653f544775add7`  
		Last Modified: Sat, 22 Sep 2018 09:01:03 GMT  
		Size: 16.3 MB (16285564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485ad31f9447e87fdaffd18fc3bc83b5c59d764f89bfb3696e91749f9281d5de`  
		Last Modified: Sat, 22 Sep 2018 09:00:58 GMT  
		Size: 9.6 MB (9601164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476af5da395239e47879eff2e8ba1681b6af40218d29ceed8be4aa1bfd56c39b`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3351fe81eb63ac3194a322bee4b9d0b7da0df23eac261860ad69d320709bef0d`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e687bdb217e857ecd717e1aca6b6808973af3c67cbb1f78f49dd9e72c95640`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc01c7ad324ea3bcdab6e82cb32f15cac03aea1c042bba3cbedce937f00fab0`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:d495426699987608d4d4bf2e1884f1d65264a98061b8cdd2dbe93048990836e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28299790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4652f4a1b6dad8d894e66e7e7d26d0b0a524e06aafafb5f1f3cc1f34dca6b0b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:32:06 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:32:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:32:21 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:32:22 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:32:24 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:32:25 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:32:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:32:43 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:32:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:32:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:32:57 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:32:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:33:00 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:33:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:33:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:33:16 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:33:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:33:18 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:33:18 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9690f1f749a7f0b179eb76f9cc4ebcc64b209d5e28215bb0b7c34b7dcd4c86`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf99cc7ead890ac43c261cd845b9158794d9a5ea0df4e1b8baa5f584f3e5045`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8dcc93812fc0b7d5834d65e6589d35279fba3160ba5a65182ae12d3f0eb9d6`  
		Last Modified: Wed, 12 Sep 2018 11:35:37 GMT  
		Size: 16.5 MB (16486759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a947879a4415212cdd2d12b785c16e26edc0979d7724d0662127639f69f6f23b`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 9.6 MB (9602131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8d3beb7645cd509c84c1eb5c9d05fb12e708c6f09d0af854436de90681a2b6`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee1fb084188df9bc42f84a521c287d1ecc584bb28279f9b9720844d70df8243`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359a0174d4a84100a84ff4b192f2f4e1ad614fa6efbc6e1326f37326360b69e`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3290cc586183801a8edbfeffe0cf986c4575f9faca3065df93186f8816be6a`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-management`

```console
$ docker pull rabbitmq@sha256:05c346c27fb1da343c27af8e8ee31baf3ca70d2d9c856a7676605c54e7e63841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3.7-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4a8179df47a2296104d168a75be033de028b41e3e4c8ba973dfbd1dc1c458464
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73413278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75472a5c510b61464a1791eaa76edf71080d5f9208388f0e018fdd79582330c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:02 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 05:21:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 05:21:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 05:21:14 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 05:21:38 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:38 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 05:21:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 05:21:39 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Fri, 21 Sep 2018 19:20:44 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 19:20:44 GMT
ENV LANG=C.UTF-8
# Fri, 21 Sep 2018 19:20:44 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:20:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:20:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 21 Sep 2018 19:20:47 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:20:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Sep 2018 19:20:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:20:49 GMT
CMD ["rabbitmq-server"]
# Fri, 21 Sep 2018 19:21:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 21 Sep 2018 19:21:18 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 21 Sep 2018 19:21:19 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe35f04ebea261787064fcf29714d8a188578fd3aae88a1672366b5243a1b4`  
		Last Modified: Wed, 05 Sep 2018 05:24:51 GMT  
		Size: 4.5 MB (4498555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a118dc68c2e54abc54162dd19892c08a71709d7499eabe7f6ac95205c2494f`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c19971869789806dbf507bf25ba148decd6223ec7dcf5621f7555ebb9fcd41`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 951.9 KB (951900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74b797281ea162830289012ea83cfe1e59f93ac0f85f76ad9386dd41305fd30`  
		Last Modified: Wed, 05 Sep 2018 05:24:49 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b0494f0e3c744f09fd327476571006c12f9f6cfc048f97f2c9e6c66999db94`  
		Last Modified: Wed, 05 Sep 2018 05:24:52 GMT  
		Size: 27.5 MB (27500750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d980114df034ef4993a83465524fafa7344b25e19528982353c9cf74bf5f55a`  
		Last Modified: Fri, 21 Sep 2018 19:22:19 GMT  
		Size: 10.3 MB (10341393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ca5fedb825835294e2565cc58d227196127ecc0edc0c281346b26197bc100f`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1e615d6da0531fe7024d2a969229da3883db973c818a56c5d6a400c3a5c271`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9a78cfa9a669c16e12c1a9ac682402319955e856326ec083e07081a19b0b25`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6dad79c7b8b87e34a5e1daaf7feb10cbad88e100db107941e83f8794fb278cc`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bf45b8fd5229e3afde232d882b510fe05c8cdafb7a601bbb654e3f54767b8a`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f290272ddb5f56456b3882a4b2b6f93b851b92c8e7433e7d27489aa99700fd53`  
		Last Modified: Fri, 21 Sep 2018 19:23:17 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f528c58708d2416177b680923c69beb1685c0f2c73d7fe0f801c204e420b5`  
		Last Modified: Fri, 21 Sep 2018 19:23:19 GMT  
		Size: 7.6 MB (7623256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:f5303690765cafcf06bf200bc88d91988206cf31fe1dfb965c45cac5ab2b1313
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69120818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e3caa41d04ab4619888b24becf69c21faf9a9447ca8eb6456741b24c98e1f64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:45:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:45:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:46:06 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:46:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:46:07 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:46:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:58:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:58:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:58:44 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:58:44 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:58:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:58:46 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:58:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:58:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:58:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:58:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:58:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:58:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:58:52 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:59:10 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:59:32 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:59:32 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483021b9c38437adcd233ec231bbe3d5f2262264fdb2cfdd6040e28622abfeed`  
		Last Modified: Wed, 05 Sep 2018 11:49:48 GMT  
		Size: 4.2 MB (4231636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de799b221ef6d17d523a8146fae2f4c5b756afa8dbcde3436ebe67d2cfb3760`  
		Last Modified: Wed, 05 Sep 2018 11:49:46 GMT  
		Size: 4.1 KB (4086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e2b5ada6e33dc5ae042bd4ae10d7d2e5cef590482f162b4fc967c577be9776`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 942.3 KB (942332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65428a380acc7019931c23005421c6f7eacc5c73ae5a77a6340977af268cdb29`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4f4592eb0138d0e1a977e797f6b1b1861414b013b17251558a55338917b431`  
		Last Modified: Wed, 05 Sep 2018 11:49:50 GMT  
		Size: 25.0 MB (24988439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a36e2eac1d50e768d2e155c3fa6eb8e7ed70d329f075619ed2eedb3ce65da4`  
		Last Modified: Sat, 22 Sep 2018 09:00:04 GMT  
		Size: 10.3 MB (10310410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb90657b133110385ab6178da97ba097dc953c4db394ffff1370ef7f0b39b59`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42d8ba2e5a411d9a0e012ae3d4b234f938de9cbba8993655cd48317a78d8108`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9767a7551c4b2ee7f7101af8e55721ce83af6c18e25606d15095e146108ad04a`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859bd681e58f37404c3814d419985804f6fd270b5f056d568fce48e2e1d6ffbd`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a722bdd44282ba09454c487b7c111669310847853a6f817ec1e002625cf1ead`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1332ceb5af448fbb61f0e5ce04fea17c7c697fd68be085cc67659a41239577`  
		Last Modified: Sat, 22 Sep 2018 09:00:48 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563761b3da829e663850b495b9c438bd60379087eb4174f51fd39ce5588a4f8a`  
		Last Modified: Sat, 22 Sep 2018 09:00:51 GMT  
		Size: 7.5 MB (7473660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:431e006e72d705dd7c4f127028311a1b1599df350afde3ea6a2650931599d4c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68164651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c555744928dd03693e679a134f4f32e7f982349fa1593718669cadcca2ccf9b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 17:59:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:59:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 17:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 18:01:08 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 18:01:10 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 18:02:48 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:02:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 18:02:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 18:02:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:51:38 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:51:47 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:51:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:52:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:52:49 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:52:49 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:52:51 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:52:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:53:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:53:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:53:14 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:53:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:53:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:53:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:53:27 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:54:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:54:37 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:54:38 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e37db5cf675e4afee42d261d405850f9661011376c9e32dcf161b994b5784`  
		Last Modified: Wed, 05 Sep 2018 18:10:27 GMT  
		Size: 4.1 MB (4073269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a489138492c1c3398d5e832adb250d71806f6d1c1ee77f0d4386d242770e4f5`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786d0df6cef56007fb33342e229dc469e545f3fbd266b4b427d1fcd6f265084`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 919.2 KB (919245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8290a5f844dc24fafb21b0cc2eefa710b721caab388788f0f84fb6c5304125`  
		Last Modified: Wed, 05 Sep 2018 18:10:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacda0a12c7cb0992a5d95f75099782e66e2f4561cfa697f95a32df5c592bc68`  
		Last Modified: Wed, 05 Sep 2018 18:10:30 GMT  
		Size: 25.0 MB (25045917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf4ae8997417961ed19100842c7e6c280e4c623403e85c0047ae7cbdfa9208`  
		Last Modified: Sat, 22 Sep 2018 08:59:14 GMT  
		Size: 10.3 MB (10307125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62359fecc08685998249d40a89ab975841f91f6d7dda13315a83d8f3c7f50ab1`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d142bc95a688efcc89d03f06eb191ff71ac493a62059adbe7c8322f301fee`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbfe2ca2db93d20210ba636666631f84f380156d7fa7a98fe93a68cd7d9a366`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ee8a3aecd0459b8894c132648bdfb8b441130ca853ba2bba585daa25e7412`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0ab2b1147790075787c5b2251cf77110a3da7fa083d1fd2c40e5824d0c25f2`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0966060600a02d135bd1d95fa69313f34a18325cc3c2702f86423a290b961b2`  
		Last Modified: Sat, 22 Sep 2018 09:00:04 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c7c4d3288ee7f0b504ceaf3a731636f036ed45255e7bf7e116e912a769f3ce`  
		Last Modified: Sat, 22 Sep 2018 09:00:06 GMT  
		Size: 7.5 MB (7475982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:471150e80601823c3b9a8fb47ec02831802ed61e95077ea08167f611d5ca8103
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71564161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef86c8e2362adf535eb5879f5a5212f01dd7eb9e1a5029306d64d5876d18429`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:31:34 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:31:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:32:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:32:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:34:45 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:34:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:34:51 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:34:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:29:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:29:29 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:29:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:30:22 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:30:25 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:30:26 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:30:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:30:39 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:30:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:30:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:30:55 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:30:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:31:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:31:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:31:10 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:31:31 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:31:58 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:32:00 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579e7691721557327e3927ed84719e320cf6617c3acc48457fbe3ecd5d70f853`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 4.4 MB (4360587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2457b86f9cd5532629687ff9153d277b80e5c5c805dfbba681b8a51bc205fcc5`  
		Last Modified: Wed, 05 Sep 2018 11:41:29 GMT  
		Size: 4.1 KB (4105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69a3893e8f4d42d93f333b4f7a04240b2f1f8efe56cbf832b105ae32483ce4`  
		Last Modified: Wed, 05 Sep 2018 11:41:30 GMT  
		Size: 920.5 KB (920546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87de592d09499649ca13a67a2de44d7c46855451105c18148090363fc0cbb78c`  
		Last Modified: Wed, 05 Sep 2018 11:41:28 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd733fc519ab91b0b6f3b8dd93802dcff0937fa8db79069713e23b163526e8`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 25.4 MB (25378924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70161d40899550476a55bade31bc5e0e735c4ca8803318ed7c1370946c7ebc01`  
		Last Modified: Sat, 22 Sep 2018 08:34:27 GMT  
		Size: 10.3 MB (10325845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebe8c120af2d5327a3af173abe786ed49f8b73245005b32362fce5c6cba732`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d0bc3e2a4b9cfee255c21e4b04280da963048c8448361528ee06a25584c35e`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d898013a8c86393481ab0469058ec22bb6fe436e1c1a2630a4de118164c6b3d`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2e6de4feb935b3c11825f0894903590e2a6b059e53c3e73faf5f8804936600`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5760ba94169f92060fdfb0b4b2923580978c247695bb08c382dae2605ef71196`  
		Last Modified: Sat, 22 Sep 2018 08:34:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389dd83932053d9aa869f7c2116672991d7567db9225cd0d946fa10c97ded528`  
		Last Modified: Sat, 22 Sep 2018 08:35:33 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb5f47fc4afe027e048745ab3ce432aee1781fd2a838cee4449e9eff42c76b`  
		Last Modified: Sat, 22 Sep 2018 08:35:37 GMT  
		Size: 7.8 MB (7826228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3.7-management-alpine`

```console
$ docker pull rabbitmq@sha256:6c137bdbdca13b6e20dcbab7cb8171c0282e24d10581f3a19dcd2b3adf74f810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3.7-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:045bcd514a4d23f3bb897de6f539a503a38c5f18ad693302b0bbc41ffa5aa2e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41562106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe0d284b5ed546b601459f3f351fa629ab0bf2bd93a2211f791138030f155c8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 02:53:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 02:53:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 02:53:56 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 02:53:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:21:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Sep 2018 19:21:33 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:21:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:21:36 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Sep 2018 19:21:36 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:21:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:21:37 GMT
CMD ["rabbitmq-server"]
# Fri, 21 Sep 2018 19:21:49 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 21 Sep 2018 19:21:53 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 21 Sep 2018 19:21:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0839f7c4bc75ca0f7cdac3608503344e6b4aceeaf40ca2808d0c5eb577ae49`  
		Last Modified: Wed, 12 Sep 2018 02:55:10 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ca51e7c431a28e32ee85a8a5626326770d4cc7c6982b6718f2496308bb3f8`  
		Last Modified: Wed, 12 Sep 2018 02:55:09 GMT  
		Size: 9.1 KB (9060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b799497b1c496754f3279b4ea0dfdf1808c34a711408ebdf6b1885f6f34d9bb8`  
		Last Modified: Wed, 12 Sep 2018 02:55:13 GMT  
		Size: 18.7 MB (18709062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37182edcd725512ba66a43c7413e11c6abe61745ec455a1988c43174a6b26925`  
		Last Modified: Fri, 21 Sep 2018 19:24:14 GMT  
		Size: 9.6 MB (9610293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d46aaa928ecec2d1dac9dd832759d30a1bfb28dab8c30efa093051dafe3c7e`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf4e7cafa853217330815ed6cf788f2fce6653fb226a00ae1be943d4f56abf5`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c08ec4a215de07dc5f4c870a2294e4ae818ef1134311b33b12eabc589fc9d9d`  
		Last Modified: Fri, 21 Sep 2018 19:24:15 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1e71b1c518e7aadd4cce1888778672c617a9a80718c5bf1f7a5d5ff9c18215`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e65bf69b0767b35e0c02cb6a3ecec4f430bf0ded0b4bb44f6275e3b725fd49`  
		Last Modified: Fri, 21 Sep 2018 19:24:52 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f2a928b6ef5f937e4f2cab0c941602e9e10df16b5177e9b3a70dc8556202f1`  
		Last Modified: Fri, 21 Sep 2018 19:24:56 GMT  
		Size: 11.0 MB (11020659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:a2b41b6e35bc8944672953ee9be9bafc26f20d6e9490576b6015ae289d47ca8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (38952654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4912a3780a00f636017b7ec22285b11c480215f5c9148fb6f67b82dab0fcb9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:15:03 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 08:15:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 08:15:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 08:15:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:15:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 07:49:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 07:49:37 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 07:49:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 07:49:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 07:49:41 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 07:49:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 07:49:41 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 07:49:42 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 07:49:59 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 07:50:09 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 07:50:10 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ab7d82bf045d6b83b49344082af7a63d456866771ec60323e02d8ba54d348`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404cd7746429b5adac001a8efa2a282b5106a8a7c8d2ef2e225eda23e4a69ef`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 9.0 KB (8987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04b3620c9d7a0f231a2b41fb9ee2016ac2d8bfdfd2ba7917679aa1e2cd0f822`  
		Last Modified: Sat, 15 Sep 2018 09:11:49 GMT  
		Size: 16.3 MB (16308397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29887a548de2ac179ecd61832fbd472e766477c4b3aa7cff4a0d230566c479`  
		Last Modified: Sat, 22 Sep 2018 07:50:32 GMT  
		Size: 9.6 MB (9601720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d5d2d5cc4b433ad521d9b9f4d3995a29e50fe9a145b9d8d98bd11955d7ea88`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af353bad0a54ab06e651f3fb1537b6c9d5cc20c017c51c04d7735672cac138e`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e0d38fb780816b21f097f227b53e86aacf4a272948e659b23c40ac86007bd`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bcce22d98cb3045f9edc61ff44926f9ca03a0dcfb0ee50b0f5c5071cbb4ed55`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f32aa0580787db67b407557e59c97438915e6fb9bdbdb4b92a25422db52edc3`  
		Last Modified: Sat, 22 Sep 2018 07:50:54 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bdb320194c15a1a05c6c05c0ad095e2c94f82073e99ec5c2b84cd8021180a1`  
		Last Modified: Sat, 22 Sep 2018 07:50:58 GMT  
		Size: 10.9 MB (10880738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:c4ffd708da99d1d51e1fb3be051041f805584b2da224895d235964c84706ecdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38849006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22baa886845395b5af750b68c98608ec4e8e789965554f4e7e8e6970627c1141`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 22 Sep 2018 08:55:17 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 22 Sep 2018 08:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 22 Sep 2018 08:55:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 22 Sep 2018 08:55:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Sep 2018 08:55:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:56:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:56:01 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:56:03 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:56:04 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:56:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:56:08 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:56:09 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:56:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:56:10 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:56:11 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:56:49 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:57:04 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:57:10 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9855a7536b42bdcc9774489c4e1e9b8ee79a04e7abb5de9a61878f0870cbfc1`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8ae4b960c46131b8c15e06d3fd15a734a2737404ae494ca98a9973bb8e3fcb`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e020a68ecb622c4ef5b488b3fd801d8b0a903b0b593a7d653f544775add7`  
		Last Modified: Sat, 22 Sep 2018 09:01:03 GMT  
		Size: 16.3 MB (16285564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485ad31f9447e87fdaffd18fc3bc83b5c59d764f89bfb3696e91749f9281d5de`  
		Last Modified: Sat, 22 Sep 2018 09:00:58 GMT  
		Size: 9.6 MB (9601164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476af5da395239e47879eff2e8ba1681b6af40218d29ceed8be4aa1bfd56c39b`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3351fe81eb63ac3194a322bee4b9d0b7da0df23eac261860ad69d320709bef0d`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e687bdb217e857ecd717e1aca6b6808973af3c67cbb1f78f49dd9e72c95640`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc01c7ad324ea3bcdab6e82cb32f15cac03aea1c042bba3cbedce937f00fab0`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d3d606a94a8e900bfcb45ace22391114ad7fbc5c31cbbeca5d1e7846314b8f`  
		Last Modified: Sat, 22 Sep 2018 09:01:52 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e78e3d156b154ad43993991cbfc249f8c3476281ed5f2941091b060c260f9c1`  
		Last Modified: Sat, 22 Sep 2018 09:01:58 GMT  
		Size: 10.8 MB (10847291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3.7-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:859c0191f3f082e4f8dfcddd49da74fa9a9b4adc7cef71a5fefae54ea7036e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39322974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dac40104080dbde3443b9ad5370b25317a867789670506da84f31549406a135`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:32:06 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:32:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:32:21 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:32:22 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:32:24 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:32:25 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:32:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:32:43 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:32:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:32:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:32:57 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:32:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:33:00 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:33:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:33:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:33:16 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:33:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:33:18 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:33:18 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:33:37 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:33:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:33:44 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9690f1f749a7f0b179eb76f9cc4ebcc64b209d5e28215bb0b7c34b7dcd4c86`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf99cc7ead890ac43c261cd845b9158794d9a5ea0df4e1b8baa5f584f3e5045`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8dcc93812fc0b7d5834d65e6589d35279fba3160ba5a65182ae12d3f0eb9d6`  
		Last Modified: Wed, 12 Sep 2018 11:35:37 GMT  
		Size: 16.5 MB (16486759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a947879a4415212cdd2d12b785c16e26edc0979d7724d0662127639f69f6f23b`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 9.6 MB (9602131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8d3beb7645cd509c84c1eb5c9d05fb12e708c6f09d0af854436de90681a2b6`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee1fb084188df9bc42f84a521c287d1ecc584bb28279f9b9720844d70df8243`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359a0174d4a84100a84ff4b192f2f4e1ad614fa6efbc6e1326f37326360b69e`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3290cc586183801a8edbfeffe0cf986c4575f9faca3065df93186f8816be6a`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10b6db18368b3f4554b0b06b22b8170da03d9d9c7e1c79a5e842217108677a6`  
		Last Modified: Sat, 22 Sep 2018 08:37:53 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7e552f3cdd79bfc98cf5e0afe33cc66d5d0d9b14cb6f99c1759d5573ce597d`  
		Last Modified: Sat, 22 Sep 2018 08:38:00 GMT  
		Size: 11.0 MB (11022993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-alpine`

```console
$ docker pull rabbitmq@sha256:0c9920d16dd06fd7eb6e6606392491ec5cf034ee8e9bf8c329fbf2a87a9c3608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:f6d2ffafc5de292fee80127044662f6050db643eaf1c676bfc43b8ccc7519d8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30541256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e247dd4271d82186e4af26206413d6f8284634fc0ba64787ea190f62c90fab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 02:53:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 02:53:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 02:53:56 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 02:53:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:21:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Sep 2018 19:21:33 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:21:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:21:36 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Sep 2018 19:21:36 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:21:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:21:37 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0839f7c4bc75ca0f7cdac3608503344e6b4aceeaf40ca2808d0c5eb577ae49`  
		Last Modified: Wed, 12 Sep 2018 02:55:10 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ca51e7c431a28e32ee85a8a5626326770d4cc7c6982b6718f2496308bb3f8`  
		Last Modified: Wed, 12 Sep 2018 02:55:09 GMT  
		Size: 9.1 KB (9060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b799497b1c496754f3279b4ea0dfdf1808c34a711408ebdf6b1885f6f34d9bb8`  
		Last Modified: Wed, 12 Sep 2018 02:55:13 GMT  
		Size: 18.7 MB (18709062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37182edcd725512ba66a43c7413e11c6abe61745ec455a1988c43174a6b26925`  
		Last Modified: Fri, 21 Sep 2018 19:24:14 GMT  
		Size: 9.6 MB (9610293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d46aaa928ecec2d1dac9dd832759d30a1bfb28dab8c30efa093051dafe3c7e`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf4e7cafa853217330815ed6cf788f2fce6653fb226a00ae1be943d4f56abf5`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c08ec4a215de07dc5f4c870a2294e4ae818ef1134311b33b12eabc589fc9d9d`  
		Last Modified: Fri, 21 Sep 2018 19:24:15 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1e71b1c518e7aadd4cce1888778672c617a9a80718c5bf1f7a5d5ff9c18215`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:f0564e3fcbe7d7c1b040605c6f602fdce17210c04936f5caa3bb410233805ffe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28071724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6cda7206676fcde8263b1eea906da2874d621547596887aa8cdee402176a60e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:15:03 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 08:15:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 08:15:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 08:15:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:15:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 07:49:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 07:49:37 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 07:49:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 07:49:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 07:49:41 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 07:49:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 07:49:41 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 07:49:42 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ab7d82bf045d6b83b49344082af7a63d456866771ec60323e02d8ba54d348`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404cd7746429b5adac001a8efa2a282b5106a8a7c8d2ef2e225eda23e4a69ef`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 9.0 KB (8987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04b3620c9d7a0f231a2b41fb9ee2016ac2d8bfdfd2ba7917679aa1e2cd0f822`  
		Last Modified: Sat, 15 Sep 2018 09:11:49 GMT  
		Size: 16.3 MB (16308397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29887a548de2ac179ecd61832fbd472e766477c4b3aa7cff4a0d230566c479`  
		Last Modified: Sat, 22 Sep 2018 07:50:32 GMT  
		Size: 9.6 MB (9601720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d5d2d5cc4b433ad521d9b9f4d3995a29e50fe9a145b9d8d98bd11955d7ea88`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af353bad0a54ab06e651f3fb1537b6c9d5cc20c017c51c04d7735672cac138e`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e0d38fb780816b21f097f227b53e86aacf4a272948e659b23c40ac86007bd`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bcce22d98cb3045f9edc61ff44926f9ca03a0dcfb0ee50b0f5c5071cbb4ed55`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:20273012056ba9f2e13589c0b151ac9a23b8d0cbf3eae28f728e615f8e339a2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28001524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcce1a05a40d92293a3069a46f66bc9bc309432a668184953a91358e7935d915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 22 Sep 2018 08:55:17 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 22 Sep 2018 08:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 22 Sep 2018 08:55:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 22 Sep 2018 08:55:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Sep 2018 08:55:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:56:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:56:01 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:56:03 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:56:04 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:56:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:56:08 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:56:09 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:56:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:56:10 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:56:11 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9855a7536b42bdcc9774489c4e1e9b8ee79a04e7abb5de9a61878f0870cbfc1`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8ae4b960c46131b8c15e06d3fd15a734a2737404ae494ca98a9973bb8e3fcb`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e020a68ecb622c4ef5b488b3fd801d8b0a903b0b593a7d653f544775add7`  
		Last Modified: Sat, 22 Sep 2018 09:01:03 GMT  
		Size: 16.3 MB (16285564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485ad31f9447e87fdaffd18fc3bc83b5c59d764f89bfb3696e91749f9281d5de`  
		Last Modified: Sat, 22 Sep 2018 09:00:58 GMT  
		Size: 9.6 MB (9601164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476af5da395239e47879eff2e8ba1681b6af40218d29ceed8be4aa1bfd56c39b`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3351fe81eb63ac3194a322bee4b9d0b7da0df23eac261860ad69d320709bef0d`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e687bdb217e857ecd717e1aca6b6808973af3c67cbb1f78f49dd9e72c95640`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc01c7ad324ea3bcdab6e82cb32f15cac03aea1c042bba3cbedce937f00fab0`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:d495426699987608d4d4bf2e1884f1d65264a98061b8cdd2dbe93048990836e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28299790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4652f4a1b6dad8d894e66e7e7d26d0b0a524e06aafafb5f1f3cc1f34dca6b0b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:32:06 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:32:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:32:21 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:32:22 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:32:24 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:32:25 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:32:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:32:43 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:32:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:32:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:32:57 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:32:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:33:00 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:33:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:33:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:33:16 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:33:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:33:18 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:33:18 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9690f1f749a7f0b179eb76f9cc4ebcc64b209d5e28215bb0b7c34b7dcd4c86`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf99cc7ead890ac43c261cd845b9158794d9a5ea0df4e1b8baa5f584f3e5045`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8dcc93812fc0b7d5834d65e6589d35279fba3160ba5a65182ae12d3f0eb9d6`  
		Last Modified: Wed, 12 Sep 2018 11:35:37 GMT  
		Size: 16.5 MB (16486759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a947879a4415212cdd2d12b785c16e26edc0979d7724d0662127639f69f6f23b`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 9.6 MB (9602131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8d3beb7645cd509c84c1eb5c9d05fb12e708c6f09d0af854436de90681a2b6`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee1fb084188df9bc42f84a521c287d1ecc584bb28279f9b9720844d70df8243`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359a0174d4a84100a84ff4b192f2f4e1ad614fa6efbc6e1326f37326360b69e`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3290cc586183801a8edbfeffe0cf986c4575f9faca3065df93186f8816be6a`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:05c346c27fb1da343c27af8e8ee31baf3ca70d2d9c856a7676605c54e7e63841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4a8179df47a2296104d168a75be033de028b41e3e4c8ba973dfbd1dc1c458464
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73413278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75472a5c510b61464a1791eaa76edf71080d5f9208388f0e018fdd79582330c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:02 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 05:21:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 05:21:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 05:21:14 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 05:21:38 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:38 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 05:21:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 05:21:39 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Fri, 21 Sep 2018 19:20:44 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 19:20:44 GMT
ENV LANG=C.UTF-8
# Fri, 21 Sep 2018 19:20:44 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:20:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:20:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 21 Sep 2018 19:20:47 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:20:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Sep 2018 19:20:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:20:49 GMT
CMD ["rabbitmq-server"]
# Fri, 21 Sep 2018 19:21:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 21 Sep 2018 19:21:18 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 21 Sep 2018 19:21:19 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe35f04ebea261787064fcf29714d8a188578fd3aae88a1672366b5243a1b4`  
		Last Modified: Wed, 05 Sep 2018 05:24:51 GMT  
		Size: 4.5 MB (4498555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a118dc68c2e54abc54162dd19892c08a71709d7499eabe7f6ac95205c2494f`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c19971869789806dbf507bf25ba148decd6223ec7dcf5621f7555ebb9fcd41`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 951.9 KB (951900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74b797281ea162830289012ea83cfe1e59f93ac0f85f76ad9386dd41305fd30`  
		Last Modified: Wed, 05 Sep 2018 05:24:49 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b0494f0e3c744f09fd327476571006c12f9f6cfc048f97f2c9e6c66999db94`  
		Last Modified: Wed, 05 Sep 2018 05:24:52 GMT  
		Size: 27.5 MB (27500750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d980114df034ef4993a83465524fafa7344b25e19528982353c9cf74bf5f55a`  
		Last Modified: Fri, 21 Sep 2018 19:22:19 GMT  
		Size: 10.3 MB (10341393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ca5fedb825835294e2565cc58d227196127ecc0edc0c281346b26197bc100f`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1e615d6da0531fe7024d2a969229da3883db973c818a56c5d6a400c3a5c271`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9a78cfa9a669c16e12c1a9ac682402319955e856326ec083e07081a19b0b25`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6dad79c7b8b87e34a5e1daaf7feb10cbad88e100db107941e83f8794fb278cc`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bf45b8fd5229e3afde232d882b510fe05c8cdafb7a601bbb654e3f54767b8a`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f290272ddb5f56456b3882a4b2b6f93b851b92c8e7433e7d27489aa99700fd53`  
		Last Modified: Fri, 21 Sep 2018 19:23:17 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f528c58708d2416177b680923c69beb1685c0f2c73d7fe0f801c204e420b5`  
		Last Modified: Fri, 21 Sep 2018 19:23:19 GMT  
		Size: 7.6 MB (7623256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:f5303690765cafcf06bf200bc88d91988206cf31fe1dfb965c45cac5ab2b1313
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69120818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e3caa41d04ab4619888b24becf69c21faf9a9447ca8eb6456741b24c98e1f64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:45:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:45:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:46:06 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:46:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:46:07 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:46:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:58:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:58:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:58:44 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:58:44 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:58:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:58:46 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:58:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:58:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:58:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:58:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:58:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:58:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:58:52 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:59:10 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:59:32 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:59:32 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483021b9c38437adcd233ec231bbe3d5f2262264fdb2cfdd6040e28622abfeed`  
		Last Modified: Wed, 05 Sep 2018 11:49:48 GMT  
		Size: 4.2 MB (4231636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de799b221ef6d17d523a8146fae2f4c5b756afa8dbcde3436ebe67d2cfb3760`  
		Last Modified: Wed, 05 Sep 2018 11:49:46 GMT  
		Size: 4.1 KB (4086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e2b5ada6e33dc5ae042bd4ae10d7d2e5cef590482f162b4fc967c577be9776`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 942.3 KB (942332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65428a380acc7019931c23005421c6f7eacc5c73ae5a77a6340977af268cdb29`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4f4592eb0138d0e1a977e797f6b1b1861414b013b17251558a55338917b431`  
		Last Modified: Wed, 05 Sep 2018 11:49:50 GMT  
		Size: 25.0 MB (24988439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a36e2eac1d50e768d2e155c3fa6eb8e7ed70d329f075619ed2eedb3ce65da4`  
		Last Modified: Sat, 22 Sep 2018 09:00:04 GMT  
		Size: 10.3 MB (10310410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb90657b133110385ab6178da97ba097dc953c4db394ffff1370ef7f0b39b59`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42d8ba2e5a411d9a0e012ae3d4b234f938de9cbba8993655cd48317a78d8108`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9767a7551c4b2ee7f7101af8e55721ce83af6c18e25606d15095e146108ad04a`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859bd681e58f37404c3814d419985804f6fd270b5f056d568fce48e2e1d6ffbd`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a722bdd44282ba09454c487b7c111669310847853a6f817ec1e002625cf1ead`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1332ceb5af448fbb61f0e5ce04fea17c7c697fd68be085cc67659a41239577`  
		Last Modified: Sat, 22 Sep 2018 09:00:48 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563761b3da829e663850b495b9c438bd60379087eb4174f51fd39ce5588a4f8a`  
		Last Modified: Sat, 22 Sep 2018 09:00:51 GMT  
		Size: 7.5 MB (7473660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:431e006e72d705dd7c4f127028311a1b1599df350afde3ea6a2650931599d4c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68164651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c555744928dd03693e679a134f4f32e7f982349fa1593718669cadcca2ccf9b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 17:59:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:59:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 17:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 18:01:08 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 18:01:10 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 18:02:48 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:02:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 18:02:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 18:02:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:51:38 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:51:47 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:51:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:52:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:52:49 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:52:49 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:52:51 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:52:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:53:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:53:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:53:14 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:53:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:53:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:53:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:53:27 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:54:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:54:37 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:54:38 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e37db5cf675e4afee42d261d405850f9661011376c9e32dcf161b994b5784`  
		Last Modified: Wed, 05 Sep 2018 18:10:27 GMT  
		Size: 4.1 MB (4073269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a489138492c1c3398d5e832adb250d71806f6d1c1ee77f0d4386d242770e4f5`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786d0df6cef56007fb33342e229dc469e545f3fbd266b4b427d1fcd6f265084`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 919.2 KB (919245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8290a5f844dc24fafb21b0cc2eefa710b721caab388788f0f84fb6c5304125`  
		Last Modified: Wed, 05 Sep 2018 18:10:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacda0a12c7cb0992a5d95f75099782e66e2f4561cfa697f95a32df5c592bc68`  
		Last Modified: Wed, 05 Sep 2018 18:10:30 GMT  
		Size: 25.0 MB (25045917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf4ae8997417961ed19100842c7e6c280e4c623403e85c0047ae7cbdfa9208`  
		Last Modified: Sat, 22 Sep 2018 08:59:14 GMT  
		Size: 10.3 MB (10307125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62359fecc08685998249d40a89ab975841f91f6d7dda13315a83d8f3c7f50ab1`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d142bc95a688efcc89d03f06eb191ff71ac493a62059adbe7c8322f301fee`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbfe2ca2db93d20210ba636666631f84f380156d7fa7a98fe93a68cd7d9a366`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ee8a3aecd0459b8894c132648bdfb8b441130ca853ba2bba585daa25e7412`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0ab2b1147790075787c5b2251cf77110a3da7fa083d1fd2c40e5824d0c25f2`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0966060600a02d135bd1d95fa69313f34a18325cc3c2702f86423a290b961b2`  
		Last Modified: Sat, 22 Sep 2018 09:00:04 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c7c4d3288ee7f0b504ceaf3a731636f036ed45255e7bf7e116e912a769f3ce`  
		Last Modified: Sat, 22 Sep 2018 09:00:06 GMT  
		Size: 7.5 MB (7475982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:471150e80601823c3b9a8fb47ec02831802ed61e95077ea08167f611d5ca8103
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71564161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef86c8e2362adf535eb5879f5a5212f01dd7eb9e1a5029306d64d5876d18429`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:31:34 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:31:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:32:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:32:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:34:45 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:34:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:34:51 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:34:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:29:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:29:29 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:29:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:30:22 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:30:25 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:30:26 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:30:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:30:39 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:30:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:30:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:30:55 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:30:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:31:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:31:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:31:10 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:31:31 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:31:58 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:32:00 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579e7691721557327e3927ed84719e320cf6617c3acc48457fbe3ecd5d70f853`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 4.4 MB (4360587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2457b86f9cd5532629687ff9153d277b80e5c5c805dfbba681b8a51bc205fcc5`  
		Last Modified: Wed, 05 Sep 2018 11:41:29 GMT  
		Size: 4.1 KB (4105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69a3893e8f4d42d93f333b4f7a04240b2f1f8efe56cbf832b105ae32483ce4`  
		Last Modified: Wed, 05 Sep 2018 11:41:30 GMT  
		Size: 920.5 KB (920546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87de592d09499649ca13a67a2de44d7c46855451105c18148090363fc0cbb78c`  
		Last Modified: Wed, 05 Sep 2018 11:41:28 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd733fc519ab91b0b6f3b8dd93802dcff0937fa8db79069713e23b163526e8`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 25.4 MB (25378924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70161d40899550476a55bade31bc5e0e735c4ca8803318ed7c1370946c7ebc01`  
		Last Modified: Sat, 22 Sep 2018 08:34:27 GMT  
		Size: 10.3 MB (10325845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebe8c120af2d5327a3af173abe786ed49f8b73245005b32362fce5c6cba732`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d0bc3e2a4b9cfee255c21e4b04280da963048c8448361528ee06a25584c35e`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d898013a8c86393481ab0469058ec22bb6fe436e1c1a2630a4de118164c6b3d`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2e6de4feb935b3c11825f0894903590e2a6b059e53c3e73faf5f8804936600`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5760ba94169f92060fdfb0b4b2923580978c247695bb08c382dae2605ef71196`  
		Last Modified: Sat, 22 Sep 2018 08:34:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389dd83932053d9aa869f7c2116672991d7567db9225cd0d946fa10c97ded528`  
		Last Modified: Sat, 22 Sep 2018 08:35:33 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb5f47fc4afe027e048745ab3ce432aee1781fd2a838cee4449e9eff42c76b`  
		Last Modified: Sat, 22 Sep 2018 08:35:37 GMT  
		Size: 7.8 MB (7826228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:3-management-alpine`

```console
$ docker pull rabbitmq@sha256:6c137bdbdca13b6e20dcbab7cb8171c0282e24d10581f3a19dcd2b3adf74f810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:3-management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:045bcd514a4d23f3bb897de6f539a503a38c5f18ad693302b0bbc41ffa5aa2e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41562106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe0d284b5ed546b601459f3f351fa629ab0bf2bd93a2211f791138030f155c8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 02:53:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 02:53:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 02:53:56 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 02:53:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:21:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Sep 2018 19:21:33 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:21:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:21:36 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Sep 2018 19:21:36 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:21:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:21:37 GMT
CMD ["rabbitmq-server"]
# Fri, 21 Sep 2018 19:21:49 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 21 Sep 2018 19:21:53 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 21 Sep 2018 19:21:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0839f7c4bc75ca0f7cdac3608503344e6b4aceeaf40ca2808d0c5eb577ae49`  
		Last Modified: Wed, 12 Sep 2018 02:55:10 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ca51e7c431a28e32ee85a8a5626326770d4cc7c6982b6718f2496308bb3f8`  
		Last Modified: Wed, 12 Sep 2018 02:55:09 GMT  
		Size: 9.1 KB (9060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b799497b1c496754f3279b4ea0dfdf1808c34a711408ebdf6b1885f6f34d9bb8`  
		Last Modified: Wed, 12 Sep 2018 02:55:13 GMT  
		Size: 18.7 MB (18709062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37182edcd725512ba66a43c7413e11c6abe61745ec455a1988c43174a6b26925`  
		Last Modified: Fri, 21 Sep 2018 19:24:14 GMT  
		Size: 9.6 MB (9610293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d46aaa928ecec2d1dac9dd832759d30a1bfb28dab8c30efa093051dafe3c7e`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf4e7cafa853217330815ed6cf788f2fce6653fb226a00ae1be943d4f56abf5`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c08ec4a215de07dc5f4c870a2294e4ae818ef1134311b33b12eabc589fc9d9d`  
		Last Modified: Fri, 21 Sep 2018 19:24:15 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1e71b1c518e7aadd4cce1888778672c617a9a80718c5bf1f7a5d5ff9c18215`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e65bf69b0767b35e0c02cb6a3ecec4f430bf0ded0b4bb44f6275e3b725fd49`  
		Last Modified: Fri, 21 Sep 2018 19:24:52 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f2a928b6ef5f937e4f2cab0c941602e9e10df16b5177e9b3a70dc8556202f1`  
		Last Modified: Fri, 21 Sep 2018 19:24:56 GMT  
		Size: 11.0 MB (11020659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:a2b41b6e35bc8944672953ee9be9bafc26f20d6e9490576b6015ae289d47ca8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (38952654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4912a3780a00f636017b7ec22285b11c480215f5c9148fb6f67b82dab0fcb9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:15:03 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 08:15:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 08:15:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 08:15:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:15:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 07:49:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 07:49:37 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 07:49:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 07:49:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 07:49:41 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 07:49:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 07:49:41 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 07:49:42 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 07:49:59 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 07:50:09 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 07:50:10 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ab7d82bf045d6b83b49344082af7a63d456866771ec60323e02d8ba54d348`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404cd7746429b5adac001a8efa2a282b5106a8a7c8d2ef2e225eda23e4a69ef`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 9.0 KB (8987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04b3620c9d7a0f231a2b41fb9ee2016ac2d8bfdfd2ba7917679aa1e2cd0f822`  
		Last Modified: Sat, 15 Sep 2018 09:11:49 GMT  
		Size: 16.3 MB (16308397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29887a548de2ac179ecd61832fbd472e766477c4b3aa7cff4a0d230566c479`  
		Last Modified: Sat, 22 Sep 2018 07:50:32 GMT  
		Size: 9.6 MB (9601720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d5d2d5cc4b433ad521d9b9f4d3995a29e50fe9a145b9d8d98bd11955d7ea88`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af353bad0a54ab06e651f3fb1537b6c9d5cc20c017c51c04d7735672cac138e`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e0d38fb780816b21f097f227b53e86aacf4a272948e659b23c40ac86007bd`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bcce22d98cb3045f9edc61ff44926f9ca03a0dcfb0ee50b0f5c5071cbb4ed55`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f32aa0580787db67b407557e59c97438915e6fb9bdbdb4b92a25422db52edc3`  
		Last Modified: Sat, 22 Sep 2018 07:50:54 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bdb320194c15a1a05c6c05c0ad095e2c94f82073e99ec5c2b84cd8021180a1`  
		Last Modified: Sat, 22 Sep 2018 07:50:58 GMT  
		Size: 10.9 MB (10880738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:c4ffd708da99d1d51e1fb3be051041f805584b2da224895d235964c84706ecdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38849006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22baa886845395b5af750b68c98608ec4e8e789965554f4e7e8e6970627c1141`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 22 Sep 2018 08:55:17 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 22 Sep 2018 08:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 22 Sep 2018 08:55:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 22 Sep 2018 08:55:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Sep 2018 08:55:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:56:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:56:01 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:56:03 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:56:04 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:56:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:56:08 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:56:09 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:56:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:56:10 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:56:11 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:56:49 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:57:04 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:57:10 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9855a7536b42bdcc9774489c4e1e9b8ee79a04e7abb5de9a61878f0870cbfc1`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8ae4b960c46131b8c15e06d3fd15a734a2737404ae494ca98a9973bb8e3fcb`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e020a68ecb622c4ef5b488b3fd801d8b0a903b0b593a7d653f544775add7`  
		Last Modified: Sat, 22 Sep 2018 09:01:03 GMT  
		Size: 16.3 MB (16285564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485ad31f9447e87fdaffd18fc3bc83b5c59d764f89bfb3696e91749f9281d5de`  
		Last Modified: Sat, 22 Sep 2018 09:00:58 GMT  
		Size: 9.6 MB (9601164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476af5da395239e47879eff2e8ba1681b6af40218d29ceed8be4aa1bfd56c39b`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3351fe81eb63ac3194a322bee4b9d0b7da0df23eac261860ad69d320709bef0d`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e687bdb217e857ecd717e1aca6b6808973af3c67cbb1f78f49dd9e72c95640`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc01c7ad324ea3bcdab6e82cb32f15cac03aea1c042bba3cbedce937f00fab0`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d3d606a94a8e900bfcb45ace22391114ad7fbc5c31cbbeca5d1e7846314b8f`  
		Last Modified: Sat, 22 Sep 2018 09:01:52 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e78e3d156b154ad43993991cbfc249f8c3476281ed5f2941091b060c260f9c1`  
		Last Modified: Sat, 22 Sep 2018 09:01:58 GMT  
		Size: 10.8 MB (10847291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:859c0191f3f082e4f8dfcddd49da74fa9a9b4adc7cef71a5fefae54ea7036e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39322974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dac40104080dbde3443b9ad5370b25317a867789670506da84f31549406a135`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:32:06 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:32:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:32:21 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:32:22 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:32:24 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:32:25 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:32:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:32:43 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:32:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:32:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:32:57 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:32:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:33:00 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:33:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:33:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:33:16 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:33:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:33:18 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:33:18 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:33:37 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:33:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:33:44 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9690f1f749a7f0b179eb76f9cc4ebcc64b209d5e28215bb0b7c34b7dcd4c86`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf99cc7ead890ac43c261cd845b9158794d9a5ea0df4e1b8baa5f584f3e5045`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8dcc93812fc0b7d5834d65e6589d35279fba3160ba5a65182ae12d3f0eb9d6`  
		Last Modified: Wed, 12 Sep 2018 11:35:37 GMT  
		Size: 16.5 MB (16486759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a947879a4415212cdd2d12b785c16e26edc0979d7724d0662127639f69f6f23b`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 9.6 MB (9602131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8d3beb7645cd509c84c1eb5c9d05fb12e708c6f09d0af854436de90681a2b6`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee1fb084188df9bc42f84a521c287d1ecc584bb28279f9b9720844d70df8243`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359a0174d4a84100a84ff4b192f2f4e1ad614fa6efbc6e1326f37326360b69e`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3290cc586183801a8edbfeffe0cf986c4575f9faca3065df93186f8816be6a`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10b6db18368b3f4554b0b06b22b8170da03d9d9c7e1c79a5e842217108677a6`  
		Last Modified: Sat, 22 Sep 2018 08:37:53 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7e552f3cdd79bfc98cf5e0afe33cc66d5d0d9b14cb6f99c1759d5573ce597d`  
		Last Modified: Sat, 22 Sep 2018 08:38:00 GMT  
		Size: 11.0 MB (11022993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:alpine`

```console
$ docker pull rabbitmq@sha256:0c9920d16dd06fd7eb6e6606392491ec5cf034ee8e9bf8c329fbf2a87a9c3608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:f6d2ffafc5de292fee80127044662f6050db643eaf1c676bfc43b8ccc7519d8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30541256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e247dd4271d82186e4af26206413d6f8284634fc0ba64787ea190f62c90fab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 02:53:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 02:53:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 02:53:56 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 02:53:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:21:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Sep 2018 19:21:33 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:21:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:21:36 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Sep 2018 19:21:36 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:21:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:21:37 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0839f7c4bc75ca0f7cdac3608503344e6b4aceeaf40ca2808d0c5eb577ae49`  
		Last Modified: Wed, 12 Sep 2018 02:55:10 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ca51e7c431a28e32ee85a8a5626326770d4cc7c6982b6718f2496308bb3f8`  
		Last Modified: Wed, 12 Sep 2018 02:55:09 GMT  
		Size: 9.1 KB (9060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b799497b1c496754f3279b4ea0dfdf1808c34a711408ebdf6b1885f6f34d9bb8`  
		Last Modified: Wed, 12 Sep 2018 02:55:13 GMT  
		Size: 18.7 MB (18709062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37182edcd725512ba66a43c7413e11c6abe61745ec455a1988c43174a6b26925`  
		Last Modified: Fri, 21 Sep 2018 19:24:14 GMT  
		Size: 9.6 MB (9610293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d46aaa928ecec2d1dac9dd832759d30a1bfb28dab8c30efa093051dafe3c7e`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf4e7cafa853217330815ed6cf788f2fce6653fb226a00ae1be943d4f56abf5`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c08ec4a215de07dc5f4c870a2294e4ae818ef1134311b33b12eabc589fc9d9d`  
		Last Modified: Fri, 21 Sep 2018 19:24:15 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1e71b1c518e7aadd4cce1888778672c617a9a80718c5bf1f7a5d5ff9c18215`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:f0564e3fcbe7d7c1b040605c6f602fdce17210c04936f5caa3bb410233805ffe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28071724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6cda7206676fcde8263b1eea906da2874d621547596887aa8cdee402176a60e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:15:03 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 08:15:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 08:15:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 08:15:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:15:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 07:49:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 07:49:37 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 07:49:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 07:49:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 07:49:41 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 07:49:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 07:49:41 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 07:49:42 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ab7d82bf045d6b83b49344082af7a63d456866771ec60323e02d8ba54d348`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404cd7746429b5adac001a8efa2a282b5106a8a7c8d2ef2e225eda23e4a69ef`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 9.0 KB (8987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04b3620c9d7a0f231a2b41fb9ee2016ac2d8bfdfd2ba7917679aa1e2cd0f822`  
		Last Modified: Sat, 15 Sep 2018 09:11:49 GMT  
		Size: 16.3 MB (16308397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29887a548de2ac179ecd61832fbd472e766477c4b3aa7cff4a0d230566c479`  
		Last Modified: Sat, 22 Sep 2018 07:50:32 GMT  
		Size: 9.6 MB (9601720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d5d2d5cc4b433ad521d9b9f4d3995a29e50fe9a145b9d8d98bd11955d7ea88`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af353bad0a54ab06e651f3fb1537b6c9d5cc20c017c51c04d7735672cac138e`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e0d38fb780816b21f097f227b53e86aacf4a272948e659b23c40ac86007bd`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bcce22d98cb3045f9edc61ff44926f9ca03a0dcfb0ee50b0f5c5071cbb4ed55`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:20273012056ba9f2e13589c0b151ac9a23b8d0cbf3eae28f728e615f8e339a2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28001524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcce1a05a40d92293a3069a46f66bc9bc309432a668184953a91358e7935d915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 22 Sep 2018 08:55:17 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 22 Sep 2018 08:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 22 Sep 2018 08:55:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 22 Sep 2018 08:55:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Sep 2018 08:55:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:56:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:56:01 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:56:03 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:56:04 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:56:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:56:08 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:56:09 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:56:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:56:10 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:56:11 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9855a7536b42bdcc9774489c4e1e9b8ee79a04e7abb5de9a61878f0870cbfc1`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8ae4b960c46131b8c15e06d3fd15a734a2737404ae494ca98a9973bb8e3fcb`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e020a68ecb622c4ef5b488b3fd801d8b0a903b0b593a7d653f544775add7`  
		Last Modified: Sat, 22 Sep 2018 09:01:03 GMT  
		Size: 16.3 MB (16285564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485ad31f9447e87fdaffd18fc3bc83b5c59d764f89bfb3696e91749f9281d5de`  
		Last Modified: Sat, 22 Sep 2018 09:00:58 GMT  
		Size: 9.6 MB (9601164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476af5da395239e47879eff2e8ba1681b6af40218d29ceed8be4aa1bfd56c39b`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3351fe81eb63ac3194a322bee4b9d0b7da0df23eac261860ad69d320709bef0d`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e687bdb217e857ecd717e1aca6b6808973af3c67cbb1f78f49dd9e72c95640`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc01c7ad324ea3bcdab6e82cb32f15cac03aea1c042bba3cbedce937f00fab0`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:d495426699987608d4d4bf2e1884f1d65264a98061b8cdd2dbe93048990836e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28299790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4652f4a1b6dad8d894e66e7e7d26d0b0a524e06aafafb5f1f3cc1f34dca6b0b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:32:06 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:32:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:32:21 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:32:22 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:32:24 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:32:25 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:32:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:32:43 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:32:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:32:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:32:57 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:32:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:33:00 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:33:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:33:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:33:16 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:33:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:33:18 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:33:18 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9690f1f749a7f0b179eb76f9cc4ebcc64b209d5e28215bb0b7c34b7dcd4c86`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf99cc7ead890ac43c261cd845b9158794d9a5ea0df4e1b8baa5f584f3e5045`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8dcc93812fc0b7d5834d65e6589d35279fba3160ba5a65182ae12d3f0eb9d6`  
		Last Modified: Wed, 12 Sep 2018 11:35:37 GMT  
		Size: 16.5 MB (16486759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a947879a4415212cdd2d12b785c16e26edc0979d7724d0662127639f69f6f23b`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 9.6 MB (9602131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8d3beb7645cd509c84c1eb5c9d05fb12e708c6f09d0af854436de90681a2b6`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee1fb084188df9bc42f84a521c287d1ecc584bb28279f9b9720844d70df8243`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359a0174d4a84100a84ff4b192f2f4e1ad614fa6efbc6e1326f37326360b69e`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3290cc586183801a8edbfeffe0cf986c4575f9faca3065df93186f8816be6a`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:c019c868551be133c712ffaadb52951fd4ffdf0ef31e45d81dcb76fbba1cd9f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:latest` - linux; amd64

```console
$ docker pull rabbitmq@sha256:5c8a8b5454ddae4fb5597223515c3a6e7e252fb83403cdf72162f7f0c354e8f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65789829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fdcccc8ade180bbc149f2834c3fca45e64bc1c3829309576d8eee6c8f20f3f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:02 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 05:21:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 05:21:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 05:21:14 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 05:21:38 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:38 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 05:21:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 05:21:39 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Fri, 21 Sep 2018 19:20:44 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 19:20:44 GMT
ENV LANG=C.UTF-8
# Fri, 21 Sep 2018 19:20:44 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:20:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:20:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 21 Sep 2018 19:20:47 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:20:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Sep 2018 19:20:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:20:49 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe35f04ebea261787064fcf29714d8a188578fd3aae88a1672366b5243a1b4`  
		Last Modified: Wed, 05 Sep 2018 05:24:51 GMT  
		Size: 4.5 MB (4498555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a118dc68c2e54abc54162dd19892c08a71709d7499eabe7f6ac95205c2494f`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c19971869789806dbf507bf25ba148decd6223ec7dcf5621f7555ebb9fcd41`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 951.9 KB (951900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74b797281ea162830289012ea83cfe1e59f93ac0f85f76ad9386dd41305fd30`  
		Last Modified: Wed, 05 Sep 2018 05:24:49 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b0494f0e3c744f09fd327476571006c12f9f6cfc048f97f2c9e6c66999db94`  
		Last Modified: Wed, 05 Sep 2018 05:24:52 GMT  
		Size: 27.5 MB (27500750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d980114df034ef4993a83465524fafa7344b25e19528982353c9cf74bf5f55a`  
		Last Modified: Fri, 21 Sep 2018 19:22:19 GMT  
		Size: 10.3 MB (10341393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ca5fedb825835294e2565cc58d227196127ecc0edc0c281346b26197bc100f`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1e615d6da0531fe7024d2a969229da3883db973c818a56c5d6a400c3a5c271`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9a78cfa9a669c16e12c1a9ac682402319955e856326ec083e07081a19b0b25`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6dad79c7b8b87e34a5e1daaf7feb10cbad88e100db107941e83f8794fb278cc`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bf45b8fd5229e3afde232d882b510fe05c8cdafb7a601bbb654e3f54767b8a`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:e6fd3fc0220e4f7d17f84105fabdd368ed1acab58e2eafe357ca046923f828cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61646967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8332c91fde7966d6387b24ae67e583ed6935fcde4c427438368de5e1a500bee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:45:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:45:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:46:06 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:46:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:46:07 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:46:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:58:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:58:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:58:44 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:58:44 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:58:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:58:46 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:58:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:58:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:58:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:58:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:58:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:58:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:58:52 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483021b9c38437adcd233ec231bbe3d5f2262264fdb2cfdd6040e28622abfeed`  
		Last Modified: Wed, 05 Sep 2018 11:49:48 GMT  
		Size: 4.2 MB (4231636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de799b221ef6d17d523a8146fae2f4c5b756afa8dbcde3436ebe67d2cfb3760`  
		Last Modified: Wed, 05 Sep 2018 11:49:46 GMT  
		Size: 4.1 KB (4086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e2b5ada6e33dc5ae042bd4ae10d7d2e5cef590482f162b4fc967c577be9776`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 942.3 KB (942332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65428a380acc7019931c23005421c6f7eacc5c73ae5a77a6340977af268cdb29`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4f4592eb0138d0e1a977e797f6b1b1861414b013b17251558a55338917b431`  
		Last Modified: Wed, 05 Sep 2018 11:49:50 GMT  
		Size: 25.0 MB (24988439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a36e2eac1d50e768d2e155c3fa6eb8e7ed70d329f075619ed2eedb3ce65da4`  
		Last Modified: Sat, 22 Sep 2018 09:00:04 GMT  
		Size: 10.3 MB (10310410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb90657b133110385ab6178da97ba097dc953c4db394ffff1370ef7f0b39b59`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42d8ba2e5a411d9a0e012ae3d4b234f938de9cbba8993655cd48317a78d8108`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9767a7551c4b2ee7f7101af8e55721ce83af6c18e25606d15095e146108ad04a`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859bd681e58f37404c3814d419985804f6fd270b5f056d568fce48e2e1d6ffbd`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a722bdd44282ba09454c487b7c111669310847853a6f817ec1e002625cf1ead`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:3d9d8c6470d4fbed7b38e7cce08f5530b87cfc019af5549052abacc99d41c532
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.7 MB (60688478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd979cc47d934888fc861b1a5e17d344fdf8107e11f00e5ccc6544081054dfc3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 17:59:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:59:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 17:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 18:01:08 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 18:01:10 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 18:02:48 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:02:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 18:02:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 18:02:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:51:38 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:51:47 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:51:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:52:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:52:49 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:52:49 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:52:51 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:52:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:53:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:53:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:53:14 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:53:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:53:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:53:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:53:27 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e37db5cf675e4afee42d261d405850f9661011376c9e32dcf161b994b5784`  
		Last Modified: Wed, 05 Sep 2018 18:10:27 GMT  
		Size: 4.1 MB (4073269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a489138492c1c3398d5e832adb250d71806f6d1c1ee77f0d4386d242770e4f5`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786d0df6cef56007fb33342e229dc469e545f3fbd266b4b427d1fcd6f265084`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 919.2 KB (919245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8290a5f844dc24fafb21b0cc2eefa710b721caab388788f0f84fb6c5304125`  
		Last Modified: Wed, 05 Sep 2018 18:10:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacda0a12c7cb0992a5d95f75099782e66e2f4561cfa697f95a32df5c592bc68`  
		Last Modified: Wed, 05 Sep 2018 18:10:30 GMT  
		Size: 25.0 MB (25045917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf4ae8997417961ed19100842c7e6c280e4c623403e85c0047ae7cbdfa9208`  
		Last Modified: Sat, 22 Sep 2018 08:59:14 GMT  
		Size: 10.3 MB (10307125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62359fecc08685998249d40a89ab975841f91f6d7dda13315a83d8f3c7f50ab1`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d142bc95a688efcc89d03f06eb191ff71ac493a62059adbe7c8322f301fee`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbfe2ca2db93d20210ba636666631f84f380156d7fa7a98fe93a68cd7d9a366`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ee8a3aecd0459b8894c132648bdfb8b441130ca853ba2bba585daa25e7412`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0ab2b1147790075787c5b2251cf77110a3da7fa083d1fd2c40e5824d0c25f2`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:51afde8e3fd650c0531f0799984efea6ed6a234059185cdb859e46886617fc15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63737741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:863b375131d15f8ec258360b0e8fe00cbe1eb2c0f54a8baaaf12a3a4f3785deb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:31:34 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:31:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:32:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:32:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:34:45 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:34:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:34:51 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:34:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:29:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:29:29 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:29:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:30:22 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:30:25 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:30:26 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:30:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:30:39 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:30:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:30:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:30:55 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:30:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:31:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:31:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:31:10 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579e7691721557327e3927ed84719e320cf6617c3acc48457fbe3ecd5d70f853`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 4.4 MB (4360587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2457b86f9cd5532629687ff9153d277b80e5c5c805dfbba681b8a51bc205fcc5`  
		Last Modified: Wed, 05 Sep 2018 11:41:29 GMT  
		Size: 4.1 KB (4105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69a3893e8f4d42d93f333b4f7a04240b2f1f8efe56cbf832b105ae32483ce4`  
		Last Modified: Wed, 05 Sep 2018 11:41:30 GMT  
		Size: 920.5 KB (920546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87de592d09499649ca13a67a2de44d7c46855451105c18148090363fc0cbb78c`  
		Last Modified: Wed, 05 Sep 2018 11:41:28 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd733fc519ab91b0b6f3b8dd93802dcff0937fa8db79069713e23b163526e8`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 25.4 MB (25378924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70161d40899550476a55bade31bc5e0e735c4ca8803318ed7c1370946c7ebc01`  
		Last Modified: Sat, 22 Sep 2018 08:34:27 GMT  
		Size: 10.3 MB (10325845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebe8c120af2d5327a3af173abe786ed49f8b73245005b32362fce5c6cba732`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d0bc3e2a4b9cfee255c21e4b04280da963048c8448361528ee06a25584c35e`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d898013a8c86393481ab0469058ec22bb6fe436e1c1a2630a4de118164c6b3d`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2e6de4feb935b3c11825f0894903590e2a6b059e53c3e73faf5f8804936600`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5760ba94169f92060fdfb0b4b2923580978c247695bb08c382dae2605ef71196`  
		Last Modified: Sat, 22 Sep 2018 08:34:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:05c346c27fb1da343c27af8e8ee31baf3ca70d2d9c856a7676605c54e7e63841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:4a8179df47a2296104d168a75be033de028b41e3e4c8ba973dfbd1dc1c458464
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73413278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75472a5c510b61464a1791eaa76edf71080d5f9208388f0e018fdd79582330c3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 05:21:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:02 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 05:21:02 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 05:21:13 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 05:21:14 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 05:21:38 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:21:38 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 05:21:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 05:21:39 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:20:23 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Fri, 21 Sep 2018 19:20:44 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 21 Sep 2018 19:20:44 GMT
ENV LANG=C.UTF-8
# Fri, 21 Sep 2018 19:20:44 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 21 Sep 2018 19:20:45 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:20:46 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:20:47 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 21 Sep 2018 19:20:47 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:20:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 21 Sep 2018 19:20:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:20:48 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:20:49 GMT
CMD ["rabbitmq-server"]
# Fri, 21 Sep 2018 19:21:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 21 Sep 2018 19:21:18 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 21 Sep 2018 19:21:19 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84fe35f04ebea261787064fcf29714d8a188578fd3aae88a1672366b5243a1b4`  
		Last Modified: Wed, 05 Sep 2018 05:24:51 GMT  
		Size: 4.5 MB (4498555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72a118dc68c2e54abc54162dd19892c08a71709d7499eabe7f6ac95205c2494f`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c19971869789806dbf507bf25ba148decd6223ec7dcf5621f7555ebb9fcd41`  
		Last Modified: Wed, 05 Sep 2018 05:24:50 GMT  
		Size: 951.9 KB (951900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e74b797281ea162830289012ea83cfe1e59f93ac0f85f76ad9386dd41305fd30`  
		Last Modified: Wed, 05 Sep 2018 05:24:49 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b0494f0e3c744f09fd327476571006c12f9f6cfc048f97f2c9e6c66999db94`  
		Last Modified: Wed, 05 Sep 2018 05:24:52 GMT  
		Size: 27.5 MB (27500750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d980114df034ef4993a83465524fafa7344b25e19528982353c9cf74bf5f55a`  
		Last Modified: Fri, 21 Sep 2018 19:22:19 GMT  
		Size: 10.3 MB (10341393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ca5fedb825835294e2565cc58d227196127ecc0edc0c281346b26197bc100f`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec1e615d6da0531fe7024d2a969229da3883db973c818a56c5d6a400c3a5c271`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e9a78cfa9a669c16e12c1a9ac682402319955e856326ec083e07081a19b0b25`  
		Last Modified: Fri, 21 Sep 2018 19:22:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6dad79c7b8b87e34a5e1daaf7feb10cbad88e100db107941e83f8794fb278cc`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81bf45b8fd5229e3afde232d882b510fe05c8cdafb7a601bbb654e3f54767b8a`  
		Last Modified: Fri, 21 Sep 2018 19:22:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f290272ddb5f56456b3882a4b2b6f93b851b92c8e7433e7d27489aa99700fd53`  
		Last Modified: Fri, 21 Sep 2018 19:23:17 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191f528c58708d2416177b680923c69beb1685c0f2c73d7fe0f801c204e420b5`  
		Last Modified: Fri, 21 Sep 2018 19:23:19 GMT  
		Size: 7.6 MB (7623256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:f5303690765cafcf06bf200bc88d91988206cf31fe1dfb965c45cac5ab2b1313
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69120818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e3caa41d04ab4619888b24becf69c21faf9a9447ca8eb6456741b24c98e1f64`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:55:26 GMT
ADD file:589b238a5fdfe8cc752d0f1769d0c392a7ac3d1204f9247c4eea21dd805663b0 in / 
# Wed, 05 Sep 2018 08:55:26 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:45:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:45:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:45:21 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:46:06 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:46:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:46:07 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:46:08 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:58:03 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:58:04 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:58:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:58:44 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:58:44 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:58:45 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:58:46 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:58:47 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:58:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:58:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:58:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:58:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:58:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:58:52 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:59:10 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:59:32 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:59:32 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:675207fbfe2baab74b37fd78c8be6e05579c046e848f9e9762e048899fa484f1`  
		Last Modified: Wed, 05 Sep 2018 09:04:43 GMT  
		Size: 21.2 MB (21162872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:483021b9c38437adcd233ec231bbe3d5f2262264fdb2cfdd6040e28622abfeed`  
		Last Modified: Wed, 05 Sep 2018 11:49:48 GMT  
		Size: 4.2 MB (4231636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de799b221ef6d17d523a8146fae2f4c5b756afa8dbcde3436ebe67d2cfb3760`  
		Last Modified: Wed, 05 Sep 2018 11:49:46 GMT  
		Size: 4.1 KB (4086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e2b5ada6e33dc5ae042bd4ae10d7d2e5cef590482f162b4fc967c577be9776`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 942.3 KB (942332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65428a380acc7019931c23005421c6f7eacc5c73ae5a77a6340977af268cdb29`  
		Last Modified: Wed, 05 Sep 2018 11:49:45 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4f4592eb0138d0e1a977e797f6b1b1861414b013b17251558a55338917b431`  
		Last Modified: Wed, 05 Sep 2018 11:49:50 GMT  
		Size: 25.0 MB (24988439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9a36e2eac1d50e768d2e155c3fa6eb8e7ed70d329f075619ed2eedb3ce65da4`  
		Last Modified: Sat, 22 Sep 2018 09:00:04 GMT  
		Size: 10.3 MB (10310410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eb90657b133110385ab6178da97ba097dc953c4db394ffff1370ef7f0b39b59`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 2.3 KB (2258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d42d8ba2e5a411d9a0e012ae3d4b234f938de9cbba8993655cd48317a78d8108`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9767a7551c4b2ee7f7101af8e55721ce83af6c18e25606d15095e146108ad04a`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859bd681e58f37404c3814d419985804f6fd270b5f056d568fce48e2e1d6ffbd`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a722bdd44282ba09454c487b7c111669310847853a6f817ec1e002625cf1ead`  
		Last Modified: Sat, 22 Sep 2018 09:00:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a1332ceb5af448fbb61f0e5ce04fea17c7c697fd68be085cc67659a41239577`  
		Last Modified: Sat, 22 Sep 2018 09:00:48 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563761b3da829e663850b495b9c438bd60379087eb4174f51fd39ce5588a4f8a`  
		Last Modified: Sat, 22 Sep 2018 09:00:51 GMT  
		Size: 7.5 MB (7473660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:431e006e72d705dd7c4f127028311a1b1599df350afde3ea6a2650931599d4c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68164651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c555744928dd03693e679a134f4f32e7f982349fa1593718669cadcca2ccf9b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:51:48 GMT
ADD file:11982f247d3c0dc005ade5290cf65e3e0f9d4a64f141d4d63317af8680ef094a in / 
# Wed, 05 Sep 2018 08:52:05 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 17:59:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:59:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 17:59:53 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 18:01:08 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 18:01:10 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 18:02:48 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 18:02:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 18:02:49 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 18:02:50 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:51:38 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:51:47 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:51:48 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:52:43 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:52:49 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:52:49 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:52:51 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:52:52 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:53:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:53:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:53:14 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:53:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:53:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:53:26 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:53:27 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:54:01 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:54:37 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:54:38 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:8d586fc7919319b234c6d8676e8dc3baa39e4edf195a2dec935bdaeeb0862163`  
		Last Modified: Wed, 05 Sep 2018 09:09:38 GMT  
		Size: 20.3 MB (20331641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3e37db5cf675e4afee42d261d405850f9661011376c9e32dcf161b994b5784`  
		Last Modified: Wed, 05 Sep 2018 18:10:27 GMT  
		Size: 4.1 MB (4073269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a489138492c1c3398d5e832adb250d71806f6d1c1ee77f0d4386d242770e4f5`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 4.1 KB (4083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a786d0df6cef56007fb33342e229dc469e545f3fbd266b4b427d1fcd6f265084`  
		Last Modified: Wed, 05 Sep 2018 18:10:25 GMT  
		Size: 919.2 KB (919245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8290a5f844dc24fafb21b0cc2eefa710b721caab388788f0f84fb6c5304125`  
		Last Modified: Wed, 05 Sep 2018 18:10:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacda0a12c7cb0992a5d95f75099782e66e2f4561cfa697f95a32df5c592bc68`  
		Last Modified: Wed, 05 Sep 2018 18:10:30 GMT  
		Size: 25.0 MB (25045917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cf4ae8997417961ed19100842c7e6c280e4c623403e85c0047ae7cbdfa9208`  
		Last Modified: Sat, 22 Sep 2018 08:59:14 GMT  
		Size: 10.3 MB (10307125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62359fecc08685998249d40a89ab975841f91f6d7dda13315a83d8f3c7f50ab1`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e7d142bc95a688efcc89d03f06eb191ff71ac493a62059adbe7c8322f301fee`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbfe2ca2db93d20210ba636666631f84f380156d7fa7a98fe93a68cd7d9a366`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868ee8a3aecd0459b8894c132648bdfb8b441130ca853ba2bba585daa25e7412`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0ab2b1147790075787c5b2251cf77110a3da7fa083d1fd2c40e5824d0c25f2`  
		Last Modified: Sat, 22 Sep 2018 08:59:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0966060600a02d135bd1d95fa69313f34a18325cc3c2702f86423a290b961b2`  
		Last Modified: Sat, 22 Sep 2018 09:00:04 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c7c4d3288ee7f0b504ceaf3a731636f036ed45255e7bf7e116e912a769f3ce`  
		Last Modified: Sat, 22 Sep 2018 09:00:06 GMT  
		Size: 7.5 MB (7475982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:471150e80601823c3b9a8fb47ec02831802ed61e95077ea08167f611d5ca8103
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71564161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef86c8e2362adf535eb5879f5a5212f01dd7eb9e1a5029306d64d5876d18429`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 05 Sep 2018 08:19:50 GMT
ADD file:d599fe9ac09b7e23964896f5c79eb1a253ab4cfd9d27e3c409ff87a0cc012a33 in / 
# Wed, 05 Sep 2018 08:19:51 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:31:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:31:34 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 05 Sep 2018 11:31:35 GMT
ENV GOSU_VERSION=1.10
# Wed, 05 Sep 2018 11:32:03 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 11:32:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 05 Sep 2018 11:34:45 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:34:48 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 05 Sep 2018 11:34:51 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:34:54 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:29:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:29:29 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:29:30 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.8-1
# Sat, 22 Sep 2018 08:30:22 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 22 Sep 2018 08:30:25 GMT
ENV LANG=C.UTF-8
# Sat, 22 Sep 2018 08:30:26 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:30:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 22 Sep 2018 08:30:39 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:30:41 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:30:43 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 22 Sep 2018 08:30:55 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:30:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 22 Sep 2018 08:31:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:31:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:31:10 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:31:31 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:31:58 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:32:00 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:92065d7cb20e14e29d25bb528f13bf94b0956f60664782bb1c43ce3192bf762b`  
		Last Modified: Wed, 05 Sep 2018 08:26:35 GMT  
		Size: 22.7 MB (22740533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579e7691721557327e3927ed84719e320cf6617c3acc48457fbe3ecd5d70f853`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 4.4 MB (4360587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2457b86f9cd5532629687ff9153d277b80e5c5c805dfbba681b8a51bc205fcc5`  
		Last Modified: Wed, 05 Sep 2018 11:41:29 GMT  
		Size: 4.1 KB (4105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69a3893e8f4d42d93f333b4f7a04240b2f1f8efe56cbf832b105ae32483ce4`  
		Last Modified: Wed, 05 Sep 2018 11:41:30 GMT  
		Size: 920.5 KB (920546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87de592d09499649ca13a67a2de44d7c46855451105c18148090363fc0cbb78c`  
		Last Modified: Wed, 05 Sep 2018 11:41:28 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd733fc519ab91b0b6f3b8dd93802dcff0937fa8db79069713e23b163526e8`  
		Last Modified: Wed, 05 Sep 2018 11:41:34 GMT  
		Size: 25.4 MB (25378924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70161d40899550476a55bade31bc5e0e735c4ca8803318ed7c1370946c7ebc01`  
		Last Modified: Sat, 22 Sep 2018 08:34:27 GMT  
		Size: 10.3 MB (10325845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ebe8c120af2d5327a3af173abe786ed49f8b73245005b32362fce5c6cba732`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d0bc3e2a4b9cfee255c21e4b04280da963048c8448361528ee06a25584c35e`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d898013a8c86393481ab0469058ec22bb6fe436e1c1a2630a4de118164c6b3d`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2e6de4feb935b3c11825f0894903590e2a6b059e53c3e73faf5f8804936600`  
		Last Modified: Sat, 22 Sep 2018 08:34:23 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5760ba94169f92060fdfb0b4b2923580978c247695bb08c382dae2605ef71196`  
		Last Modified: Sat, 22 Sep 2018 08:34:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:389dd83932053d9aa869f7c2116672991d7567db9225cd0d946fa10c97ded528`  
		Last Modified: Sat, 22 Sep 2018 08:35:33 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eb5f47fc4afe027e048745ab3ce432aee1781fd2a838cee4449e9eff42c76b`  
		Last Modified: Sat, 22 Sep 2018 08:35:37 GMT  
		Size: 7.8 MB (7826228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rabbitmq:management-alpine`

```console
$ docker pull rabbitmq@sha256:6c137bdbdca13b6e20dcbab7cb8171c0282e24d10581f3a19dcd2b3adf74f810
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `rabbitmq:management-alpine` - linux; amd64

```console
$ docker pull rabbitmq@sha256:045bcd514a4d23f3bb897de6f539a503a38c5f18ad693302b0bbc41ffa5aa2e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41562106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe0d284b5ed546b601459f3f351fa629ab0bf2bd93a2211f791138030f155c8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 02:53:52 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 02:53:53 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 02:53:56 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 02:53:56 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:53:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_VERSION=3.7.8
# Fri, 21 Sep 2018 19:21:28 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Fri, 21 Sep 2018 19:21:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Fri, 21 Sep 2018 19:21:33 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Fri, 21 Sep 2018 19:21:34 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 21 Sep 2018 19:21:35 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 21 Sep 2018 19:21:36 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Fri, 21 Sep 2018 19:21:36 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Fri, 21 Sep 2018 19:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Sep 2018 19:21:36 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 21 Sep 2018 19:21:37 GMT
CMD ["rabbitmq-server"]
# Fri, 21 Sep 2018 19:21:49 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 21 Sep 2018 19:21:53 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Fri, 21 Sep 2018 19:21:53 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0839f7c4bc75ca0f7cdac3608503344e6b4aceeaf40ca2808d0c5eb577ae49`  
		Last Modified: Wed, 12 Sep 2018 02:55:10 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487ca51e7c431a28e32ee85a8a5626326770d4cc7c6982b6718f2496308bb3f8`  
		Last Modified: Wed, 12 Sep 2018 02:55:09 GMT  
		Size: 9.1 KB (9060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b799497b1c496754f3279b4ea0dfdf1808c34a711408ebdf6b1885f6f34d9bb8`  
		Last Modified: Wed, 12 Sep 2018 02:55:13 GMT  
		Size: 18.7 MB (18709062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37182edcd725512ba66a43c7413e11c6abe61745ec455a1988c43174a6b26925`  
		Last Modified: Fri, 21 Sep 2018 19:24:14 GMT  
		Size: 9.6 MB (9610293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d46aaa928ecec2d1dac9dd832759d30a1bfb28dab8c30efa093051dafe3c7e`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf4e7cafa853217330815ed6cf788f2fce6653fb226a00ae1be943d4f56abf5`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c08ec4a215de07dc5f4c870a2294e4ae818ef1134311b33b12eabc589fc9d9d`  
		Last Modified: Fri, 21 Sep 2018 19:24:15 GMT  
		Size: 105.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1e71b1c518e7aadd4cce1888778672c617a9a80718c5bf1f7a5d5ff9c18215`  
		Last Modified: Fri, 21 Sep 2018 19:24:13 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e65bf69b0767b35e0c02cb6a3ecec4f430bf0ded0b4bb44f6275e3b725fd49`  
		Last Modified: Fri, 21 Sep 2018 19:24:52 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f2a928b6ef5f937e4f2cab0c941602e9e10df16b5177e9b3a70dc8556202f1`  
		Last Modified: Fri, 21 Sep 2018 19:24:56 GMT  
		Size: 11.0 MB (11020659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; arm variant v6

```console
$ docker pull rabbitmq@sha256:a2b41b6e35bc8944672953ee9be9bafc26f20d6e9490576b6015ae289d47ca8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.0 MB (38952654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4912a3780a00f636017b7ec22285b11c480215f5c9148fb6f67b82dab0fcb9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:15:03 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 08:15:04 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 08:15:08 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 08:15:08 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 08:15:09 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:15:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 07:49:31 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 07:49:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 07:49:37 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 07:49:38 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 07:49:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 07:49:40 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 07:49:41 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 07:49:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 07:49:41 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 07:49:42 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 07:49:59 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 07:50:09 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 07:50:10 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9ab7d82bf045d6b83b49344082af7a63d456866771ec60323e02d8ba54d348`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2404cd7746429b5adac001a8efa2a282b5106a8a7c8d2ef2e225eda23e4a69ef`  
		Last Modified: Sat, 15 Sep 2018 09:11:44 GMT  
		Size: 9.0 KB (8987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04b3620c9d7a0f231a2b41fb9ee2016ac2d8bfdfd2ba7917679aa1e2cd0f822`  
		Last Modified: Sat, 15 Sep 2018 09:11:49 GMT  
		Size: 16.3 MB (16308397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a29887a548de2ac179ecd61832fbd472e766477c4b3aa7cff4a0d230566c479`  
		Last Modified: Sat, 22 Sep 2018 07:50:32 GMT  
		Size: 9.6 MB (9601720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d5d2d5cc4b433ad521d9b9f4d3995a29e50fe9a145b9d8d98bd11955d7ea88`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af353bad0a54ab06e651f3fb1537b6c9d5cc20c017c51c04d7735672cac138e`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624e0d38fb780816b21f097f227b53e86aacf4a272948e659b23c40ac86007bd`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bcce22d98cb3045f9edc61ff44926f9ca03a0dcfb0ee50b0f5c5071cbb4ed55`  
		Last Modified: Sat, 22 Sep 2018 07:50:31 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f32aa0580787db67b407557e59c97438915e6fb9bdbdb4b92a25422db52edc3`  
		Last Modified: Sat, 22 Sep 2018 07:50:54 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51bdb320194c15a1a05c6c05c0ad095e2c94f82073e99ec5c2b84cd8021180a1`  
		Last Modified: Sat, 22 Sep 2018 07:50:58 GMT  
		Size: 10.9 MB (10880738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:c4ffd708da99d1d51e1fb3be051041f805584b2da224895d235964c84706ecdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.8 MB (38849006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22baa886845395b5af750b68c98608ec4e8e789965554f4e7e8e6970627c1141`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 22 Sep 2018 08:55:17 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Sat, 22 Sep 2018 08:55:19 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Sat, 22 Sep 2018 08:55:34 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 22 Sep 2018 08:55:40 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Sat, 22 Sep 2018 08:55:41 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 22 Sep 2018 08:55:42 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:55:52 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:56:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:56:01 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:56:03 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:56:04 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:56:05 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:56:08 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:56:09 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:56:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:56:10 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:56:11 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:56:49 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:57:04 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:57:10 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9855a7536b42bdcc9774489c4e1e9b8ee79a04e7abb5de9a61878f0870cbfc1`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 1.3 KB (1274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8ae4b960c46131b8c15e06d3fd15a734a2737404ae494ca98a9973bb8e3fcb`  
		Last Modified: Sat, 22 Sep 2018 09:00:59 GMT  
		Size: 8.9 KB (8944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e020a68ecb622c4ef5b488b3fd801d8b0a903b0b593a7d653f544775add7`  
		Last Modified: Sat, 22 Sep 2018 09:01:03 GMT  
		Size: 16.3 MB (16285564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485ad31f9447e87fdaffd18fc3bc83b5c59d764f89bfb3696e91749f9281d5de`  
		Last Modified: Sat, 22 Sep 2018 09:00:58 GMT  
		Size: 9.6 MB (9601164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476af5da395239e47879eff2e8ba1681b6af40218d29ceed8be4aa1bfd56c39b`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 204.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3351fe81eb63ac3194a322bee4b9d0b7da0df23eac261860ad69d320709bef0d`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e687bdb217e857ecd717e1aca6b6808973af3c67cbb1f78f49dd9e72c95640`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bc01c7ad324ea3bcdab6e82cb32f15cac03aea1c042bba3cbedce937f00fab0`  
		Last Modified: Sat, 22 Sep 2018 09:00:57 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45d3d606a94a8e900bfcb45ace22391114ad7fbc5c31cbbeca5d1e7846314b8f`  
		Last Modified: Sat, 22 Sep 2018 09:01:52 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e78e3d156b154ad43993991cbfc249f8c3476281ed5f2941091b060c260f9c1`  
		Last Modified: Sat, 22 Sep 2018 09:01:58 GMT  
		Size: 10.8 MB (10847291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management-alpine` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:859c0191f3f082e4f8dfcddd49da74fa9a9b4adc7cef71a5fefae54ea7036e61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39322974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dac40104080dbde3443b9ad5370b25317a867789670506da84f31549406a135`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:32:06 GMT
RUN addgroup -S rabbitmq && adduser -S -h /var/lib/rabbitmq -G rabbitmq rabbitmq
# Wed, 12 Sep 2018 11:32:12 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 12 Sep 2018 11:32:21 GMT
RUN apk add --no-cache 		bash 		procps 		erlang-asn1 		erlang-hipe 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang 		erlang-os-mon 		erlang-public-key 		erlang-sasl 		erlang-ssl 		erlang-syntax-tools 		erlang-xmerl
# Wed, 12 Sep 2018 11:32:22 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 12 Sep 2018 11:32:24 GMT
ENV RABBITMQ_HOME=/opt/rabbitmq
# Wed, 12 Sep 2018 11:32:25 GMT
ENV PATH=/opt/rabbitmq/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:32:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 22 Sep 2018 08:32:43 GMT
ENV RABBITMQ_VERSION=3.7.8
# Sat, 22 Sep 2018 08:32:44 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.8
# Sat, 22 Sep 2018 08:32:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		ca-certificates 		gnupg 		libressl 		wget 		xz 	; 		wget -O rabbitmq-server.tar.xz.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz.asc"; 	wget -O rabbitmq-server.tar.xz     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server-generic-unix-${RABBITMQ_VERSION}.tar.xz"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.tar.xz.asc rabbitmq-server.tar.xz; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$RABBITMQ_HOME"; 	tar 		--extract 		--verbose 		--file rabbitmq-server.tar.xz 		--directory "$RABBITMQ_HOME" 		--strip-components 1 	; 	rm -f rabbitmq-server.tar.xz*; 		grep -qE '^SYS_PREFIX=\$\{RABBITMQ_HOME\}$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	sed -ri 's!^(SYS_PREFIX=).*$!\1!g' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 	grep -qE '^SYS_PREFIX=$' "$RABBITMQ_HOME/sbin/rabbitmq-defaults"; 		apk del .build-deps
# Sat, 22 Sep 2018 08:32:57 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 22 Sep 2018 08:32:59 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq /var/log/rabbitmq
# Sat, 22 Sep 2018 08:33:00 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 22 Sep 2018 08:33:13 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 22 Sep 2018 08:33:15 GMT
RUN ln -sf "$RABBITMQ_HOME/plugins" /plugins
# Sat, 22 Sep 2018 08:33:16 GMT
COPY file:03f4165e1aefa09a8d97a5e402638f735384652cec9e89f399f563063d59ab58 in /usr/local/bin/ 
# Sat, 22 Sep 2018 08:33:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 22 Sep 2018 08:33:18 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 22 Sep 2018 08:33:18 GMT
CMD ["rabbitmq-server"]
# Sat, 22 Sep 2018 08:33:37 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 22 Sep 2018 08:33:43 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apk add --no-cache python; 	rabbitmqadmin --version
# Sat, 22 Sep 2018 08:33:44 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da9690f1f749a7f0b179eb76f9cc4ebcc64b209d5e28215bb0b7c34b7dcd4c86`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf99cc7ead890ac43c261cd845b9158794d9a5ea0df4e1b8baa5f584f3e5045`  
		Last Modified: Wed, 12 Sep 2018 11:35:31 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8dcc93812fc0b7d5834d65e6589d35279fba3160ba5a65182ae12d3f0eb9d6`  
		Last Modified: Wed, 12 Sep 2018 11:35:37 GMT  
		Size: 16.5 MB (16486759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a947879a4415212cdd2d12b785c16e26edc0979d7724d0662127639f69f6f23b`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 9.6 MB (9602131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8d3beb7645cd509c84c1eb5c9d05fb12e708c6f09d0af854436de90681a2b6`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bee1fb084188df9bc42f84a521c287d1ecc584bb28279f9b9720844d70df8243`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9359a0174d4a84100a84ff4b192f2f4e1ad614fa6efbc6e1326f37326360b69e`  
		Last Modified: Sat, 22 Sep 2018 08:36:48 GMT  
		Size: 107.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df3290cc586183801a8edbfeffe0cf986c4575f9faca3065df93186f8816be6a`  
		Last Modified: Sat, 22 Sep 2018 08:36:50 GMT  
		Size: 4.2 KB (4177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c10b6db18368b3f4554b0b06b22b8170da03d9d9c7e1c79a5e842217108677a6`  
		Last Modified: Sat, 22 Sep 2018 08:37:53 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7e552f3cdd79bfc98cf5e0afe33cc66d5d0d9b14cb6f99c1759d5573ce597d`  
		Last Modified: Sat, 22 Sep 2018 08:38:00 GMT  
		Size: 11.0 MB (11022993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
