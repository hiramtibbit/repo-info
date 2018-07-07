## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:a9ed0334599b59d7230a817ad2ac5a67ac65f213d0444eb0d3d21585e19968e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

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

### `rabbitmq:management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:983175f0b12a006120125c5219295770efd08106ae6e56b18b3959b0edde456f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69116661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9a4b3cc66f52ae4567d5fd8cd8ebeaae6ab1aba5d370fb19846a2347133491`
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
# Wed, 27 Jun 2018 11:14:24 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 27 Jun 2018 11:14:59 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:15:00 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 11:15:00 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:15:00 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 08:53:22 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 08:53:22 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 08:53:22 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Sat, 07 Jul 2018 08:54:00 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 08:54:01 GMT
ENV LANG=C.UTF-8
# Sat, 07 Jul 2018 08:54:01 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 08:54:02 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 07 Jul 2018 08:54:02 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 08:54:03 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 08:54:04 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 07 Jul 2018 08:54:05 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 07 Jul 2018 08:54:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 07 Jul 2018 08:54:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 08:54:07 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 08:54:07 GMT
CMD ["rabbitmq-server"]
# Sat, 07 Jul 2018 08:54:25 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 07 Jul 2018 08:54:46 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 07 Jul 2018 08:54:47 GMT
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
	-	`sha256:41883a5e9bfff61f65387250c289c2f5e04c0766265d2641fd72caa43e1c87a2`  
		Last Modified: Wed, 27 Jun 2018 11:18:06 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376c3a3902a8cd98743329867624f3404fb63e35ffdb562ff638b21064c20e4a`  
		Last Modified: Wed, 27 Jun 2018 11:18:12 GMT  
		Size: 25.0 MB (24995871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1952070d1dcc3c43536b26d108dffa837a10adf55c943030f39eb29711b9504`  
		Last Modified: Sat, 07 Jul 2018 08:55:08 GMT  
		Size: 10.3 MB (10285267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6cc5777eeccdf6f60ef078a7250efbd28bc66b6c9842f22f675788f3deb7ec`  
		Last Modified: Sat, 07 Jul 2018 08:55:05 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1dc087f9a0a26840d1c53cd0fc9f0ee09d70bbb378471db445e1f4046ada49e`  
		Last Modified: Sat, 07 Jul 2018 08:55:05 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ee59a82d2a48635fa5a8bbd61fe8ef1eb14606c57f629892be901b72182ee4`  
		Last Modified: Sat, 07 Jul 2018 08:55:06 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec858fa748b64b0dce79e301a2283f5918f8aebf38cb353b3c977235985a357f`  
		Last Modified: Sat, 07 Jul 2018 08:55:06 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef3ed84af403c94a3c7694edd0a308ee6a2433d3ba15032b1db5af3e363e979`  
		Last Modified: Sat, 07 Jul 2018 08:55:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66acac9618de39668eda55e7c557078b6ef92c16886f6a0831f77c6144962c9e`  
		Last Modified: Sat, 07 Jul 2018 08:55:40 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c76dc89c705fd573d25e0214b007e29eb25bfe7a1213218ff720e4947ae53468`  
		Last Modified: Sat, 07 Jul 2018 08:55:44 GMT  
		Size: 7.5 MB (7472739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:1defd045dab60caa9d822f2921cc20c5fc72e46fdd81c8f09212779bd08ea691
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.0 MB (68026598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf7ebc9ebff3ede9f77bd364d0309d36a18988ba73417063393a188945d205e`
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
# Wed, 27 Jun 2018 13:17:15 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 27 Jun 2018 13:18:20 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:18:21 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 13:18:21 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 13:18:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 09:29:16 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 09:29:17 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 09:29:18 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Sat, 07 Jul 2018 09:30:19 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 09:30:20 GMT
ENV LANG=C.UTF-8
# Sat, 07 Jul 2018 09:30:21 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 09:30:22 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 07 Jul 2018 09:30:23 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 09:30:25 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 09:30:27 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 07 Jul 2018 09:30:37 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 07 Jul 2018 09:30:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 07 Jul 2018 09:30:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 09:30:40 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 09:30:41 GMT
CMD ["rabbitmq-server"]
# Sat, 07 Jul 2018 09:31:08 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 07 Jul 2018 09:31:36 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 07 Jul 2018 09:31:39 GMT
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
	-	`sha256:e9a951dccb44dd36e3dc6fe61ce08969a12d83c3ee92fa9380cb4150f9c63eda`  
		Last Modified: Wed, 27 Jun 2018 13:25:53 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206e14c4a24f451a6c668930ea9ec78642a7ca2a0d2501c532b0b34b5f17c880`  
		Last Modified: Wed, 27 Jun 2018 13:25:59 GMT  
		Size: 24.9 MB (24919349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e68f8bc5f8e94f06d9f2f3fd0755f3bf4c5ff2721f02325e5f1ae172392ee0a2`  
		Last Modified: Sat, 07 Jul 2018 09:34:06 GMT  
		Size: 10.3 MB (10279848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b36ec8ab10c5be9e5feb1d23f45d96929b052efe2b2a1e57e5e8d01c911aec`  
		Last Modified: Sat, 07 Jul 2018 09:34:02 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c905139dae289fabc6746f502686f67327182e8635be67848f851583db81743d`  
		Last Modified: Sat, 07 Jul 2018 09:34:02 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3eeea58303ed5ee706716a358e0319cb7e3b60650aa656ad22384dce30723b2`  
		Last Modified: Sat, 07 Jul 2018 09:34:01 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e404e135d46d5c5aadbb43aec1d590c398c30f6a0a1e1cadf4ac462fcada594a`  
		Last Modified: Sat, 07 Jul 2018 09:34:02 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663619feb84aedc17fcc16735953eac5481c5fa07652438251bcacbf94bd20bf`  
		Last Modified: Sat, 07 Jul 2018 09:34:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34f67c3eb528a67f5decf2c661bae5f3e5c0806b0137f6e7d7f8d31530ee6b9`  
		Last Modified: Sat, 07 Jul 2018 09:35:00 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1664d790eaac6fd3429741aaa8864cf6cc6990ab4cc65777e61bd3e28f11196a`  
		Last Modified: Sat, 07 Jul 2018 09:35:04 GMT  
		Size: 7.5 MB (7475167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; 386

```console
$ docker pull rabbitmq@sha256:2a10ff3daa81837a872d5416df63f558b910f1a3f743c5ce081a2cef0d1a2147
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74636758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c7d3a487f25c0262ce1f6e910de7c764d0cd55e00d9fbbf784430db9a0a8fa`
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
# Wed, 27 Jun 2018 14:32:46 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 27 Jun 2018 14:33:38 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:33:38 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 14:33:38 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 14:33:39 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 10:54:48 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 10:54:49 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 10:54:49 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Sat, 07 Jul 2018 10:55:25 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 10:55:25 GMT
ENV LANG=C.UTF-8
# Sat, 07 Jul 2018 10:55:25 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 10:55:26 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 07 Jul 2018 10:55:27 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 10:55:28 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 10:55:28 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 07 Jul 2018 10:55:29 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 07 Jul 2018 10:55:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 07 Jul 2018 10:55:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 10:55:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 10:55:30 GMT
CMD ["rabbitmq-server"]
# Sat, 07 Jul 2018 10:55:46 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 07 Jul 2018 10:56:05 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 07 Jul 2018 10:56:06 GMT
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
	-	`sha256:ae49e6bfdf6855c41d187869e7119ff5915c6d70a65915e5a0c4779872898d86`  
		Last Modified: Wed, 27 Jun 2018 14:37:18 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33931aff9bbc9da8fa035646536c659f447a66e16fd4f4f397d5548b8c05f1c9`  
		Last Modified: Wed, 27 Jun 2018 14:37:24 GMT  
		Size: 27.7 MB (27698744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043e4c3b79380b628843e2238fffd7ecd3cca9b296a92e9a7735edc6c68a8e63`  
		Last Modified: Sat, 07 Jul 2018 10:57:33 GMT  
		Size: 10.3 MB (10336540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec49570454e28a3b3de07e289e2189adfc1ebd12cff161df06e19d0b54872c7`  
		Last Modified: Sat, 07 Jul 2018 10:57:29 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6159c74baa3249b1f50d35cc57a246e6caefa39222fb18fdead6703629861951`  
		Last Modified: Sat, 07 Jul 2018 10:57:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9808b0fa7aa155f730c323922652391cb186098151cb5c29d28fe33853859d`  
		Last Modified: Sat, 07 Jul 2018 10:57:29 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066dc72522b20b9d56a46f9b0ce6e3e6bb9227fa01b3feda4f0c99b863e476c0`  
		Last Modified: Sat, 07 Jul 2018 10:57:28 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32b4b962d24718fa4522b629a9a63637f60794a40994b58359bfae98a89c67fc`  
		Last Modified: Sat, 07 Jul 2018 10:57:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4d27a8374d2197b0358186e7d12411e8d137a32dc3c5d6ddf2605257231a67`  
		Last Modified: Sat, 07 Jul 2018 10:58:22 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58f2b242577496cefeb299008a15233e3bdc480661704be3b57f772189eae82`  
		Last Modified: Sat, 07 Jul 2018 10:58:24 GMT  
		Size: 7.7 MB (7714398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:c54f51d4c7668fe580e32fda8380ff075b7227dcc223fc64fd74a2247b10361b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71366366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a5e45a0b9472303494c5cd3168586767fe57e902f376bfc2124f4a025eef272`
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
# Wed, 27 Jun 2018 12:32:02 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 27 Jun 2018 12:34:42 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:34:44 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 12:34:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 12:34:48 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 08:44:37 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 08:44:38 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 08:44:38 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Sat, 07 Jul 2018 08:45:45 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 08:45:46 GMT
ENV LANG=C.UTF-8
# Sat, 07 Jul 2018 08:45:47 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 08:45:50 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 07 Jul 2018 08:45:51 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 08:45:55 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 08:45:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 07 Jul 2018 08:46:01 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 07 Jul 2018 08:46:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 07 Jul 2018 08:46:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 08:46:08 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 08:46:09 GMT
CMD ["rabbitmq-server"]
# Sat, 07 Jul 2018 08:46:29 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 07 Jul 2018 08:46:58 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 07 Jul 2018 08:47:00 GMT
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
	-	`sha256:987476e800522421b35ab25c47b5ff96b17a99d18018c455a38a7dceaafe7846`  
		Last Modified: Wed, 27 Jun 2018 12:44:12 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aea73147b035579e0bde0bb1083c9213603dffd9a2c2773a84f797b57d69c03`  
		Last Modified: Wed, 27 Jun 2018 12:44:17 GMT  
		Size: 25.2 MB (25195537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6804935fafd3df846986934ff5da53412201434e112b58b4f6fb17488a1330a2`  
		Last Modified: Sat, 07 Jul 2018 08:48:38 GMT  
		Size: 10.3 MB (10299259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68dd8dd82301e82d1d35de47f9bc61222e1d44bb60f3d5d9ed52788d9c14e254`  
		Last Modified: Sat, 07 Jul 2018 08:48:33 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323d75c3649ed49a4c76956113ce0a0bff543985e28773abbf04124354a13df5`  
		Last Modified: Sat, 07 Jul 2018 08:48:33 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52bc2bd7b207c62ab4440471155afa922df7ba39fc9bbd8b5a141448751f282`  
		Last Modified: Sat, 07 Jul 2018 08:48:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ccb2057384aaee5e8f6a74445ea9ea5acc97ee2bbfe76d172ca5788cf4b73f`  
		Last Modified: Sat, 07 Jul 2018 08:48:33 GMT  
		Size: 4.2 KB (4183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39571d71747efdf3cda71635b60230d75ef7c11dcfc02097680588e9ce86e18c`  
		Last Modified: Sat, 07 Jul 2018 08:48:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:547b81adf704752cb183b42c45ed3cc301331098536bddc1b47122f5ee7f2310`  
		Last Modified: Sat, 07 Jul 2018 08:49:25 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11ea7de1ec56db5b6974103dbff7ce8affe8f8345b054e25a0e68b133083fb5e`  
		Last Modified: Sat, 07 Jul 2018 08:49:27 GMT  
		Size: 7.8 MB (7825638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
