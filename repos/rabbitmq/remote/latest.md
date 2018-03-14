## `rabbitmq:latest`

```console
$ docker pull rabbitmq@sha256:38de2646c16085b79bc05074ca1e44d46251ce8a21cefa0e957093b712d3758d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; s390x

### `rabbitmq:latest` - linux; amd64

```console
$ docker pull rabbitmq@sha256:e2d2d338cfc187d538fae8fc0d84a982afdd67af3174b02c049124ce32647c7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68167392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c46fce842280b04c607511431570d352a88470db991d9bd04d37686e2ff6f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["rabbitmq-server"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Fri, 16 Feb 2018 18:56:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gnupg 		dirmngr 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:56:36 GMT
RUN groupadd -r rabbitmq && useradd -r -d /var/lib/rabbitmq -m -g rabbitmq rabbitmq
# Fri, 16 Feb 2018 18:56:36 GMT
ENV GOSU_VERSION=1.10
# Fri, 16 Feb 2018 18:57:02 GMT
RUN set -eux; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 16 Feb 2018 18:57:03 GMT
RUN set -eux; 	sed 's/stretch/buster/g' /etc/apt/sources.list 		| tee /etc/apt/sources.list.d/buster.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: -10'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=buster*'; 		echo 'Pin-Priority: 999'; 		echo; 		echo 'Package: erlang*'; 		echo 'Pin: release n=stretch*'; 		echo 'Pin-Priority: -10'; 	} | tee /etc/apt/preferences.d/buster-erlang
# Fri, 16 Feb 2018 18:57:47 GMT
RUN set -eux; 	apt-get update; 	if apt-cache show erlang-base-hipe 2>/dev/null | grep -q 'Package: erlang-base-hipe'; then 		apt-get install -y --no-install-recommends 			erlang-base-hipe 		; 	fi; 	apt-get install -y --no-install-recommends 		erlang-asn1 		erlang-crypto 		erlang-eldap 		erlang-inets 		erlang-mnesia 		erlang-nox 		erlang-os-mon 		erlang-public-key 		erlang-ssl 		erlang-xmerl 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Feb 2018 18:57:55 GMT
ENV RABBITMQ_LOGS=- RABBITMQ_SASL_LOGS=-
# Fri, 16 Feb 2018 18:57:56 GMT
ENV PATH=/usr/lib/rabbitmq/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Feb 2018 18:57:56 GMT
ENV RABBITMQ_GPG_KEY=0A9AF2115F4687BD29803A206B73A36E6026DFCA
# Mon, 12 Mar 2018 19:17:30 GMT
ENV RABBITMQ_VERSION=3.7.4
# Mon, 12 Mar 2018 19:17:30 GMT
ENV RABBITMQ_GITHUB_TAG=v3.7.4
# Mon, 12 Mar 2018 19:17:31 GMT
ENV RABBITMQ_DEBIAN_VERSION=3.7.4-1
# Mon, 12 Mar 2018 19:18:24 GMT
RUN set -eux; 		apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 		wget -O rabbitmq-server.deb.asc "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb.asc"; 	wget -O rabbitmq-server.deb     "https://github.com/rabbitmq/rabbitmq-server/releases/download/$RABBITMQ_GITHUB_TAG/rabbitmq-server_${RABBITMQ_DEBIAN_VERSION}_all.deb"; 		apt-get purge -y --auto-remove ca-certificates wget; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$RABBITMQ_GPG_KEY"; 	gpg --batch --verify rabbitmq-server.deb.asc rabbitmq-server.deb; 	rm -rf "$GNUPGHOME"; 		apt install -y --no-install-recommends ./rabbitmq-server.deb; 	dpkg -l | grep rabbitmq-server; 	rm -f rabbitmq-server.deb*; 		rm -rf /var/lib/apt/lists/*
# Mon, 12 Mar 2018 19:18:24 GMT
ENV LANG=C.UTF-8
# Mon, 12 Mar 2018 19:18:24 GMT
ENV HOME=/var/lib/rabbitmq
# Mon, 12 Mar 2018 19:18:25 GMT
RUN mkdir -p /var/lib/rabbitmq /etc/rabbitmq 	&& chown -R rabbitmq:rabbitmq /var/lib/rabbitmq /etc/rabbitmq 	&& chmod -R 777 /var/lib/rabbitmq /etc/rabbitmq
# Mon, 12 Mar 2018 19:18:26 GMT
VOLUME [/var/lib/rabbitmq]
# Mon, 12 Mar 2018 19:18:27 GMT
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
# Mon, 12 Mar 2018 19:18:28 GMT
RUN ln -sf "/usr/lib/rabbitmq/lib/rabbitmq_server-$RABBITMQ_VERSION/plugins" /plugins
# Mon, 12 Mar 2018 19:18:28 GMT
COPY file:4bd60cf2ba400c856bf3545d7f3e6b35c2df72b1f75e92caa21f75db37a7b574 in /usr/local/bin/ 
# Mon, 12 Mar 2018 19:18:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Mon, 12 Mar 2018 19:18:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 12 Mar 2018 19:18:30 GMT
EXPOSE 25672/tcp 4369/tcp 5671/tcp 5672/tcp
# Mon, 12 Mar 2018 19:18:30 GMT
CMD ["rabbitmq-server"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aa5c2fc28c2889bb371a7c8c86d79363c2210331abc9ab368eec5664f9c7f1`  
		Last Modified: Fri, 16 Feb 2018 19:01:56 GMT  
		Size: 4.5 MB (4498430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6866d83ad777c7832f9a12a4c138b04ae865fc71238531025c3a1d9cdab3e6`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 4.1 KB (4070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424ad5823c0c06246ed365a566ac25a786727eb4de90d40450c75c9f9589d05c`  
		Last Modified: Fri, 16 Feb 2018 19:01:54 GMT  
		Size: 952.0 KB (951962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f7e6945ef422f435b20cc8b77ebcfb95d9ab963a5a54e7a038efab9f37de5`  
		Last Modified: Fri, 16 Feb 2018 19:01:52 GMT  
		Size: 353.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2983462f8b69d0ad88f218912db6d68bde0c18fad0354a3a5aff7d5f93e4fa9e`  
		Last Modified: Fri, 16 Feb 2018 19:01:56 GMT  
		Size: 27.4 MB (27372199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2699a4e0d831a33850f4aab8d1b01584e542212ce0e65931f41171fdc70c7dbf`  
		Last Modified: Mon, 12 Mar 2018 19:34:28 GMT  
		Size: 12.8 MB (12836778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d27d37e75c5708a2f3db8bba0eccd44b916b5de44690cb9bad02f7de073c931`  
		Last Modified: Mon, 12 Mar 2018 19:34:25 GMT  
		Size: 2.3 KB (2260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019ac312b756c405edd75f212bd97373405f84f2407217376cb1dbcbb4fc97c2`  
		Last Modified: Mon, 12 Mar 2018 19:34:24 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef7308c6947aac527ddfed9231552aa2afeae25e13bae84aa01f5d317974531`  
		Last Modified: Mon, 12 Mar 2018 19:34:25 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74c608eeb86b21b503aaa58175959421af709d93f736d7e3511732117b237e17`  
		Last Modified: Mon, 12 Mar 2018 19:34:25 GMT  
		Size: 4.2 KB (4181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5f393be1f5d6a154731c4a572676db282ef9cbb68cc41048746e2b41481e1`  
		Last Modified: Mon, 12 Mar 2018 19:34:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rabbitmq:latest` - linux; arm variant v5

```console
$ docker pull rabbitmq@sha256:a902653f56b67ac0a59708d6aa7c013698667b11776803f879bfea794986680d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (64039799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71ff256ff1ddce1526c2423b274511e8c3f1ee812a1428ddb6eca45abd577d85`
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

### `rabbitmq:latest` - linux; arm variant v7

```console
$ docker pull rabbitmq@sha256:7bb3b8ab640ff19c2b36516fde7583459ed63bc980eb219ab29b15b30b1c329d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61438372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1923ddc7f6727c5ddc3553750240ed30779682a19eeea1e9969765ba427d1a22`
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

### `rabbitmq:latest` - linux; arm64 variant v8

```console
$ docker pull rabbitmq@sha256:079674d34239e97656557d97af6192e08fff33ad4dbd0e048a47ab5f1e12cff2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.0 MB (62960083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074542c97f78bc5835e15576743dbaa7e62495cf57b487145518025e2f530d9c`
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

### `rabbitmq:latest` - linux; ppc64le

```console
$ docker pull rabbitmq@sha256:453d79b7d0acb0f262ea7fd17fd3cc39e066d383d55321810ebca32cac30bcfe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65920881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcce1fecdae0d796f27a449228f7427ce374ac7f663e7203d5fddf4542859745`
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

### `rabbitmq:latest` - linux; s390x

```console
$ docker pull rabbitmq@sha256:2efb1b60c4ebde219df57373cd2a7687c23a24cf503f84b527c28f730c98758f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.7 MB (65680077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1ca71b8c3071db2195d1026c3963ae42ee95a71e462266af0a1fef5befdf35`
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
