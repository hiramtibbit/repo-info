## `flink:scala_2.11`

```console
$ docker pull flink@sha256:cd6df8c07c12546ec142ef6cd120b752f865fc4dec2b7e1474ba2c0be700c5bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `flink:scala_2.11` - linux; amd64

```console
$ docker pull flink@sha256:e0d680cb2fc7fdb6c28ef65b9f05a56509a60691e3398448b4dc74b51b33cbd0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.7 MB (482743933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5df21fd4ae980e6f415c50955577a6136bb72c2cb8573414be2f31d524e3326`
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
# Fri, 12 Apr 2019 00:21:42 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 12 Apr 2019 00:21:42 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 12 Apr 2019 00:21:42 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Apr 2019 00:21:43 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Fri, 12 Apr 2019 00:21:43 GMT
WORKDIR /opt/flink
# Fri, 12 Apr 2019 00:21:43 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz
# Fri, 12 Apr 2019 00:21:44 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz.asc
# Fri, 12 Apr 2019 00:21:44 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Fri, 12 Apr 2019 00:22:08 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Fri, 12 Apr 2019 00:22:08 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Fri, 12 Apr 2019 00:22:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 12 Apr 2019 00:22:08 GMT
EXPOSE 6123 8081
# Fri, 12 Apr 2019 00:22:09 GMT
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
	-	`sha256:dede176f427fff3dc6577b943292f111c647e6e6fc988c5b32ff9418dde5e62f`  
		Last Modified: Fri, 12 Apr 2019 00:26:24 GMT  
		Size: 4.6 KB (4613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d46f6ef0d09475825f7ae8245919045c2b0898b35d4741f37032f76b5cf0442`  
		Last Modified: Fri, 12 Apr 2019 00:26:24 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:813128cf0ba91d4bd53be985edf3cad041d30c9b8acf6b8349c3d295aafcf971`  
		Last Modified: Fri, 12 Apr 2019 00:26:23 GMT  
		Size: 64.0 KB (63968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddf36a1a0e26f78ca3de10def010212e7dae3c12999e28d4be438178adb9188`  
		Last Modified: Fri, 12 Apr 2019 00:26:50 GMT  
		Size: 297.9 MB (297897324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac86f62c9ebfb8d66f4d29b5c97857ac22b9d0064368b88231112bc8e1cdf522`  
		Last Modified: Fri, 12 Apr 2019 00:26:24 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11` - linux; ppc64le

```console
$ docker pull flink@sha256:115bb7c25d30199c4d4638ee6b9caae048e1c067896fdc9e3ad8df88b843f39a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.6 MB (474558288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b0a68642a3242ff80dc2d5b91b5c951e55573756e6d948c881b68abbed937fe`
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
# Fri, 12 Apr 2019 08:20:07 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 12 Apr 2019 08:20:11 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 12 Apr 2019 08:20:14 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Apr 2019 08:20:21 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Fri, 12 Apr 2019 08:20:22 GMT
WORKDIR /opt/flink
# Fri, 12 Apr 2019 08:20:24 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz
# Fri, 12 Apr 2019 08:20:26 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.11.tgz.asc
# Fri, 12 Apr 2019 08:20:28 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Fri, 12 Apr 2019 08:23:03 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Fri, 12 Apr 2019 08:23:04 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Fri, 12 Apr 2019 08:23:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 12 Apr 2019 08:23:09 GMT
EXPOSE 6123 8081
# Fri, 12 Apr 2019 08:23:12 GMT
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
	-	`sha256:2e39307911036bf47d5b4c09ab020c5afb09bc3300c24e5e6121a312cee75673`  
		Last Modified: Fri, 12 Apr 2019 08:29:53 GMT  
		Size: 4.6 KB (4612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b883d3981398c5571c701454d0b5067d728d1f93878178359d6ac007f0636303`  
		Last Modified: Fri, 12 Apr 2019 08:29:53 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356996af00146cb242a55891f3a3c8d8132c1a7e8724d19d86c96c57c2611f40`  
		Last Modified: Fri, 12 Apr 2019 08:29:53 GMT  
		Size: 64.0 KB (63966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648e4e1f574a5ff05e19577057b1e4977ddbbf7a287f58584ad30ba4629f65f9`  
		Last Modified: Fri, 12 Apr 2019 08:30:24 GMT  
		Size: 297.9 MB (297897814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0ec9d2a3a7d7dab047595f6b5f12cb292a610761ac9fc3158311eaf0e5b874`  
		Last Modified: Fri, 12 Apr 2019 08:29:53 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
