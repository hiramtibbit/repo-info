## `openjdk:jre-slim-stretch`

```console
$ docker pull openjdk@sha256:7d5a436ed87d1cc77df013bf509a8969835926db9dbd863d3e198bc56046cbb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:jre-slim-stretch` - linux; amd64

```console
$ docker pull openjdk@sha256:ea380624d51538ba383f274d71f40b704291968d04322310fa66865941aa99a0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100156775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e977da9106906146310bc668ea29cab9029bf6479fc79db75eacefc91d8c1640`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:54:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:54:21 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 02:54:21 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:54:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:54:23 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:54:23 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:54:23 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 02:54:24 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 02:56:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:762c9dfbe1b522fbb875c7c59c8952d87108fc60057e726c938bd76ffd15e861`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 454.8 KB (454826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3e7cdb7598b8fa0a59f7e3a30e4b0004d9e66fe8d3e2f43a5eecfa646b842`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0b10575b21db56a473d5c1a3633bd1f411b74536bb6aec22f0ea04889b1c61`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e429842a7076cd1d06b9b635993971d64b7a9b08f5cfc1f1ef5fba4ff2653f`  
		Last Modified: Sat, 29 Dec 2018 03:22:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1914679ae4f28733f5360fbd6ea2d90f49df8906d7dcf5ec1a1f64955ed7cb84`  
		Last Modified: Sat, 29 Dec 2018 03:24:10 GMT  
		Size: 77.2 MB (77208431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim-stretch` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:9df0a6143e505112a53d11acd1f8239b1313b4f884ee81104244486bcede7ee0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.6 MB (82608678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e176b8f0c87af5ab05b2db10a650eeb473a19d6441beb64d83489d567536290d`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:55:31 GMT
ADD file:1f3db2bdb8941ca17968251e2af1378e7f7556627ed60eafb5ee40089810bc8b in / 
# Sat, 29 Dec 2018 09:55:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:26:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:26:06 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 10:26:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 10:26:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 10:26:10 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 10:26:11 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 10:26:11 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 10:26:11 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 10:31:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:e040f73e39f2c2a1a8429ff270c2d629ef2630ac31581228037724d707862b22`  
		Last Modified: Sat, 29 Dec 2018 10:03:16 GMT  
		Size: 21.2 MB (21167776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9768e4aef55fd8f8acae49249f3df25d2a0db51e026bdaeb0bcd7ac260f10511`  
		Last Modified: Sat, 29 Dec 2018 10:41:45 GMT  
		Size: 447.7 KB (447680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b405e3799a331a7e9f189faae67f494dcaa058b62b90890a89eecb23810209b`  
		Last Modified: Sat, 29 Dec 2018 10:41:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c94c474287cf8161b3f49d49b4e9e6c326951c94d454e29f9d94d3363a1eab`  
		Last Modified: Sat, 29 Dec 2018 10:41:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c392337d850194b18a8016c0ce76f38c856c354db5b169b605f910683c97e7e5`  
		Last Modified: Sat, 29 Dec 2018 10:41:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95366f48520774aee08d68e5edf031ae85c6d0a69bfdc4c79106fd156644d3e0`  
		Last Modified: Sat, 29 Dec 2018 10:43:29 GMT  
		Size: 61.0 MB (60992618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim-stretch` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:4ec5a7d92372a7b525c721444b49e0727c6152c3e66edd0cec409a8dcb8c2cef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.9 MB (82851609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b677044d4c2909747f8e5bf2e2a4c2c3f1550bf4fa586ac786e77066be6fc142`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 15:21:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 15:21:26 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 15:21:26 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 15:21:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 15:21:30 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 15:21:30 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 15:21:30 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 15:21:31 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 15:25:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb3f97bc1d1af816dab1d0c34bdee2dd10480a5c94ddb520613481aad6f7aa0`  
		Last Modified: Sat, 29 Dec 2018 15:47:37 GMT  
		Size: 430.6 KB (430593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c70810dc9c0beeb995649de482f54337ffb3203094927c2e8067ad7f2ffeacc`  
		Last Modified: Sat, 29 Dec 2018 15:47:37 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81f0be291af0b884d7d754b851efba1c51762264275553dff3de4a94e370869`  
		Last Modified: Sat, 29 Dec 2018 15:47:37 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860e3685116292e6496525cf8cd77745db18762b3da3d68849999a1e4ef3e01d`  
		Last Modified: Sat, 29 Dec 2018 15:47:37 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3589c8f47a693ef46ead2cb6bf025aac97ccfdfdf798e6ee38bb695c4ec39263`  
		Last Modified: Sat, 29 Dec 2018 15:49:59 GMT  
		Size: 63.1 MB (63142660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:3f574f662413c90be5d06f92f1e3d3cb6532c0184a6d282dec2d952476481c4b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.4 MB (89365634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c85c090d331e53e7c136c026f67bbaa02c3516df8dbcdb42b12bf5ccd6364b`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:55:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:55:02 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 16:55:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 16:55:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 16:55:13 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 16:55:14 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 16:55:14 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 16:55:15 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 17:05:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c647cb9b4bebabb026f3cdd41649c49da504fb488d1e096e0b7974cd205946`  
		Last Modified: Sat, 29 Dec 2018 17:24:27 GMT  
		Size: 440.8 KB (440846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382decf6a4a0d364fa98337d3a351be64a1f28367d3d460321eef95c567b40e9`  
		Last Modified: Sat, 29 Dec 2018 17:24:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c6a4cd7fe0bfced0808ef781bc670495da4ff23c99dc089a4853234b15f6f7b`  
		Last Modified: Sat, 29 Dec 2018 17:24:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:950e9386b3b78714c4895f6d253d2cebbc40d030d5ce5da6bad39025141b6210`  
		Last Modified: Sat, 29 Dec 2018 17:24:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d220576068e097b420fee296fbd11332bb7ec7c46f167080c397c40e93cfbd`  
		Last Modified: Sat, 29 Dec 2018 17:27:26 GMT  
		Size: 68.6 MB (68586672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim-stretch` - linux; 386

```console
$ docker pull openjdk@sha256:7619990816cba06e1e08411afef7b594ca0b81c905ffebceba4fd5dad2342f53
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105095350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36d42eb7a6231fd8964bb0fc84285b14f7c1d7c86d819c6bd1b8fec675ae266`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:56:14 GMT
ADD file:aaa0661c64d46388f46e71ba3d172f3208f6b943dbc1a86e0b50ca5080bdb3ee in / 
# Sat, 29 Dec 2018 11:56:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 20:50:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 20:50:51 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 20:50:51 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 20:50:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 20:50:53 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 20:50:53 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 20:50:53 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 20:50:53 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 20:53:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:9a1a13172ed974323f7c35153e8b23b8fa1c85355b6b26cc3127e640e45ef0aa`  
		Last Modified: Sat, 29 Dec 2018 12:10:44 GMT  
		Size: 23.1 MB (23133155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2cc5e95842c4f0ae541c23106532af24b3125ad0e8aaba1313437c63035f3d`  
		Last Modified: Sat, 29 Dec 2018 21:20:23 GMT  
		Size: 463.5 KB (463523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8570be7d937549188cee8d07c2782fa8cdd90bc94441c1f4dd966a8ffcce80dd`  
		Last Modified: Sat, 29 Dec 2018 21:20:23 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23da6e2bb55f783eb45023ea210fcf33e9786941393afab95fbd4ed05f60af0`  
		Last Modified: Sat, 29 Dec 2018 21:20:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d3ecf41c800a5879e7dc40b64ed0cf941da6eea795d34b5c3b14e2603f6fbe`  
		Last Modified: Sat, 29 Dec 2018 21:20:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6dbe25455939a5ec483f5cf15b50ba8b4d5643329d5dcca5a83e6a96b85e523`  
		Last Modified: Sat, 29 Dec 2018 21:22:11 GMT  
		Size: 81.5 MB (81498069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim-stretch` - linux; ppc64le

```console
$ docker pull openjdk@sha256:5987ab5002ce29b27740d980694d352f1eede17756b465e63e791727392aa085
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.4 MB (88427406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e314243eb7eeb64a6835eba3816e87f5c2d837178b6c7f92c2a7f5565ffb4f53`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:22:40 GMT
ADD file:11cdf0dbdac1a774d74f30e9954e3cf02c390d2280ce747bc95a3b774259f226 in / 
# Sat, 29 Dec 2018 09:22:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:24:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:24:22 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 12:24:23 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:24:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 12:24:32 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 12:24:34 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 12:24:36 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 12:24:39 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 12:33:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:ca671aebac61774c6bfa23dd5b097e3a135a33f3987318158787030ee978173a`  
		Last Modified: Sat, 29 Dec 2018 09:28:38 GMT  
		Size: 22.7 MB (22746826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0743698166d52740a3c2edd0e18b2c3f9d3e0fb6f70baef9db97b0a46804e02c`  
		Last Modified: Sat, 29 Dec 2018 12:55:09 GMT  
		Size: 449.8 KB (449826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c8611c9028346cf8686642cf26a227b59583cf3fa170f637fc0bb37838c1b1`  
		Last Modified: Sat, 29 Dec 2018 12:55:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c41e61a63c9fc3712b4e06f68fdc1e3a31aa0ce9564a4ab9faba5fd7b472d5`  
		Last Modified: Sat, 29 Dec 2018 12:55:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54b9fbb40727b54869e365beecde23eee8a3c68b65ef1e248f9f3d5bed4cd9d`  
		Last Modified: Sat, 29 Dec 2018 12:55:08 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85df9e5c9cd7c0443f5f6f3ff8ecebeeb4b44da5dbf601e127bb8c4a3e3cc1b0`  
		Last Modified: Sat, 29 Dec 2018 12:58:04 GMT  
		Size: 65.2 MB (65230147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:jre-slim-stretch` - linux; s390x

```console
$ docker pull openjdk@sha256:b43035de1f99da2d578429c2130a0ce9fd62d5383486579bfecc27acf7bb225c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87541466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197e3985382bc755aa57bb81669c4c74aa81a0298589a6e8c79e179a69df5f96`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:43:52 GMT
ADD file:35c030887198a067338539b6bd96e04ff649537c38542febcb7e0ccd2a3d90c8 in / 
# Sat, 29 Dec 2018 12:43:52 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:25:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 14:25:07 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 14:25:07 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 14:25:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 14:25:09 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 14:25:09 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 14:25:09 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 14:25:10 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 14:27:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:0e647eff4fda368965291c62c8bc90ae9cbcc84a50a5caed821af7f05ec653d4`  
		Last Modified: Sat, 29 Dec 2018 12:46:52 GMT  
		Size: 22.3 MB (22341416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b971102ba1e5fa0b494d2d0de3a851a4bdd60838081d58f636adafcaa749c6`  
		Last Modified: Sat, 29 Dec 2018 14:31:40 GMT  
		Size: 465.7 KB (465718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d60b647a0242aa92a981504f447df67b0e26b1818ea99ad5835d045be228298`  
		Last Modified: Sat, 29 Dec 2018 14:31:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b189769be120b8ff7821335238ca0ae9462b09b30eb2f8d98b2c0c99d539175a`  
		Last Modified: Sat, 29 Dec 2018 14:31:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29225b33a7ddd86907cb5e6157a920530d85b715347f5c98c0d64e847a7fda1`  
		Last Modified: Sat, 29 Dec 2018 14:31:40 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02614f1db6d4eee1614d899e8a572b5652358c47d43762c78bc5a2c564d6b15`  
		Last Modified: Sat, 29 Dec 2018 14:33:03 GMT  
		Size: 64.7 MB (64733731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
