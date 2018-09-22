## `rabbitmq:3-management`

```console
$ docker pull rabbitmq@sha256:41e581d081b0e09f7db7fb44c1cf177eca6623b06d93625894b1692a846455fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
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
