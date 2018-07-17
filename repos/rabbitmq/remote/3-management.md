## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:1339339cfebb29a168b78a3f80e57821324879a5cfc84215d6094e748841f03e
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
$ docker pull rabbitmq@sha256:ac6560cf5c9fd5669a879d128191775fedd8033c6bcf04bd00dee10e5787c931
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73397096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c06649c03515d0c99c39d53e0f42bbb60c10e34e7fec579de972d5296e63a63`
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
# Tue, 17 Jul 2018 05:09:15 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 05:09:16 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 17 Jul 2018 05:09:44 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 05:09:45 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jul 2018 05:09:45 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 05:09:45 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 17 Jul 2018 05:09:45 GMT
ENV RABBITMQ_VERSION=3.7.7
# Tue, 17 Jul 2018 05:09:46 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Tue, 17 Jul 2018 05:09:46 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Tue, 17 Jul 2018 05:10:17 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 05:10:17 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 05:10:17 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jul 2018 05:10:18 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jul 2018 05:10:18 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jul 2018 05:10:19 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jul 2018 05:10:20 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 17 Jul 2018 05:10:21 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 17 Jul 2018 05:10:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 05:10:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 05:10:23 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jul 2018 05:10:23 GMT
CMD ["rabbitmq-server"]
# Tue, 17 Jul 2018 05:10:50 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 17 Jul 2018 05:11:03 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 17 Jul 2018 05:11:04 GMT
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
	-	`sha256:206747bbae889f2262a4bf333a4bd19515ade110ea1880d7ba1fc6a382f6d7a0`  
		Last Modified: Tue, 17 Jul 2018 05:13:25 GMT  
		Size: 951.9 KB (951880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db561c34b75cbea535d2e700b52a71ab81b5aa717ae0036bec422f083797c6f7`  
		Last Modified: Tue, 17 Jul 2018 05:13:22 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7bbdae386f6621c25157b155fd0b548467c84432f628be67058ee90aa1cbafe`  
		Last Modified: Tue, 17 Jul 2018 05:13:28 GMT  
		Size: 27.5 MB (27511206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b38f15a89eb35b1af19ed7bda3cd49fb6fd65e233c4046d7e17fd663a96073`  
		Last Modified: Tue, 17 Jul 2018 05:13:24 GMT  
		Size: 10.3 MB (10315392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584757cbee20e4feeb1221d736185660034d88f8923a8e807094c608cc99550a`  
		Last Modified: Tue, 17 Jul 2018 05:13:20 GMT  
		Size: 2.3 KB (2265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0647a1654785fb8ba13093b18af6a06af08647168d485df1f8450ace2ed9d410`  
		Last Modified: Tue, 17 Jul 2018 05:13:20 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8b27ad9bb3beb907d923abf24541b871613154b8f8fd69fdda1e30345a65ea`  
		Last Modified: Tue, 17 Jul 2018 05:13:20 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7fca0df083a52096105928dc6b23251e6bdc97930bc7c14c2f39381e887b9c9`  
		Last Modified: Tue, 17 Jul 2018 05:13:20 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4dee21e0995392e39130d81bb7d9c7a9199554c7d32d691577ca593a2f09f1e`  
		Last Modified: Tue, 17 Jul 2018 05:13:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f97204d94c28ab1f674b9cf7942759d5ea2d8306a7b19b9b0bdf20ab54f7ff4`  
		Last Modified: Tue, 17 Jul 2018 05:14:27 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec722ddb54095f3e39797d5ebb35c6dfdbdca3a093d92b7db4f32a24d80fbc15`  
		Last Modified: Tue, 17 Jul 2018 05:14:29 GMT  
		Size: 7.6 MB (7622704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:67f4cbe645782f1415cfe8f432d0ec67714974d0daa18a1fa984ed97c14147f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69102903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f0b2220de708a90d4d488b90e96233d7e1dcbbd4c19a0482527fc7e2d3d150b`
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
# Tue, 17 Jul 2018 11:50:05 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 11:50:06 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Tue, 17 Jul 2018 11:50:47 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:50:47 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Tue, 17 Jul 2018 11:50:48 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 11:50:48 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Tue, 17 Jul 2018 11:50:48 GMT
ENV RABBITMQ_VERSION=3.7.7
# Tue, 17 Jul 2018 11:50:48 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Tue, 17 Jul 2018 11:50:49 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Tue, 17 Jul 2018 11:51:23 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:51:23 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 11:51:23 GMT
ENV HOME=/var/lib/rabbitmq
# Tue, 17 Jul 2018 11:51:24 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Tue, 17 Jul 2018 11:51:25 GMT
VOLUME [/var/lib/rabbitmq]
# Tue, 17 Jul 2018 11:51:26 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Tue, 17 Jul 2018 11:51:27 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Tue, 17 Jul 2018 11:51:27 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Tue, 17 Jul 2018 11:51:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 11:51:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 11:51:29 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Tue, 17 Jul 2018 11:51:30 GMT
CMD ["rabbitmq-server"]
# Tue, 17 Jul 2018 11:51:55 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Tue, 17 Jul 2018 11:52:17 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Tue, 17 Jul 2018 11:52:18 GMT
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
	-	`sha256:29f4dc43c9491de9953fac2c9466ca726293742dd64e146ac5df9b29c67cf6e9`  
		Last Modified: Tue, 17 Jul 2018 11:54:30 GMT  
		Size: 942.4 KB (942380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb4b4b7b3488b3bbafed5fca268e9b7d255bc462650688de3dadd9c5895f60de`  
		Last Modified: Tue, 17 Jul 2018 11:54:30 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89eb78d1612c1cea8b4b7e6ccf37dc14450fe7c669dc7d9bf38e652c219c741f`  
		Last Modified: Tue, 17 Jul 2018 11:54:35 GMT  
		Size: 25.0 MB (24996663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ed9a7a7e1471e0d7a3ff19f732bc96708e64a7c1ce581ab84e3a81e7291345`  
		Last Modified: Tue, 17 Jul 2018 11:54:31 GMT  
		Size: 10.3 MB (10285090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699779df57e7c93a5c6c85ba31d5248e90a87776d42c1b9d4e0a005b3cb2910b`  
		Last Modified: Tue, 17 Jul 2018 11:54:28 GMT  
		Size: 2.3 KB (2261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9ba037043a29fe3bfbc081c4e89550c1bef35dd312fa8bdc386d8bba9d710e`  
		Last Modified: Tue, 17 Jul 2018 11:54:28 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316710fbe068404a4ae465b9e30f50f8a544ff7b6a8a1af93b63c38eb3788b99`  
		Last Modified: Tue, 17 Jul 2018 11:54:28 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b383e8e5dce9897a685d146735fc3f0df0d9c4a609bd4fa52b8e488d09aac91`  
		Last Modified: Tue, 17 Jul 2018 11:54:28 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d6004236806f982ac571c295d8dad49bf83585e550a1aa63cd766894e32463`  
		Last Modified: Tue, 17 Jul 2018 11:54:28 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31db01e10aa22273e237075f7cdae645d9080fc97eb71c1a895263f583644bdb`  
		Last Modified: Tue, 17 Jul 2018 11:55:10 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017cd02153e2665e2b530ac881e23fc7e3d9a255cfda182de53a4d0ab610178f`  
		Last Modified: Tue, 17 Jul 2018 11:55:13 GMT  
		Size: 7.5 MB (7473002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:35d38694402251fc5e3f6601cc9bd64ca00842f15e5b51da33f1344a55f536a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66227082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40864493b0f86f054ed22ea50c88f46387b49744055b8f175e99e1a07b8b2f0c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 14:12:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:12:35 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 14:12:36 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 14:12:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:12:52 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 27 Jun 2018 14:13:22 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:13:22 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 14:13:22 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 14:13:22 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 12:12:42 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 12:12:43 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 12:12:43 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Sat, 07 Jul 2018 12:13:13 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 12:13:13 GMT
ENV LANG=C.UTF-8
# Sat, 07 Jul 2018 12:13:13 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 12:13:15 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 07 Jul 2018 12:13:15 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 12:13:16 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 12:13:17 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 07 Jul 2018 12:13:18 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 07 Jul 2018 12:13:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 07 Jul 2018 12:13:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 12:13:21 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 12:13:21 GMT
CMD ["rabbitmq-server"]
# Sat, 07 Jul 2018 12:13:37 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 07 Jul 2018 12:13:54 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 07 Jul 2018 12:13:55 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb65999b58884828ff25e13d07aebc86e55605338c7abc118cfeddfa39c75314`  
		Last Modified: Wed, 27 Jun 2018 14:16:30 GMT  
		Size: 3.9 MB (3868682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae1d89ac0fd8e9fb3ebbd0864d5645d52c63b39424990d3741df3fbd9fbc07d`  
		Last Modified: Wed, 27 Jun 2018 14:16:28 GMT  
		Size: 4.1 KB (4085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48725968edca68879146e7c9d8dfd6148ce6952e8474683f3aebecbb57eb1624`  
		Last Modified: Wed, 27 Jun 2018 14:16:28 GMT  
		Size: 926.2 KB (926176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2e9ef786f09a10d228d0bce1d0e7b2889f2a2b4fb37d3c751d26cebf9784c94`  
		Last Modified: Wed, 27 Jun 2018 14:16:28 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed34a2c68f618450358a5f7d38dea8207cd81745e61f948f991475182013991`  
		Last Modified: Wed, 27 Jun 2018 14:16:32 GMT  
		Size: 24.7 MB (24693319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2ce089e3464178b1a82a9bf683989917382cef961903b68e1e51819e1e93d47`  
		Last Modified: Sat, 07 Jul 2018 12:14:18 GMT  
		Size: 10.3 MB (10258518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bf8ad96fcb671a1c229595dbc1b0d4f5cb03706fc53f6d13f41fd932f46af3`  
		Last Modified: Sat, 07 Jul 2018 12:14:15 GMT  
		Size: 2.3 KB (2266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7556ae0a4522b2094c0d67efb82a54cde82eae351c4c89dd8b93f87ffcc2f244`  
		Last Modified: Sat, 07 Jul 2018 12:14:15 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fbc83c00471ac17bd8f1e35fb4f326e2ad29083a8a2851860489c17e049cd`  
		Last Modified: Sat, 07 Jul 2018 12:14:16 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0cec02a2721b521a075e99c342382a77ac4bdd96baa4438a8e24ad505576d61`  
		Last Modified: Sat, 07 Jul 2018 12:14:15 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2216cbbb5627c14ae75c4b28d94ca688522d7d02bd228d239ca9e576e626bd1c`  
		Last Modified: Sat, 07 Jul 2018 12:14:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f849c69639bdccab8a9f6137ddf496ae92635bd792b821f5ec5ba85d73e505`  
		Last Modified: Sat, 07 Jul 2018 12:14:51 GMT  
		Size: 191.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77dbe656ac6800709d4df650e82d0ffb97587972367b8d786d96adc6da5455e3`  
		Last Modified: Sat, 07 Jul 2018 12:14:53 GMT  
		Size: 7.2 MB (7182639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:3-management` - linux; arm64 variant v8

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

### `rabbitmq:3-management` - linux; 386

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

### `rabbitmq:3-management` - linux; ppc64le

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

### `rabbitmq:3-management` - linux; s390x

```console
$ docker pull rabbitmq@sha256:49f3a7bc892c46dbad92a6e1968a12a87cf75f1beebf60a8a3418c2b16aa4d61
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70832372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093c314b8bfdf58c445e3b1d7219081fc748a280fc9c21a4e95c664b68337aff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:52 GMT
ADD file:30e8aac3f01e5ddc9493a0fac1c0978b9435ab33031d2af05afca0f9cb7eb71f in / 
# Wed, 27 Jun 2018 11:48:52 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:38:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:38:40 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Wed, 27 Jun 2018 13:38:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 27 Jun 2018 13:38:51 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 13:38:51 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 1'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Wed, 27 Jun 2018 13:39:16 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:39:16 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Wed, 27 Jun 2018 13:39:16 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 13:39:16 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Sat, 07 Jul 2018 12:03:35 GMT
ENV RABBITMQ_VERSION=3.7.7
# Sat, 07 Jul 2018 12:03:35 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.7
# Sat, 07 Jul 2018 12:03:35 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.7-1
# Sat, 07 Jul 2018 12:03:56 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Sat, 07 Jul 2018 12:03:57 GMT
ENV LANG=C.UTF-8
# Sat, 07 Jul 2018 12:03:57 GMT
ENV HOME=/var/lib/rabbitmq
# Sat, 07 Jul 2018 12:03:57 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Sat, 07 Jul 2018 12:03:58 GMT
VOLUME [/var/lib/rabbitmq]
# Sat, 07 Jul 2018 12:03:58 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Sat, 07 Jul 2018 12:03:59 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Sat, 07 Jul 2018 12:03:59 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Sat, 07 Jul 2018 12:04:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 07 Jul 2018 12:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 07 Jul 2018 12:04:01 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Sat, 07 Jul 2018 12:04:01 GMT
CMD ["rabbitmq-server"]
# Sat, 07 Jul 2018 12:04:11 GMT
RUN rabbitmq-plugins enable --offline rabbitmq_management
# Sat, 07 Jul 2018 12:04:23 GMT
RUN set -eux; 	erl -noinput -eval ' 		{ ok, AdminBin } = zip:foldl(fun(FileInArchive, GetInfo, GetBin, Acc) -> 			case Acc of 				"" -> 					case lists:suffix("/rabbitmqadmin", FileInArchive) of 						true -> GetBin(); 						false -> Acc 					end; 				_ -> Acc 			end 		end, "", init:get_plain_arguments()), 		io:format("~s", [ AdminBin ]), 		init:stop(). 	' -- /plugins/rabbitmq_management-*.ez > /usr/local/bin/rabbitmqadmin; 	[ -s /usr/local/bin/rabbitmqadmin ]; 	chmod +x /usr/local/bin/rabbitmqadmin; 	apt-get update; 	apt-get install -y --no-install-recommends python; 	rm -rf /var/lib/apt/lists/*; 	rabbitmqadmin --version
# Sat, 07 Jul 2018 12:04:24 GMT
EXPOSE 15671/tcp 15672/tcp
```

-	Layers:
	-	`sha256:1c23a44ac305da2d34995cf30530ba5adce0229e4a70678fd4d25384883b1281`  
		Last Modified: Wed, 27 Jun 2018 11:53:41 GMT  
		Size: 22.3 MB (22349871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e807416110d0cf06abcbde25d0113b63bd830a4530be9402a739471fadb40132`  
		Last Modified: Wed, 27 Jun 2018 13:41:37 GMT  
		Size: 4.5 MB (4530010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da86ac5a30e03a606b312415dadd31364903f21a2c90b521e21fd7a1afda732a`  
		Last Modified: Wed, 27 Jun 2018 13:41:36 GMT  
		Size: 4.1 KB (4072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01965e40b1df1c653de280dbd763b44adb1738344fe1da60276a2cba7fa97780`  
		Last Modified: Wed, 27 Jun 2018 13:41:35 GMT  
		Size: 938.0 KB (938029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640b6e3150aeed9fe89e5b5abd53210f812d746cb37ea77ea4f11c8344ec14ef`  
		Last Modified: Wed, 27 Jun 2018 13:41:35 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef90a3fa1711b61aa2bdef87753944e6e0ddd0bfaa220c461e836bf6210a415`  
		Last Modified: Wed, 27 Jun 2018 13:41:37 GMT  
		Size: 25.1 MB (25095143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5096427d237417ae969b587652ae3afcccdb8439584f0b386023b3a150b46f1c`  
		Last Modified: Sat, 07 Jul 2018 12:05:22 GMT  
		Size: 10.3 MB (10312710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa6c4d57afc8c40bea53d4fc90e174047a77a6371f4495b42f98fb75670d41f`  
		Last Modified: Sat, 07 Jul 2018 12:05:18 GMT  
		Size: 2.3 KB (2262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a659c9f5c76b1c7b3b52efb6bcc0cd137f890445dde1c887b39457df6b89c3`  
		Last Modified: Sat, 07 Jul 2018 12:05:18 GMT  
		Size: 146.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2d55d9e327142ad6b5ebb6f170270a8db89c444a586ff0ded4bc4041e4d9f6`  
		Last Modified: Sat, 07 Jul 2018 12:05:19 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d1bf63a7cb124796e78dd107c3eb82aa89e53af3ebd617f322c78c231c3c08`  
		Last Modified: Sat, 07 Jul 2018 12:05:18 GMT  
		Size: 4.2 KB (4182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4394e44167caf44e130505735da8c16f32a11e6b07646559ce3cea1efaa521e6`  
		Last Modified: Sat, 07 Jul 2018 12:05:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98ce5043e328602692d454325ed7e20581d5e9880c2df899e5c0da8de40f7bd2`  
		Last Modified: Sat, 07 Jul 2018 12:05:40 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c033af8095c89be004d31ff048efb02341534eba9c3b31a9a4a50068a158b14c`  
		Last Modified: Sat, 07 Jul 2018 12:05:43 GMT  
		Size: 7.6 MB (7595153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
