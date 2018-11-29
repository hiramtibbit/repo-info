## `openjdk:7u181-jdk-jessie`

```console
$ docker pull openjdk@sha256:ec715e69fc6756385f25f1da470cdd4acbd3b08db80ae2a948e92229b28c0750
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `openjdk:7u181-jdk-jessie` - linux; amd64

```console
$ docker pull openjdk@sha256:daf91569d2f9f9e0e711f8db57404ba14e36985a803497e5839d2137040999a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.9 MB (213929186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce5bf06e468631ded88af5571a3c7ef44b205b85c1992f6566bdd80af24d3cd`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:33:25 GMT
ADD file:0b25d0012989e20b95dd0702d9491fdc4a4d40d0994690df7ec502cf163590fe in / 
# Thu, 15 Nov 2018 22:33:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:07:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:07:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:04:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 15:04:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 15:04:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 15:04:54 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 15:04:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 15:04:55 GMT
ENV JAVA_VERSION=7u181
# Wed, 28 Nov 2018 23:02:01 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 28 Nov 2018 23:03:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:4b105072aa89afc93b7238396c7ca2951308666854da2fb399c4ca362c93b445`  
		Last Modified: Thu, 15 Nov 2018 22:53:33 GMT  
		Size: 54.4 MB (54357843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b775667b1fd065bc50f69e2325000a767a39c1c89af85d84a5fae2ec93be7333`  
		Last Modified: Fri, 16 Nov 2018 11:28:48 GMT  
		Size: 17.5 MB (17539160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe156bcb4b118dce0964132fc8c750edec1f6c9cf31dd3c0d167bb40cbc6ce6`  
		Last Modified: Fri, 16 Nov 2018 11:29:28 GMT  
		Size: 43.3 MB (43304623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e8738040e12f2089eedac50bc5f525f92ab847421987d45681ac9213c0235a`  
		Last Modified: Fri, 16 Nov 2018 16:07:25 GMT  
		Size: 828.2 KB (828220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baacf53e12e20abc02f245e3262babf019741f9e8d88569ee1918a76f0b77f17`  
		Last Modified: Fri, 16 Nov 2018 16:07:25 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efa8f3b2f9da4a9d7b80406e6932de282e0c275f2764d0156bb1b6933c4bf16`  
		Last Modified: Fri, 16 Nov 2018 16:07:24 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a846e5c3901603c11d597ca54eb8d6edb8e93df817429d3db0f93604b6003c`  
		Last Modified: Wed, 28 Nov 2018 23:10:15 GMT  
		Size: 97.9 MB (97898963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jdk-jessie` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:9ab6bbf1b38002cd0d4f579ab96683b71f5963e8242c2ec500aefcf51977d002
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196481677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2427f3f0d175eb3fc84e77bc9d88e1e9940fd9ae32889dadef2c74bf570011f9`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:50:40 GMT
ADD file:51b6e570dd2584f3747b0877f1342ea36c4c8dae4b0aa0f4a114e816fde77904 in / 
# Fri, 16 Nov 2018 09:50:41 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:28:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:29:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:43:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:43:40 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 18:43:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 18:43:43 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 18:43:43 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 18:43:44 GMT
ENV JAVA_VERSION=7u181
# Fri, 16 Nov 2018 18:43:44 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Fri, 16 Nov 2018 18:45:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:28b426da5f009c6d2c8bc1993bee5601ab4126eb8a3a2698db1d96c7f612dde8`  
		Last Modified: Fri, 16 Nov 2018 10:05:38 GMT  
		Size: 52.5 MB (52544563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85e7a926b9697d9b8ca1e354a10a67ab9ac56b09d02c3e293a6d2f10eb1939e`  
		Last Modified: Fri, 16 Nov 2018 18:46:57 GMT  
		Size: 17.0 MB (17030194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46ba2567b36508f7e2c69e087a740a7b9e2e3f00177014d5d001993c2463069`  
		Last Modified: Fri, 16 Nov 2018 18:47:24 GMT  
		Size: 41.1 MB (41143586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96b3686419901e9b123f375663556a6bb0c6c918b7e14f3b2b9ee76be24cc282`  
		Last Modified: Fri, 16 Nov 2018 19:08:44 GMT  
		Size: 821.5 KB (821504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c136b4f8097ea0dc86465c3a2f79a8ea494b2415c762563f20b4bf5ec28fd2`  
		Last Modified: Fri, 16 Nov 2018 19:08:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be68b0c418ccfdf7330c614296260197e106a44a131415e8e732dff7b41df887`  
		Last Modified: Fri, 16 Nov 2018 19:08:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:871b8a32e5fdb049e82e6666e6d1a14e6d83e817b3712a934d0462b9cdfa09c6`  
		Last Modified: Fri, 16 Nov 2018 19:09:00 GMT  
		Size: 84.9 MB (84941452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jdk-jessie` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:0f4788d39cbf10532bf85fe7e6bfc7651c858a9c7ebd0879e13b69072b477bd9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191145937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edc9622f5e282f8181a260b545a0e3c105ba2305d4b405d45c227601b454abe7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:11 GMT
ADD file:9c7cee46635f83a6649a59dfa973c45dbfcb18294c4e9929937b51ca89af3242 in / 
# Fri, 16 Nov 2018 13:02:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:09:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:09:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:10:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:35:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:35:49 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 19:35:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 19:35:52 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 19:35:52 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 19:35:52 GMT
ENV JAVA_VERSION=7u181
# Fri, 16 Nov 2018 19:35:53 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Fri, 16 Nov 2018 19:38:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2a662743dee4e609927ac10eb7f6457acb061af79addbda5a70c40f873a43c93`  
		Last Modified: Fri, 16 Nov 2018 13:15:12 GMT  
		Size: 50.3 MB (50279570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cbf9b0332806ff18413498271ad3f71f9c770f17fd6365db6bd350a47af07`  
		Last Modified: Fri, 16 Nov 2018 18:27:49 GMT  
		Size: 16.7 MB (16712873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9f23784e9c8032bc43636149994cec447c09b6dc5e7f55f9d27a05e85e07c6`  
		Last Modified: Fri, 16 Nov 2018 18:28:22 GMT  
		Size: 39.8 MB (39763255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f73b4cb84d935ae1d466678e22964e39884daea6d2e683879acf2a47ea7aac`  
		Last Modified: Fri, 16 Nov 2018 20:03:56 GMT  
		Size: 795.4 KB (795395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0153a9546f41a3e574e1303bebbef109cec49eeef547a3d44b91181d64c4fc89`  
		Last Modified: Fri, 16 Nov 2018 20:03:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2447229d4a288c49fa57c104eee3b04a30612aab9d338fd561164890bc6f1b3`  
		Last Modified: Fri, 16 Nov 2018 20:03:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4459f22f25b95f9f66eb15eeaa50c1104a8402aad99c8db39f3d406251852917`  
		Last Modified: Fri, 16 Nov 2018 20:04:09 GMT  
		Size: 83.6 MB (83594466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jdk-jessie` - linux; 386

```console
$ docker pull openjdk@sha256:f05f3d64e2bd3ebb8768b65771c9e7332282e8359c60edc13b4948a99285541f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.7 MB (226748792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b3a1a77aa4f6ababcc830b647e5270192031e372661dece6fb881e113eda23`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:25:54 GMT
ADD file:85dda498c7ceba872653c9bb40223849881a8a9c59c0f9a39003a8e6862f66e5 in / 
# Fri, 16 Nov 2018 12:25:54 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:14:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:14:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:16:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:08:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:08:44 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 14:08:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 14:08:46 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 14:08:46 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 14:08:47 GMT
ENV JAVA_VERSION=7u181
# Sat, 17 Nov 2018 14:08:47 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Sat, 17 Nov 2018 14:10:53 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:16575792c3dc98957c43c8d8fc1a81b062a3ff3fc617db60ddae32a813319afd`  
		Last Modified: Thu, 15 Nov 2018 01:12:17 GMT  
		Size: 54.6 MB (54584852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c656c5ba901c867f311e23cdb35dca16d35c23b492c6e4738f0124af80e92d`  
		Last Modified: Sat, 17 Nov 2018 11:41:35 GMT  
		Size: 19.8 MB (19837621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124efacb5af9ea62e9c8c01741b4d909626d5d473c05e84cfeedccefa4568ad3`  
		Last Modified: Sat, 17 Nov 2018 11:42:28 GMT  
		Size: 44.0 MB (43952498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f7e128318f6441abdaae53b23628eb6f329c945ca99bc9be8823592d974ab3`  
		Last Modified: Sat, 17 Nov 2018 14:53:29 GMT  
		Size: 831.2 KB (831225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073cc432ca755ea19f259025dae565faa248ef7f8baad020d2302494ae838c42`  
		Last Modified: Sat, 17 Nov 2018 14:53:28 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d668d5dacdbf2ed96d3dcab261a86a19b4413698f7358d3c17aafbf6198c961`  
		Last Modified: Sat, 17 Nov 2018 14:53:28 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d89b30e7a0a5ede8f2743d47fedd2960b0666782ce40ec86232b21662654faa`  
		Last Modified: Sat, 17 Nov 2018 14:53:46 GMT  
		Size: 107.5 MB (107542218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
