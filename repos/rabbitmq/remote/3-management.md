## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:eb4e4c2b4d8cfac4d142c090d52d02d107aacbe2faf7d3895a2e5bd44c097fdb
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

### `rabbitmq:3-management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:f2ceb6f4bde3fee1bc793dc8d10c738fb4631058353d9bdec384213377cad7b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75820071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d286259089f95200919988172398e9296729698c82dd4e83d65d6af2673c283`
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
# Wed, 02 May 2018 03:32:06 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 02 May 2018 03:32:26 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 03:32:26 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 02 May 2018 03:32:27 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 May 2018 03:32:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 02 May 2018 03:41:22 GMT
ENV RABBITMQ_VERSION=3.7.4
# Wed, 02 May 2018 03:41:22 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Wed, 02 May 2018 03:41:23 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Wed, 02 May 2018 03:41:45 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 03:41:45 GMT
ENV LANG=C.UTF-8
# Wed, 02 May 2018 03:41:45 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 02 May 2018 03:41:46 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 02 May 2018 03:41:47 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 02 May 2018 03:41:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 02 May 2018 03:41:48 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 02 May 2018 03:41:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Wed, 02 May 2018 03:41:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 02 May 2018 03:41:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 02 May 2018 03:41:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 02 May 2018 03:41:51 GMT
CMD ["rabbitmq-server"]
# Wed, 02 May 2018 03:56:30 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 02 May 2018 03:56:40 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 02 May 2018 03:56:41 GMT
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
	-	`sha256:bc632ec8d54c29664311ec416c5500caadf456f0011f2ec51a9ac0ba8c92b5b0`  
		Last Modified: Wed, 02 May 2018 04:15:05 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17b0fb78cd2af25169ef8edc2f9d478db987c6778d264abeabe6845a35bfdd4`  
		Last Modified: Wed, 02 May 2018 04:15:10 GMT  
		Size: 27.4 MB (27403287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b01aa1333909a0bc96200fa03e53ca39d68eb2f5ca6b3412e99631e2e347237`  
		Last Modified: Wed, 02 May 2018 04:17:22 GMT  
		Size: 12.8 MB (12836677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a08f0de5323c86f6546641deb00bc7a156e86eafed152e45906df634ac439c`  
		Last Modified: Wed, 02 May 2018 04:17:17 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54310da8858067b4e7f248d2eb4eb9f757d4750080f18ae2eaa14f0ef7596552`  
		Last Modified: Wed, 02 May 2018 04:17:17 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c0beaf52d68e999821e199ce8893e2f9a81dc84240b5d437aec6a5de3f3ea1`  
		Last Modified: Wed, 02 May 2018 04:17:17 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7622207aa3f2a631abc75e27e31fe8331f3c7dfefd1e8913506110152e537094`  
		Last Modified: Wed, 02 May 2018 04:17:17 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ff1b0c6268d90e2db1344a156a69767a0adb313b5636745d95e015fc730cd2`  
		Last Modified: Wed, 02 May 2018 04:17:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235ffee61c84d79b15166a968e91ce3143ab6ef74a3db1f184a7869f2decc23a`  
		Last Modified: Wed, 02 May 2018 04:39:27 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bc27b82ca98a99918d39e591d2696a197db412c68fa86172dee74eeee31bb1`  
		Last Modified: Wed, 02 May 2018 04:39:29 GMT  
		Size: 7.6 MB (7622218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:c295994d1a0ebd7f7a1dadb5624945b8eb5bb6320d593da8d6a6ec6b1a9625b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71538771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed65fbb120268a47e6f4e53748ff039eeae5eed33b77af01bed028b5d4a3cd00`
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
# Sat, 28 Apr 2018 12:18:06 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Sat, 28 Apr 2018 12:18:42 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:18:43 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 28 Apr 2018 12:18:43 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 12:18:43 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 28 Apr 2018 12:20:11 GMT
ENV RABBITMQ_VERSION=3.7.4
# Sat, 28 Apr 2018 12:20:11 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Sat, 28 Apr 2018 12:20:12 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Sat, 28 Apr 2018 12:20:51 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:20:52 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:20:52 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 28 Apr 2018 12:20:53 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 28 Apr 2018 12:20:54 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 28 Apr 2018 12:20:55 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 28 Apr 2018 12:20:56 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 28 Apr 2018 12:20:57 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:20:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 28 Apr 2018 12:20:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 12:20:59 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 28 Apr 2018 12:21:00 GMT
CMD ["rabbitmq-server"]
# Sat, 28 Apr 2018 12:21:12 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 28 Apr 2018 12:21:32 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 28 Apr 2018 12:21:33 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:710607bfe90739b2476b068a2dc40ab07d5c8fa2322230565ff5a99fbdbaa386`  
		Last Modified: Sat, 28 Apr 2018 12:23:33 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b94148c0d33a3489ce1c213eaec9737ba84bfc284c6ed47847d58e4ff132dd97`  
		Last Modified: Sat, 28 Apr 2018 12:23:39 GMT  
		Size: 24.9 MB (24897815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0922c4dd557bfaa33d063c2a1fadf773fd7d428ec017a36b6e37992050c4eb`  
		Last Modified: Sat, 28 Apr 2018 12:24:15 GMT  
		Size: 12.8 MB (12807367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50d1d52cb7cfaa951c864df98a57b4650dde7a557466a5b41dcd3b646a28e685`  
		Last Modified: Sat, 28 Apr 2018 12:24:12 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c77e668a5644c6bca9b2f136437e84bc7e8f488eab6811b55410e27f4738d2f2`  
		Last Modified: Sat, 28 Apr 2018 12:24:13 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4df7215a183ea1b6eb4419fae87da5d41f40b589fd037da50493c4aad69d7de`  
		Last Modified: Sat, 28 Apr 2018 12:24:12 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b942073a61a847850398a946d8bb4c85c3166ad12df817584170e325bfd5518`  
		Last Modified: Sat, 28 Apr 2018 12:24:12 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b044d334482e7e4f354759db67063e2deebbaa03783983f7b8c06d9168711e4b`  
		Last Modified: Sat, 28 Apr 2018 12:24:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f40faa676789169b7b804415d3904fae778a89f5a49dd31513258fe2e966c6`  
		Last Modified: Sat, 28 Apr 2018 12:24:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8eb2030c5825e0230de261f87274a26f1265934fd7b93761f59b71bfa78b346`  
		Last Modified: Sat, 28 Apr 2018 12:24:43 GMT  
		Size: 7.5 MB (7472389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:aa6a15ee991bcdfb1d605a90ab43f03509cd6625f4b4941bda1f9aa5b24e48d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.7 MB (68652525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2917bea1d8cc38d3ee19495fda479fb5e3fe4a6f5feb2fbf77567ffa1b20bfc2`
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
# Sat, 28 Apr 2018 15:31:30 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Sat, 28 Apr 2018 15:31:56 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:31:57 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 28 Apr 2018 15:31:57 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:31:57 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 28 Apr 2018 15:33:38 GMT
ENV RABBITMQ_VERSION=3.7.4
# Sat, 28 Apr 2018 15:33:39 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Sat, 28 Apr 2018 15:33:39 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Sat, 28 Apr 2018 15:34:06 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:34:06 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 15:34:07 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 28 Apr 2018 15:34:09 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 28 Apr 2018 15:34:09 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 28 Apr 2018 15:34:11 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 28 Apr 2018 15:34:12 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 28 Apr 2018 15:34:13 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:34:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 28 Apr 2018 15:34:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:34:16 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 28 Apr 2018 15:34:17 GMT
CMD ["rabbitmq-server"]
# Sat, 28 Apr 2018 15:34:33 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 28 Apr 2018 15:34:51 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 28 Apr 2018 15:34:52 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:3526a4785ef52631f44aee9daa045a75f93e193f2d115608ddeadb0d001e9503`  
		Last Modified: Sat, 28 Apr 2018 15:36:48 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f315250fab76a8c5ba25cc5ca8597515d6d0f52e0d8bab10128bb3a743beed39`  
		Last Modified: Sat, 28 Apr 2018 15:36:52 GMT  
		Size: 24.6 MB (24599126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8101267dfa49fefbba019cfedfe6a5dded193d3371e84bd5d43c49225cc8f36`  
		Last Modified: Sat, 28 Apr 2018 15:37:44 GMT  
		Size: 12.8 MB (12777767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63177f5ec7b77656c7173d792a5260eb96e3c6416428fc932af1c33d4fb097a`  
		Last Modified: Sat, 28 Apr 2018 15:37:42 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8883ba706a9934d3353dcb5ceb28cf261ca8dfc68e685f60d69523c8c47c694c`  
		Last Modified: Sat, 28 Apr 2018 15:37:41 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dc719bf1438530f221884791ffddec2229e8edb15730b68f6cc1e914faf7f47`  
		Last Modified: Sat, 28 Apr 2018 15:37:41 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ccbe0c89bf01c27f29a56ba943ad2e54e723c988b74ba00bb4e7abd829a20d7`  
		Last Modified: Sat, 28 Apr 2018 15:37:41 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65da977baa916790e354d57d77f44dc0f39e8960ff12c299ba17ada762260b3b`  
		Last Modified: Sat, 28 Apr 2018 15:37:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4602aaf78ae83635e0d5c52acf6289c5c4f55795d8736c970ee6548493f327ae`  
		Last Modified: Sat, 28 Apr 2018 15:38:32 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96ea889a34e483b06cbe9fd171ee37fe94c3425adef6b3376a5b6751bedc4e5d`  
		Last Modified: Sat, 28 Apr 2018 15:38:34 GMT  
		Size: 7.2 MB (7182483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:87185c7891c1f305d281dc9f38dedd65d824f0c760445a4de235362f0fc597a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 MB (70445228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c29a2bc942c482c35a9963e5501f0f7882adc0f8f0d5e504dd891afb751b29c`
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
# Tue, 01 May 2018 12:32:16 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 01 May 2018 12:33:46 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 12:33:49 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 01 May 2018 12:33:53 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 12:33:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 01 May 2018 12:39:18 GMT
ENV RABBITMQ_VERSION=3.7.4
# Tue, 01 May 2018 12:39:20 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Tue, 01 May 2018 12:39:21 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Tue, 01 May 2018 12:40:17 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 12:40:18 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 12:40:19 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 01 May 2018 12:40:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 01 May 2018 12:40:23 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 01 May 2018 12:40:26 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 01 May 2018 12:40:29 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 01 May 2018 12:40:30 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 01 May 2018 12:40:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 01 May 2018 12:40:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 01 May 2018 12:40:35 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 01 May 2018 12:40:36 GMT
CMD ["rabbitmq-server"]
# Tue, 01 May 2018 12:40:58 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 01 May 2018 12:41:31 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 01 May 2018 12:41:34 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:a65e85c7acda2009e86301ca8f7630553f166c811358e1966645e277f62dac27`  
		Last Modified: Tue, 01 May 2018 12:46:07 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d26ab6064ab1914c6d0db1492171116ef3ceee20d32383a59adf7ed040fbd6b5`  
		Last Modified: Tue, 01 May 2018 12:46:17 GMT  
		Size: 24.8 MB (24815356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb25c19f78c22de2d4c7d0dd884f373a50a4d7c7dba9694eb0a18df94b3df2a`  
		Last Modified: Tue, 01 May 2018 12:47:03 GMT  
		Size: 12.8 MB (12802836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497b7ffaf2a67da594a145f67245fc108423ef0f62f5eb22654b39febf897fb3`  
		Last Modified: Tue, 01 May 2018 12:46:59 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b597f89b01a7ca6b74b914d34b364b39792dd4b2ba1c77b4b041f49a2b8fbf33`  
		Last Modified: Tue, 01 May 2018 12:46:59 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a899aac78fb4f3a8b52e72c8e942f77f00d006f19ff9922e432d9ace2296ac95`  
		Last Modified: Tue, 01 May 2018 12:46:59 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf60a33085e603b89d4cee05ef2940ec272aafa94f1770df9c300dd6f2fb516`  
		Last Modified: Tue, 01 May 2018 12:46:59 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a23c0f442ec3733c342a2168be5fb5bf9195aea04768624155e5b363a342019c`  
		Last Modified: Tue, 01 May 2018 12:46:59 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360458a22bac378de544e4b235816f43dcd4f1589bd0c88bf42ba5b56e771667`  
		Last Modified: Tue, 01 May 2018 12:47:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59341ae1e562768832c670785edc42ed2c662a5cb7b9f46fe06c6f9e92fb6bc`  
		Last Modified: Tue, 01 May 2018 12:47:38 GMT  
		Size: 7.5 MB (7474937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; 386

```console
$ docker pull rabbitmq@sha256:18ee2234951c53de705afb0ff2d3c9e27b4dfc5a037b49220412725cdeecce2d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (77045038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:790fd7be5bd5e39470f7d034d8b78e7f881c1493277c9ed5a984b42a7d259da7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:31:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:31:38 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Sat, 28 Apr 2018 14:31:39 GMT
ENV GOSU_VERSION=1.10
# Sat, 28 Apr 2018 14:31:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 14:31:51 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Sat, 28 Apr 2018 14:32:20 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:32:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 28 Apr 2018 14:32:20 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 14:32:20 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 28 Apr 2018 14:34:07 GMT
ENV RABBITMQ_VERSION=3.7.4
# Sat, 28 Apr 2018 14:34:07 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Sat, 28 Apr 2018 14:34:08 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Sat, 28 Apr 2018 14:34:27 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:34:27 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:34:27 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 28 Apr 2018 14:34:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 28 Apr 2018 14:34:28 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 28 Apr 2018 14:34:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 28 Apr 2018 14:34:29 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 28 Apr 2018 14:34:30 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 28 Apr 2018 14:34:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 28 Apr 2018 14:34:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 14:34:31 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 28 Apr 2018 14:34:31 GMT
CMD ["rabbitmq-server"]
# Sat, 28 Apr 2018 14:34:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 28 Apr 2018 14:34:48 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 28 Apr 2018 14:34:48 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a078d14600b62b5740278e8ca9203aeba8fc45c2f38041ff69eadeb86be81c5`  
		Last Modified: Sat, 28 Apr 2018 14:37:18 GMT  
		Size: 4.8 MB (4803837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e53c992a398d4d87de956da1d5302f1d9876c742c16052cf6acbf0b341822b`  
		Last Modified: Sat, 28 Apr 2018 14:37:16 GMT  
		Size: 4.1 KB (4060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba33dc841300feb9200db1a021e32fbf2d38b4b2a4ab17a074dd708ff64d90a9`  
		Last Modified: Sat, 28 Apr 2018 14:37:16 GMT  
		Size: 931.5 KB (931533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d3e0e35bc03b2a6d0c426d310a4a928c697a3b67e77a76bb90bbe951cb7b8c`  
		Last Modified: Sat, 28 Apr 2018 14:37:15 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b5fd4166a23ca6a47c72b245160ae490b39fcbf2c1684915297742cb8c4555a`  
		Last Modified: Sat, 28 Apr 2018 14:37:20 GMT  
		Size: 27.6 MB (27588351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4343d28050bd6b60041c64638ca93d8c4b4edf04c3a6d5c4cf999611a6ac4fa3`  
		Last Modified: Sat, 28 Apr 2018 14:38:22 GMT  
		Size: 12.9 MB (12857553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0f86577a50bb67cb1b01e9830895208296218703b7ac540bad0b68be9bf21b`  
		Last Modified: Sat, 28 Apr 2018 14:38:21 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c52478156519b4f1b27f5d4e497cfc6d6e5b1251e66af1972f2e4a96eedc081`  
		Last Modified: Sat, 28 Apr 2018 14:38:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7106d1bd89faf5a56e0e20e441ab26caf02c7a87d026f985fea06717777ca3`  
		Last Modified: Sat, 28 Apr 2018 14:38:21 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6653effe0064f0340d8d3ef9ae14ef627c3d0e22109bc0aa13f05b104b4ba979`  
		Last Modified: Sat, 28 Apr 2018 14:38:20 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ecba7d08c809deea915517e91af79678d25bd862c0102d810f68733cc6bd67`  
		Last Modified: Sat, 28 Apr 2018 14:38:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:811effd08559b7e4791e64f8e4fc439a525549ff46851a8440c55470a07b2fb3`  
		Last Modified: Sat, 28 Apr 2018 14:38:44 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d36f17f008ab581b15bea6f38aa807c4128da249841f19c202b5fa21412260`  
		Last Modified: Sat, 28 Apr 2018 14:38:47 GMT  
		Size: 7.7 MB (7713807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:222fd8e823e568baa0f4693e1dba9b18f86e0c5420cc4d474753610abb264e2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73766441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95684b06d4307748afdadd9ced083bcd27a49a64967ccc6f117266a27b2bbb24`
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
# Sat, 28 Apr 2018 13:11:10 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Sat, 28 Apr 2018 13:12:12 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:12:13 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 28 Apr 2018 13:12:14 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 13:12:15 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 28 Apr 2018 13:14:18 GMT
ENV RABBITMQ_VERSION=3.7.4
# Sat, 28 Apr 2018 13:14:19 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Sat, 28 Apr 2018 13:14:19 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Sat, 28 Apr 2018 13:15:16 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:15:17 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 13:15:18 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 28 Apr 2018 13:15:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 28 Apr 2018 13:15:23 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 28 Apr 2018 13:15:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 28 Apr 2018 13:15:28 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 28 Apr 2018 13:15:29 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 28 Apr 2018 13:15:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 28 Apr 2018 13:15:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 13:15:33 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 28 Apr 2018 13:15:36 GMT
CMD ["rabbitmq-server"]
# Sat, 28 Apr 2018 13:15:54 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 28 Apr 2018 13:16:34 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 28 Apr 2018 13:16:38 GMT
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
	-	`sha256:13beaddd1da9d6e5e9dcce4a7e379add6655b43c876217cae898f3e3ddb4f006`  
		Last Modified: Sat, 28 Apr 2018 13:21:17 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5501996becdaa8eb1033a0d3bcfd9fe4957208e3a1491e4244f543cd4bc59450`  
		Last Modified: Sat, 28 Apr 2018 13:21:20 GMT  
		Size: 25.1 MB (25074872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aa7406178f448ef1b0c4821f3b2b038b048c887070e0924bfa4124d41fd14e2`  
		Last Modified: Sat, 28 Apr 2018 13:22:03 GMT  
		Size: 12.8 MB (12821074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bc274a3ed9fccb350d0baae8230a485c361962ca706413f2bb1cf86a0de5e4`  
		Last Modified: Sat, 28 Apr 2018 13:21:59 GMT  
		Size: 2.3 KB (2268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c8e8820a7da00e37262d30a42168e65a415f0a7b29829439fb7ea11edcadcc`  
		Last Modified: Sat, 28 Apr 2018 13:21:59 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea742264cbaf055dcaede307cde9d01edb997e705f215a4c79fc789c827dfefd`  
		Last Modified: Sat, 28 Apr 2018 13:21:59 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4ed928be694df83c2143c256e80010a8870234cf05d4a0abbde4ae0214e9fd`  
		Last Modified: Sat, 28 Apr 2018 13:21:59 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942928c713e5e8b32a304a5d32dbe5aa30c0417e4ff0ee0c80ca1f5a914a4610`  
		Last Modified: Sat, 28 Apr 2018 13:21:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0bb9e86779c639d8c64011604331a898dc5544341a1c224c2367225c10ab86`  
		Last Modified: Sat, 28 Apr 2018 13:22:34 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767ebdb5c158290a88750eb87e121a3dbb5c522a8119b912df18d5b5d153f07e`  
		Last Modified: Sat, 28 Apr 2018 13:22:37 GMT  
		Size: 7.8 MB (7824702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:61a53f3b641d12136811be32ebb5395de723e73dc7c47c1b56242f218cacc9d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73245413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07dba9fb94304b33e77c72a3c8902ab1321d47f6ade8abd68fd495671c2deca7`
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
# Sat, 28 Apr 2018 15:15:52 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Sat, 28 Apr 2018 15:16:06 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:16:07 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Sat, 28 Apr 2018 15:16:07 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:16:07 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 28 Apr 2018 15:17:11 GMT
ENV RABBITMQ_VERSION=3.7.4
# Sat, 28 Apr 2018 15:17:11 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Sat, 28 Apr 2018 15:17:11 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Sat, 28 Apr 2018 15:17:27 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:17:27 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 15:17:27 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 28 Apr 2018 15:17:28 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 28 Apr 2018 15:17:28 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 28 Apr 2018 15:17:29 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 28 Apr 2018 15:17:29 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 28 Apr 2018 15:17:30 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 28 Apr 2018 15:17:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 28 Apr 2018 15:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 28 Apr 2018 15:17:35 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 28 Apr 2018 15:17:35 GMT
CMD ["rabbitmq-server"]
# Sat, 28 Apr 2018 15:17:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 28 Apr 2018 15:17:56 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 28 Apr 2018 15:17:56 GMT
EXPOSE 15671/tcp 15672/tcp
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
	-	`sha256:61a2182aee6c825fac1b46df732d0120baf0b282eafcc327ebd60ecef418b7b4`  
		Last Modified: Sat, 28 Apr 2018 15:19:37 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc234032109bb9a2e43cabd71f0d45174740b361cc6ee1b252e1e830219cdb40`  
		Last Modified: Sat, 28 Apr 2018 15:19:40 GMT  
		Size: 25.0 MB (24989058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:753f552c763d00c1fad35fc294e31efb81ea0f068e5d5ba4e993f7f4b017bb6c`  
		Last Modified: Sat, 28 Apr 2018 15:20:16 GMT  
		Size: 12.8 MB (12832181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a15a8c3020be4eefd075df1d2eb19d2b6692b6638fc2691cd85f880d4eacfb28`  
		Last Modified: Sat, 28 Apr 2018 15:20:10 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0566f1b00a7bea2f56881b31485506255bc9ce410ecf1fb473d98ec9e628e0ae`  
		Last Modified: Sat, 28 Apr 2018 15:20:10 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f39e3d683f6a41c40bee7a8010767216787bba56c0ae177fca466f04f6cbf3`  
		Last Modified: Sat, 28 Apr 2018 15:20:10 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2baf470520a8ee05e1df8a264fe0572005439cd427613639b08a97917cc138`  
		Last Modified: Sat, 28 Apr 2018 15:20:10 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4581dfb7cdcd79c3f865b5c235b56254a13a8dbe88e3612538f85aea5278cf9`  
		Last Modified: Sat, 28 Apr 2018 15:20:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5489daa9e43b0f8285d217134efda920e5a3285c23354088c1808abe8e0cfa33`  
		Last Modified: Sat, 28 Apr 2018 15:20:42 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f1dc2ab76a7cd6cdcacf6e9e69c0efb8df4d39a3a1f942dd3a413e2d9e34863`  
		Last Modified: Sat, 28 Apr 2018 15:20:44 GMT  
		Size: 7.6 MB (7594816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
