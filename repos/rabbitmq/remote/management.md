## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:08d2594a4ddb3aa3ac6be9c4420677c423aaf775553b77c67c503535f35805e2
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

### `rabbitmq:management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:62df1593c38a2fb518895c0e9402230be77e4249f08c91e2acc73f68a6fdcbbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73385816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df80af9ca0c9dfba0a267a707f6f517929a3c49679390e70b66c32d23f48b76a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 05:08:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 05:08:56 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jul 2018 05:08:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 31 Jul 2018 17:26:50 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 31 Jul 2018 17:26:57 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 31 Jul 2018 17:27:25 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:27:33 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 31 Jul 2018 17:27:34 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 31 Jul 2018 17:27:34 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 31 Jul 2018 17:27:34 GMT
ENV RABBITMQ_VERSION=3.7.7
# Tue, 31 Jul 2018 17:27:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Tue, 31 Jul 2018 17:27:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Tue, 31 Jul 2018 17:28:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 31 Jul 2018 17:28:06 GMT
ENV LANG=C.UTF-8
# Tue, 31 Jul 2018 17:28:06 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 31 Jul 2018 17:28:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 31 Jul 2018 17:28:22 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 31 Jul 2018 17:28:23 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 31 Jul 2018 17:28:24 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 31 Jul 2018 17:28:25 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:28:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 31 Jul 2018 17:28:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:28:27 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 31 Jul 2018 17:28:28 GMT
CMD ["rabbitmq-server"]
# Tue, 31 Jul 2018 17:29:07 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 31 Jul 2018 17:29:25 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 31 Jul 2018 17:29:26 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab96a756674d6fbcb8befe799edf35b35baf3b4f710da17d04c231913ae4ddeb`  
		Last Modified: Tue, 17 Jul 2018 05:13:27 GMT  
		Size: 4.5 MB (4498548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afa3c8b1ac8d1dca40c1f11cac5ed8bf1634214b2af876a49e147c201a6a010`  
		Last Modified: Tue, 17 Jul 2018 05:13:23 GMT  
		Size: 4.1 KB (4069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6ac301ca22000615fcd45abffcce2fa47cfdc917adea570192ed92188241b1`  
		Last Modified: Tue, 31 Jul 2018 17:34:46 GMT  
		Size: 951.9 KB (951890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665d14f5b3ec3d1362c7d7d68816aefeb9e0ae750d6dd82cd0b6d494b0438d32`  
		Last Modified: Tue, 31 Jul 2018 17:34:46 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8c7fea479bc6c4f555b0111251fd980052c087ddad8e81069ddbb7fd8542c4e`  
		Last Modified: Tue, 31 Jul 2018 17:34:51 GMT  
		Size: 27.5 MB (27499898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f57b98898fc80113a2ffdd7c6d09a27e0711e18ab5eb2e387f57a0c70fb2f50`  
		Last Modified: Tue, 31 Jul 2018 17:34:47 GMT  
		Size: 10.3 MB (10315414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c57de6ff1fdaef9550d687bb3ac4665ab2ffb539f222c7b31c6930690c8fd35b`  
		Last Modified: Tue, 31 Jul 2018 17:34:43 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb20b6079db39cec90138165d6ee3f8f2220957b10c552460fdb657d6bfb96dc`  
		Last Modified: Tue, 31 Jul 2018 17:34:43 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfcd2c7011de9eea737d037fbb7393b59a4d6a64bec60441781d2aa5d4a672e5`  
		Last Modified: Tue, 31 Jul 2018 17:34:43 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71a3874699ee66d3bba45babb25bb20ddfd96ca81f12387663f47c1a2aa7ea8a`  
		Last Modified: Tue, 31 Jul 2018 17:34:43 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b914bcc4a84d54fae2c673dd46520cf0b3baea54786220a9b2ff1a98715e372`  
		Last Modified: Tue, 31 Jul 2018 17:34:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63e1b988a2ddd87003891f4260289d438c19270fb5177b3cd0dadef56b877b5`  
		Last Modified: Tue, 31 Jul 2018 17:36:20 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39cb8f0eaed2861797ee71f21380d4a7a41a1620cf1cd45bf38e39e26850eec`  
		Last Modified: Tue, 31 Jul 2018 17:36:23 GMT  
		Size: 7.6 MB (7622708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:f180a001e76a2446ebea54d44268e665b715e79eb3bd70e7a9b293dd6f34bb38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69094921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5066bec309443b2449c50068498eab1b566980fa30ab93d90cccde8a7ac7b37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 17 Jul 2018 08:56:27 GMT
ADD file:60830ba735048c6cbecbc75b83364ad442e1e5ee691ef74dad4eb07f720f8919 in / 
# Tue, 17 Jul 2018 08:56:29 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 11:49:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:49:48 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jul 2018 11:49:48 GMT
ENV GOSU_VERSION=1.10
# Wed, 01 Aug 2018 09:25:10 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 01 Aug 2018 09:25:11 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 01 Aug 2018 09:25:52 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 09:25:52 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 01 Aug 2018 09:25:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 01 Aug 2018 09:25:53 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 01 Aug 2018 09:25:53 GMT
ENV RABBITMQ_VERSION=3.7.7
# Wed, 01 Aug 2018 09:25:53 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Wed, 01 Aug 2018 09:25:54 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Wed, 01 Aug 2018 09:26:29 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 01 Aug 2018 09:26:29 GMT
ENV LANG=C.UTF-8
# Wed, 01 Aug 2018 09:26:29 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 01 Aug 2018 09:26:30 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 01 Aug 2018 09:26:30 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 01 Aug 2018 09:26:31 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 01 Aug 2018 09:26:32 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 01 Aug 2018 09:26:32 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Wed, 01 Aug 2018 09:26:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 01 Aug 2018 09:26:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 01 Aug 2018 09:26:34 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 01 Aug 2018 09:26:34 GMT
CMD ["rabbitmq-server"]
# Wed, 01 Aug 2018 09:26:57 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 01 Aug 2018 09:27:17 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 01 Aug 2018 09:27:18 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:235e2c34c6b727f2b00aae7eed907f84338b4002c487e0caaa123a50334c0810`  
		Last Modified: Tue, 17 Jul 2018 09:09:00 GMT  
		Size: 21.2 MB (21162647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8540b795e8a7c6c38d50f1474874abda462d019ab396c11bdf7090dd4f9e7f9a`  
		Last Modified: Tue, 17 Jul 2018 11:54:32 GMT  
		Size: 4.2 MB (4231655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998bdb1e59dc31e37e201a8e04826f4e6997a840c7c858f00ffd223751749940`  
		Last Modified: Tue, 17 Jul 2018 11:54:30 GMT  
		Size: 4.1 KB (4086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0c872e70fe5123eb7400d1589332284a056cd0e3edceb81c7ecf5b89d11ab1`  
		Last Modified: Wed, 01 Aug 2018 09:29:14 GMT  
		Size: 942.4 KB (942395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7b259fccee7091bea15261f56ac8139ce346331133979f64da91e0e02bcc11`  
		Last Modified: Wed, 01 Aug 2018 09:29:12 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80c75f0c94cbe72ab20b20beb091fdd4c9f97b70742ddd549b549986ce747ab`  
		Last Modified: Wed, 01 Aug 2018 09:29:17 GMT  
		Size: 25.0 MB (24988459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3161b273a0d8e422311b022cb5d8ba787bd688a7072a732394f75cc3996a83af`  
		Last Modified: Wed, 01 Aug 2018 09:29:14 GMT  
		Size: 10.3 MB (10285203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4ae5c5ea13f1a4f6768e7706ff05662852ff7c00182e6e0b61d530c80ec4da`  
		Last Modified: Wed, 01 Aug 2018 09:29:12 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8321df0b137fe402792f1186f5b9c88a019e256e2ec4c485463d72e9f5b54b`  
		Last Modified: Wed, 01 Aug 2018 09:29:11 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df98681172352860cc533d703765f0679b0bdb2e6e21fe515bc3c547b8bb76ef`  
		Last Modified: Wed, 01 Aug 2018 09:29:11 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f583dca8e9d551609038b1b197b49f34ed7f9ebb582679831886c76c1bc08c88`  
		Last Modified: Wed, 01 Aug 2018 09:29:11 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fa9e193924d424c7736edc0dfdda51366aa993ac276a90dfdbfcb3d1276d902`  
		Last Modified: Wed, 01 Aug 2018 09:29:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5cb51aa184e5dcffc7e7859af3fd9e6532364cf3fd4fca2a591a6d845fc76b`  
		Last Modified: Wed, 01 Aug 2018 09:29:39 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3484aa1465d1bfe51dae6630b15ba237fb0664de4b468567984c6730d2fb57`  
		Last Modified: Wed, 01 Aug 2018 09:29:42 GMT  
		Size: 7.5 MB (7473091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:3aa078e9cc69269298fe9315e14a667cd1808c06791d813f5d1f4ab569796192
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66213750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04cc824d535fdaf384233dee9c8ed06c3f2de39085a8d051f42e072a5b3d1d3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 17 Jul 2018 12:06:02 GMT
ADD file:00cfe29a37b88b6eacba9ac7c46483798b55e0aaaa9a4a3cbbd097606fd23268 in / 
# Tue, 17 Jul 2018 12:06:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 15:47:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:47:05 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jul 2018 15:47:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 15:47:20 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 15:47:23 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 17 Jul 2018 15:48:00 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:48:01 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jul 2018 15:48:01 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:48:02 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 17 Jul 2018 15:48:02 GMT
ENV RABBITMQ_VERSION=3.7.7
# Tue, 17 Jul 2018 15:48:03 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Tue, 17 Jul 2018 15:48:03 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Tue, 17 Jul 2018 15:48:32 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:48:33 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 15:48:33 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jul 2018 15:48:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jul 2018 15:48:35 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jul 2018 15:48:36 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jul 2018 15:48:37 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 17 Jul 2018 15:48:38 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 17 Jul 2018 15:48:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 15:48:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 15:48:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jul 2018 15:48:41 GMT
CMD ["rabbitmq-server"]
# Tue, 17 Jul 2018 15:49:06 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 17 Jul 2018 15:49:27 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 17 Jul 2018 15:49:28 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:e07de503944f9c1ea958f38d01af058a6e01c94d6df8bf8af06ed73fcf57793e`  
		Last Modified: Tue, 17 Jul 2018 12:18:34 GMT  
		Size: 19.3 MB (19270183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93eccf0393bb25da8d04c712dac608c0a8df8b76ed7af505ba855e4ed02869`  
		Last Modified: Tue, 17 Jul 2018 15:51:27 GMT  
		Size: 3.9 MB (3868688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14978e5687ef96cbb16fbce9b5cb431b934c25bd4ca2236fbee5b34d75cfe6c7`  
		Last Modified: Tue, 17 Jul 2018 15:51:25 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a34a3b480871f00540792d1565c8a0d510aff0346d5d775627f564ec4f3ac00d`  
		Last Modified: Tue, 17 Jul 2018 15:51:25 GMT  
		Size: 926.0 KB (926002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb2a5d90d7496f561deac7c2b089f978d8061dc040ac312d4246029b316dce1`  
		Last Modified: Tue, 17 Jul 2018 15:51:25 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed69ab806ad3b98c4c9d1b7071ccc4af9393c2792225086926b246b480089e2`  
		Last Modified: Tue, 17 Jul 2018 15:51:29 GMT  
		Size: 24.7 MB (24696266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f8525ea3dd5931b0c5cd37798d8350f5ee84c2259b1e1d609e406745ead5a3`  
		Last Modified: Tue, 17 Jul 2018 15:51:26 GMT  
		Size: 10.3 MB (10258323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a760dcaf6fb7c8dd1c9bcd839c58b04b42904e93482ce67af1e45d273e8621d8`  
		Last Modified: Tue, 17 Jul 2018 15:51:23 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe83e1ed3f0503be1e8f81a123c9ee463461db77e9388876c5382ce154a778c`  
		Last Modified: Tue, 17 Jul 2018 15:51:23 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bec545e4ef94401eca0f08f598fbbaeda2c579ec9d328431c1699d6373bd53ab`  
		Last Modified: Tue, 17 Jul 2018 15:51:24 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e361a9ceeb4638b22c16eb7d3a4291145a344613d1286f5e7215837ac4dc5a31`  
		Last Modified: Tue, 17 Jul 2018 15:51:23 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b47717ef7acc2038330e099b4a1de790baa0740a479d9ec9303c06ab9036d56`  
		Last Modified: Tue, 17 Jul 2018 15:51:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3765bb3d21b1ad4337df52bd1dee18c304b63868859af8f0689559fc3d9cb5a8`  
		Last Modified: Tue, 17 Jul 2018 15:52:16 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1835b7021cc703b1f67caa3fda620ae5c657e5009eac71924f12c3ef62bc472d`  
		Last Modified: Tue, 17 Jul 2018 15:52:18 GMT  
		Size: 7.2 MB (7182816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:1a5534a3548af7e36b474fe3d1f6402c0ac30df46f43aae79d58c725c54ec799
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.0 MB (68014342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95b88c341554f371e913a1a9141bb6e1cc308d3f39323eef7830aec1285adf33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 17 Jul 2018 08:48:06 GMT
ADD file:b6ea996ffd5aa4dade8cb1d721c2716614c03110d98683aca206c7ab52fcb9e5 in / 
# Tue, 17 Jul 2018 08:48:07 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 16:29:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:29:21 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jul 2018 16:29:22 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 16:29:54 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 16:29:56 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 17 Jul 2018 16:31:04 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:31:06 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jul 2018 16:31:07 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 16:31:09 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 17 Jul 2018 16:31:10 GMT
ENV RABBITMQ_VERSION=3.7.7
# Tue, 17 Jul 2018 16:31:11 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Tue, 17 Jul 2018 16:31:12 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Tue, 17 Jul 2018 16:32:28 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 16:32:29 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 16:32:30 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jul 2018 16:32:34 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jul 2018 16:32:35 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jul 2018 16:32:39 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jul 2018 16:32:42 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 17 Jul 2018 16:32:44 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 17 Jul 2018 16:32:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 16:32:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 16:32:52 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jul 2018 16:32:54 GMT
CMD ["rabbitmq-server"]
# Tue, 17 Jul 2018 16:33:30 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 17 Jul 2018 16:34:14 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 17 Jul 2018 16:34:15 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:74a932489409d8d15db14c8a4a811fb46c7386bb06ea678ff27084d5657eeaaf`  
		Last Modified: Tue, 17 Jul 2018 08:57:35 GMT  
		Size: 20.3 MB (20331647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a59efad40e5fb26d41e7a913c5b2f4e49489de7c23c8fdbdcb3a4f46ea7999`  
		Last Modified: Tue, 17 Jul 2018 16:38:20 GMT  
		Size: 4.1 MB (4073273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc7107facb5e3c5ae6928aa3c4b8d48369a2b1572299f4bb82a5cab6c19cc85`  
		Last Modified: Tue, 17 Jul 2018 16:38:18 GMT  
		Size: 4.1 KB (4084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054da01ea9b06eb73674a8f75b449c66372dcec9f54b05bd62ffdb7fdcfb3cbd`  
		Last Modified: Tue, 17 Jul 2018 16:38:17 GMT  
		Size: 919.2 KB (919234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:173deb4ab90a67fb89351257ab8e7aef5327e80a3fc08406a200826cfaf83700`  
		Last Modified: Tue, 17 Jul 2018 16:38:17 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5004ff27f1837ec51132e84061fc954ab8c7b4965a2c66dd8712e027f30a59`  
		Last Modified: Tue, 17 Jul 2018 16:38:23 GMT  
		Size: 24.9 MB (24923684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57bf5d7197aa27384004b485ea1868f5aa6f898c4aaa4dd6403b9e5eb47ad3ed`  
		Last Modified: Tue, 17 Jul 2018 16:38:18 GMT  
		Size: 10.3 MB (10279676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f43a61402bbc6c9c253a8afd33d578089784556fe0daa864ad7e760137b7fd4`  
		Last Modified: Tue, 17 Jul 2018 16:38:13 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b3baf89f643be75e9da2c313d3b47da145eb5cb841744fbb626ef43fff0da8`  
		Last Modified: Tue, 17 Jul 2018 16:38:13 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c6007fa54bff071c26978cbdacb703a16af9fb0202d14912775fbad05e8ee8`  
		Last Modified: Tue, 17 Jul 2018 16:38:13 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d66eae3a26d6823cde5a5aee95d36c727b3134ca78ea1f415c6b7ae77dab19`  
		Last Modified: Tue, 17 Jul 2018 16:38:13 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a975749b5b1eab95b544ba271d211b5fc135af27c4dca115a199fd30f92292`  
		Last Modified: Tue, 17 Jul 2018 16:38:13 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3930eaeeb7bdd98e4a19d92387bde6cc48574e1f061a95de163cc6d925cb6ff0`  
		Last Modified: Tue, 17 Jul 2018 16:39:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ae32daa32265e8f6df180f05ddcc254d8224f09cb7b9524a4f6e25c4a85a967`  
		Last Modified: Tue, 17 Jul 2018 16:39:23 GMT  
		Size: 7.5 MB (7475358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; 386

```console
$ docker pull rabbitmq@sha256:2fe117a1e844b7a72a1823dfe8222857819fe2d9f6a5e6b93c702372e80b08b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74627150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58f2b0568e0e976ec9b799212e78fceeb50f541f59db9c25cb0928b2c755dac3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 17 Jul 2018 10:50:00 GMT
ADD file:14cbcb91de201f648f46b04170dcae29163968a641f94d6ad7c3d77fc707a890 in / 
# Tue, 17 Jul 2018 10:50:03 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 17:34:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:34:31 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jul 2018 17:34:31 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 17:34:53 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 17:34:54 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 17 Jul 2018 17:35:40 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:35:40 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jul 2018 17:35:41 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 17:35:41 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 17 Jul 2018 17:35:41 GMT
ENV RABBITMQ_VERSION=3.7.7
# Tue, 17 Jul 2018 17:35:41 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Tue, 17 Jul 2018 17:35:41 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Tue, 17 Jul 2018 17:36:22 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:36:22 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 17:36:22 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jul 2018 17:36:23 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jul 2018 17:36:24 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jul 2018 17:36:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jul 2018 17:36:26 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 17 Jul 2018 17:36:26 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 17 Jul 2018 17:36:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 17:36:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 17:36:28 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jul 2018 17:36:28 GMT
CMD ["rabbitmq-server"]
# Tue, 17 Jul 2018 17:36:51 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 17 Jul 2018 17:37:07 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 17 Jul 2018 17:37:07 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:9f3675ed6653666b64ffa6c3dc93755d10c6f906a1cab9f061cdbe09c65323f4`  
		Last Modified: Tue, 17 Jul 2018 11:09:22 GMT  
		Size: 23.1 MB (23126377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89642160d4fbf6e009f008e93db36c6ebbedd62743e4739524fd730674ed748`  
		Last Modified: Tue, 17 Jul 2018 17:39:17 GMT  
		Size: 4.8 MB (4803941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a1fb1d11cf627fc3f4906f1d529ee97654f71a0c569881f5072d36b93a6f07`  
		Last Modified: Tue, 17 Jul 2018 17:39:13 GMT  
		Size: 4.1 KB (4060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc1024d827df05c3cd7142938306c562709e28d09f249cec7f5b6cd810a974a4`  
		Last Modified: Tue, 17 Jul 2018 17:39:13 GMT  
		Size: 931.4 KB (931408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cef351ad96821309ba91ec2e4bb631cc097eebc0b6ca013429345c5417c2029`  
		Last Modified: Tue, 17 Jul 2018 17:39:13 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2dd2f6ea8f5a2ab4dbed7e6097294cc371354f8cf1eeca09dee73775c330187`  
		Last Modified: Tue, 17 Jul 2018 17:39:19 GMT  
		Size: 27.7 MB (27702846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbfb6355402412768eb2653e0cc4263d237144054b3221c09cd808d6cafe755`  
		Last Modified: Tue, 17 Jul 2018 17:39:16 GMT  
		Size: 10.3 MB (10336594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe8ebf1ca61c39ff78f1e7c2ccc8a64f07c060a949cdcc7e10a03e4a9c95d722`  
		Last Modified: Tue, 17 Jul 2018 17:39:10 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac894a71f31a2e1204956a83e9454f903b71602786bd7a3a24cc96438cbac06c`  
		Last Modified: Tue, 17 Jul 2018 17:39:10 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffac85212aff59b17331f045c003cd5542408e091ff0c604d9d6031db8dcbdc8`  
		Last Modified: Tue, 17 Jul 2018 17:39:10 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9647bd96cca921d5d1128ec74ade0cda0c661cb7a6db10384091043888fcffe`  
		Last Modified: Tue, 17 Jul 2018 17:39:10 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:751fa7aa4300457cbf0986463efbffeba742c104b097d539c288b24146bff122`  
		Last Modified: Tue, 17 Jul 2018 17:39:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b45ec20501f239fd4b9d8f830303f0fa935fb7eb0f28c61d87185c6e9647c41`  
		Last Modified: Tue, 17 Jul 2018 17:40:28 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdd692bc069e128b6b6e6db74dd71bb241706a77912b3390f2a3eb9fa41a81c6`  
		Last Modified: Tue, 17 Jul 2018 17:40:32 GMT  
		Size: 7.7 MB (7714539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:4dc255cef5095525aed3a45f1dfcd60867bab282e29047ff4dcdff8f48ac2c1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71362521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:965cbb23aa7ce7b2e2598bd10fa588dc78c5226e7aa184adc056941c473e3cdf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 17 Jul 2018 08:20:29 GMT
ADD file:d8fd3ee34d99a5bb7abafecc4f8991a3de0ad779e8fd8f3ebb33a4811ecfd5a5 in / 
# Tue, 17 Jul 2018 08:20:30 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:33 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jul 2018 14:34:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 14:35:10 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 14:35:12 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 17 Jul 2018 14:36:25 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:36:27 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jul 2018 14:36:29 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:36:30 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 17 Jul 2018 14:36:32 GMT
ENV RABBITMQ_VERSION=3.7.7
# Tue, 17 Jul 2018 14:36:34 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Tue, 17 Jul 2018 14:36:36 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Tue, 17 Jul 2018 14:37:47 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:37:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 14:37:53 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jul 2018 14:37:56 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jul 2018 14:37:57 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jul 2018 14:38:00 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jul 2018 14:38:05 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 17 Jul 2018 14:38:06 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 17 Jul 2018 14:38:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 14:38:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 14:38:13 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jul 2018 14:38:14 GMT
CMD ["rabbitmq-server"]
# Tue, 17 Jul 2018 14:38:41 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 17 Jul 2018 14:39:23 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 17 Jul 2018 14:39:25 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:6dc0c10e32a730b4a6b92aaa59148a751864a834dc8ac1b0032717f378efc701`  
		Last Modified: Tue, 17 Jul 2018 08:26:26 GMT  
		Size: 22.7 MB (22740445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aac2948a99284b0ce44c011069b2b7e92e94faa37cfd97636f33eec41ab762b`  
		Last Modified: Tue, 17 Jul 2018 14:45:45 GMT  
		Size: 4.4 MB (4360653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239075cb9f3b9e43a7ccea9b473ebca4bef7f45fd0bc42f70d142ffee15fd447`  
		Last Modified: Tue, 17 Jul 2018 14:45:43 GMT  
		Size: 4.1 KB (4108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5321addb772d2ae9c7253166c2b3773571318f92f73d62a8ef22f053bb0bb1e0`  
		Last Modified: Tue, 17 Jul 2018 14:45:41 GMT  
		Size: 920.7 KB (920689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fd7c861251fcfc17a3f1a96f5c17d044e62f19290f0abae572c237ef9607d5`  
		Last Modified: Tue, 17 Jul 2018 14:45:41 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f2facbf1fdc655bd195e5a81758b2b2e2865f9d63cbdf2d4acdf1bc7f66c7a`  
		Last Modified: Tue, 17 Jul 2018 14:45:41 GMT  
		Size: 25.2 MB (25204345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9401e3c8698a773da4c3be41a849304abe70574ec68b5a43606ccae7c9950bd2`  
		Last Modified: Tue, 17 Jul 2018 14:45:36 GMT  
		Size: 10.3 MB (10299083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d621db22f61562526d188fb7d53ab776977964216bfb4b0066da1f1a13c2299d`  
		Last Modified: Tue, 17 Jul 2018 14:45:31 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bc7398252b6ecefb7a9f657feec48f329f41415176e4df8862361d0d567b4e`  
		Last Modified: Tue, 17 Jul 2018 14:45:31 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce00b36a115638832025198215c758b4bb8b31f00586de7a40e72f9a3928fdeb`  
		Last Modified: Tue, 17 Jul 2018 14:45:31 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:573d9345cbdd2c4884c7ca5b6eba457cbe1e6bd7f7d915ff6a5060114fa449c4`  
		Last Modified: Tue, 17 Jul 2018 14:45:31 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c2803457d3f4aa99f2f32e2bf3cbeec06eceb7028f4c7329ad389c2a5a23480`  
		Last Modified: Tue, 17 Jul 2018 14:45:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ee59e0f1e5263fb0c856488bd11af591a21bc0f77a48ed765898abda1fead72`  
		Last Modified: Tue, 17 Jul 2018 14:46:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab88380de40dc4e7bc4f8e6f3e69127e545fde886169a707b3aa1def1662411e`  
		Last Modified: Tue, 17 Jul 2018 14:46:31 GMT  
		Size: 7.8 MB (7825812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:3b33bdc609d82723f7cd1700fb9a44571fe777088276254938538a60aa654da2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70820901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f564123a7f4d48d73001d988f0d772c93c9e8da7ca11e08be29e2917b3709f9e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:35 GMT
ADD file:32e6375c708c1a29a33eef651992d744ae278ef980cfb74086bc899cb8fffdfb in / 
# Tue, 17 Jul 2018 11:43:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:08:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:08:01 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Tue, 17 Jul 2018 14:08:01 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 14:08:14 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 14:08:15 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 17 Jul 2018 14:08:39 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:08:39 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jul 2018 14:08:39 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 14:08:39 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 17 Jul 2018 14:08:40 GMT
ENV RABBITMQ_VERSION=3.7.7
# Tue, 17 Jul 2018 14:08:40 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Tue, 17 Jul 2018 14:08:40 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Tue, 17 Jul 2018 14:08:59 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:08:59 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 14:08:59 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jul 2018 14:09:00 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jul 2018 14:09:00 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jul 2018 14:09:01 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jul 2018 14:09:02 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 17 Jul 2018 14:09:02 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 17 Jul 2018 14:09:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 14:09:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 14:09:03 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jul 2018 14:09:03 GMT
CMD ["rabbitmq-server"]
# Tue, 17 Jul 2018 14:09:16 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 17 Jul 2018 14:09:26 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 17 Jul 2018 14:09:27 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:f27811d943553766d4449683ea06b6eac1147fe5de5663e94d39150eb2180735`  
		Last Modified: Tue, 17 Jul 2018 11:47:07 GMT  
		Size: 22.3 MB (22334517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fae6e372959464811b89164f9e8284f82a340c01d8efd4049bda9e28c38e662`  
		Last Modified: Tue, 17 Jul 2018 14:11:00 GMT  
		Size: 4.5 MB (4529974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba72b34616c6f4ecf2f9d329b440ee84e8f0e35a360d9f36889986f606848a6`  
		Last Modified: Tue, 17 Jul 2018 14:10:58 GMT  
		Size: 4.1 KB (4074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2905f52a8341715abd4505612b5e12940fd593eb22ccf6c6cb513ac9274e1e20`  
		Last Modified: Tue, 17 Jul 2018 14:10:58 GMT  
		Size: 937.8 KB (937845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4524f46ee625c12e20085cfd3f6715867c1ab722a32ee0017006ba4e9e89d742`  
		Last Modified: Tue, 17 Jul 2018 14:10:58 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d4749c49dd68a794314a644ec37cb30e5bd93628616c4bd42ebda2c8027a4a9`  
		Last Modified: Tue, 17 Jul 2018 14:11:01 GMT  
		Size: 25.1 MB (25100102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384fd68fe9a47ff21b34ee1704b0ce7692a24025d284ed97f357b28cd1bf813e`  
		Last Modified: Tue, 17 Jul 2018 14:10:59 GMT  
		Size: 10.3 MB (10312480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e21ef3de0d4d73dcf30a4c1d30cd6d1420ca562be3cf94a43bf2aba11a1141`  
		Last Modified: Tue, 17 Jul 2018 14:10:57 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d20af40bc60a851c4dd577c750b6decc8dca08c42569dab09214f1a5ab9d57a0`  
		Last Modified: Tue, 17 Jul 2018 14:10:57 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3ea1463f8542c96e8e0e32a2d384cac5fbc0b12b4276aecbf9206c9d46f7e2`  
		Last Modified: Tue, 17 Jul 2018 14:10:57 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283aa912d5a8fd57e04680f44e654e796c202a7cfaee5470769d6b5920e7f93d`  
		Last Modified: Tue, 17 Jul 2018 14:10:57 GMT  
		Size: 4.2 KB (4180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb659f6d1325b0fc5d95a2cd81d64d0044e2ba5ade668e9601f039085a64c107`  
		Last Modified: Tue, 17 Jul 2018 14:10:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae1a5b273ff6faae628b9e0ad6481b9c252395b7e2b3bf5f7eb8b9d661b6192`  
		Last Modified: Tue, 17 Jul 2018 14:11:20 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f2a372e3a576c0e79b82089b39f355d060fcc71532b0bbe9a241f39b68c9a0`  
		Last Modified: Tue, 17 Jul 2018 14:11:22 GMT  
		Size: 7.6 MB (7594529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
