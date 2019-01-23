## `flink:scala_2.11`

```console
$ docker pull flink@sha256:28689a0b52101872822b2f925cc33b6088c15a5d243d65c97c60f76af2c8d372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `flink:scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:d18aeb4b6d22ea732b1c499ee32e7ea8d42ee042b9ad696e7b327185220d4f3e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.5 MB (443520230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d118e1c4c4321f1a8beb15a8de4fcfcd7e9c40ead0b991cdd96cebcc8ec1f611`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 21:14:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:18:24 GMT
ENV LANG=C.UTF-8
# Tue, 22 Jan 2019 21:18:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 22 Jan 2019 21:18:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 22 Jan 2019 21:18:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 22 Jan 2019 21:18:27 GMT
ENV JAVA_VERSION=8u181
# Tue, 22 Jan 2019 21:18:27 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 22 Jan 2019 21:19:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 05:57:35 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 05:57:35 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Jan 2019 05:57:39 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 23 Jan 2019 06:05:02 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=scala_2.11
# Wed, 23 Jan 2019 06:05:02 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 23 Jan 2019 06:05:02 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 06:05:03 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 23 Jan 2019 06:05:04 GMT
WORKDIR /opt/flink
# Wed, 23 Jan 2019 06:05:04 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz
# Wed, 23 Jan 2019 06:05:04 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz.asc
# Wed, 23 Jan 2019 06:05:04 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Wed, 23 Jan 2019 06:06:16 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 23 Jan 2019 06:06:17 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Wed, 23 Jan 2019 06:06:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 06:06:17 GMT
EXPOSE 6123 8081
# Wed, 23 Jan 2019 06:06:18 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d79c18d1bc044350734c637ab0d6d7c8b16409dbec54e0b5f0e71ad57829f0b`  
		Last Modified: Tue, 22 Jan 2019 21:40:15 GMT  
		Size: 852.9 KB (852896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff1d0ae4641b6cf7443e0a3246cfc0118d9bfea7d176f44431f0a712851d1d67`  
		Last Modified: Tue, 22 Jan 2019 21:42:40 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8883e662573f072b4c708c1bc642ee68d8948ce097dab379175e88b74a9c2046`  
		Last Modified: Tue, 22 Jan 2019 21:42:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adab760d76bdb26ea938f91dd3d8b0268e791dafe853b262355f26916675b210`  
		Last Modified: Tue, 22 Jan 2019 21:43:12 GMT  
		Size: 122.1 MB (122121253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd46b3d7aff6d41f396ed70f3b125503be038bd0654a1d80453886b15c5966c`  
		Last Modified: Wed, 23 Jan 2019 06:10:10 GMT  
		Size: 466.4 KB (466400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e91691dc06d1c7a5fad38edd16f4ed27dd293bdd47c445e9d49ae40e1b231d1`  
		Last Modified: Wed, 23 Jan 2019 06:10:10 GMT  
		Size: 819.2 KB (819180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d01dca322239fb394f4137e9d05fe36b3cf6c450d3e26f326e8505addce6f1`  
		Last Modified: Wed, 23 Jan 2019 06:17:58 GMT  
		Size: 4.6 KB (4608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1967d39b2357ec45df891dd51197a4cb373c603d6dc57368f73ac1df81b3f770`  
		Last Modified: Wed, 23 Jan 2019 06:17:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3337e6d89bd1d3c61caa367ca5b35f2de73b97ded5f55992a82b353cd349a16`  
		Last Modified: Wed, 23 Jan 2019 06:17:58 GMT  
		Size: 61.6 KB (61621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7ec4bfae76439f0485afde4380cd3fbab79d92e7c6e2f2397d22a89a16b662`  
		Last Modified: Wed, 23 Jan 2019 06:18:22 GMT  
		Size: 258.7 MB (258726856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fcdaecff1cef14ea90eb2cde80fd7b2036dae0e3b890a7f355d459da01c7f16`  
		Last Modified: Wed, 23 Jan 2019 06:17:58 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11` - linux; arm variant v5

```console
$ docker pull flink@sha256:7c461a41c6e98f26925b6fff21f126bb490fbe7ac91c805cc6a2703a83825d53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **430.8 MB (430848508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d0f1aaf677b367fc3f1c13e687064ace3b278609dfc62df4c0432f410b7bf12`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:27 GMT
ADD file:8ba047ef6412ca91461f1c03e2571c0760c1e7ce294814ec3523055f0b453994 in / 
# Wed, 23 Jan 2019 09:54:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:38:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:51:22 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:51:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:51:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:51:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 12:51:26 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:51:26 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:52:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 15:28:11 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:28:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Jan 2019 15:28:17 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 23 Jan 2019 15:54:41 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=scala_2.11
# Wed, 23 Jan 2019 15:54:41 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 23 Jan 2019 15:54:41 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 15:54:43 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 23 Jan 2019 15:54:44 GMT
WORKDIR /opt/flink
# Wed, 23 Jan 2019 15:54:44 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz
# Wed, 23 Jan 2019 15:54:44 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz.asc
# Wed, 23 Jan 2019 15:54:45 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Wed, 23 Jan 2019 15:56:16 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 23 Jan 2019 15:56:17 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Wed, 23 Jan 2019 15:56:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 15:56:18 GMT
EXPOSE 6123 8081
# Wed, 23 Jan 2019 15:56:19 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:4fa85838ca92a72d64f970f6d43c23ad625e644e7d2d6088bfccfc6b05f2ce41`  
		Last Modified: Wed, 23 Jan 2019 10:02:01 GMT  
		Size: 44.1 MB (44053619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc93c97f4e63346ff22fa9f2a1f468f1211ae4e1c468f823078577fe992699ba`  
		Last Modified: Wed, 23 Jan 2019 10:49:24 GMT  
		Size: 9.8 MB (9849321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e54fcc14b17f4209b661fb8a20deeb88c9b3153c5fac3c35d0367633f22f2`  
		Last Modified: Wed, 23 Jan 2019 10:49:23 GMT  
		Size: 4.2 MB (4158594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f02589fc3d00a36a98d58ff4404167ce69f35a4207db13bcf6ea33799132a1`  
		Last Modified: Wed, 23 Jan 2019 13:07:55 GMT  
		Size: 845.9 KB (845891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f706fbf9316b6749bad538668f10e064add4ce2f6aed270989fc3b918e930a`  
		Last Modified: Wed, 23 Jan 2019 13:10:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35bb425eede337aebc4950beae6e19a3a56ed4c5b2bfcd7bc1b307933d044392`  
		Last Modified: Wed, 23 Jan 2019 13:10:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62616871071168f39d28c876c2d4fff8af2f38e4b9c366e4984beb8a86f2a75f`  
		Last Modified: Wed, 23 Jan 2019 13:11:15 GMT  
		Size: 111.9 MB (111902571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74ae2eae229a256c195ee5c323b7089b811169a7a0c0ba2e2c61c7fd1f3c2382`  
		Last Modified: Wed, 23 Jan 2019 16:00:39 GMT  
		Size: 466.4 KB (466360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa84092ee7242411bbd69a2fbf5714465a55b7ae09453e35d191f495540e9bec`  
		Last Modified: Wed, 23 Jan 2019 16:00:39 GMT  
		Size: 777.7 KB (777668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd9742e9071e28746a3333a4752f784e6dc6e595e66f0e5e542ac96041fe1cf`  
		Last Modified: Wed, 23 Jan 2019 16:11:06 GMT  
		Size: 4.5 KB (4529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b616a51a945151865d14d53fa2ea85ae0fc6ff23831fd84874486271d233f74`  
		Last Modified: Wed, 23 Jan 2019 16:11:06 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65adf702e06ded0fe0efa0eb08f044c980cf077e564c8243de9105dbf5f2cbd`  
		Last Modified: Wed, 23 Jan 2019 16:11:06 GMT  
		Size: 61.6 KB (61621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a08b34a4edb13c344bcebaf6bb7ee84027223cfbd4a02b6453676a0dcea1645`  
		Last Modified: Wed, 23 Jan 2019 16:11:40 GMT  
		Size: 258.7 MB (258726667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca5b68cc21b76b7bc772dbcc56ee808bfc6583d2a774f78e9fee604b191b235`  
		Last Modified: Wed, 23 Jan 2019 16:11:06 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11` - linux; arm variant v7

```console
$ docker pull flink@sha256:39e7e7b9ceafd19fe6bdb99bac77c39b7f58e1c148818b3babadcebc7d3e1ca6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **456.1 MB (456089200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:916af0d5a846e2a9586a71c282a5aad0124a900a9a2a9d208be1ed23ea9c5b16`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Fri, 20 Jul 2018 11:57:58 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Fri, 20 Jul 2018 11:58:00 GMT
ENV GOSU_VERSION=1.7
# Tue, 04 Dec 2018 12:57:42 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 01 Jan 2019 13:16:24 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 01 Jan 2019 13:16:24 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 01 Jan 2019 13:16:25 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Jan 2019 13:16:26 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 01 Jan 2019 13:16:27 GMT
WORKDIR /opt/flink
# Tue, 01 Jan 2019 13:16:27 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz
# Tue, 01 Jan 2019 13:16:28 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz.asc
# Tue, 01 Jan 2019 13:16:28 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 01 Jan 2019 13:19:05 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 17 Jan 2019 12:58:55 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Thu, 17 Jan 2019 12:59:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 12:59:01 GMT
EXPOSE 6123 8081
# Thu, 17 Jan 2019 12:59:02 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71122e80751c26d15d17856e1659781f3e5297edf0aff11a2ede2ab486e0f4b8`  
		Last Modified: Fri, 20 Jul 2018 12:07:20 GMT  
		Size: 479.6 KB (479566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4507904ff92dc15a8adbe5d8657d605568027794e3142a60d43ae1b7182ac82d`  
		Last Modified: Tue, 04 Dec 2018 13:24:25 GMT  
		Size: 761.9 KB (761888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac1b4caf66f766522dfef32a18642ba10d3a64787e6540e024284b117f45a25`  
		Last Modified: Tue, 01 Jan 2019 13:33:05 GMT  
		Size: 4.6 KB (4570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7ff31ac1525377b8a93dc44e42ffd1a941d9ac7146c7c93d2834a8fe49f8b4c`  
		Last Modified: Tue, 01 Jan 2019 13:33:05 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ecacf9b06b90338a44563c0975a72f1772ea92c58e60b9d469790c18137a796`  
		Last Modified: Tue, 01 Jan 2019 13:33:05 GMT  
		Size: 61.6 KB (61621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f308c554872b602d246e50ba08b88ad5c7819f4054823088367a8b7ae355751a`  
		Last Modified: Tue, 01 Jan 2019 13:33:42 GMT  
		Size: 258.7 MB (258726668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356c9a865da6f43d3192e6459e3146de9dac2ec06939572b7672485e88f7af5d`  
		Last Modified: Thu, 17 Jan 2019 13:01:28 GMT  
		Size: 1.1 KB (1140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:a9f827def8d4ce7306de1238a5f7750855037b06bc225027a7e238a3ffc46624
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **430.6 MB (430559247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2f3abe7456aab3788e953d4e919a3236e124cd87ad012923f230ae87fe6c121`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 16:57:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:14:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:14:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:14:11 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:14:12 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:14:13 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:19:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 02:46:14 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 02:46:16 GMT
ENV GOSU_VERSION=1.7
# Sun, 30 Dec 2018 02:46:23 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 01 Jan 2019 10:19:26 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 01 Jan 2019 10:19:27 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 01 Jan 2019 10:19:28 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Jan 2019 10:19:32 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 01 Jan 2019 10:19:32 GMT
WORKDIR /opt/flink
# Tue, 01 Jan 2019 10:19:33 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz
# Tue, 01 Jan 2019 10:19:34 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz.asc
# Tue, 01 Jan 2019 10:19:35 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 01 Jan 2019 10:20:29 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 17 Jan 2019 09:41:54 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Thu, 17 Jan 2019 09:41:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 09:41:55 GMT
EXPOSE 6123 8081
# Thu, 17 Jan 2019 09:41:56 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48571cc473b88fcffd22eb773861106e62ad3dea84834463ed7e9d150439057`  
		Last Modified: Sat, 29 Dec 2018 17:25:57 GMT  
		Size: 839.2 KB (839233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344869d13b124ac74cf306b58444652eed73f02dae6bcde459d7ec5e7129d8c3`  
		Last Modified: Sat, 29 Dec 2018 17:29:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:176c87f6576e84823739aa84291c369e1903bc4632e8c92d57ec74946b93c0e4`  
		Last Modified: Sat, 29 Dec 2018 17:29:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d5b5377617d8168a16e074e5d337d3afa5ca70b88f12abcb6c34f65695e0e5`  
		Last Modified: Sat, 29 Dec 2018 17:30:22 GMT  
		Size: 112.8 MB (112755781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739ca3f8b68a5eaa95317846618c181ea15b5f893879a6c728b4732b268a0804`  
		Last Modified: Tue, 01 Jan 2019 10:38:24 GMT  
		Size: 466.7 KB (466736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f922d540604a312af4f5276180793132622b808ab1e08d5ff12c583c993e007`  
		Last Modified: Tue, 01 Jan 2019 10:38:23 GMT  
		Size: 764.4 KB (764405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e9789ef9228751aaac23a30c8539fa171831ce185db4ce0809aa5dc0b5b963`  
		Last Modified: Tue, 01 Jan 2019 11:08:48 GMT  
		Size: 4.6 KB (4645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640cd92693f980d0715a7492cc5a3030c04c67a25e8584ffc16f73018f92d964`  
		Last Modified: Tue, 01 Jan 2019 11:08:46 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6edac3887a582147e52cb60c202cb699c15b409d48662bc071ea4c8a115f4d2a`  
		Last Modified: Tue, 01 Jan 2019 11:08:46 GMT  
		Size: 61.6 KB (61619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b123a62489731e5f9b0dde7ecfa21c53f805267112c7f5344b02a872cd033a`  
		Last Modified: Tue, 01 Jan 2019 11:09:40 GMT  
		Size: 258.7 MB (258726869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b6021aaa4d4beedde0866afb0d3958ac0cb7224231ace46e4cd91fd347b281e`  
		Last Modified: Thu, 17 Jan 2019 09:48:59 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11` - linux; 386

```console
$ docker pull flink@sha256:bf12ad2d8c6a3b8ea3495dc48ff2215562751c7fcec95ce3d040e66226d00169
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **444.9 MB (444932465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d135e28172d3c5afc27dc73b055b914b013e17b3da217fc111b803bee7a0f60`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Sat, 29 Dec 2018 11:54:44 GMT
ADD file:a8ddd3477d8cfd5a18fe1d2537e62c16161f296e912e5a65a7bde0331af35639 in / 
# Sat, 29 Dec 2018 11:54:45 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:01:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 20:52:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:55:01 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 20:55:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 20:55:03 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 20:55:03 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 20:55:03 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 20:55:03 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 20:55:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 05:57:44 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 05:57:44 GMT
ENV GOSU_VERSION=1.7
# Sun, 30 Dec 2018 05:57:47 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 01 Jan 2019 11:52:51 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 01 Jan 2019 11:52:51 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 01 Jan 2019 11:52:51 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Jan 2019 11:52:52 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 01 Jan 2019 11:52:52 GMT
WORKDIR /opt/flink
# Tue, 01 Jan 2019 11:52:53 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz
# Tue, 01 Jan 2019 11:52:53 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz.asc
# Tue, 01 Jan 2019 11:52:53 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 01 Jan 2019 11:53:08 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 17 Jan 2019 11:39:53 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Thu, 17 Jan 2019 11:39:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 11:39:54 GMT
EXPOSE 6123 8081
# Thu, 17 Jan 2019 11:39:54 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:df99e535d2dfef98a9b50153edf9ab40b4355b1e30018358c90bb2ac742ea9c5`  
		Last Modified: Sat, 29 Dec 2018 12:10:19 GMT  
		Size: 46.1 MB (46057290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85ebddf711af5a5d00c3ec70830e1b0e199d81dcfa089912a1a93e7d75c7b91`  
		Last Modified: Sat, 29 Dec 2018 13:28:20 GMT  
		Size: 10.8 MB (10799001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0903d64cc922323fd00f382d7845c5313498fa2eaaa23e5b0508f38f2b4a4a76`  
		Last Modified: Sat, 29 Dec 2018 13:28:17 GMT  
		Size: 4.6 MB (4560876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd42dee6f51ed5d4429a1edb5736fe8b3e0f87968ed96036c52b6aa3e3cbf0ec`  
		Last Modified: Sat, 29 Dec 2018 21:21:14 GMT  
		Size: 861.8 KB (861756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e47ee1b5b201e1229d3ccc094f369abfc6e36b93943f209aefacf87f95f9fd63`  
		Last Modified: Sat, 29 Dec 2018 21:23:29 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd02c0e8bcb3024c0016ee3e598e23b0b88c81a69047d8e1eea8564f6c10a0eb`  
		Last Modified: Sat, 29 Dec 2018 21:23:29 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08d287a9b9429a131addf77e928aa1ceb0de8fbdf9c969f16ed6ed3ab1b55cfd`  
		Last Modified: Sat, 29 Dec 2018 21:23:53 GMT  
		Size: 122.6 MB (122608238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e17518fa30aa674d0c74fc2c0603c35935f2200f092ad394f364810189588c10`  
		Last Modified: Tue, 01 Jan 2019 12:00:51 GMT  
		Size: 467.6 KB (467561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca1c539d5e68c37a550f1c60bc2d07f15c6b21cb6ecfbb665dcfd84a088cf896`  
		Last Modified: Tue, 01 Jan 2019 12:00:51 GMT  
		Size: 783.1 KB (783094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81cfcfaec6241f7f97519c9bf0f3b08f2650ada9ff9c5c7366121d22bfd49806`  
		Last Modified: Tue, 01 Jan 2019 12:09:36 GMT  
		Size: 4.5 KB (4531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2797cb4bf2ee97f5f2eaccc4e632379408c91fb8bb3360572f3ad8e375ae47`  
		Last Modified: Tue, 01 Jan 2019 12:09:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640d9e616b6f2a4ae3ec4da797fc2d79b2d84eaefa87441ee3f01d377aa38e8f`  
		Last Modified: Tue, 01 Jan 2019 12:09:36 GMT  
		Size: 61.6 KB (61621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc1ac2b27526107b2e7c3e45914ec7e75d0713303cb712f12d2f65e8c9556950`  
		Last Modified: Tue, 01 Jan 2019 12:09:56 GMT  
		Size: 258.7 MB (258726864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804ed5bfceeb3d042de7b8861e5694c870a3fed55ffffe8865a54f9807a53071`  
		Last Modified: Thu, 17 Jan 2019 11:42:33 GMT  
		Size: 1.1 KB (1140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11` - linux; ppc64le

```console
$ docker pull flink@sha256:605c70fb0536f7d21535282a9d8a25df3f0449449b2cdecd7a0d7a8572324aa1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435311651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89900dcb27135e5ead3a92e1ad9b035b6cec3a3c55b06a2bf3c3d2ada9915e45`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:26:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:42:39 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:42:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 12:42:51 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 12:42:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 12:42:57 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 12:42:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 12:49:41 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 17:57:30 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:57:32 GMT
ENV GOSU_VERSION=1.7
# Sat, 29 Dec 2018 17:57:42 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 01 Jan 2019 10:06:24 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 01 Jan 2019 10:06:26 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 01 Jan 2019 10:06:28 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Jan 2019 10:06:33 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 01 Jan 2019 10:06:36 GMT
WORKDIR /opt/flink
# Tue, 01 Jan 2019 10:06:38 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz
# Tue, 01 Jan 2019 10:06:39 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz.asc
# Tue, 01 Jan 2019 10:06:41 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 01 Jan 2019 10:08:49 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 17 Jan 2019 09:33:12 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Thu, 17 Jan 2019 09:33:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 09:33:15 GMT
EXPOSE 6123 8081
# Thu, 17 Jan 2019 09:33:16 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce878902ab14c81278ee0033aab4de97d8037e046834071553b9aa82798160a`  
		Last Modified: Sat, 29 Dec 2018 12:56:43 GMT  
		Size: 848.3 KB (848343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04a4d53d18918f77039a0b0b87db429caec91761df724796f525a9d8d044cea9`  
		Last Modified: Sat, 29 Dec 2018 13:00:34 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374c40d515e815bd9af595a34e8a4ad8ff9b20774fadfc7d0593539748e35adc`  
		Last Modified: Sat, 29 Dec 2018 13:00:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043067f93b5ac535434b3b8b27a0b8590b8ac822e8f6783143f3791a25acb22a`  
		Last Modified: Sat, 29 Dec 2018 13:01:06 GMT  
		Size: 114.5 MB (114545636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1929b15f460fb9cccac1e329ad62b37445b3761a06b3387d34120f0371875dce`  
		Last Modified: Tue, 01 Jan 2019 10:37:52 GMT  
		Size: 468.3 KB (468263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aec64177dc107b2546605756d73de42f2ae2dc06d33504c5bca0ef3f424ce0f`  
		Last Modified: Tue, 01 Jan 2019 10:37:51 GMT  
		Size: 767.0 KB (766994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae59978a06696d99b6be2874e2e7071211d16ddd75bcbfec8f80bb3db098da83`  
		Last Modified: Tue, 01 Jan 2019 10:53:01 GMT  
		Size: 4.6 KB (4612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bd4394f309c48f84eac32c7aed709a36b8bbb6ce06b10d37b8e00a8b3646f9`  
		Last Modified: Tue, 01 Jan 2019 10:53:01 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0f1a92896868d9f1e028fcd874e709d1fafa60004d2a1e818a12f206c0d0c2`  
		Last Modified: Tue, 01 Jan 2019 10:53:01 GMT  
		Size: 61.6 KB (61619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca5958bffb2ba2ce27c80373f06ebe02a48aa1f9b84ac5d3752663215294ed5`  
		Last Modified: Tue, 01 Jan 2019 10:53:25 GMT  
		Size: 258.7 MB (258726666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe273bb36a0b2c074e7caa42166c816704843ab55f1153466e60dfea0e942d23`  
		Last Modified: Thu, 17 Jan 2019 09:40:41 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
