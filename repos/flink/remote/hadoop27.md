## `flink:hadoop27`

```console
$ docker pull flink@sha256:51383d3fbf8dbac82e6a44bcda0e02908bec7387b2f37c8e1165f30ea1b7be52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `flink:hadoop27` - linux; amd64

```console
$ docker pull flink@sha256:72e804c42e330701f316efdb3c4874d176829c1877da226250894447a127c888
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.1 MB (474140814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:216c27fcee876c130e0eb927ac118d73d1f807fd1982dd64f75d4f9ae4807d7b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:44 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:45 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:29:46 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 14:55:56 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 14:55:56 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Feb 2019 14:56:01 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 20 Feb 2019 02:24:25 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Wed, 20 Feb 2019 02:24:25 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 20 Feb 2019 02:24:25 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Feb 2019 02:24:26 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 20 Feb 2019 02:24:26 GMT
WORKDIR /opt/flink
# Wed, 20 Feb 2019 02:24:27 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Wed, 20 Feb 2019 02:24:27 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Wed, 20 Feb 2019 02:24:27 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Wed, 20 Feb 2019 02:25:22 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 20 Feb 2019 02:25:23 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Wed, 20 Feb 2019 02:25:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Feb 2019 02:25:23 GMT
EXPOSE 6123 8081
# Wed, 20 Feb 2019 02:25:23 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca74b3d90c15cc3066bb46f8b6cdb617805b39e46ba39b891e4592b601abaee1`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f11a643c4a8511e3f7d00a7f7c01059bf804876833992895eebbbaf108399655`  
		Last Modified: Wed, 06 Feb 2019 08:54:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eafed73b65f1719e1ad5446e1f57859feb2f71f0b21d5f0bd25fb7d0d6dbd5`  
		Last Modified: Wed, 06 Feb 2019 08:54:52 GMT  
		Size: 122.1 MB (122121101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59f493664954dfa5f61741219ac7637267819b4b9ef7fc9481841a1e57eb8fe`  
		Last Modified: Wed, 06 Feb 2019 15:08:23 GMT  
		Size: 466.4 KB (466359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1ccad5dd0dcfd802a581ee12636efc1f0038b9c7159d4f01cc9e352a9c7b81`  
		Last Modified: Wed, 06 Feb 2019 15:08:23 GMT  
		Size: 819.2 KB (819178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb4611c323e14158c804b7036303075894d621246e9e5a8d1c37321405dd00e6`  
		Last Modified: Wed, 20 Feb 2019 02:40:42 GMT  
		Size: 4.6 KB (4613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba3ac7fd73f88d72d7fc00a06c60ac164fdf9cdeb29b4c7527535d81764142a`  
		Last Modified: Wed, 20 Feb 2019 02:40:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa623faa0601d49bff3c28c4359685e877dae5f6ddfa99c36565d7ce61b6dab3`  
		Last Modified: Wed, 20 Feb 2019 02:40:42 GMT  
		Size: 61.6 KB (61621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a445f914ad0a4c0ad90bf84e6d398513bdabf9c7007237267b2b5afd526cacfa`  
		Last Modified: Wed, 20 Feb 2019 02:40:59 GMT  
		Size: 289.3 MB (289347963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0315b11125abf4b67bbe2d404953ce83caf2b51d313881ef911eed480ca8f2`  
		Last Modified: Wed, 20 Feb 2019 02:40:42 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27` - linux; arm variant v5

```console
$ docker pull flink@sha256:33355c7d27b11efd0f180e762ed8266c2bbe05ea49031f567176d48b1d3b5ab6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.5 MB (461472102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f60ee27fbec243bbccc8409d3af7f6ad67158fcedf96677daf4b4fa4acbfe3e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:21 GMT
ADD file:cde688211f1222c7310b330ab44ca3a7040b0f81757aa06eb186f342f9002e9e in / 
# Wed, 06 Feb 2019 09:55:23 GMT
CMD ["bash"]
# Sat, 02 Mar 2019 09:58:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 09:58:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 02 Mar 2019 11:01:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 11:05:08 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 11:05:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 02 Mar 2019 11:05:11 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 02 Mar 2019 11:05:11 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 02 Mar 2019 11:05:12 GMT
ENV JAVA_VERSION=8u181
# Sat, 02 Mar 2019 11:05:12 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 02 Mar 2019 11:06:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 02 Mar 2019 11:45:22 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 11:45:22 GMT
ENV GOSU_VERSION=1.7
# Sat, 02 Mar 2019 11:45:27 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Sat, 02 Mar 2019 11:57:12 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Sat, 02 Mar 2019 11:57:12 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 02 Mar 2019 11:57:12 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 11:57:14 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Sat, 02 Mar 2019 11:57:14 GMT
WORKDIR /opt/flink
# Sat, 02 Mar 2019 11:57:14 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Sat, 02 Mar 2019 11:57:15 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Sat, 02 Mar 2019 11:57:15 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Sat, 02 Mar 2019 11:58:14 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Sat, 02 Mar 2019 11:58:16 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Sat, 02 Mar 2019 11:58:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 02 Mar 2019 11:58:17 GMT
EXPOSE 6123 8081
# Sat, 02 Mar 2019 11:58:17 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:64cbc7a69a80c9845c477fed607dbdc662a2e90c861ea5e3ede337e672e7235a`  
		Last Modified: Wed, 06 Feb 2019 10:03:29 GMT  
		Size: 44.1 MB (44050880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4134cc1b13a896b7996124760d484efd7aecc2c58a704688b99722f4ddd6fb`  
		Last Modified: Sat, 02 Mar 2019 10:08:11 GMT  
		Size: 9.9 MB (9851916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26306a44df68f962e0c10b777285eb2942cbaa049ba33077bb17925e8a7749ba`  
		Last Modified: Sat, 02 Mar 2019 10:08:09 GMT  
		Size: 4.2 MB (4159040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d894404adbbff8e16a23a05510fad65f0628fad22a75ece770743b17f3bfce1`  
		Last Modified: Sat, 02 Mar 2019 11:08:48 GMT  
		Size: 846.0 KB (845953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6a03a3c4d9f60013fb9cdc6828f0d7727d26f9aff8671d86495c2fef7d54c2`  
		Last Modified: Sat, 02 Mar 2019 11:10:21 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3317438751adebc89038782a40d1b48fdf0ff79b91b6187c18b492ccc4f9e0c8`  
		Last Modified: Sat, 02 Mar 2019 11:10:21 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd9ee2c35a7f2e79f29784606b22dedcb34eed977b9912727394fee8a3bdc1f`  
		Last Modified: Sat, 02 Mar 2019 11:10:54 GMT  
		Size: 111.9 MB (111904609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc148d26031710870d24d841cf69a689c904c74493697cd2d45d8f78298c338`  
		Last Modified: Sat, 02 Mar 2019 12:05:04 GMT  
		Size: 466.4 KB (466445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0352874da81c14cb1a3475a37d70cc253fcadd8af724eacd6ef482a6375b9a6`  
		Last Modified: Sat, 02 Mar 2019 12:05:04 GMT  
		Size: 777.7 KB (777671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c69f9087bf42e11e6eb81e997b86cb0124f02519c210411f012c082dbf13efe`  
		Last Modified: Sat, 02 Mar 2019 12:13:12 GMT  
		Size: 4.5 KB (4532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b5a2f61de2c6d553a97462d32a685289ae7136e4dca5f5e76a22f971360a68`  
		Last Modified: Sat, 02 Mar 2019 12:13:12 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f448fc33475155d2425cdf2c6801c37bf4c9278669a51752927dc90f9ae0375`  
		Last Modified: Sat, 02 Mar 2019 12:13:12 GMT  
		Size: 61.6 KB (61619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8965bada5b9f146896a7508f8ff2508b4abdd9100fea0bb9ffb1f586e18995`  
		Last Modified: Sat, 02 Mar 2019 12:13:50 GMT  
		Size: 289.3 MB (289347767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d62032556cfd7e1c23b2780a35ca62daa94afce8382111eeedbf29ca63b293`  
		Last Modified: Sat, 02 Mar 2019 12:13:12 GMT  
		Size: 1.1 KB (1142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27` - linux; arm variant v7

```console
$ docker pull flink@sha256:bd83015ce2d4398b01b95823fab5cebd030e1ca2ec4545fd1fcf5f6b370d2a8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.2 MB (457221128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d5bf861cde49c9d34bbed03d78013ba283dc59bd59f5b753a64f2354d82266`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 16:20:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 16:25:56 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 16:25:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 16:25:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 16:26:00 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 26 Feb 2019 13:03:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 26 Feb 2019 13:28:36 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 26 Feb 2019 13:28:37 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Feb 2019 13:28:41 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 26 Feb 2019 13:44:16 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Tue, 26 Feb 2019 13:44:17 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 26 Feb 2019 13:44:17 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Feb 2019 13:44:19 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 26 Feb 2019 13:44:19 GMT
WORKDIR /opt/flink
# Tue, 26 Feb 2019 13:44:20 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Tue, 26 Feb 2019 13:44:20 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Tue, 26 Feb 2019 13:44:21 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 26 Feb 2019 13:47:32 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 26 Feb 2019 13:47:33 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Tue, 26 Feb 2019 13:47:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 26 Feb 2019 13:47:34 GMT
EXPOSE 6123 8081
# Tue, 26 Feb 2019 13:47:34 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c420ea54f7dd3d1803a8fcf35d65c4a0a551de781aec1eb255c1c7f44874ece1`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 830.2 KB (830219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9db72d234d33511cf937879aaacab93663220b980677ba31c22ac365b8ce15`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae76b7ee144b5654073ec84bee4ec40b2450fb453969a3e05440053e268fc768`  
		Last Modified: Tue, 26 Feb 2019 13:06:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad33b2fb9748522bea57b1d927d8ee0dade4fc5c2a68461e235828a172f948d8`  
		Last Modified: Tue, 26 Feb 2019 13:06:49 GMT  
		Size: 110.3 MB (110263220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a991f7da8d7c28c616902db5b6b81a8b4abf1ef9357f721028aa0bf99d67fd2a`  
		Last Modified: Tue, 26 Feb 2019 13:52:21 GMT  
		Size: 464.1 KB (464102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc63b27a2b1754c3dc605a4caf49e82113c76ccd09827b4bb0514f948525a9e3`  
		Last Modified: Tue, 26 Feb 2019 13:52:21 GMT  
		Size: 761.9 KB (761881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11338d9c68a6f79c35bf91337862eb3895749c382ac64c7c8a8dde1f5f4e72c`  
		Last Modified: Tue, 26 Feb 2019 14:00:37 GMT  
		Size: 4.5 KB (4534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a25d8bae565164ccd6bde422cd6eb1af1402ac0686a06261449edfee71c6b1`  
		Last Modified: Tue, 26 Feb 2019 14:00:37 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ac88cbd1c182973227a775515dc4d2126f027a427c069ba5ae0c267f63370e`  
		Last Modified: Tue, 26 Feb 2019 14:00:38 GMT  
		Size: 61.6 KB (61621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b208877dc082861defebbfa6da8d59c2b386aa9111f134a9f05019434aa102e`  
		Last Modified: Tue, 26 Feb 2019 14:01:18 GMT  
		Size: 289.3 MB (289347739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79feab955a839d6c49cf16dc1668c22abb0373073e2fa30b8c4127e202181315`  
		Last Modified: Tue, 26 Feb 2019 14:00:37 GMT  
		Size: 1.1 KB (1140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:569874395c5f0da1597f27ffa0a6961d5391b83a3f801b017a6baf2dd6741937
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.2 MB (461189632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51ac7afdd7cb251ef42932331fd0eae3c66eccefc889540d7224cb92f8394ac6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 12:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:21:27 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:21:37 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 12:21:38 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 12:21:39 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 12:21:41 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 12:27:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 07:28:34 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 07:28:35 GMT
ENV GOSU_VERSION=1.7
# Thu, 07 Feb 2019 07:28:42 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 20 Feb 2019 09:58:42 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Wed, 20 Feb 2019 09:58:43 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 20 Feb 2019 09:58:44 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Feb 2019 09:58:51 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 20 Feb 2019 09:58:53 GMT
WORKDIR /opt/flink
# Wed, 20 Feb 2019 09:58:55 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Wed, 20 Feb 2019 09:58:57 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Wed, 20 Feb 2019 09:59:00 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Wed, 20 Feb 2019 10:00:34 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 20 Feb 2019 10:00:35 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Wed, 20 Feb 2019 10:00:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Feb 2019 10:00:37 GMT
EXPOSE 6123 8081
# Wed, 20 Feb 2019 10:00:39 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f78a9a3946c048cd1989adcb19ce142726814f9404f8ba27e6f67109ffbbcb4`  
		Last Modified: Wed, 06 Feb 2019 12:38:38 GMT  
		Size: 839.2 KB (839181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878c79f6988625ee5f4324e98135b17b7efeaa9075d4564d50ae21a8d7d0a5d9`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:783443219103599e6e7f0ceca2dfa1f8d755ced3dd4f5d8dffe801d82c6f1c26`  
		Last Modified: Wed, 06 Feb 2019 12:43:26 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d15746098decd81522d87e08b556d729daed66739f70ccbcf9a4049b5ba3f5e`  
		Last Modified: Wed, 06 Feb 2019 12:44:11 GMT  
		Size: 112.8 MB (112756331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73654a98427af55b1595a7d1111179cf857c0e323bd97b512d971fc014998e25`  
		Last Modified: Thu, 07 Feb 2019 08:26:57 GMT  
		Size: 466.9 KB (466877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1fa10ec105811b0b21421efe7a6dad0730e2c4ecbd5299963ea7bce2e24b7c`  
		Last Modified: Thu, 07 Feb 2019 08:26:56 GMT  
		Size: 764.4 KB (764413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d3cefa2dbbbc264c4c30f65d1c4249367aa8b11ba325186dba29025664ba5`  
		Last Modified: Wed, 20 Feb 2019 10:43:37 GMT  
		Size: 4.7 KB (4658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764116d37fdd21270eb7796a8edcd296ef1482711ddbc1c87e6b08ea15c7d7a0`  
		Last Modified: Wed, 20 Feb 2019 10:43:35 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62e0c703c917e975c0fe8fa298446f1794412af7937c1adf9e563a107f77bf7`  
		Last Modified: Wed, 20 Feb 2019 10:43:35 GMT  
		Size: 61.6 KB (61621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa497dd0c188996ccd4241a4cd8fd0c8cd4184bf916de7f3db08c76e7c914e9`  
		Last Modified: Wed, 20 Feb 2019 10:44:16 GMT  
		Size: 289.3 MB (289347966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e00c9ca2f5b91b47d9b1c440e790b52b76a8d97e0fa14eb55fbc6a0b801fbd4`  
		Last Modified: Wed, 20 Feb 2019 10:43:35 GMT  
		Size: 1.1 KB (1140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27` - linux; 386

```console
$ docker pull flink@sha256:b142eb7cfa9fe99256120e6469ad6886b322047331696e64a3e6e0fdd2a3d9e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.6 MB (475566387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:685507a5bb434ce8c1065e9e1afef9bf3337fda7bea97ef6303d85d3c6d3d1e1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:23:57 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:23:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Thu, 07 Feb 2019 06:24:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 07:12:48 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 07:12:48 GMT
ENV GOSU_VERSION=1.7
# Thu, 07 Feb 2019 07:12:52 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 20 Feb 2019 11:41:31 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Wed, 20 Feb 2019 11:41:32 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 20 Feb 2019 11:41:32 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Feb 2019 11:41:33 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 20 Feb 2019 11:41:33 GMT
WORKDIR /opt/flink
# Wed, 20 Feb 2019 11:41:33 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Wed, 20 Feb 2019 11:41:33 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Wed, 20 Feb 2019 11:41:33 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Wed, 20 Feb 2019 11:41:51 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 20 Feb 2019 11:41:51 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Wed, 20 Feb 2019 11:41:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Feb 2019 11:41:51 GMT
EXPOSE 6123 8081
# Wed, 20 Feb 2019 11:41:52 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404daee469e7110f87d6cff18a56b702c9a559f4ed1a9dbfc19dd4b7f467a8f6`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0682ae720b17c31fb2604657fce4f6666c5d10dcc28fbdddb7975c40d0580`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468d39d4f0a7aefb8c7ff17aaf6f1d629af13da8f2ba011b60f91a4406c232f`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cae5e57702086236a1f8f63a621c95b430457a22febdd0cee00cb145ea7c53f`  
		Last Modified: Thu, 07 Feb 2019 06:41:28 GMT  
		Size: 122.6 MB (122608632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ae8c35c9254e9d0173239970dff6e9de711b1beae5ddc28a631e0c6f4c8adf`  
		Last Modified: Thu, 07 Feb 2019 07:31:51 GMT  
		Size: 467.5 KB (467527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8124ba70e48d3aa1d377e62522c44cb03cd119132de5dcd16202fb12971558`  
		Last Modified: Thu, 07 Feb 2019 07:31:50 GMT  
		Size: 783.1 KB (783095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0066cfd7125bd736c31eff63967918887fd5eae18b6ae16ce42cf5ae796a88`  
		Last Modified: Wed, 20 Feb 2019 11:54:45 GMT  
		Size: 4.5 KB (4533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d541a7e982bfcbe04e55c2682460f6cb5ca73af881826c577010f6e95db0b6`  
		Last Modified: Wed, 20 Feb 2019 11:54:44 GMT  
		Size: 112.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d52b9f28b6834c236ff6e85e385684bee6731cfd2f1181eee2bd71ceeba3de`  
		Last Modified: Wed, 20 Feb 2019 11:54:45 GMT  
		Size: 61.6 KB (61621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601e4d02eb4af0b859174d10e76ffeaa04db3e550523c5722b43663e4a9b0023`  
		Last Modified: Wed, 20 Feb 2019 11:55:06 GMT  
		Size: 289.3 MB (289347868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fb5d4a458e7995debe808d93df89c96a17bd422ea1ebb592cf88881cfd0d18`  
		Last Modified: Wed, 20 Feb 2019 11:54:44 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27` - linux; ppc64le

```console
$ docker pull flink@sha256:f628929761a4d8346024dd3e83332178fc19a8a736a3951d104fe0d6ff3b5d65
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **465.9 MB (465942045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:522bba8a6c37b43b60bf7cace49356ade1e73b10e39b3872eab2d2013d9ecb84`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:32:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 20:32:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 20:32:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 20:32:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 20:32:42 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 20:32:44 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 20:36:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 22:47:44 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 22:47:45 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Feb 2019 22:47:53 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Wed, 20 Feb 2019 09:33:51 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Wed, 20 Feb 2019 09:33:53 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 20 Feb 2019 09:33:56 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 20 Feb 2019 09:34:02 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Wed, 20 Feb 2019 09:34:08 GMT
WORKDIR /opt/flink
# Wed, 20 Feb 2019 09:34:12 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Wed, 20 Feb 2019 09:34:15 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Wed, 20 Feb 2019 09:34:17 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Wed, 20 Feb 2019 09:36:48 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Wed, 20 Feb 2019 09:36:50 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Wed, 20 Feb 2019 09:36:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 20 Feb 2019 09:36:54 GMT
EXPOSE 6123 8081
# Wed, 20 Feb 2019 09:36:56 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3c6e73e1f3f727588bd1de44f5524879a3591bba13b256a67f0a03adbb788322`  
		Last Modified: Wed, 06 Feb 2019 09:30:55 GMT  
		Size: 45.6 MB (45616945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31cd7008a155452b9ece7c7dab0d6e7567ef8c55f2df5ff999e45c309031982`  
		Last Modified: Wed, 06 Feb 2019 19:28:30 GMT  
		Size: 10.0 MB (9986460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f96c2690a341be01eb7e79a7624948d65549f3a26a1adc1b9a5a669523505ea`  
		Last Modified: Wed, 06 Feb 2019 19:28:28 GMT  
		Size: 4.3 MB (4295659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f20bf77b1e398ca4193dcade8311e979631c9beebc1553ccb5b6209e93c223`  
		Last Modified: Wed, 06 Feb 2019 20:39:19 GMT  
		Size: 848.3 KB (848322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c52cbb8911f73b6eaccec2474854ce85cdfe113fcb472dedcb2cd7be5f34eee`  
		Last Modified: Wed, 06 Feb 2019 20:40:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196e6779b3814f4f06649c3d26f2d5423fc3ad80a6da543f04c6950051d9ce28`  
		Last Modified: Wed, 06 Feb 2019 20:40:45 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d377fb0231d449d8c795a13f64f6439fb0346503591a11ce8500dae89e5099ea`  
		Last Modified: Wed, 06 Feb 2019 20:42:07 GMT  
		Size: 114.5 MB (114543961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a30c74414eaca0ec583becf09898b19f36012fdc8c65e6c1e9e4329504aad9e`  
		Last Modified: Wed, 06 Feb 2019 23:59:31 GMT  
		Size: 468.0 KB (468021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5507570bfc7cedc85825fa79645fdd11c714743bef4e4ddd64f7365ba7bf9c6d`  
		Last Modified: Wed, 06 Feb 2019 23:59:31 GMT  
		Size: 767.0 KB (766998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3494a8afabb9254ccba02a590be4d9a47e7f9562e8b4deaedb21aa2d6c637e14`  
		Last Modified: Wed, 20 Feb 2019 10:21:40 GMT  
		Size: 4.6 KB (4620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0535f9ff323ddcb2f6a717a178f6de878cc0b3f62970f22b63d448a398e92554`  
		Last Modified: Wed, 20 Feb 2019 10:21:39 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add0c8fbce0a0416810637849ae2e67cdd541b9727eeca4c746f8c9963a6f83c`  
		Last Modified: Wed, 20 Feb 2019 10:21:40 GMT  
		Size: 61.6 KB (61620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e200a56ea5bfd46b8c6e474a077855b7035ffceee7e42190d78de50a6d63f41`  
		Last Modified: Wed, 20 Feb 2019 10:22:05 GMT  
		Size: 289.3 MB (289347770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b85a0d9f9c9f54451c2f01f2b0c3429ca04d126d9f03ef0cbf572d0eec24111`  
		Last Modified: Wed, 20 Feb 2019 10:21:39 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
