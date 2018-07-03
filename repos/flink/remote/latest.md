## `flink:latest`

```console
$ docker pull flink@sha256:ac6a2d9a3973f6d9cd4ed177de565afc4cd5a1e531e6d3337289b87171e61393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:latest` - linux; amd64

```console
$ docker pull flink@sha256:4d1ebb1044f938065fc94cec1f8d2665a8b6588bb10946700f3c846e4335669e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **449.6 MB (449565931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fc28c30edae3bb6f97437e6de3002418b30e0554d0b2ac8eb3a0d3569dc498e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 03 Jul 2018 00:01:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 00:01:31 GMT
ENV LANG=C.UTF-8
# Tue, 03 Jul 2018 00:01:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 03 Jul 2018 00:01:33 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 03 Jul 2018 00:01:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 03 Jul 2018 00:01:33 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 00:01:34 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Tue, 03 Jul 2018 00:01:34 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 03 Jul 2018 00:02:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 00:02:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 03 Jul 2018 01:09:11 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 01:09:11 GMT
ENV GOSU_VERSION=1.7
# Tue, 03 Jul 2018 01:09:18 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Tue, 03 Jul 2018 01:32:29 GMT
ENV FLINK_VERSION=1.5.0 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 03 Jul 2018 01:32:29 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 03 Jul 2018 01:32:29 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 01:32:30 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Tue, 03 Jul 2018 01:32:30 GMT
WORKDIR /opt/flink
# Tue, 03 Jul 2018 01:32:31 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.0/flink-1.5.0-bin-scala_2.11.tgz
# Tue, 03 Jul 2018 01:32:31 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.0/flink-1.5.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.0/flink-1.5.0-bin-scala_2.11.tgz.asc
# Tue, 03 Jul 2018 01:32:31 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 03 Jul 2018 01:32:54 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Tue, 03 Jul 2018 01:32:54 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 03 Jul 2018 01:32:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 03 Jul 2018 01:32:55 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 03 Jul 2018 01:32:55 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14138372253a052c1cfcdc33b7bbc68ec3c2e0aa26450d3665855c9b11006a1`  
		Last Modified: Tue, 03 Jul 2018 00:40:52 GMT  
		Size: 853.1 KB (853117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c822581c11cd95d6914ef6949e25710eaf53239308b6e82894ec9922c96e2f6b`  
		Last Modified: Tue, 03 Jul 2018 00:40:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bfebb1ccea85968b4de6e8e67af9e303e214cd7f198062b6c047a13b3fcdf5d`  
		Last Modified: Tue, 03 Jul 2018 00:40:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2a1447f71cdc2bdfbcf28fc56f09fda275cbc49b4a59630425d07628084b27`  
		Last Modified: Tue, 03 Jul 2018 00:41:17 GMT  
		Size: 122.1 MB (122141316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610001504afa951b91fa8195a620067007dab67402bcea5484b0d09ecf770168`  
		Last Modified: Tue, 03 Jul 2018 00:40:51 GMT  
		Size: 272.1 KB (272101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e4be15e5f594ca463014f46ba0ce204c15e0ce2245f7b859d1e74fd8ed1725`  
		Last Modified: Tue, 03 Jul 2018 01:39:50 GMT  
		Size: 466.7 KB (466656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5095cdb2119cdc62985ccee62ccc2f1bf9dbec1ea9ba74ddc8d46d25194fef60`  
		Last Modified: Tue, 03 Jul 2018 01:39:50 GMT  
		Size: 819.2 KB (819183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc4e9d7e20e08e15a5fed796ba793b5629e9091a0d10b88987056128abc4a634`  
		Last Modified: Tue, 03 Jul 2018 01:55:39 GMT  
		Size: 4.6 KB (4611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33574e37f6e4b533b1d01083dcac41cbbec4e2f8b546adea631d927f0ebe6420`  
		Last Modified: Tue, 03 Jul 2018 01:55:40 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce968f6d3648bd46a7a451727e52f78f46e499f281ce019914dbc31b27d1d538`  
		Last Modified: Tue, 03 Jul 2018 01:55:39 GMT  
		Size: 59.3 KB (59336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e1a2ed6dba4585b5596d9307b335015f5a05e3dfdd122e8dde38cb667d1b99a`  
		Last Modified: Tue, 03 Jul 2018 01:55:56 GMT  
		Size: 264.5 MB (264518454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa9aa4f4f91bd2d35a62aa227f51291f4e2ee42f2f7fbc0c72f6da7cc8e3dc0b`  
		Last Modified: Tue, 03 Jul 2018 01:55:39 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
