## `maven:3-jdk-9`

```console
$ docker pull maven@sha256:28be5e0302006f997f986f62ea244a9aaf746907861b393f4c893091c09deecd
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

### `maven:3-jdk-9` - linux; amd64

```console
$ docker pull maven@sha256:a2a9e2a2fe249501aacad879d621565235982bbd0bb4712ba716a80d30e088ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **399.2 MB (399153373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ceb12002cc56961ff5f9362b56f33f7f1a4462d5c86dbe800c2927e98512710`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 13 Mar 2018 22:21:08 GMT
ADD file:c2c5a1f7f840c0a87a6603fd81068b68028f500e96a33882caa97892b6701254 in / 
# Tue, 13 Mar 2018 22:21:09 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:43:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:43:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:44:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:07:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:31:01 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:31:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:31:03 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 10:31:03 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 20:54:35 GMT
ENV JAVA_VERSION=9.0.4+12
# Wed, 04 Apr 2018 19:53:37 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Wed, 04 Apr 2018 19:54:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 04 Apr 2018 19:54:45 GMT
CMD ["jshell"]
# Thu, 05 Apr 2018 11:54:14 GMT
ARG MAVEN_VERSION=3.5.3
# Thu, 05 Apr 2018 11:54:14 GMT
ARG USER_HOME_DIR=/root
# Thu, 05 Apr 2018 11:54:14 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Thu, 05 Apr 2018 11:54:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Thu, 05 Apr 2018 11:54:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Thu, 05 Apr 2018 11:54:20 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 05 Apr 2018 11:54:20 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 05 Apr 2018 11:54:20 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 05 Apr 2018 11:54:21 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 05 Apr 2018 11:54:21 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 05 Apr 2018 11:54:22 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 05 Apr 2018 11:54:22 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:2115d46e739639b0003acb80a3ecc4a513e7342139b4e75356e908cc3f8da0d9`  
		Last Modified: Tue, 13 Mar 2018 22:49:37 GMT  
		Size: 48.1 MB (48061488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa734ed5aa001b3091db69d84da99214d28d5e2bf18ad0bc53e376d23fdc681`  
		Last Modified: Wed, 14 Mar 2018 00:38:56 GMT  
		Size: 8.6 MB (8633487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801e6e5516c1babec1897bf4f28b06f246bf275c0275b2e51f2135f579e5a37f`  
		Last Modified: Wed, 14 Mar 2018 00:38:55 GMT  
		Size: 9.1 MB (9103503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8588f1af8d84229b7ea45334888a17f05339362bb918f768adf94315b8e6c150`  
		Last Modified: Wed, 14 Mar 2018 00:39:29 GMT  
		Size: 49.2 MB (49204172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916d2711f8ee1de4ab659162f0fb2d03454d427db2b72545cef0e9c7720a55b5`  
		Last Modified: Wed, 14 Mar 2018 11:52:28 GMT  
		Size: 893.4 KB (893363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce32ff39c367f0307feecbf834f608a0d6f829745f46cb79d19357c27719fa9`  
		Last Modified: Wed, 14 Mar 2018 12:33:38 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d2e1de18124a2d04438290a972e21b1414cc9c5c80d274284bc079d5eadcca`  
		Last Modified: Wed, 14 Mar 2018 12:33:38 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c298dc0c340e422999bba6a142b54393addfc87f09f6a89be2e3b6392152a4`  
		Last Modified: Wed, 04 Apr 2018 21:42:40 GMT  
		Size: 274.3 MB (274309684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1a1090133ba30a364c6c96472b2249a1cf4bc4e604f29fc82223c472370c4e`  
		Last Modified: Thu, 05 Apr 2018 11:58:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66100f18c85098edabccc347aba4b9703b43f9f656aee8027ee4ac1941e170a2`  
		Last Modified: Thu, 05 Apr 2018 11:58:11 GMT  
		Size: 8.9 MB (8945979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6004d4afc929e6f7cb4899eca4705155d2feab5b5c961a744b7ebe9ecfb2712`  
		Last Modified: Thu, 05 Apr 2018 11:58:10 GMT  
		Size: 744.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b677ad110b89d2ce1169739cccc927f2c59aa0cb17cf25ce5db3bfceb0149794`  
		Last Modified: Thu, 05 Apr 2018 11:58:10 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm variant v5

```console
$ docker pull maven@sha256:5719506658259f007419efd878cce45b853d8c2cd305a68f315c1aab728ba236
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **376.0 MB (376006317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b73216734c38932540becba4942be59eac41860f02188319dae93eeddcfba1`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 19:58:54 GMT
ADD file:0c259893711fbbb74d52158310e6405ffafee1cf80df0c5023f0f262fedaae44 in / 
# Wed, 14 Mar 2018 19:58:55 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:43:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:44:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:38:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:43:19 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:43:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:43:21 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:43:21 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:05:13 GMT
ENV JAVA_VERSION=9.0.4+12
# Wed, 28 Mar 2018 08:08:30 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-3
# Wed, 28 Mar 2018 08:10:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 28 Mar 2018 08:10:36 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 08:34:57 GMT
ARG MAVEN_VERSION=3.5.3
# Wed, 28 Mar 2018 08:34:57 GMT
ARG USER_HOME_DIR=/root
# Wed, 28 Mar 2018 08:34:57 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Wed, 28 Mar 2018 08:34:57 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Wed, 28 Mar 2018 08:34:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Wed, 28 Mar 2018 08:35:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 28 Mar 2018 08:35:01 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 28 Mar 2018 08:35:01 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 28 Mar 2018 08:35:02 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 28 Mar 2018 08:35:02 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 28 Mar 2018 08:35:02 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 28 Mar 2018 08:35:03 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:709e01ad8801f6d1fc3e64805651a95479961d03211125705eadb61df54191e9`  
		Last Modified: Wed, 14 Mar 2018 20:10:21 GMT  
		Size: 46.1 MB (46055043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51cabfe63914ea326825c026f366ea50e79289864c2497b91e2974b96bc934f1`  
		Last Modified: Wed, 14 Mar 2018 20:54:36 GMT  
		Size: 7.8 MB (7806745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1e862bd65c86e50e663d9f9f50f85f442d2c632cf810c672f7898ce71d7e69`  
		Last Modified: Wed, 14 Mar 2018 20:54:37 GMT  
		Size: 8.8 MB (8849409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73cbaff32c495dbf820d75a2ab92f48e706690972a32075399e7cc921171f6a`  
		Last Modified: Wed, 14 Mar 2018 20:55:03 GMT  
		Size: 47.0 MB (47039468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ab72241b5eb79748aed02f2dbfa944d2ea85614427a6cc7b30765605f936c8`  
		Last Modified: Wed, 14 Mar 2018 23:03:12 GMT  
		Size: 886.6 KB (886553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6406a78c7e78b851cc3cafbd16b2ecadb7b127f6d79638a3ce37a70b24e25d`  
		Last Modified: Wed, 14 Mar 2018 23:03:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f34fec21a4204ce79406f43521792236edcd9e1fb3a815486f8218f9d053539d`  
		Last Modified: Wed, 14 Mar 2018 23:03:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:614b1e900596dd0ff6057b0606dd119cea594aa348ebf3c3b8ccc7ee52a4ccdf`  
		Last Modified: Wed, 28 Mar 2018 08:15:38 GMT  
		Size: 256.4 MB (256421262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9ef0508ed041a58629956f69c289f87e6dd4f7b5e64feec059ff44c8576653`  
		Last Modified: Wed, 28 Mar 2018 08:35:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49fecd413cef1328c71f47aed1f505c5652b6dc91d91de3e3e09e3145522f7bc`  
		Last Modified: Wed, 28 Mar 2018 08:35:55 GMT  
		Size: 8.9 MB (8946139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84873e200223fbbcc6f611b9da2f398b3165fe6b98b19a44db202d0f17a635c3`  
		Last Modified: Wed, 28 Mar 2018 08:35:54 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2224789229d0a017d89bdfdf3056c1ef03238f0858344f225d1e9f34d6549f7e`  
		Last Modified: Wed, 28 Mar 2018 08:35:54 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm variant v7

```console
$ docker pull maven@sha256:7b9c43d366fd7bd9f5ccf19cd611b62ddc34318f9ec0e1a6ac0978c4b9189802
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **372.0 MB (372016427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:948f9e288a97e992d3a34930a5262d359e78f27d995a298f66674cd99bce3c85`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 12:30:24 GMT
ADD file:cf4220476786ea80d7a6f84bd9dc94b6d6ac8945750c25c3bfaacd81d179ad18 in / 
# Wed, 14 Mar 2018 12:30:25 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:16:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:16:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 20:38:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:07:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:11:22 GMT
ENV LANG=C.UTF-8
# Wed, 28 Mar 2018 21:11:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 28 Mar 2018 21:11:24 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 28 Mar 2018 21:11:24 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 28 Mar 2018 21:11:25 GMT
ENV JAVA_VERSION=9.0.4+12
# Wed, 28 Mar 2018 21:11:25 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-3
# Wed, 28 Mar 2018 21:12:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 28 Mar 2018 21:12:35 GMT
CMD ["jshell"]
# Thu, 29 Mar 2018 02:42:18 GMT
ARG MAVEN_VERSION=3.5.3
# Thu, 29 Mar 2018 02:42:19 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Mar 2018 02:42:19 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Thu, 29 Mar 2018 02:42:20 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Thu, 29 Mar 2018 02:42:21 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Thu, 29 Mar 2018 02:42:23 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Mar 2018 02:42:24 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Mar 2018 02:42:24 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Mar 2018 02:42:24 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Mar 2018 02:42:25 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Mar 2018 02:42:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Mar 2018 02:42:26 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:4bebe725acb1248d8ff52284d58dd16fdca68548a367bc396431ad7bc5d34cdd`  
		Last Modified: Wed, 14 Mar 2018 12:42:11 GMT  
		Size: 44.0 MB (43986557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0693f5a3991162a5990e13b166d617b8f1fe371f4d92a04086448d19f61284b`  
		Last Modified: Wed, 14 Mar 2018 13:28:33 GMT  
		Size: 7.5 MB (7530551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56df267e9bb7c177688d09890d4bb7057540af666c61d9a1e741b8e886ece4cb`  
		Last Modified: Wed, 14 Mar 2018 13:28:33 GMT  
		Size: 8.6 MB (8563576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed65ea37ec3d7608bc51bfb9b9e1e2b8669ff32cf8d7bedcd814c4be832e7ab8`  
		Last Modified: Wed, 28 Mar 2018 20:46:30 GMT  
		Size: 45.1 MB (45051629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3834a5e072cecbe53e8f0970cb9f31833bae2ce27af3943bc24c6b3b99f193fb`  
		Last Modified: Wed, 28 Mar 2018 21:19:19 GMT  
		Size: 869.3 KB (869259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106144495e4af0cc629d11d4c34b439fc8635951ca5409cb2f2612a48be9963e`  
		Last Modified: Wed, 28 Mar 2018 21:23:05 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd34d445f3db7a1d0fc7f28017a1fe531baeb78a646386bbf2d2f4ccb635f77c`  
		Last Modified: Wed, 28 Mar 2018 21:23:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764cd1c1eeff07083b7972071487928aacb7ef2612606f812864a19462ad4e49`  
		Last Modified: Wed, 28 Mar 2018 21:24:02 GMT  
		Size: 257.1 MB (257067029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145982b386806660ccb47da2f81888887c8bf706d632d0a881e8657104c1c8ab`  
		Last Modified: Thu, 29 Mar 2018 02:43:27 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8cef18c3fa56014a869689046c07427d540758170cc0c2047f882b85650e35f`  
		Last Modified: Thu, 29 Mar 2018 02:43:29 GMT  
		Size: 8.9 MB (8946133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c4696491e88b539558cca7675c831e3abe24fa7f0611af1245de8660b480e9`  
		Last Modified: Thu, 29 Mar 2018 02:43:27 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907944b1eac2a577637bd4b5ef7edc22e30619b4829507de702be7969ed1cc9a`  
		Last Modified: Thu, 29 Mar 2018 02:43:27 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; arm64 variant v8

```console
$ docker pull maven@sha256:05c3bcdf79528f538e5051b969937b73fa81a28f1b7f99a87d77e4d47c1d7295
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.0 MB (380958812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7824a6149bec13d3d5e49a1b6b2a994689834688de7278b43fed62fcc21b4b`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 17:27:51 GMT
ADD file:c8a410dfd7a3136f565a9b629d0a835719a68ad80b782a9281d1759c6eb8f4ef in / 
# Wed, 14 Mar 2018 17:27:52 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:36:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:37:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:39:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 19:58:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:22:33 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:22:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:22:41 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:22:43 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:32:46 GMT
ENV JAVA_VERSION=9.0.4+12
# Thu, 29 Mar 2018 06:04:59 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-3
# Thu, 29 Mar 2018 06:12:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 29 Mar 2018 06:12:22 GMT
CMD ["jshell"]
# Thu, 29 Mar 2018 07:16:20 GMT
ARG MAVEN_VERSION=3.5.3
# Thu, 29 Mar 2018 07:16:22 GMT
ARG USER_HOME_DIR=/root
# Thu, 29 Mar 2018 07:16:23 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Thu, 29 Mar 2018 07:16:24 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Thu, 29 Mar 2018 07:16:26 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Thu, 29 Mar 2018 07:16:34 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Thu, 29 Mar 2018 07:16:35 GMT
ENV MAVEN_HOME=/usr/share/maven
# Thu, 29 Mar 2018 07:16:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Thu, 29 Mar 2018 07:16:37 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Thu, 29 Mar 2018 07:16:38 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Thu, 29 Mar 2018 07:16:57 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Thu, 29 Mar 2018 07:16:58 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:885529e16b447a9a1d0e77e83ee5f3a4ded117a603fc735a386b40c6af050fd4`  
		Last Modified: Wed, 14 Mar 2018 17:42:26 GMT  
		Size: 45.4 MB (45374529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af181fc68ef0c1305345dda1947e4560354a950ca8826a733d8ff9b4f123be4`  
		Last Modified: Wed, 14 Mar 2018 19:02:58 GMT  
		Size: 7.9 MB (7852691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77236b6977166cb08e885fe34b4cd11cd8ca232506de32b79dc0261614f26e4e`  
		Last Modified: Wed, 14 Mar 2018 19:02:58 GMT  
		Size: 8.8 MB (8837983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9448bb102ab7b0e233b516a8c24aa132d505f71aabccc853b5596b4e1672a7`  
		Last Modified: Wed, 14 Mar 2018 19:03:35 GMT  
		Size: 47.5 MB (47507133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edbdfd4c9e4284d3bb3ec6e424431fe9992c80dd6d0f993f7cecdad82b23055`  
		Last Modified: Wed, 14 Mar 2018 21:07:24 GMT  
		Size: 878.8 KB (878765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e996f3f82858b0425462ab0b662bbb3d79aed1f97e24baa02496aec51b0fc3`  
		Last Modified: Wed, 14 Mar 2018 21:26:26 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96b382cc6eec062db9ebf9d82387e6202c513b878892355e4adb35cde745140`  
		Last Modified: Wed, 14 Mar 2018 21:26:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4cce6a26b2918c9997ead0c762062bdef523ff81767e072fd9f94c3bbaf7247`  
		Last Modified: Thu, 29 Mar 2018 06:34:26 GMT  
		Size: 261.6 MB (261560037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f4f7904fff8be11e06c98c8ebef6f63aa63fe1d789e2498e6df10e3dfa3f93`  
		Last Modified: Thu, 29 Mar 2018 07:18:53 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f7c2135e30532537770c852d2ea3f4c0afa195edc6de1e9a71f298957823e7d`  
		Last Modified: Thu, 29 Mar 2018 07:18:55 GMT  
		Size: 8.9 MB (8945978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea0ae74c0eaee3e00e4b18b8bac65269f67063862f19774b421c2defd59fe660`  
		Last Modified: Thu, 29 Mar 2018 07:18:53 GMT  
		Size: 740.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f19b76b505728807a5177259f4fd32e497ba7523a18e73757463fcdf14e8a9`  
		Last Modified: Thu, 29 Mar 2018 07:18:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; 386

```console
$ docker pull maven@sha256:1392f9e2a19c3d4b87d3c21dc25149e112640e6cdfeab239094eb70d279c7b3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **419.4 MB (419379589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:552dff41cd5c581b1bdf3c0c26449ccc0c3922679d0cbe362a5a101f08b80b9f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 27 Mar 2018 15:19:02 GMT
ADD file:3a6a63b0b9425f04e46cf51ded918e18b0db615ed41661ca95b309dce2bd3ad1 in / 
# Tue, 27 Mar 2018 15:19:02 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 08:48:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 08:48:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 08:58:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 30 Mar 2018 03:24:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 30 Mar 2018 04:15:53 GMT
ENV LANG=C.UTF-8
# Fri, 30 Mar 2018 04:15:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 30 Mar 2018 04:15:56 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 30 Mar 2018 04:15:56 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 30 Mar 2018 04:15:56 GMT
ENV JAVA_VERSION=9.0.4+12
# Fri, 30 Mar 2018 04:15:57 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-3
# Fri, 30 Mar 2018 04:17:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 30 Mar 2018 04:17:44 GMT
CMD ["jshell"]
# Mon, 02 Apr 2018 20:45:10 GMT
ARG MAVEN_VERSION=3.5.3
# Mon, 02 Apr 2018 20:45:10 GMT
ARG USER_HOME_DIR=/root
# Mon, 02 Apr 2018 20:45:10 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Mon, 02 Apr 2018 20:45:10 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Mon, 02 Apr 2018 20:45:12 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Mon, 02 Apr 2018 20:45:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Mon, 02 Apr 2018 20:45:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Mon, 02 Apr 2018 20:45:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Mon, 02 Apr 2018 20:45:17 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Mon, 02 Apr 2018 20:45:18 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Mon, 02 Apr 2018 20:45:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Mon, 02 Apr 2018 20:45:18 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:e8960ddf567e95d313a33100aba08d2853543b56dc972c34d9b0560911085e99`  
		Last Modified: Thu, 15 Mar 2018 01:13:58 GMT  
		Size: 48.8 MB (48829003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19bd06ae496500dfaf57620e7e6695d0a3ccc74b4b52092ae973b1b5a37c3d46`  
		Last Modified: Wed, 28 Mar 2018 11:05:48 GMT  
		Size: 8.6 MB (8616768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a15100151cbd40076f77329a0441e052824b6fed9dd97f76a8dcae0b5bdb5a`  
		Last Modified: Wed, 28 Mar 2018 11:05:47 GMT  
		Size: 9.4 MB (9378681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27708fef14b9660aeafdca060bada0d11de7829870e609a8c8d5929680bf1fca`  
		Last Modified: Wed, 28 Mar 2018 11:15:04 GMT  
		Size: 50.9 MB (50932947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dd2af5b7eb8a36aba5625817575b72e3e639c9d9ee157b6362aaa4d316b06a3`  
		Last Modified: Fri, 30 Mar 2018 07:32:17 GMT  
		Size: 901.7 KB (901700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2f62e3e0469df922e4d3d421b67a039844fbfb4455a8cc69b916d671b66985`  
		Last Modified: Fri, 30 Mar 2018 12:11:43 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df669942759882ddd4f5af565c7e92ed7d52af3aaa8681abf14220e2f5fa5ab`  
		Last Modified: Fri, 30 Mar 2018 12:11:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09815f6f598717b790055c90f8e20f9399e1feb8e43e1d4a293373497aa59971`  
		Last Modified: Fri, 30 Mar 2018 12:12:47 GMT  
		Size: 291.8 MB (291772796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b923cb7335fc79affbf06616e1a2e07ae3bcb6dd979b0017841fa71e90fa4c4`  
		Last Modified: Mon, 02 Apr 2018 23:09:25 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1730a666c1f9b8977e09a8336104d858ea3433292b2b2240a1d38714a94123b9`  
		Last Modified: Mon, 02 Apr 2018 23:09:27 GMT  
		Size: 8.9 MB (8945995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0dbb2c6120fb997fb9e6ff6c28c240f43346b60d811aa39977ce2e035fa271`  
		Last Modified: Mon, 02 Apr 2018 23:09:24 GMT  
		Size: 742.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c010a7cc2db3bb8608f2e0561ebbfc0bbfe249e12b5760fdaf36a25fd9e827c6`  
		Last Modified: Mon, 02 Apr 2018 23:09:24 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; ppc64le

```console
$ docker pull maven@sha256:c6125476ebe07e8719cd7d792bb0e96eec1427f729018146de8ad7ac289116fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.6 MB (397603940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:794ed9ea38493a9c3442e70d5ace156ceaddd5caac3ab4b933b990b01f2415f9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 00:33:40 GMT
ADD file:fd074388a1e87afa5199386a81dd5480d59e87c99744d1503003e1cf82eeeeaa in / 
# Wed, 14 Mar 2018 00:33:42 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:54:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:55:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:57:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:21:11 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:21:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:21:21 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:21:23 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:29:36 GMT
ENV JAVA_VERSION=9.0.4+12
# Wed, 28 Mar 2018 11:03:10 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-3
# Wed, 28 Mar 2018 11:12:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 28 Mar 2018 11:12:38 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 11:44:47 GMT
ARG MAVEN_VERSION=3.5.3
# Wed, 28 Mar 2018 11:44:48 GMT
ARG USER_HOME_DIR=/root
# Wed, 28 Mar 2018 11:44:49 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Wed, 28 Mar 2018 11:44:51 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Wed, 28 Mar 2018 11:44:54 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Wed, 28 Mar 2018 11:44:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 28 Mar 2018 11:44:59 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 28 Mar 2018 11:45:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 28 Mar 2018 11:45:05 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 28 Mar 2018 11:45:07 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 28 Mar 2018 11:45:10 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 28 Mar 2018 11:45:14 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:caeed743812fb8916f058220350e305c0e940ed0a62904c7cd30f479de34194c`  
		Last Modified: Wed, 14 Mar 2018 00:41:02 GMT  
		Size: 49.5 MB (49465766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aaececf1154f36498af71895dbfe2455b71b0652ce6a3048ac81822992106d`  
		Last Modified: Thu, 15 Mar 2018 02:30:41 GMT  
		Size: 8.2 MB (8210793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9a71fba1af38f62545037942242f7cc1e558fa18154f937e68d6d61ed9d625`  
		Last Modified: Thu, 15 Mar 2018 02:30:41 GMT  
		Size: 9.3 MB (9339565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cfcc456225ab24cf578ce5446afe1a019b9e41ff7ca89d22777947029b2c2b5`  
		Last Modified: Thu, 15 Mar 2018 02:31:05 GMT  
		Size: 52.1 MB (52111302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfa1ad5283396a1b16dce28dedec9e4a37bd6ec358f28ce99c3873faf052f5e`  
		Last Modified: Thu, 15 Mar 2018 06:01:04 GMT  
		Size: 888.6 KB (888644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3ed575fdd59d512479eb6b5d46956b97a6d6e8f4e2094acf68eeaa5446f2dc`  
		Last Modified: Thu, 15 Mar 2018 06:01:06 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dd06f8be147e5f834ae5b944321a0c018d4331bfeb0fc268dd70b1cfdb70dbf`  
		Last Modified: Thu, 15 Mar 2018 06:01:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5258bd3615e853daa7b32831e810f874988612f0ef70211cadda766e12f84e2f`  
		Last Modified: Wed, 28 Mar 2018 11:24:32 GMT  
		Size: 268.6 MB (268640130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4bfa7fbdf806d2eec48fad8a348871813b424d74c79d22ab89bde39426c4a8`  
		Last Modified: Wed, 28 Mar 2018 11:45:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec8eabdf3ef089e23cff80dad4de01cfe15d444ab639d2ddcd1f989c522bbd2`  
		Last Modified: Wed, 28 Mar 2018 11:45:57 GMT  
		Size: 8.9 MB (8946046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:929af97417673e48d058fd91eac4923ee669e250961ca136391428d024cd45d6`  
		Last Modified: Wed, 28 Mar 2018 11:45:55 GMT  
		Size: 741.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2327d65648326bf8f8d07d189d8fea1b04eb8e7d6ebca2e8577a27ec7addbc28`  
		Last Modified: Wed, 28 Mar 2018 11:45:55 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-9` - linux; s390x

```console
$ docker pull maven@sha256:d516ad642b16a16506cf72005430517611534e5abcb5d6ff4649193d30569507
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.3 MB (368331539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c6217a522362253bd323d74205c1323dcd10b54aab4067a69b2752c3cf7636`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 14 Mar 2018 05:22:56 GMT
ADD file:5a60fa1a91bb2b727d8bfee18b5c3fe6523121a4b58861a0ba668058347acd7d in / 
# Wed, 14 Mar 2018 05:22:56 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:52:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:52:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:53:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 06:40:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 06:40:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 06:40:23 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 06:40:23 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 17:00:22 GMT
ENV JAVA_VERSION=9.0.4+12
# Wed, 28 Mar 2018 16:56:19 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-3
# Wed, 28 Mar 2018 16:57:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 28 Mar 2018 16:57:29 GMT
CMD ["jshell"]
# Wed, 28 Mar 2018 17:23:32 GMT
ARG MAVEN_VERSION=3.5.3
# Wed, 28 Mar 2018 17:23:33 GMT
ARG USER_HOME_DIR=/root
# Wed, 28 Mar 2018 17:23:33 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Wed, 28 Mar 2018 17:23:33 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Wed, 28 Mar 2018 17:23:33 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN ln -s /etc/java-9-openjdk /usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)/conf
# Wed, 28 Mar 2018 17:23:38 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 28 Mar 2018 17:23:38 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 28 Mar 2018 17:23:38 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 28 Mar 2018 17:23:38 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 28 Mar 2018 17:23:39 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 28 Mar 2018 17:23:39 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 28 Mar 2018 17:23:39 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:86f40742baf992f423224f64973e576104b2523ae049a44d7574dda9869d0735`  
		Last Modified: Wed, 14 Mar 2018 05:27:34 GMT  
		Size: 47.2 MB (47214668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a246e96e1e744b60e0cc0af03037b01bf7646f969863ef6a65410d8296981b2`  
		Last Modified: Wed, 14 Mar 2018 05:59:43 GMT  
		Size: 8.2 MB (8166746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19a4f67084db30235359962de1d5608135e8a73048a898619ce995fd58947477`  
		Last Modified: Wed, 14 Mar 2018 05:59:42 GMT  
		Size: 9.1 MB (9075240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f21b2c6a8c15ce6f8cbc645f7f3179dbe1808043ef6e238cd3a419aa1f2d2d39`  
		Last Modified: Wed, 14 Mar 2018 06:00:00 GMT  
		Size: 49.1 MB (49125842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d7213c180353964c9c5acf9bf7628bdbbfa14daeec9d274654f138b20fa05a5`  
		Last Modified: Wed, 14 Mar 2018 06:49:49 GMT  
		Size: 903.9 KB (903935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b84a7d763324bcb96352099a7b1a8811131498fdcf3fa75b58c7a4e3a49c7cd`  
		Last Modified: Wed, 14 Mar 2018 06:53:57 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d0a77a09d90ac9af1b84c2a5d3019cac0e0e6516ffdb42e6ba3e8d8bb3a8da`  
		Last Modified: Wed, 14 Mar 2018 06:53:57 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23be353ec40dd22b104c8032c498c31a9fcdec40be9cb1ed4f33281a22aac498`  
		Last Modified: Wed, 28 Mar 2018 17:02:03 GMT  
		Size: 244.9 MB (244897414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a804157c524d051cd56344bab2725524291758a6dba29230cce076e011cb64ad`  
		Last Modified: Wed, 28 Mar 2018 17:24:20 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71812091fec4cda374861056bc1c3dda00885a8526853a60f52d78e1bcfc19f5`  
		Last Modified: Wed, 28 Mar 2018 17:24:21 GMT  
		Size: 8.9 MB (8945998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b441e9bd1d839f28e54e0339fa37ad94ca7f733e6d3fbc68f70c82e919e7cc2`  
		Last Modified: Wed, 28 Mar 2018 17:24:22 GMT  
		Size: 743.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0423e920b3edde9ee583b63e38c338e8fb3a6711aff51094d7b2cc048de8ce5f`  
		Last Modified: Wed, 28 Mar 2018 17:24:20 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
