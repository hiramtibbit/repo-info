## `maven:3-jdk-7`

```console
$ docker pull maven@sha256:86b7f9a2e209bd8d397e14997b7b8442c32ad8287228a1e7c7acdbc12a6303b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `maven:3-jdk-7` - linux; amd64

```console
$ docker pull maven@sha256:1c85b6f0deb624d62e89cca38b973ca9f1c724b9296ae550bb03fadcca0b62e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.2 MB (223205563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42d430f564dfe67ed28bc97cb91d925eb8d54aa52a3b370e73ae90cc2945ef19`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 08 May 2019 00:30:19 GMT
ADD file:47970bdb20c0c84f9d64aeb394f690c79bfceefd0331c1fc4041af1de0d5bcb1 in / 
# Wed, 08 May 2019 00:30:19 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:31:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:34:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:11:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:11:52 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:11:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:11:54 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:11:54 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:11:54 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 05:11:55 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 05:14:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 13:51:55 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 08 May 2019 13:51:55 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 May 2019 13:51:55 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 08 May 2019 13:51:56 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 08 May 2019 13:51:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 May 2019 13:52:00 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 May 2019 13:52:00 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 May 2019 13:52:00 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 May 2019 13:52:01 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 08 May 2019 13:52:01 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 May 2019 13:52:01 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:db0035920883a73fe23c2f4c2c361e2508a9f8b9b410080817800c1f906323b7`  
		Last Modified: Wed, 08 May 2019 00:36:03 GMT  
		Size: 54.4 MB (54385705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ebd83b4a4725c8e5e54f2aa7d3ee259492cbb89de0a4315c3533b84b32d3ee`  
		Last Modified: Wed, 08 May 2019 01:43:57 GMT  
		Size: 17.5 MB (17541651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf624e5b31148821dbdc3eface7d221c3a94d63cffbf6ced906ba1c6e4a6cde`  
		Last Modified: Wed, 08 May 2019 01:44:11 GMT  
		Size: 43.3 MB (43314266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9acab6bfb3ef31bf6938b8aa233a868742428d5f83d3d9a54312e210ab1ea679`  
		Last Modified: Wed, 08 May 2019 05:30:45 GMT  
		Size: 828.5 KB (828451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c00f0a5c1e282315bcf46cff1cb0ee2f97966ba585111298db299b516816439`  
		Last Modified: Wed, 08 May 2019 05:30:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98133370871a9e0b296ba9f371143319edb6e8cda29434e91339994a65f5c126`  
		Last Modified: Wed, 08 May 2019 05:30:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d21ea60fc5563d3735c99029fd306921c7812a80bb109af2d65c4fb8e98992`  
		Last Modified: Wed, 08 May 2019 05:31:00 GMT  
		Size: 98.0 MB (97972027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6f75954726762fd957a94300694624440363cc6cf1b77434ca00116fd80cbc`  
		Last Modified: Wed, 08 May 2019 13:53:51 GMT  
		Size: 9.2 MB (9161869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3460547036cb54e66426b18a22ff6e834d7cd22f16a59b02fbed960386a0046a`  
		Last Modified: Wed, 08 May 2019 13:53:50 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad60a6f6c716054e9cc8b4942b5833e551d0635f4fd1270084938c5198acebc2`  
		Last Modified: Wed, 08 May 2019 13:53:50 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm variant v5

```console
$ docker pull maven@sha256:ee611d10d1618bbbc8404b4377a29efa61a479d847c7c8aae1daac7ec0c61bbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.8 MB (205787760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10de2c2404267b9eab28ff8ceed6670a4bc0ebdffb2f42dd3c7234d4001315a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 08 May 2019 08:50:00 GMT
ADD file:997d555f96b00623491142f0b815ef37769d2f880a8b40c0fff320960771453d in / 
# Wed, 08 May 2019 08:50:02 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 09:53:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 09:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:38:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:38:22 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:38:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 11:38:25 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 11:38:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 11:38:25 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 11:38:26 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 11:40:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 16:29:53 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 08 May 2019 16:29:54 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 May 2019 16:29:54 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 08 May 2019 16:29:55 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 08 May 2019 16:30:01 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 May 2019 16:30:02 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 May 2019 16:30:02 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 May 2019 16:30:03 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 May 2019 16:30:03 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 08 May 2019 16:30:04 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 May 2019 16:30:04 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:6d0312bf9f8207dd961236544595b270fcfea05ff71dac15ac7c00f5e0427a7d`  
		Last Modified: Wed, 08 May 2019 08:56:45 GMT  
		Size: 52.6 MB (52575055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c5b66973862969fdf9e67a84145501ba3d04f73b4611e6d46d7728d5e9e606`  
		Last Modified: Wed, 08 May 2019 10:06:51 GMT  
		Size: 17.0 MB (17032492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8ddefb956d3a90bcc7004952e9d431ca2679233ae2b10f67b4f95c6649af4a`  
		Last Modified: Wed, 08 May 2019 10:07:11 GMT  
		Size: 41.2 MB (41156153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c00b739c112c8bc8d19371f80af58c6edcd494e68b364101cd48c3db3d4e58b`  
		Last Modified: Wed, 08 May 2019 11:53:52 GMT  
		Size: 821.7 KB (821690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ff629078483634e008bbb48e497f4fac6896fa52174579bf485d1e95f56af2`  
		Last Modified: Wed, 08 May 2019 11:53:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a06e98af39cbdb9cb2a3c5abc100cfa41f2f332ce9ac66810306a53fa77d41bf`  
		Last Modified: Wed, 08 May 2019 11:53:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956a9b3dd55505596ed67a9e019fe9c28a5da70aa7b85d520781af92a70056cc`  
		Last Modified: Wed, 08 May 2019 11:54:06 GMT  
		Size: 85.0 MB (85038870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90db7dc6383faf7af33854fa099d3551d96057adb2b9e90ee3f99d491ad6f80`  
		Last Modified: Wed, 08 May 2019 16:32:12 GMT  
		Size: 9.2 MB (9161901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64c32335885df86b9612ebe29bd4c7ba80f399a06e3ef3dae27b38b92b371ce1`  
		Last Modified: Wed, 08 May 2019 16:32:11 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48afc1d6925ef3aaad7046a03441847ba016da3dc4fdf258f390f2c668712f12`  
		Last Modified: Wed, 08 May 2019 16:32:11 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; arm variant v7

```console
$ docker pull maven@sha256:23cab3b0ee69960c8d28dbffdbf43d37a9362c7686a8236d81669059f88c0611
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.4 MB (200421543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac614ca43f465d93cb78d21604fe4e5f58644cac094bf30cf208e212baf298f`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 08 May 2019 11:59:37 GMT
ADD file:8608ce29a1acb528a48ba5eb2c83088709ec606374a9247e14b143e6893abb4e in / 
# Wed, 08 May 2019 11:59:38 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:56:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:56:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:57:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:18:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:18:04 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:18:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:18:07 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:18:08 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 14:18:08 GMT
ENV JAVA_VERSION=7u211
# Wed, 08 May 2019 14:18:09 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Wed, 08 May 2019 14:19:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 17:13:21 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 08 May 2019 17:13:21 GMT
ARG USER_HOME_DIR=/root
# Wed, 08 May 2019 17:13:22 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 08 May 2019 17:13:22 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 08 May 2019 17:13:28 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 08 May 2019 17:13:29 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 08 May 2019 17:13:29 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 08 May 2019 17:13:30 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 08 May 2019 17:13:30 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 08 May 2019 17:13:31 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 08 May 2019 17:13:31 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:15cfb32571a95dcaa3a8408897c92bd923327a52abf09ce9c125ed6b5e9257ef`  
		Last Modified: Wed, 08 May 2019 12:07:22 GMT  
		Size: 50.3 MB (50297181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284ec6226ea641062369562b37a4579db6937f39a7a9f2141e2aee7b588399c8`  
		Last Modified: Wed, 08 May 2019 13:09:39 GMT  
		Size: 16.7 MB (16718239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f65834a938bc59e0539fdcf3bc7d33343e54cb9e0160efad5ae0979f1e125f`  
		Last Modified: Wed, 08 May 2019 13:10:00 GMT  
		Size: 39.8 MB (39766231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f145832e9b87c0e4be3ebb018f7bf29831954bd8ef0c314f2adef48d93a3ac`  
		Last Modified: Wed, 08 May 2019 14:34:47 GMT  
		Size: 795.6 KB (795589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06169c95c7dcb130c2f5313cc8e44a8b2a06c520cb2590f34807a9623c341c09`  
		Last Modified: Wed, 08 May 2019 14:34:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e7b223f865ac82ba351900acb5cd72001aafd3af5903efb3a2836a9b729681`  
		Last Modified: Wed, 08 May 2019 14:34:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70186e7d6853982d6e66d25a7821f1201ea53f3a203cdb8eebe432504af23199`  
		Last Modified: Wed, 08 May 2019 14:35:02 GMT  
		Size: 83.7 MB (83680809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361a8e62e90ac23b6d8a3bfe29009d68c209c83d8cdebc7b7adb70129d0d5a0e`  
		Last Modified: Wed, 08 May 2019 17:15:37 GMT  
		Size: 9.2 MB (9161901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a33920d1d038ca64e59eb3a5c1be733a8c5ed7e0404f58f916c2dd7fdf943f`  
		Last Modified: Wed, 08 May 2019 17:15:35 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3d32b17643e0a8cf8347a538721368cc099e2701f0809622ced4728db3a4a4`  
		Last Modified: Wed, 08 May 2019 17:15:35 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `maven:3-jdk-7` - linux; 386

```console
$ docker pull maven@sha256:29300b80ba5889a97d4f8392d81ea5106d031cc2cf263645e63fcd8cd99df42d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.1 MB (236068261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f605d48e0982a030c6b7bd1bc34fd50d997a08c7aadc2aad70887f43685c17bb`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Wed, 27 Mar 2019 10:40:06 GMT
ADD file:4597738366efef5a2cfc74617fde1b9d110154d87acfa9505ed5bcea17a312a7 in / 
# Wed, 27 Mar 2019 10:40:07 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:45:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:45:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:49:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:00:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 18:00:27 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 18:00:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 18:00:28 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 18:00:29 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 01:01:06 GMT
ENV JAVA_VERSION=7u211
# Thu, 28 Mar 2019 01:01:06 GMT
ENV JAVA_DEBIAN_VERSION=7u211-2.6.17-1~deb8u1
# Thu, 28 Mar 2019 01:04:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 17 Apr 2019 10:47:22 GMT
ARG MAVEN_VERSION=3.6.1
# Wed, 17 Apr 2019 10:47:22 GMT
ARG USER_HOME_DIR=/root
# Wed, 17 Apr 2019 10:47:22 GMT
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
# Wed, 17 Apr 2019 10:47:22 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries
# Wed, 17 Apr 2019 10:47:25 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.1/binaries MAVEN_VERSION=3.6.1 SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 17 Apr 2019 10:47:25 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 17 Apr 2019 10:47:25 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 17 Apr 2019 10:47:25 GMT
COPY file:1b3da5c58894f705e7387946301c0c52edb6271761ea3cd80b86a848847a64cd in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 17 Apr 2019 10:47:25 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Wed, 17 Apr 2019 10:47:25 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 17 Apr 2019 10:47:26 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:1171cb1afc38a4920f2864f7cd16e4f1da2511cf4b8d6453ad73a930d29eb757`  
		Last Modified: Wed, 27 Mar 2019 10:46:45 GMT  
		Size: 54.6 MB (54604040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49de456f1bffc13c284367c40d3d8822fd5711f8971a17faee9940cc0c7397f6`  
		Last Modified: Wed, 27 Mar 2019 14:07:54 GMT  
		Size: 19.8 MB (19849648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a04308203c1ae7701d6298a9f8f97880b9c5cd6ff41a3ceed1a2986525762b7`  
		Last Modified: Wed, 27 Mar 2019 14:08:08 GMT  
		Size: 44.0 MB (43964550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:057f504ddf61f5df952288aa029628fa9cb9a3a2b7bac63dfcbd9b73d6fd8aa2`  
		Last Modified: Thu, 28 Mar 2019 01:18:58 GMT  
		Size: 831.3 KB (831275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f4211054f407537fa71b50260efbfaae7c91acb6c4ef50b90555e0f81fc7fd`  
		Last Modified: Thu, 28 Mar 2019 01:18:58 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5669a5be45d7f3c6fd8c4fd61da8f1db91c66f47d7edfa3a6ac4170c8e2fbc6b`  
		Last Modified: Thu, 28 Mar 2019 01:18:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab643256aebd0a94729cc21cf02726c3b42d92e9e6b050289e27587cd48e5bc`  
		Last Modified: Thu, 28 Mar 2019 01:19:26 GMT  
		Size: 107.7 MB (107655282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120ea5418355c9f88d7f5f38b85e018790d04f41199e09d6833d18056c946ad0`  
		Last Modified: Wed, 17 Apr 2019 10:50:54 GMT  
		Size: 9.2 MB (9161871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b41a5e94b9b51737ec7aa96e9e426a788f8f8edcab88e31555d5fdcc127df747`  
		Last Modified: Wed, 17 Apr 2019 10:50:51 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9b4a7ed7c07858c17df1e17a0f862bb94b62070b1646c6b028a67d4b2101b5`  
		Last Modified: Wed, 17 Apr 2019 10:50:51 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
