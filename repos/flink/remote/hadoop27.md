## `flink:hadoop27`

```console
$ docker pull flink@sha256:598ad093c8ad28c4132135111abe6c5ce8bf13480c85a27abea69fb823db3a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop27` - linux; amd64

```console
$ docker pull flink@sha256:18f254e0094eb136725a9a974a2b598c6cab211cf3952c36030004e66faaa9df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.0 MB (452952816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a022d9ee99b2a4e434d28b559d99af6d05abe15dd2f68a1c1afc23d44c077f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 11:08:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:08:13 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:08:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 11:08:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_VERSION=8u151
# Thu, 15 Feb 2018 11:08:27 GMT
ENV JAVA_DEBIAN_VERSION=8u151-b12-1~deb9u1
# Thu, 15 Feb 2018 11:08:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 15 Feb 2018 11:09:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 11:17:05 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 15 Feb 2018 17:38:08 GMT
RUN set -ex;   apt-get update;   apt-get -y install libsnappy1v5;   rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 17:38:19 GMT
ENV GOSU_VERSION=1.7
# Thu, 15 Feb 2018 17:40:48 GMT
RUN set -ex;   wget -nv -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)";   wget -nv -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc";   export GNUPGHOME="$(mktemp -d)";   gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4;   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu;   rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc;   chmod +x /usr/local/bin/gosu;   gosu nobody true
# Mon, 26 Feb 2018 20:24:43 GMT
ENV FLINK_VERSION=1.4.1 HADOOP_VERSION=27 SCALA_VERSION=2.11
# Mon, 26 Feb 2018 20:24:44 GMT
ENV FLINK_HOME=/opt/flink
# Mon, 26 Feb 2018 20:24:44 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Feb 2018 20:24:45 GMT
RUN groupadd --system --gid=9999 flink &&     useradd --system --home-dir $FLINK_HOME --uid=9999 --gid=flink flink
# Mon, 26 Feb 2018 20:24:45 GMT
WORKDIR /opt/flink
# Mon, 26 Feb 2018 20:24:45 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.4.1/flink-1.4.1-bin-hadoop27-scala_2.11.tgz
# Mon, 26 Feb 2018 20:24:45 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.4.1/flink-1.4.1-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.4.1/flink-1.4.1-bin-hadoop27-scala_2.11.tgz.asc
# Mon, 26 Feb 2018 20:24:46 GMT
COPY file:42c680244e9d49698acb6b9bd45ea05a87d29749958efea8ddc3c5fe3170b7a1 in /KEYS 
# Mon, 26 Feb 2018 20:24:59 GMT
RUN set -ex;   wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     chown -R flink:flink .;
# Mon, 26 Feb 2018 20:25:00 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Mon, 26 Feb 2018 20:25:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 26 Feb 2018 20:25:00 GMT
EXPOSE 6123/tcp 8081/tcp
# Mon, 26 Feb 2018 20:25:00 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd532571c5d31f61347a950a0d58ec1282046fc8bdda6791f8c34a56a1c792c6`  
		Last Modified: Thu, 15 Feb 2018 13:39:14 GMT  
		Size: 852.3 KB (852290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31600c9f9b48dc3cd9fa7c14415fb9251cd3582028fadbb3d5f1bcb57512ecd0`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e8e9b5d10eec5baacf8bfb0d61d868b1ba263863b08d5346fbb73fcff6bb85`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0710e619e88357033e362f6a8c18d93a0dbf14d31629082877ae8c7f51072113`  
		Last Modified: Thu, 15 Feb 2018 13:39:52 GMT  
		Size: 165.4 MB (165392618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e511da65ffabe622bcb6fa89b699e80f94ec7185a95076cd3b4cabc101bd2d11`  
		Last Modified: Thu, 15 Feb 2018 13:39:13 GMT  
		Size: 272.1 KB (272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc1e0b3628b5449deda605b2cfcd601fff0573a873adb7e3c4d6578405b3643`  
		Last Modified: Thu, 15 Feb 2018 18:21:29 GMT  
		Size: 482.7 KB (482681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ecc04dab7b7de3ed26cc347c52210075c0b38d3b082f59924c1de4746a857`  
		Last Modified: Thu, 15 Feb 2018 18:21:29 GMT  
		Size: 819.2 KB (819181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31928ec27d0bd87252a74a68c5f2ae61aea5da884d048be6ce7064b5aa17974`  
		Last Modified: Mon, 26 Feb 2018 20:34:21 GMT  
		Size: 4.6 KB (4645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b087a54e36bf85355100b4df544f972499d4cf9466d32dfaeedc3a4e591d7d05`  
		Last Modified: Mon, 26 Feb 2018 20:34:21 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b392a7169f37683235432d6ab47f7de7f0efc1e6273537abf791ab320c0f6a13`  
		Last Modified: Mon, 26 Feb 2018 20:34:19 GMT  
		Size: 57.0 KB (57015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d70ce9c0b4dc030031f7f3f9b5fc3131120bc7b95519e66ded5a411ea6ce2e`  
		Last Modified: Mon, 26 Feb 2018 20:34:39 GMT  
		Size: 224.5 MB (224494776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0cbfe6aab0c57e7c51cfee60cdd7dfb9927053f4cef63180886417f5b1f133`  
		Last Modified: Mon, 26 Feb 2018 20:34:19 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
