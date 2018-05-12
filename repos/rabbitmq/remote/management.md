## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:d374d705b3f16e3f0ee34ea14d8599cb4c1f1604ae6deef5fefbaf063d0bb9c6
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
$ docker pull rabbitmq@sha256:ba1c4c819aad3bfa28ad2b826d680a4d6390273788e3350901b2778d12822ef1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73316023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c51d1c73d02843c3abdaffddc72c15456a66affd158646d7031f59f24649e49b`
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
# Thu, 10 May 2018 20:38:18 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Thu, 10 May 2018 20:38:27 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Thu, 10 May 2018 20:38:27 GMT
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
	-	`sha256:9d93cde947ca21efc855438d867eff61992492e3fdb45c092d12dbd9b2fc8231`  
		Last Modified: Thu, 10 May 2018 20:40:30 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:280f87940b72b179d78007feca611f53f99dcbb43e54479070ca07ed9834f2d8`  
		Last Modified: Thu, 10 May 2018 20:40:32 GMT  
		Size: 7.6 MB (7622544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:ce58e499a848e5018ec8c309fb01e847b8c607221d90026e7cdea197cf8f8090
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (69033475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f53d5f73aed56cce944bfe403eb4ea4b99e5429a5b1e3359cb337d00d88ab13`
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
# Fri, 11 May 2018 08:51:53 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 11 May 2018 08:52:12 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 11 May 2018 08:52:13 GMT
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
	-	`sha256:1f72b502dbc80ef90052c41fa426803b24235403699933df1256f19787e4531e`  
		Last Modified: Fri, 11 May 2018 08:54:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:074b25f79109f128e4b10bac53dbeaab76a4558a5e24c0cefb7651c33997425b`  
		Last Modified: Fri, 11 May 2018 08:54:03 GMT  
		Size: 7.5 MB (7472889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:b80bf2e3d0aa574516dddbd272ad8bdab398d3c0226d835a30dafac2f655fe08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66144494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:171b9db507532783f63934979267f51219a9dfff70915c720f2369b562eb1983`
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
# Fri, 11 May 2018 12:03:53 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 11 May 2018 12:04:07 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 11 May 2018 12:04:08 GMT
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
	-	`sha256:590c77494aa404a13b18eda728d4ca9fe6ee20b3ff9bcf261689311729dea48c`  
		Last Modified: Fri, 11 May 2018 12:06:12 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e7ad3fd35246efe3a873b4ea83e94e216efafd48a5d6d8ddd0d52899f73b1e`  
		Last Modified: Fri, 11 May 2018 12:06:16 GMT  
		Size: 7.2 MB (7182728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:6757277cdcbd344404a7cf84f3925bcc47757920ced8c574e4754f24b2edfbd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67941900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df3af702185c19d9a1b86364fc8a53b2352744a48277714417f8a790e80ecd05`
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
# Fri, 11 May 2018 09:25:38 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 11 May 2018 09:26:06 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 11 May 2018 09:26:07 GMT
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
	-	`sha256:d50ad7ccc32c6efa15e5791a1718c6a7ebbf04773e9fab783d3d92ffc97a5aa9`  
		Last Modified: Fri, 11 May 2018 09:29:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c427e68cfbff0ec89a4e646c66b32b84dea035dcb849a039d365cc95c4ad140a`  
		Last Modified: Fri, 11 May 2018 09:29:39 GMT  
		Size: 7.5 MB (7475312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; 386

```console
$ docker pull rabbitmq@sha256:f04cd27dbd78fed8660eb6d3a28cbc190191fbe159385b8b46c658ff5ed65c93
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74554335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c10d3e2a00decf805970d07ea712ef07062fb240c0374ccf9eee542ad4b2764`
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
# Fri, 11 May 2018 12:35:43 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Fri, 11 May 2018 12:36:24 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 12:36:24 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 11 May 2018 12:36:25 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 12:36:25 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Fri, 11 May 2018 12:37:29 GMT
ENV RABBITMQ_VERSION=3.7.5
# Fri, 11 May 2018 12:37:29 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.5
# Fri, 11 May 2018 12:37:29 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.5-1
# Fri, 11 May 2018 12:37:49 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Fri, 11 May 2018 12:37:49 GMT
ENV LANG=C.UTF-8
# Fri, 11 May 2018 12:37:50 GMT
ENV HOME=/var/lib/rabbitmq
# Fri, 11 May 2018 12:37:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Fri, 11 May 2018 12:37:51 GMT
VOLUME [/var/lib/rabbitmq]
# Fri, 11 May 2018 12:37:51 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Fri, 11 May 2018 12:37:52 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Fri, 11 May 2018 12:37:52 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Fri, 11 May 2018 12:37:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 11 May 2018 12:37:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 11 May 2018 12:37:53 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Fri, 11 May 2018 12:37:54 GMT
CMD ["rabbitmq-server"]
# Fri, 11 May 2018 12:38:02 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 11 May 2018 12:38:11 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 11 May 2018 12:38:12 GMT
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
	-	`sha256:4707bf8717575f65e415112f344cdb5f97f288a8c1f54d1f7f4083ae1ff63413`  
		Last Modified: Fri, 11 May 2018 12:39:09 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97a8a9d1696296720ff0057733387c42a76a5c07deeee642053a2054d7e4bde`  
		Last Modified: Fri, 11 May 2018 12:39:14 GMT  
		Size: 27.7 MB (27701108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a492c70c5ac05a7f5b21520b0089759bd7f13962f7a7bf69a1262fd701c014`  
		Last Modified: Fri, 11 May 2018 12:39:51 GMT  
		Size: 10.3 MB (10253645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae71e5cfad55c8dd458cf760a60e7794bb82e657d60b86a6fa5dc12233fdcbb`  
		Last Modified: Fri, 11 May 2018 12:39:50 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e14874c313c8ccd470649e5abf03ddc0d80fddfb5f33b64b3d04931539ac58`  
		Last Modified: Fri, 11 May 2018 12:39:50 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982235cf46877c293ed0b05ce178830346bd836e2c1c50dfa8e31578fedf4986`  
		Last Modified: Fri, 11 May 2018 12:39:50 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2420f0c3c954451cfe804b6e118fafda4b77e70bfd4346d2d6f50a71479b6e83`  
		Last Modified: Fri, 11 May 2018 12:39:51 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c2737955d2f05e512a595bbc6040aeeaa6dcf9b9953163452e59009e90de079`  
		Last Modified: Fri, 11 May 2018 12:39:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9f54b3e5d9c4da32ec5ce9bd21038f980d5ac4d5dd61ca071ac8d66d71b395`  
		Last Modified: Fri, 11 May 2018 12:40:19 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1389c707758a5b95a679382b406b7c99f6faefaa95df33e02b9414ea9e73897b`  
		Last Modified: Fri, 11 May 2018 12:40:22 GMT  
		Size: 7.7 MB (7714258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:7059a762914937f2b9e7e29bc5949befe1160125dec1546878f673727090ef20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71279186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f157ef8a301c7accbfd731198c46a7cdac1c52b6e294de20d0ee2d6f1049e05`
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
# Sat, 12 May 2018 10:33:41 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 12 May 2018 10:34:07 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 12 May 2018 10:34:09 GMT
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
	-	`sha256:a5a46d6d5cf2e9b181b54d9fcf1e41e83dd414147040db0f482d36f30a2a41f9`  
		Last Modified: Sat, 12 May 2018 10:37:06 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71d9ecf0d9390464fbd480f20a14d30c62d6025094557d8dced219a9787297fa`  
		Last Modified: Sat, 12 May 2018 10:37:07 GMT  
		Size: 7.8 MB (7825248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:010c66be98250ed5ee960b3958254219957117eb10b378db3a04f66d71a83482
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70749208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3486fa9bf53dbf5e751dfbeac39988e80e32ecd688d305bfed4fc03a45e994b`
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
# Fri, 11 May 2018 12:23:26 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Fri, 11 May 2018 12:23:34 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Fri, 11 May 2018 12:23:35 GMT
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
	-	`sha256:749c34a1a4ed806c540f6305f562357a79de7bc2a436d284ee71ded8314386a4`  
		Last Modified: Fri, 11 May 2018 12:25:56 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cecfb488d9bf4a66fec533c7e8a3758a32006043fcfa879bde907cd1c03c925`  
		Last Modified: Fri, 11 May 2018 12:25:59 GMT  
		Size: 7.6 MB (7594631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
