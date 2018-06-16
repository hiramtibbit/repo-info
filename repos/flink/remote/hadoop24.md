## `flink:hadoop24`

```console
$ docker pull flink@sha256:387f66de182e9c192fca95edc942647a9b3da8914c9d998090f78759b853fd88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop24` - linux; amd64

```console
$ docker pull flink@sha256:a68de79d6d20962e14d98854e71bf8a43475939742cad886592e359809959130
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **476.3 MB (476332209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42807e9f7a4173265bdc4a9157482a8f5bb016edf62e9abb2f6fc26bd1ffc117`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 01:53:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:53:20 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:53:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:53:22 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:53:22 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 01:53:22 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:53:22 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:53:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:54:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:54:35 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 16 Jun 2018 07:55:14 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 07:55:14 GMT
ENV GOSU_VERSION=1.7
# Sat, 16 Jun 2018 07:55:23 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Sat, 16 Jun 2018 08:36:18 GMT
ENV FLINK_VERSION=1.5.0 HADOOP_SCALA_VARIANT=hadoop24-scala_2.11
# Sat, 16 Jun 2018 08:36:18 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 16 Jun 2018 08:36:18 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Jun 2018 08:36:19 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Sat, 16 Jun 2018 08:36:19 GMT
WORKDIR /opt/flink
# Sat, 16 Jun 2018 08:36:20 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.0/flink-1.5.0-bin-hadoop24-scala_2.11.tgz
# Sat, 16 Jun 2018 08:36:20 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.0/flink-1.5.0-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.0/flink-1.5.0-bin-hadoop24-scala_2.11.tgz.asc
# Sat, 16 Jun 2018 08:36:20 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Sat, 16 Jun 2018 08:42:38 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Sat, 16 Jun 2018 08:42:38 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Sat, 16 Jun 2018 08:42:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 16 Jun 2018 08:42:39 GMT
EXPOSE 6123/tcp 8081/tcp
# Sat, 16 Jun 2018 08:42:39 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ea00fc4d8e2af4a040e4fc055b0753b1a234bdfc19eb2256ed2875ec60c60c`  
		Last Modified: Wed, 06 Jun 2018 02:13:35 GMT  
		Size: 853.1 KB (853096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e8cdd02bb8b9ef72adcc9df13a9c36861ecb7b62c1fb0bc311693fac967634`  
		Last Modified: Wed, 06 Jun 2018 02:13:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2be3a3005a9449e061a7c895748248f0e276ad2f572bf043d31339de62bf368`  
		Last Modified: Wed, 06 Jun 2018 02:13:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0111eaf8dfa4ca363ce6c04d0d98dec8145a8a0575d2d5a46573f06ab341284c`  
		Last Modified: Wed, 06 Jun 2018 02:14:13 GMT  
		Size: 122.1 MB (122139583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c59181d9b492ba95bf56cd672b002be6b972b4597e85dd3b92f26b7ce03cb8a`  
		Last Modified: Wed, 06 Jun 2018 02:13:35 GMT  
		Size: 272.1 KB (272144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a4114eb1b15d7397fe78193c19a34b12e408f44dd02a8bd9d31347d9a2a3a9`  
		Last Modified: Sat, 16 Jun 2018 09:23:37 GMT  
		Size: 466.7 KB (466705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c25435d5635271653f9905f596cd8acebfec68692656c5573de269ca8b2730f`  
		Last Modified: Sat, 16 Jun 2018 09:23:36 GMT  
		Size: 819.2 KB (819185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd0a61b43b23dfa6b1aa41fa7a96085a56f9730d2c731bc3928021f1bf5d417c`  
		Last Modified: Sat, 16 Jun 2018 09:35:44 GMT  
		Size: 4.6 KB (4614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd08377e7b36a074d5b149d35bc7aa7f507ece6ec64ea35fb7f78e193b9ca21d`  
		Last Modified: Sat, 16 Jun 2018 09:35:44 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c17bf428485ad51365e7f8867b17f9fba02371674f7acff53e3ed6751a59e7f`  
		Last Modified: Sat, 16 Jun 2018 09:35:44 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c5509b17f458481f7fe37fd0bce8de112f6254850ecc0983837c63307274e5`  
		Last Modified: Sat, 16 Jun 2018 09:36:38 GMT  
		Size: 291.3 MB (291287704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79730785dc01e1acafa6541c6885cb8d8bbd47d9f5dc25a9257f2a7b858048c8`  
		Last Modified: Sat, 16 Jun 2018 09:35:44 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
