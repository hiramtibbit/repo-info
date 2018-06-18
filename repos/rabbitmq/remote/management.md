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
