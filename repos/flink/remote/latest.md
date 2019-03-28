## `flink:latest`

```console
$ docker pull flink@sha256:aa0df98e9b4f044b47cda62ed361f1faaa90243e1e02727588954fdae81e2d1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `flink:latest` - linux; amd64

```console
$ docker pull flink@sha256:12e7eb5ea97c0108925cece60e468598932cb3b43915eb34d850153200d041b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.9 MB (436909624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e0a82531cccaba30a2bd53f9aaca40005b8a1a20cc14e28e949fb3c34ad837`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:57 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Mar 2019 23:27:26 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:27:27 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:28:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:41:59 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 00:41:59 GMT
ENV GOSU_VERSION=1.7
# Thu, 28 Mar 2019 00:42:03 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 28 Mar 2019 02:50:33 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=scala_2.12
# Thu, 28 Mar 2019 02:50:33 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 28 Mar 2019 02:50:33 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 02:50:34 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 28 Mar 2019 02:50:34 GMT
WORKDIR /opt/flink
# Thu, 28 Mar 2019 02:50:34 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz
# Thu, 28 Mar 2019 02:50:35 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz.asc
# Thu, 28 Mar 2019 02:50:35 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Thu, 28 Mar 2019 02:50:49 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 28 Mar 2019 02:50:49 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Thu, 28 Mar 2019 02:50:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 02:50:50 GMT
EXPOSE 6123 8081
# Thu, 28 Mar 2019 02:50:50 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceaac3b844f7ebdc4f2bac1b66847dee29481bfe3f6b67683491b22383c1928d`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f01b722a52db8d5c67facd263893c5199b89fbf56505dd2051434721fbd302`  
		Last Modified: Wed, 27 Mar 2019 23:46:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23be56a9ac10e0c4c248ce8cdf6ac08504088243c6a3878ac4681a7289c611e`  
		Last Modified: Wed, 27 Mar 2019 23:47:05 GMT  
		Size: 122.2 MB (122173052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804bc7ecfb9b6a3c25c5a6a52077d5927a1787f81d3c7b91993ced21a6f52579`  
		Last Modified: Thu, 28 Mar 2019 03:06:45 GMT  
		Size: 466.5 KB (466549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29932cebaa8e0a4faa5c4088323c7b9f78e93fd26cbe05a39cc0d49c6cfc72fd`  
		Last Modified: Thu, 28 Mar 2019 03:06:45 GMT  
		Size: 819.2 KB (819177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:812f77107a8e0b8890b8b52cf89aef6c7174831ee2ca609da9d6beac9c0039a5`  
		Last Modified: Thu, 28 Mar 2019 03:15:17 GMT  
		Size: 4.6 KB (4609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a455165464b8b5d7d35ddc299eef52d1b6439506ac679a377f1b64b9c13667`  
		Last Modified: Thu, 28 Mar 2019 03:15:17 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360ab270ea0cf91e6be59d947269e5fedcdf5eda0accb737206cfbaaac30a4d7`  
		Last Modified: Thu, 28 Mar 2019 03:15:17 GMT  
		Size: 64.0 KB (63967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67cd36eb1afd52c647ef716668128f93c6a8cafc3002d0366398d74fef43747b`  
		Last Modified: Thu, 28 Mar 2019 03:15:31 GMT  
		Size: 252.1 MB (252063019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd9c279f69d47b7e6627b895b2ec6197d5776930ca75864779086c90328c2e4`  
		Last Modified: Thu, 28 Mar 2019 03:15:17 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:latest` - linux; arm variant v5

```console
$ docker pull flink@sha256:305d267893c0e2493f139ae9ace1f7c8f7929132704453943a53b78535d35383
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.2 MB (424216499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75403e7f074da54953775c1073a8bb1fc9f4a0348a8e8f0769755158045c0684`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:37 GMT
ADD file:55757b58d47ad1bd75530ef5bfd90c3354b7da7cbb3519f8bedc170b9e2a5d9c in / 
# Wed, 27 Mar 2019 08:53:38 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:54:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:54:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:06:26 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:06:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:06:29 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:06:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:58:56 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:58:56 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 09:00:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:30:31 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 09:30:32 GMT
ENV GOSU_VERSION=1.7
# Thu, 28 Mar 2019 09:30:37 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 28 Mar 2019 09:58:07 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=scala_2.12
# Thu, 28 Mar 2019 09:58:08 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 28 Mar 2019 09:58:08 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 09:58:09 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 28 Mar 2019 09:58:10 GMT
WORKDIR /opt/flink
# Thu, 28 Mar 2019 09:58:10 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz
# Thu, 28 Mar 2019 09:58:11 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz.asc
# Thu, 28 Mar 2019 09:58:11 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Thu, 28 Mar 2019 09:59:05 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 28 Mar 2019 09:59:06 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Thu, 28 Mar 2019 09:59:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 09:59:07 GMT
EXPOSE 6123 8081
# Thu, 28 Mar 2019 09:59:07 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:f924f7b5a6a0a527f783d52778b09ae800121ce3fdd0812c44366174092a5573`  
		Last Modified: Wed, 27 Mar 2019 08:59:18 GMT  
		Size: 44.0 MB (44029721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9493ad08ec9883c81689003b68a06292c9e69f0d1227c28f63a7ec4ed0c17739`  
		Last Modified: Wed, 27 Mar 2019 10:09:42 GMT  
		Size: 9.9 MB (9851920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63792336dd728e502aed649c428b2e9514dce0e6c6b3f7d19491d103567bbdb1`  
		Last Modified: Wed, 27 Mar 2019 10:09:40 GMT  
		Size: 4.2 MB (4158987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36a7f122df934d8328e113872e47a73005356d1d3c40be62cd8d9a980e065c0`  
		Last Modified: Wed, 27 Mar 2019 12:21:45 GMT  
		Size: 845.9 KB (845888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b3abe52baa65b86283f7e235d5237569d369ae77320f91b47da932fe8eed2f`  
		Last Modified: Thu, 28 Mar 2019 09:11:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e4945cb29704e289c664314b9f7c016d526d98dd9cd6e6949b4a84fd5036957`  
		Last Modified: Thu, 28 Mar 2019 09:11:47 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a99bc44b6df6ae48853c8b4e35f7cea1d57455c93684ca7bd7f36815ecc28e`  
		Last Modified: Thu, 28 Mar 2019 09:12:19 GMT  
		Size: 112.0 MB (111952139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a50cca822cc775b88740fe78949fccb0fa123305101340288dcd6402a461ce`  
		Last Modified: Thu, 28 Mar 2019 09:59:38 GMT  
		Size: 466.4 KB (466425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4b3af9fe877c3f1b0f930c88c2dc487d1ccaa125e1d334623e0f1baf39f8767`  
		Last Modified: Thu, 28 Mar 2019 09:59:38 GMT  
		Size: 777.7 KB (777668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0540630b999186cb251d43588f6197cfbb1909c1cf0dac961fe25fd664e6d5`  
		Last Modified: Thu, 28 Mar 2019 10:11:27 GMT  
		Size: 4.5 KB (4529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca65f2acce22f83d1f83c8613cad5042bec05378c54b176714bb9286e1c2cb5`  
		Last Modified: Thu, 28 Mar 2019 10:11:27 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba1eb9b9b5feafeffe8e8f9bf9d912f8451b444ace68346ae62a8e2f40747a7`  
		Last Modified: Thu, 28 Mar 2019 10:11:27 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:703909e32b7d8f72f9e97c2889d1e332c284b235eb8638bd19efca4f00c047f1`  
		Last Modified: Thu, 28 Mar 2019 10:12:51 GMT  
		Size: 252.1 MB (252063488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27d260490434ec7f1e19c4ac68c47e233b377036c548f680603db2903fa973b`  
		Last Modified: Thu, 28 Mar 2019 10:11:27 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:latest` - linux; arm variant v7

```console
$ docker pull flink@sha256:3d79bdbdddb6ad689ac919bdc01c337ed652c109651d4f08fc2b56dcf7c3011b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.0 MB (419977309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3875182bbdc1d98138422f3c22fe6b557a26838c2fe78c92d8f4a79a0da7ec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 14:55:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 14:57:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 14:57:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 14:57:34 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 14:57:34 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 12:06:13 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 12:06:14 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 12:07:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 12:42:09 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 12:42:10 GMT
ENV GOSU_VERSION=1.7
# Thu, 28 Mar 2019 12:42:15 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 28 Mar 2019 13:13:57 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=scala_2.12
# Thu, 28 Mar 2019 13:13:57 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 28 Mar 2019 13:13:58 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 13:13:59 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 28 Mar 2019 13:14:00 GMT
WORKDIR /opt/flink
# Thu, 28 Mar 2019 13:14:00 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz
# Thu, 28 Mar 2019 13:14:00 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz.asc
# Thu, 28 Mar 2019 13:14:01 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Thu, 28 Mar 2019 13:14:20 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 28 Mar 2019 13:14:22 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Thu, 28 Mar 2019 13:14:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 13:14:22 GMT
EXPOSE 6123 8081
# Thu, 28 Mar 2019 13:14:23 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ea8bc391487f71c5812063757eb1ae6384bb6b37abd164a13e4266639736c6`  
		Last Modified: Thu, 28 Mar 2019 12:18:52 GMT  
		Size: 830.2 KB (830237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9d40e500f4fb45ea3ca12342d3acee8435571ed175665850bef38780f5fd71`  
		Last Modified: Thu, 28 Mar 2019 12:18:52 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e05255e5e7229be634b182a7f27d7daee45461702096031dc9f384961684aee3`  
		Last Modified: Thu, 28 Mar 2019 12:18:52 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5a9fd481f78a8c231dba6dc14a84b6fa341e4d64ccfac3bd47d69eca941d88`  
		Last Modified: Thu, 28 Mar 2019 12:19:22 GMT  
		Size: 110.3 MB (110310095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b58c77b1fa7e5e56d480ea9649d7e82f87953214444a3636fc30444588be29`  
		Last Modified: Thu, 28 Mar 2019 13:30:41 GMT  
		Size: 464.1 KB (464126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3495c779fcf65fe8adb80267d044bad352985437f91a747f6fb9ead9892e504e`  
		Last Modified: Thu, 28 Mar 2019 13:30:41 GMT  
		Size: 761.9 KB (761883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae92d22fab4fe735bb56f1f6b9fbefe6736b6073ed72a274c51c9b20f2903d19`  
		Last Modified: Thu, 28 Mar 2019 13:46:14 GMT  
		Size: 4.5 KB (4532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80115195ba3e1aa652f47daa0fddca8be25d95c6d141d7017e47f2131a5c2b3a`  
		Last Modified: Thu, 28 Mar 2019 13:46:14 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84e100f13483be3f279814b327549fece56b97d81fd88df6a9cd058ea1193292`  
		Last Modified: Thu, 28 Mar 2019 13:46:14 GMT  
		Size: 64.0 KB (63967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87566735743a905c90361b059086e6bc98cc236e1f4d967e9add0677cebf704a`  
		Last Modified: Thu, 28 Mar 2019 13:46:48 GMT  
		Size: 252.1 MB (252063481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8de101a098cd4310673c28fcadda1ffcd7c37f105c5368c54ad1715aec2098d`  
		Last Modified: Thu, 28 Mar 2019 13:46:14 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:latest` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:bfe544f4775731b2a2f9dd77c544cc7c0dfbf9ec45defe2b14bfebc63fc85a89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.2 MB (424235564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511bd3ecd94ed42428ee8d5ca1f8103f31803be179c6d403aca21c160d460b82`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 19:27:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:36:54 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:36:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:36:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:37:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 04:01:01 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 04:01:05 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 04:06:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 05:29:59 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 05:30:00 GMT
ENV GOSU_VERSION=1.7
# Thu, 28 Mar 2019 05:30:08 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 28 Mar 2019 06:56:20 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=scala_2.12
# Thu, 28 Mar 2019 06:56:21 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 28 Mar 2019 06:56:21 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 06:56:25 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 28 Mar 2019 06:56:25 GMT
WORKDIR /opt/flink
# Thu, 28 Mar 2019 06:56:26 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz
# Thu, 28 Mar 2019 06:56:27 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz.asc
# Thu, 28 Mar 2019 06:56:28 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Thu, 28 Mar 2019 06:57:14 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 28 Mar 2019 06:57:15 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Thu, 28 Mar 2019 06:57:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 06:57:16 GMT
EXPOSE 6123 8081
# Thu, 28 Mar 2019 06:57:17 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f9a2434e166bc5bb8f8a3bf11f42053e0ab7483f5ba117a8d95cda3949a304`  
		Last Modified: Wed, 27 Mar 2019 19:43:23 GMT  
		Size: 839.2 KB (839168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35de3b06942b0872f8bddc0e61fbd0adcd351bda7995a3c1498e0bf28d39c9a8`  
		Last Modified: Thu, 28 Mar 2019 04:13:07 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b8d78217f184ff677815878b71fbb8c673f93b382d9d09c8cc34a671f085cc8`  
		Last Modified: Thu, 28 Mar 2019 04:13:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d9e5d36c3694ad4709069f3b65061eb834f5f5a252b8db0bc73eea230e88f7`  
		Last Modified: Thu, 28 Mar 2019 04:13:43 GMT  
		Size: 113.1 MB (113075196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1473a9e9a29d015b2a5c4a2910aa4e3ffaaa2035d6670411f8f81a837503926`  
		Last Modified: Thu, 28 Mar 2019 07:33:42 GMT  
		Size: 466.9 KB (466890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09175a1dd0fadb82103d965365829417be2449e5870c3838d741488881106f15`  
		Last Modified: Thu, 28 Mar 2019 07:33:42 GMT  
		Size: 764.4 KB (764414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067678c091ea63c5618b983041ab0a27ab3f729c883da49f209ac0fb516c43d8`  
		Last Modified: Thu, 28 Mar 2019 07:53:49 GMT  
		Size: 4.6 KB (4643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1174d333ae72ac0f27ec2331b22d9eb5f1ccedb01fb50f2d7dad1d542330e3cd`  
		Last Modified: Thu, 28 Mar 2019 07:53:49 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:539d2df5e26bcf3a9ca9545c6162f676933023eda1bd7b829428b6faadcb8b2e`  
		Last Modified: Thu, 28 Mar 2019 07:53:49 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067872f5fddd653fbcfa5ebc56d7bad9fc5b4aeee33551f10681cd095735798e`  
		Last Modified: Thu, 28 Mar 2019 07:54:23 GMT  
		Size: 252.1 MB (252063018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbbbc80b1b18b23732b0249b30ad17b0febfd3fdfa74bdea4ddbf2faf51a780c`  
		Last Modified: Thu, 28 Mar 2019 07:53:49 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:latest` - linux; 386

```console
$ docker pull flink@sha256:08a32990b60fab7aa3a5a2354409a9f727598e5cc1694173a30a0a98e1fd3755
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.3 MB (438315304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:156231fef1ac4f50e4a73f174d08dcfe6e6684292793d034f5ab374e536af181`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 17:54:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:57:00 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:57:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 17:57:01 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 17:57:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 00:59:33 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 00:59:33 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 01:00:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 01:33:58 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:33:58 GMT
ENV GOSU_VERSION=1.7
# Thu, 28 Mar 2019 01:34:03 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 28 Mar 2019 02:39:40 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=scala_2.12
# Thu, 28 Mar 2019 02:39:41 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 28 Mar 2019 02:39:41 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 02:39:41 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 28 Mar 2019 02:39:42 GMT
WORKDIR /opt/flink
# Thu, 28 Mar 2019 02:39:42 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz
# Thu, 28 Mar 2019 02:39:42 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz.asc
# Thu, 28 Mar 2019 02:39:42 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Thu, 28 Mar 2019 02:40:55 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 28 Mar 2019 02:40:55 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Thu, 28 Mar 2019 02:40:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 02:40:55 GMT
EXPOSE 6123 8081
# Thu, 28 Mar 2019 02:40:55 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fd806a1a8b67c8a925a819d66afef1dda430b0bcda241d525cce8e0388dc9a`  
		Last Modified: Wed, 27 Mar 2019 18:29:59 GMT  
		Size: 861.7 KB (861731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7764bacfd6543fa61d0b5f37873882feb4a1a7949376eb1cde3664b92ca9241c`  
		Last Modified: Thu, 28 Mar 2019 01:17:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf665b23273bc075a095213da65dad4c01d09c20558b40a000db845d839b1b0a`  
		Last Modified: Thu, 28 Mar 2019 01:17:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d793b7bf4f951d9b0c3881222b76985a327401b090e973c58b803992f93a0ce`  
		Last Modified: Thu, 28 Mar 2019 01:18:18 GMT  
		Size: 122.6 MB (122643707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0016e45a7fcf8729baaf8ddc8ce5eb20771e855b43d6ab7de65fe39fadfee964`  
		Last Modified: Thu, 28 Mar 2019 02:53:10 GMT  
		Size: 467.7 KB (467692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e0e17863479018d3d3fb4edd52638acb2b9a58117353bef86d1258cf4b0051b`  
		Last Modified: Thu, 28 Mar 2019 02:53:10 GMT  
		Size: 783.1 KB (783089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fae97351f9aaa39a8315528bb0d7698a64d33a901ca16f2e34a6ed8449acae51`  
		Last Modified: Thu, 28 Mar 2019 03:02:42 GMT  
		Size: 4.5 KB (4527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80997d2ac2a16b6dcbc456aab4df0550a7db5ccc1a856b391796f2ef967a8ba`  
		Last Modified: Thu, 28 Mar 2019 03:02:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a961ddb37d4fb9a565e34094047f68e16dbf9e3a5b526d31841b956b4b84934`  
		Last Modified: Thu, 28 Mar 2019 03:02:42 GMT  
		Size: 64.0 KB (63967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60beec933fcf0d3591b4e7b08c89e13e490ca326a41efabd3fa6e1f2ba2d85b`  
		Last Modified: Thu, 28 Mar 2019 03:03:01 GMT  
		Size: 252.1 MB (252063056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab3d08d26e79ce1e8a2a4df444068339862147c371e63439948f581bfe74e55`  
		Last Modified: Thu, 28 Mar 2019 03:02:42 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:latest` - linux; ppc64le

```console
$ docker pull flink@sha256:728f3e608eba8a9993bb2ba50e74be6d94786f5e8fe65be9bf4e73283ab09c29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.7 MB (428723906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51b7432b8e7682fac1873fccc2cb0a2ede298be60cdb7a475821c9dc95780360`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:48:16 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:48:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:48:27 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:48:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 28 Mar 2019 08:29:25 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:29:30 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:35:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 10:27:05 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 10:27:08 GMT
ENV GOSU_VERSION=1.7
# Thu, 28 Mar 2019 10:27:18 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   for server in $(shuf -e ha.pool.sks-keyservers.net                           hkp://p80.pool.sks-keyservers.net:80                           keyserver.ubuntu.com                           hkp://keyserver.ubuntu.com:80                           pgp.mit.edu) ; do       gpg --batch --keyserver "$server" --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 && break || : ;   done &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   gpgconf --kill all;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Thu, 28 Mar 2019 12:07:48 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=scala_2.12
# Thu, 28 Mar 2019 12:07:54 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 28 Mar 2019 12:07:57 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 12:08:06 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Thu, 28 Mar 2019 12:08:11 GMT
WORKDIR /opt/flink
# Thu, 28 Mar 2019 12:08:15 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz
# Thu, 28 Mar 2019 12:08:18 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-scala_2.12.tgz.asc
# Thu, 28 Mar 2019 12:08:21 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Thu, 28 Mar 2019 12:09:06 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Thu, 28 Mar 2019 12:09:09 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Thu, 28 Mar 2019 12:09:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 12:09:16 GMT
EXPOSE 6123 8081
# Thu, 28 Mar 2019 12:09:22 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8b69d784b5d3f08693229333e0994dd9eb8c79afdfa1ff80a24190714d019`  
		Last Modified: Wed, 27 Mar 2019 12:57:24 GMT  
		Size: 848.4 KB (848351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec55eb306e259c22f5f85e9e1ab2674681fbe25c9f6a46c26306a67256b5279d`  
		Last Modified: Thu, 28 Mar 2019 08:45:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d19db8724fba414a27d7be8145ed3a9c64b5d9f5f1fcc87ee340a4c2ff4e33`  
		Last Modified: Thu, 28 Mar 2019 08:45:12 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0efde2cf64d691f2b71780a6fc9401996c98a1c1c5978140f5c3d6ed0cc31450`  
		Last Modified: Thu, 28 Mar 2019 08:47:01 GMT  
		Size: 114.6 MB (114610443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd4ac788437dc867e6790b6000b415842795c677118e01adb7254bde91357f3`  
		Last Modified: Thu, 28 Mar 2019 12:33:49 GMT  
		Size: 468.4 KB (468380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6af81a08017f9cfa9cabe3cd6856d9d23f067c65e3314fef17dc1d4c92909d`  
		Last Modified: Thu, 28 Mar 2019 12:33:50 GMT  
		Size: 767.0 KB (766995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40dd322e691664d702804176f54c4b6ed866628d3f0a63081a3c30be3b4d2f1`  
		Last Modified: Thu, 28 Mar 2019 14:44:40 GMT  
		Size: 4.6 KB (4611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05eabc8c4ce67d71d35799f45ed34b88d31ca4ed9bde30245426991f12bd2483`  
		Last Modified: Thu, 28 Mar 2019 14:44:40 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad3b76ee00fe74fdfafec61f4b3e26bc4b47fcc007e99abcdd89db16c2c6aac`  
		Last Modified: Thu, 28 Mar 2019 14:44:40 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ba019a1bc1345211c4c2986cb5e13cf349612acf94a611d93c956fe90ce178`  
		Last Modified: Thu, 28 Mar 2019 14:51:03 GMT  
		Size: 252.1 MB (252063435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c38973465ffc1f399fa292a64a43168d11b94bd0d08d1cb784147ee435a9de5`  
		Last Modified: Thu, 28 Mar 2019 14:44:40 GMT  
		Size: 1.2 KB (1237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
