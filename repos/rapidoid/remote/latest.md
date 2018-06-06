## `rapidoid:latest`

```console
$ docker pull rapidoid@sha256:db361f872ab79710953d5f82c8298e5d038c56871b5acf96ac2789390577ed94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rapidoid:latest` - linux; amd64

```console
$ docker pull rapidoid@sha256:3dac45aa764884e0298314088ce741594136ba7e3a3fa68169fa4ecd7b536c79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94175887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1d7ff3c6b486d4c15116f39e6cfd8fd715087bbb1c8477a266e9b9200cd63a`
-	Entrypoint: `["\/opt\/entrypoint.sh"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 01:54:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:54:56 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:54:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:54:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:54:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 01:54:59 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:54:59 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:54:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:55:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:55:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 22:11:06 GMT
MAINTAINER Nikolche Mihajlovski
# Wed, 06 Jun 2018 22:11:07 GMT
ENV GPG_KEY=E306FEF548C686C23DC00242B9B08D8F616EF49C
# Wed, 06 Jun 2018 22:11:07 GMT
ENV RAPIDOID_JAR=/opt/rapidoid.jar
# Wed, 06 Jun 2018 22:11:07 GMT
ENV RAPIDOID_TMP=/tmp/rapidoid
# Wed, 06 Jun 2018 22:11:07 GMT
WORKDIR /opt
# Wed, 06 Jun 2018 22:11:07 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 22:11:08 GMT
VOLUME [/data]
# Wed, 06 Jun 2018 22:11:08 GMT
ENV RAPIDOID_VERSION=5.4.6
# Wed, 06 Jun 2018 22:11:08 GMT
ENV RAPIDOID_URL=https://repo1.maven.org/maven2/org/rapidoid/rapidoid-platform/5.4.6/rapidoid-platform-5.4.6.jar
# Wed, 06 Jun 2018 22:11:08 GMT
COPY file:604b8053d63179f0e45204cfaceba95b6ea008beaf1c685b80fa09ca1e982e4c in /opt/ 
# Wed, 06 Jun 2018 22:11:24 GMT
RUN set -xe     && apt-get update     && apt-get install -y --no-install-recommends         ca-certificates curl dirmngr gnupg     && mkdir /platform     && mkdir -p "$RAPIDOID_TMP" 	&& curl -SL "$RAPIDOID_URL" -o $RAPIDOID_JAR 	&& curl -SL "$RAPIDOID_URL.asc" -o $RAPIDOID_JAR.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys $GPG_KEY 	&& gpg --batch --verify $RAPIDOID_JAR.asc $RAPIDOID_JAR 	&& rm -rf "$GNUPGHOME" 	&& rm "$RAPIDOID_JAR.asc" 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 22:11:24 GMT
ENTRYPOINT ["/opt/entrypoint.sh"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44ea3e7c4ff00a9a43f29069ca7249f6a31ef8a7365ed89b7f22f8d436ec0a5`  
		Last Modified: Wed, 06 Jun 2018 02:14:43 GMT  
		Size: 454.9 KB (454851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffd93428115226c4bae15842cfda8645782d5d26ddd3193688abf73a3a7daf9`  
		Last Modified: Wed, 06 Jun 2018 02:14:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd00e3c2b114a3541c50a56a3f9391a30b3f2948cf59347f3ce0e416e4e609fb`  
		Last Modified: Wed, 06 Jun 2018 02:14:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f54931737941d8bbf16988aa25c00661d4947cf0d256dae6200ca05d80175`  
		Last Modified: Wed, 06 Jun 2018 02:15:01 GMT  
		Size: 55.9 MB (55851012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee0b21f15e0e168f9176a8ecf70aebd0ae059cdf8805b049599663bb38aaf89`  
		Last Modified: Wed, 06 Jun 2018 02:14:43 GMT  
		Size: 272.1 KB (272128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2be11977cc6884b745f24443f6a2bbd49dfe295c764e25ce5ebe4521a06aeea4`  
		Last Modified: Wed, 06 Jun 2018 22:11:35 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db2f83b6b40ff5629d304b6b99c6071e6fadea6b6771291d3b14f2d717737ee1`  
		Last Modified: Wed, 06 Jun 2018 22:11:39 GMT  
		Size: 15.1 MB (15101121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
