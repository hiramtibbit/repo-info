## `rabbitmq:management`

```console
$ docker pull rabbitmq@sha256:ce1071cf04ba85242a5c6dd46017fb3201b674274bfe864d4dff78ec5b426d7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:management` - linux; amd64

```console
$ docker pull rabbitmq@sha256:e6756e58d44d48dd3b5b03726df887cc4fe6909e2364798fd0a472a63d84f608
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75786589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df0ee1f2343b349f830e1602a712dc12ce047aad6e1b052798b3e07bebe724cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:55:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:55:10 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 14 Mar 2018 18:55:10 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 18:55:23 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 18:55:24 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 14 Mar 2018 18:55:55 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:55:55 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 14 Mar 2018 18:55:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 18:55:55 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Mar 2018 18:57:25 GMT
ENV RABBITMQ_VERSION=3.7.4
# Wed, 14 Mar 2018 18:57:25 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Wed, 14 Mar 2018 18:57:25 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Wed, 14 Mar 2018 18:57:45 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:57:45 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 18:57:46 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Mar 2018 18:57:46 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 14 Mar 2018 18:57:47 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Mar 2018 18:57:48 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 14 Mar 2018 18:57:49 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 14 Mar 2018 18:57:49 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Wed, 14 Mar 2018 18:57:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 18:57:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 18:57:51 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 14 Mar 2018 18:57:51 GMT
CMD ["rabbitmq-server"]
# Wed, 14 Mar 2018 18:58:14 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 14 Mar 2018 18:58:23 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 14 Mar 2018 18:58:24 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:503bf932383f0de7e8acaa1c0c872c2019d243686557f1ff9225211a4df58d2c`  
		Last Modified: Wed, 14 Mar 2018 19:01:42 GMT  
		Size: 4.5 MB (4498485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03a47f5528b4504c8c1b5eb6dddfb434d8f626db95e609573fec7e71ebd92cf`  
		Last Modified: Wed, 14 Mar 2018 19:01:38 GMT  
		Size: 4.1 KB (4071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64044b5cb8a5f233a28500a792ac2b4bb39615a6c76f221c266707f9d4bac4de`  
		Last Modified: Wed, 14 Mar 2018 19:01:40 GMT  
		Size: 952.0 KB (952019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b286cfe0ed1035d06dc2aa5389ed684ee617a93fb77b2377aded6070f1fbd59d`  
		Last Modified: Wed, 14 Mar 2018 19:01:38 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1eedb4785859930ab694c9b799ec5802be57ae1d87343634062e790fc96e1f3`  
		Last Modified: Wed, 14 Mar 2018 19:01:41 GMT  
		Size: 27.4 MB (27376751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:189086b1c6939e4af0838a80d864c4d04c1fd7cbfdc9d530ef3abfd9aab70479`  
		Last Modified: Wed, 14 Mar 2018 19:03:06 GMT  
		Size: 12.8 MB (12836709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b609b52ebd23eecc72fb0a2083dc998f37d2c519489468116b6f74a5e0df803`  
		Last Modified: Wed, 14 Mar 2018 19:03:02 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6129d82ed122e623ae318d5cb4152e9c0b15b65eb0b570c923deac93a9a7081`  
		Last Modified: Wed, 14 Mar 2018 19:03:02 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a5d104cbea2d85fa16be163dba47773b888cd14203aefa24084c001e85e80d`  
		Last Modified: Wed, 14 Mar 2018 19:03:02 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c87accb857fa332c1dbd4480a1049e97aeddcf714e0e547d61d335d5d92832`  
		Last Modified: Wed, 14 Mar 2018 19:03:02 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5afccea8158411e3beb955dbc46f71db1595b31cc20dace4fa5383fc9f38962`  
		Last Modified: Wed, 14 Mar 2018 19:03:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f80becd748b4028f70700c242f59157fc1629b15a8d98991be989f31b186ab9`  
		Last Modified: Wed, 14 Mar 2018 19:04:17 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65c8e06bcdc27a11b7425cfe9259665f4f51d9da43a5541541bdef471dc0990`  
		Last Modified: Wed, 14 Mar 2018 19:04:20 GMT  
		Size: 7.6 MB (7622196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:ef1cff82a432c05777c68b77a1161032e3e2ebe6895edafdb6bed7b84f799707
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71512149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46abf5871ebf88642c726826f44032b90667b585af02940e42af90eb1fc5dd1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 21:00:31 GMT
ADD file:a4ff4a71be86566d946378fcdcdf8a581533429c77852d0a52919a736ec535bc in / 
# Thu, 15 Feb 2018 21:00:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:06:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:06:54 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 22:06:54 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 22:07:37 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:07:40 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 22:08:20 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:08:20 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 22:08:20 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:08:21 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 13 Mar 2018 14:14:39 GMT
ENV RABBITMQ_VERSION=3.7.4
# Tue, 13 Mar 2018 14:14:39 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Tue, 13 Mar 2018 14:14:40 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Tue, 13 Mar 2018 14:15:17 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 14:15:18 GMT
ENV LANG=C.UTF-8
# Tue, 13 Mar 2018 14:15:18 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 13 Mar 2018 14:15:19 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 13 Mar 2018 14:15:19 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 13 Mar 2018 14:15:20 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 13 Mar 2018 14:15:21 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 13 Mar 2018 14:15:22 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 13 Mar 2018 14:15:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 13 Mar 2018 14:15:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Mar 2018 14:15:24 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 13 Mar 2018 14:15:24 GMT
CMD ["rabbitmq-server"]
# Tue, 13 Mar 2018 14:15:44 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 13 Mar 2018 14:16:07 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 13 Mar 2018 14:16:07 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:d4fd25f13e1d4f6be6bd3e1a90bebc4f1ba9d950a6a33b46c42850a4c1d2d1b2`  
		Last Modified: Thu, 15 Feb 2018 21:11:11 GMT  
		Size: 21.2 MB (21175030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a212dd3e52653adb4c0c3677397e74fcac10b74d38b2df38af460830e04b1ac`  
		Last Modified: Thu, 15 Feb 2018 22:12:23 GMT  
		Size: 4.2 MB (4231540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ae935791a245772b6342dece630412eff8a97d12aaf579e401ccc09215205a`  
		Last Modified: Thu, 15 Feb 2018 22:12:20 GMT  
		Size: 4.1 KB (4088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458120fe43d4aff849ffaeb2fa6d4cc8d2c3dc5c72caeb744d44ffa74f07033d`  
		Last Modified: Thu, 15 Feb 2018 22:12:22 GMT  
		Size: 942.5 KB (942460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccfcf2d21f63838827957f9d1ab95f92202f63276a92d9d8799a93fce7b71d3a`  
		Last Modified: Thu, 15 Feb 2018 22:12:20 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e985b292dce34fd4c1a5c2bb38498fd0983718aabafca68a1c6492310146e8b4`  
		Last Modified: Thu, 15 Feb 2018 22:12:24 GMT  
		Size: 24.9 MB (24872054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36224079d346beca0dc6dc94edeb0b4fa56deac823f6621f4cc7e5297eb70a40`  
		Last Modified: Tue, 13 Mar 2018 14:16:36 GMT  
		Size: 12.8 MB (12807437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139767696732243cf4a5da888f86703c0619fb68eafc8e96db7b35168028760c`  
		Last Modified: Tue, 13 Mar 2018 14:16:31 GMT  
		Size: 2.3 KB (2263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206e1666817c2d74fc25d7beba948ddfb445762da894e9638422ec653251a803`  
		Last Modified: Tue, 13 Mar 2018 14:16:31 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b9717239bcc26b01a2730aad794552ab273bdb54c2c381d98dcc22600a5fdb`  
		Last Modified: Tue, 13 Mar 2018 14:16:31 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e3947932677c443edd4fcedeb15c41f46247ee523a52090d6c99e615d8e77d`  
		Last Modified: Tue, 13 Mar 2018 14:16:32 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5ab6bb4d8425cebc8cbdfe117b98bd288bbca1438606a49012aaeaddf835b4`  
		Last Modified: Tue, 13 Mar 2018 14:16:31 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b77e9bb271f6ff3dd06bfcbe2174fd2340ddcc2a2ae155258a182b7a3fe8991`  
		Last Modified: Tue, 13 Mar 2018 14:17:14 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f64a6b84d7e7f99f934806ab3a2cb43207d74193ea07e6ba852492b8b549a44`  
		Last Modified: Tue, 13 Mar 2018 14:17:17 GMT  
		Size: 7.5 MB (7472156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:a529e87c71a9ccd97de8980a8e554a709d8bd688abf39e2c4fee378905b7d967
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.6 MB (68620854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a1db158236dbeb3bc6f191357744f5d4ea01f5bd139e48711abd4fc70af5d4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 15:32:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 15:32:52 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 14 Mar 2018 15:32:52 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 15:34:04 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 15:34:05 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 14 Mar 2018 15:34:36 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 15:34:36 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 14 Mar 2018 15:34:36 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 15:34:37 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Mar 2018 15:35:58 GMT
ENV RABBITMQ_VERSION=3.7.4
# Wed, 14 Mar 2018 15:35:58 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Wed, 14 Mar 2018 15:35:59 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Wed, 14 Mar 2018 15:37:05 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 15:37:06 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 15:37:06 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Mar 2018 15:37:07 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 14 Mar 2018 15:37:07 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Mar 2018 15:37:09 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 14 Mar 2018 15:37:10 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 14 Mar 2018 15:37:11 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Wed, 14 Mar 2018 15:37:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 15:37:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 15:37:13 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 14 Mar 2018 15:37:13 GMT
CMD ["rabbitmq-server"]
# Wed, 14 Mar 2018 15:37:36 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 14 Mar 2018 15:37:51 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 14 Mar 2018 15:37:52 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d32628486abacd9653c17d63e95427332b0d15ed1f4681d650c433a57bffe26`  
		Last Modified: Wed, 14 Mar 2018 15:40:16 GMT  
		Size: 3.9 MB (3868647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935443a7d416283b9f065808cc37a6192edb9ce3e9e3450cc578420c8851dd7f`  
		Last Modified: Wed, 14 Mar 2018 15:40:15 GMT  
		Size: 4.1 KB (4086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57628a32e729b7f37d9f64a887da12914970b40e557326a1f90cf6da3eac0b81`  
		Last Modified: Wed, 14 Mar 2018 15:40:15 GMT  
		Size: 926.2 KB (926232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680a5b3ab3d2e6a1f12979c3e68392f1cca1267189dd76daa673f5b8aa2adefc`  
		Last Modified: Wed, 14 Mar 2018 15:40:14 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f8b1aedba356c7b145378e97c162ea5402d0c809ad5774f6633afc12764b07`  
		Last Modified: Wed, 14 Mar 2018 15:40:19 GMT  
		Size: 24.6 MB (24576817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff318e7681f04ba03875327be76f76cb12000f00f0fc109a0d1c7a6afbc3230`  
		Last Modified: Wed, 14 Mar 2018 15:41:14 GMT  
		Size: 12.8 MB (12777790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:964943e77621c31e644c1a56515922b242b1bfe64fc88b5a0b1db3a26c7d40ea`  
		Last Modified: Wed, 14 Mar 2018 15:41:11 GMT  
		Size: 2.3 KB (2264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4531ce362e110b6c97e758044846e8d6a790e4aa0dd865dbbf6211af19485ef7`  
		Last Modified: Wed, 14 Mar 2018 15:41:11 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:015d994ebfcbd6d840cfb843ef47ed14860f504d5e764d5c59e71ed19365b189`  
		Last Modified: Wed, 14 Mar 2018 15:41:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc91e01f1ff4fed13ea7ae3920c9d231ce50d4585a1f4e8c3da542d164047eb8`  
		Last Modified: Wed, 14 Mar 2018 15:41:11 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab2ec8414b69fd5a7066e33990863705e938257c7af46f7cda5a2ae73829fab`  
		Last Modified: Wed, 14 Mar 2018 15:41:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcb8cfe92009d4fc5d3518a2c0466e9fe45e8fc101a1bf95ba9c62f95e0f36ae`  
		Last Modified: Wed, 14 Mar 2018 15:42:01 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfe17c24f8a09fd1c2ed5ad3e069a52f89f19ad7f4cafdbc417fd8865ff0b6c`  
		Last Modified: Wed, 14 Mar 2018 15:42:04 GMT  
		Size: 7.2 MB (7182290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:24346ed649151798a1ae4e8671d8659bf61e13cdcde1d3a51f93f207f9cc2d03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.4 MB (70434956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea0bddc2c1883f25b423e6cd9117946adf923ab28530cf3ef94d6ea312946c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 18:29:50 GMT
ADD file:d2e12f27812a401bc7a8b63ad29adabafa065e3016b860f8a168e59638974a1b in / 
# Thu, 15 Feb 2018 18:29:51 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 23:53:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 23:53:57 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 23:53:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 23:54:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 23:54:35 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 23:55:45 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 23:55:46 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 23:55:47 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 23:55:48 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 13 Mar 2018 13:53:38 GMT
ENV RABBITMQ_VERSION=3.7.4
# Tue, 13 Mar 2018 13:53:39 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Tue, 13 Mar 2018 13:53:39 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Tue, 13 Mar 2018 13:54:38 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 13:54:39 GMT
ENV LANG=C.UTF-8
# Tue, 13 Mar 2018 13:54:39 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 13 Mar 2018 13:54:41 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 13 Mar 2018 13:54:42 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 13 Mar 2018 13:54:43 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 13 Mar 2018 13:54:45 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 13 Mar 2018 13:54:46 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 13 Mar 2018 13:54:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 13 Mar 2018 13:54:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Mar 2018 13:54:49 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 13 Mar 2018 13:54:50 GMT
CMD ["rabbitmq-server"]
# Tue, 13 Mar 2018 13:55:13 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 13 Mar 2018 13:55:40 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 13 Mar 2018 13:55:40 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:905dc789f64103ffa9af0dd66a58b87ae1ee2fd4d38d9484cc3662855fafbd9b`  
		Last Modified: Thu, 15 Feb 2018 01:14:50 GMT  
		Size: 20.3 MB (20347426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ecc7280a57c4f164dcf6ac46e8f359b64b73ac4eebda29730420cbc351f6de`  
		Last Modified: Fri, 16 Feb 2018 00:03:00 GMT  
		Size: 4.1 MB (4073277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de655884dd724f8f2f9dc4a57ce020cf3c7ea27c33757c572eb63feed718d68d`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 4.1 KB (4077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14dce82e5cc18457d199dc012088a60f363697db4983a790036468ee985e073a`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 919.4 KB (919384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558516637ee16130b13ceed7508d8317e3d00c459a4a1096e73e0793bd412a75`  
		Last Modified: Fri, 16 Feb 2018 00:02:57 GMT  
		Size: 354.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37e8156666bfe6af3b5b9f2ffc484feb8d9bbeef45f3e89566370dc2f4199c01`  
		Last Modified: Fri, 16 Feb 2018 00:03:02 GMT  
		Size: 24.8 MB (24806003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7a5255a2fb158ef57964c8bec0414c9bf9891c0ca9b11fefe3642a68b29182`  
		Last Modified: Tue, 13 Mar 2018 13:57:49 GMT  
		Size: 12.8 MB (12802719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04a5b9d023d1cdda360a3f027665a46a5ce55e26fb29e5cd4d09c93364a1096`  
		Last Modified: Tue, 13 Mar 2018 13:57:46 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc357cdbdefd3e70312eb36d7b3c475a14f4c465acabf7ff4606835017c2a28`  
		Last Modified: Tue, 13 Mar 2018 13:57:46 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8088d4fcf9efec23c7474895d3faa0afabf241b8fd60e7f46497c1ab1fa4e13`  
		Last Modified: Tue, 13 Mar 2018 13:57:46 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136ddf96b963119235dbfd515ef2e30ebfd80b26ace50e7d91359cee89126404`  
		Last Modified: Tue, 13 Mar 2018 13:57:46 GMT  
		Size: 4.2 KB (4185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfb22218082a7d771541ca4caca6f126ff4262f494e2e8a3d12bdfc73878058`  
		Last Modified: Tue, 13 Mar 2018 13:57:46 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678ff25fe980769272e1b3c9013bbf87368d8854b75b0974e4fa26185ab6b2b5`  
		Last Modified: Tue, 13 Mar 2018 13:58:58 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbe5941e2a89c887b9ef5063b0e077ddae6b7c3c8d2b6c38aa863dc7621c55d`  
		Last Modified: Tue, 13 Mar 2018 13:59:01 GMT  
		Size: 7.5 MB (7474681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:07b41ec2aabadab29923304912ac96d42d1101ddc18d6617682d0b86dc4ce552
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73746511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b378b6548a5199f75bd0ed1e71e811c945119fa1b1fd7031e4349b7fbb09b421`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 01:38:22 GMT
ADD file:b111f25d8b57c437e532229243b1e47f56149cb63f80fd959bcf8f23fec341c2 in / 
# Thu, 15 Feb 2018 01:38:24 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:01:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:01:20 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Thu, 15 Feb 2018 07:01:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 07:02:33 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 07:02:38 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Thu, 15 Feb 2018 07:04:50 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:04:53 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Thu, 15 Feb 2018 07:04:55 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 07:04:59 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 13 Mar 2018 07:11:34 GMT
ENV RABBITMQ_VERSION=3.7.4
# Tue, 13 Mar 2018 07:11:35 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Tue, 13 Mar 2018 07:11:37 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Tue, 13 Mar 2018 07:13:42 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 07:13:43 GMT
ENV LANG=C.UTF-8
# Tue, 13 Mar 2018 07:13:44 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 13 Mar 2018 07:13:48 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 13 Mar 2018 07:13:49 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 13 Mar 2018 07:13:52 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 13 Mar 2018 07:13:56 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 13 Mar 2018 07:13:57 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 13 Mar 2018 07:14:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 13 Mar 2018 07:14:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 13 Mar 2018 07:14:04 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 13 Mar 2018 07:14:06 GMT
CMD ["rabbitmq-server"]
# Tue, 13 Mar 2018 07:14:20 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 13 Mar 2018 07:14:59 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 13 Mar 2018 07:15:01 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:07a374cd4a95ebfac482b60ccc87f4492e55d2f46ad3344b9f1656082a2d40c9`  
		Last Modified: Thu, 15 Feb 2018 01:46:41 GMT  
		Size: 22.8 MB (22753099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7eb3ba88b8fb5c65c82d925e3dcbca9f48c46c56825a694fa78f92768e98f36`  
		Last Modified: Thu, 15 Feb 2018 07:15:17 GMT  
		Size: 4.4 MB (4360747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba68cb1b2e1a68352c6ccc11da8cf6084991476e7259a12748d767af1a187a08`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 4.1 KB (4107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534c75edb97f6c0ac366a7b7f3c3f0c2545a80abc9d4fe398852a7c0fb647cae`  
		Last Modified: Thu, 15 Feb 2018 07:15:14 GMT  
		Size: 920.9 KB (920856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9812a87515bad00ca079aa29d890490ea5cdee29af48e4ba64973c94dc838e9`  
		Last Modified: Thu, 15 Feb 2018 07:15:13 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d03c6e69190174f5e919e55754b072b20b7bc8736b8dfef1e53712b9a96240c`  
		Last Modified: Thu, 15 Feb 2018 07:15:18 GMT  
		Size: 25.1 MB (25053207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f931e8238cb334b556155100e67e94cdf36976ae903d476b3e1bf71952c9220f`  
		Last Modified: Tue, 13 Mar 2018 07:17:04 GMT  
		Size: 12.8 MB (12821679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d38c0df746657bbda03d5950d3e149cd0c03cd678a767f1c5ddcf2075b15adf1`  
		Last Modified: Tue, 13 Mar 2018 07:17:01 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c1e1c0d0fdbf9d453a45534f9c890a735bd8652f945d4f9128586af26e4865d`  
		Last Modified: Tue, 13 Mar 2018 07:17:01 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c05837a7552cfd06d08b696821332aa3c2fe0af3fab9f1b058076a58f6b156db`  
		Last Modified: Tue, 13 Mar 2018 07:17:01 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fa9f73f66d8a1af2a6466fd69a0ce7a9f4851b3f6ae677b4cd86bed1752ea82`  
		Last Modified: Tue, 13 Mar 2018 07:17:02 GMT  
		Size: 4.2 KB (4179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c148bfb8e85161411f6f66fc94cbc1f99f6f7e9172f00836206a53a564d802c`  
		Last Modified: Tue, 13 Mar 2018 07:17:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e785e8ddf5357cc23bfef40d12718b3c7c67aba71548abd4226ecbd651a76916`  
		Last Modified: Tue, 13 Mar 2018 07:17:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a5a7261ca57ddde8b19cbe27b30fcacb69ca6ff8db39d39011fd8c33c8d66a`  
		Last Modified: Tue, 13 Mar 2018 07:17:41 GMT  
		Size: 7.8 MB (7825436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:f24a5489b91323c7bc9f04909aa801289753ad1d0598210964bf755972a6c31d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 MB (73274871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039c736dafa834abb081b3e39683d51f7a0fb024249e72ed4f8017da265856ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:34:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:34:20 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 14 Mar 2018 07:34:20 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 07:34:47 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 07:34:48 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 14 Mar 2018 07:35:27 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:35:27 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 14 Mar 2018 07:35:27 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 07:35:27 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Wed, 14 Mar 2018 07:36:35 GMT
ENV RABBITMQ_VERSION=3.7.4
# Wed, 14 Mar 2018 07:36:35 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Wed, 14 Mar 2018 07:36:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Wed, 14 Mar 2018 07:37:08 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:37:09 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 07:37:09 GMT
ENV HOME=/var/lib/rabbitmq
# Wed, 14 Mar 2018 07:37:09 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Wed, 14 Mar 2018 07:37:09 GMT
VOLUME [/var/lib/rabbitmq]
# Wed, 14 Mar 2018 07:37:10 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Wed, 14 Mar 2018 07:37:11 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Wed, 14 Mar 2018 07:37:11 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:37:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 07:37:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:37:12 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Wed, 14 Mar 2018 07:37:12 GMT
CMD ["rabbitmq-server"]
# Wed, 14 Mar 2018 07:37:25 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Wed, 14 Mar 2018 07:37:33 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Wed, 14 Mar 2018 07:37:34 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a9a026adb558a3ef8601752511f218f76a7b50751e47cf3e7cd1a2a9f8a520`  
		Last Modified: Wed, 14 Mar 2018 07:39:16 GMT  
		Size: 4.5 MB (4529959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1208402e3a35813a7b55761763b70fc9384a6927cd0a6ce23c456cc2bc43da1a`  
		Last Modified: Wed, 14 Mar 2018 07:39:14 GMT  
		Size: 4.1 KB (4076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf90c3b9fd956bb649751af8153bb048c89b903673a0eaf3c35c810ed704493`  
		Last Modified: Wed, 14 Mar 2018 07:39:14 GMT  
		Size: 938.0 KB (938037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e353bc17e84c17f5f9b53d3c86ebbcb8f46ab504f0e40607063a36cf4287245b`  
		Last Modified: Wed, 14 Mar 2018 07:39:14 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09ede325f1fa9b7adf5de734ae00337135c4516d762573f5bf4f208819b17eb`  
		Last Modified: Wed, 14 Mar 2018 07:39:17 GMT  
		Size: 25.0 MB (25028162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1200306829577ed5b5441cac030cfa735cf5de6b1b805aa75a55f734b41981ce`  
		Last Modified: Wed, 14 Mar 2018 07:39:42 GMT  
		Size: 12.8 MB (12832182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:445e43383d90875021a835a5b2ca39f6dfa73432134258b15a9b33fb5c923a67`  
		Last Modified: Wed, 14 Mar 2018 07:39:40 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e098c04871340c8c5214b74911c9a0ad2929b8b3a71403835c3f4c753c82eed`  
		Last Modified: Wed, 14 Mar 2018 07:39:40 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d234da1c052bd2123c214576c9c46f8115d3229e6a006600c1e7d859cefa9f`  
		Last Modified: Wed, 14 Mar 2018 07:39:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d08ceee5155744b69e2350fb9c389dbf07ccecdbf0da4d0ba86c656f83f87a`  
		Last Modified: Wed, 14 Mar 2018 07:39:40 GMT  
		Size: 4.2 KB (4178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af555ff47dfa0f600a944446c6203896dadfc2d5b46dc6554c18220e0bc650ea`  
		Last Modified: Wed, 14 Mar 2018 07:39:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9748c723bfaca3a39e293fc1de4e687d1d21a4daac4eb0f748ab54e6177dcab0`  
		Last Modified: Wed, 14 Mar 2018 07:40:01 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b5c6e7b84d1e0c7d5fcb21d92cd36d7cc5f6ffc7e2c752b8990b1bafecdd41`  
		Last Modified: Wed, 14 Mar 2018 07:40:03 GMT  
		Size: 7.6 MB (7594601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
