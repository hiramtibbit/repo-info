## `openjdk:7u181-jre-slim`

```console
$ docker pull openjdk@sha256:9d5adc5f6064384d6cb1f9b09ea4fbd0ed03a0ef712bf0543c3d83d9b7b8f19e
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

### `openjdk:7u181-jre-slim` - linux; amd64

```console
$ docker pull openjdk@sha256:24ea27fd01ce5fd8a9385021ace10ebac7f36c916282cbd06d143f5565712f98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.3 MB (92284657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edb18538121c42c8a9c701b45c30cbe127b94798d34554e198d100adb0675170`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:21:17 GMT
ADD file:8108708c9ab961c9562c2171f4f594291dbaac0dc81dcb7bcbaf134f251f459e in / 
# Tue, 26 Jun 2018 21:21:18 GMT
CMD ["bash"]
# Tue, 03 Jul 2018 00:05:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 00:05:14 GMT
ENV LANG=C.UTF-8
# Tue, 03 Jul 2018 00:05:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 03 Jul 2018 00:05:16 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 03 Jul 2018 00:07:57 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 03 Jul 2018 00:07:57 GMT
ENV JAVA_VERSION=7u181
# Tue, 03 Jul 2018 00:07:57 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 03 Jul 2018 00:08:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:2caa28db99eb312c788669036f0bf3914f73f5a27a30f69d2a7443fce10eb882`  
		Last Modified: Tue, 26 Jun 2018 21:31:00 GMT  
		Size: 30.1 MB (30119838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3a099e81339ad7e8eff6bea1189e31c55d6a643ed13587094a59cd86a33c9d`  
		Last Modified: Tue, 03 Jul 2018 00:47:11 GMT  
		Size: 463.7 KB (463738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a75089729b266809ea0b61e88e7bc73699ce6e38266983114215ed321a7a6949`  
		Last Modified: Tue, 03 Jul 2018 00:47:11 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e540b584b20ac94cd9a51ad958391e06aac952078ab029e6cd97bee27f782e`  
		Last Modified: Tue, 03 Jul 2018 00:47:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5774188f4f4012c856b4f61992d8dda25d41b78e430e88b6a354b0bc646e0b55`  
		Last Modified: Tue, 03 Jul 2018 00:51:54 GMT  
		Size: 61.7 MB (61700702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim` - linux; arm variant v5

```console
$ docker pull openjdk@sha256:8832bd9d4eeabb8cef687c6b2798d3fc196c2190fc980c3e14b63c7e3af73e14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80384025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05bd723028d07dca19da50cdd77d83eeb4b89f3f3f7aebdfdf42a48197b4499f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:50:04 GMT
ADD file:f9c252e838b8db10a094c47436a079487e2fe317ebc0013a271810fe968cf999 in / 
# Wed, 27 Jun 2018 08:50:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:40:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:40:30 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:40:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:40:32 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:44:03 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 12:44:04 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Jun 2018 12:44:04 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 27 Jun 2018 12:45:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:174cee00e71be1a79f61029d2ef1a01e0060cb74e2d18dc5aca18cbea3159528`  
		Last Modified: Wed, 27 Jun 2018 08:58:54 GMT  
		Size: 28.4 MB (28430287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a502f46feaf43e90f170639559ea3f575f855d4dbd5f942544851c62d5b04f7b`  
		Last Modified: Wed, 27 Jun 2018 12:59:20 GMT  
		Size: 456.4 KB (456446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba9452e24aa94632019691517d67876e62050292ad552dd5960429943406beda`  
		Last Modified: Wed, 27 Jun 2018 12:59:20 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e84410dfaeb9b116e226930dbeee42f39ad8c9611864e13f5a0d592ad0f788`  
		Last Modified: Wed, 27 Jun 2018 12:59:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70114ba635c2d587b0cce6997d13092a296ee0e12cc783273483de8cf5b02bf`  
		Last Modified: Wed, 27 Jun 2018 13:01:10 GMT  
		Size: 51.5 MB (51496916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:8dd0466ba643b9781c76110b4b25fc036aa6d05681b891e94c8038738702e157
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77084197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d73d69d860661b4106c08477c5017b9ff934c5ef9d3444c3040eefd26c747b34`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:59:29 GMT
ADD file:139eb5c6629bcd898347ffb1d1f2b4a86c7ce74f0da7ef85fc58886baf3efb25 in / 
# Wed, 27 Jun 2018 11:59:29 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:36:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:36:20 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:36:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:36:27 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:39:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 15:39:33 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Jun 2018 15:39:33 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 27 Jun 2018 15:40:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:105c2fdbbcba2943a690f8b934af14483b01cb2fa01aa43b8ba23a69fe311f0a`  
		Last Modified: Wed, 27 Jun 2018 12:08:54 GMT  
		Size: 26.3 MB (26286807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b343c93eb35a5e886b173446a6458741c5c87f902294f250126b23259952bdc`  
		Last Modified: Wed, 27 Jun 2018 15:44:08 GMT  
		Size: 432.3 KB (432310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a974d8d35792e7b59b655ba3b252d90fd0fb0d0eb7224804cfccbac6d3bd7c3`  
		Last Modified: Wed, 27 Jun 2018 15:44:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546f6bc13ab53f407541154b4a917687e37c720306ea9dabd0c676ab4bd81296`  
		Last Modified: Wed, 27 Jun 2018 15:44:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e23da653fcd20d8294c19ba5590f9a8245e790e3e408c38c0003e5a10ea2d9`  
		Last Modified: Wed, 27 Jun 2018 15:45:57 GMT  
		Size: 50.4 MB (50364703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:6cb664f7ae656fd4de1f2540528922b06ca336a7a967cc0a9bace196ca808f02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81115304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fab0a38993df3e92e5e014d949b6aeb950321e57c36050771d219ac97b6b0a5`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:23:15 GMT
ADD file:d88886292edb80d3898ba50f464cceb9c33709b3bb124f81e910bc9c6b0e7acc in / 
# Mon, 30 Apr 2018 23:23:18 GMT
CMD ["bash"]
# Tue, 01 May 2018 11:19:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 11:19:37 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 11:19:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 11:19:53 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 11:19:56 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 09:33:43 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 09:33:44 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:36:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:6d46b8f3eebfe36e412a394de4bf8a598e22d1fe11cd6b35f34e770473c170ea`  
		Last Modified: Mon, 30 Apr 2018 23:43:19 GMT  
		Size: 27.5 MB (27494590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c67f48d3f95f879f0a16939897151d838aeae71743f184d41d557ba719f896`  
		Last Modified: Tue, 01 May 2018 11:59:05 GMT  
		Size: 457.9 KB (457930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e4f5df17d67da29d0f5e8846dfb76e7f541e3c84f16d804a52313cf3f2d755`  
		Last Modified: Tue, 01 May 2018 11:59:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825cf0a868d42f586b37204e4c5bbc1ab2668b7d1d01156e2be933557a5fe1fd`  
		Last Modified: Tue, 01 May 2018 11:59:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1edf8ee0b889466a9d616f24b0813e30e963842440ad3ffae5b30c1750b7fd`  
		Last Modified: Tue, 12 Jun 2018 09:49:35 GMT  
		Size: 53.2 MB (53162406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim` - linux; 386

```console
$ docker pull openjdk@sha256:7c5b7b3d93208df31ab108dda2b68462c4ba5e7f6617fb17aa4a1b2a65ae7697
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104024556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9163ce41d2ad9bfbe2119343c21dd5414b7227b76775b788bdd18ba183145a3a`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:20:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:20:03 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:20:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:20:05 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:24:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 27 Jun 2018 15:24:35 GMT
ENV JAVA_VERSION=7u181
# Wed, 27 Jun 2018 15:24:36 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Wed, 27 Jun 2018 15:25:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ecc1d61c7e4f9d92c42aa04c2c34df4a177075b5e03757cd2e9763398cdfeb`  
		Last Modified: Wed, 27 Jun 2018 15:34:05 GMT  
		Size: 466.3 KB (466301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c7e2782264f446bd837b4d66b7a139ab8eaa08fc2cd1b899df57f6d2209fcd`  
		Last Modified: Wed, 27 Jun 2018 15:34:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:104cf7f40f84e06d4be0be1bb678f84432eedb0d07eaab0f1e54bccfd21e2e40`  
		Last Modified: Wed, 27 Jun 2018 15:34:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2821d86a80de17c528d3a7ff0248c524ab79da82e3af7c78d7f0d60305625f53`  
		Last Modified: Wed, 27 Jun 2018 15:37:22 GMT  
		Size: 73.3 MB (73288198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim` - linux; ppc64le

```console
$ docker pull openjdk@sha256:be448f8623f710e2c4732492929d5f27c3a64c7cb07451c5d0892ad49d91189b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.7 MB (83733040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f84438c8467b1c2466cf4a1db8ed6d03bab384af30a787a5640665ff304a125c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:18:08 GMT
ADD file:cc51ef60d7cb3b70c82127b8721de1b99378a9d4fc246dffa2ef5ffa2d9ab805 in / 
# Sat, 28 Apr 2018 08:18:09 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:38:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:38:39 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 09:38:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 09:38:43 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 09:38:43 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 09:00:20 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 09:00:20 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 09:03:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:7745ff03a317ccaa10ff03129a2330b1c154aecaf51a892b7d99d5e1dbeb86cc`  
		Last Modified: Sat, 28 Apr 2018 08:25:29 GMT  
		Size: 29.3 MB (29317351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:904d9cae5b4e13977b3a3f5da2837f3842b44dd1ad001f63bae91c193e6384e7`  
		Last Modified: Sat, 28 Apr 2018 09:58:30 GMT  
		Size: 460.2 KB (460245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f46e6678f464aca7e6dd6754f68d28005443749f3cbf76be8b3e676a6947a1`  
		Last Modified: Sat, 28 Apr 2018 09:58:28 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5e5c5eac28805942423bb472b259179da4051103daa04229bfb914fbd74006`  
		Last Modified: Sat, 28 Apr 2018 09:58:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca3a142c12e23c3c950f6347af8ac0692eb2e5ea8b99ab4589146d7c264dcfb`  
		Last Modified: Tue, 12 Jun 2018 09:15:36 GMT  
		Size: 54.0 MB (53955065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u181-jre-slim` - linux; s390x

```console
$ docker pull openjdk@sha256:c90383a15959cea7fb186ed56b5ceb6abaaffb77094eeedb34c9c752d123a707
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84275256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f28be80a65e8c19a718f53bb4be374c2d2b520388c4c2be4618a4d3f946784c2`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:53 GMT
ADD file:7c773d50957d6184975f5b22ef61757cd979893af5c77cdfef46dd28d8fc0296 in / 
# Sat, 28 Apr 2018 11:42:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:33:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:33:30 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:33:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:33:31 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:33:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 12 Jun 2018 11:56:36 GMT
ENV JAVA_VERSION=7u181
# Tue, 12 Jun 2018 11:56:36 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-1~deb8u1
# Tue, 12 Jun 2018 11:57:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
```

-	Layers:
	-	`sha256:f4d03f2765a5584a0dc02af25ffd7c98d6e129d072a1fc30380b106603442102`  
		Last Modified: Sat, 28 Apr 2018 11:48:28 GMT  
		Size: 30.3 MB (30308304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dd73eb8e6bfd44480a404637dfc711eb6cfa167bcacd7b692ee13e269920ad`  
		Last Modified: Sat, 28 Apr 2018 14:58:39 GMT  
		Size: 473.2 KB (473195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4b07ff4fb390ce7c50cd1a3f4c1856608817a2e55147026b2113f0e1c9d057`  
		Last Modified: Sat, 28 Apr 2018 14:58:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7c4bb4187f99b40f5b149b933b5730667a7287c28f52903d444450e9881cc3`  
		Last Modified: Sat, 28 Apr 2018 14:58:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cc1d361c375e259ee4ff746658325c9d05ea18dfb10b83d79707f5b7e7d7758`  
		Last Modified: Tue, 12 Jun 2018 12:02:54 GMT  
		Size: 53.5 MB (53493378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
