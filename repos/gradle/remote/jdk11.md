## `gradle:jdk11`

```console
$ docker pull gradle@sha256:47c6bd2790f2caf1cfdd6aa5a5232ab5879f9c16bd4f4c42fe9dda22510b0261
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gradle:jdk11` - linux; amd64

```console
$ docker pull gradle@sha256:6c721f32c6114b4b80b547a2e5418492838024061479ba727dbf15f81e090162
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.6 MB (522638960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b0b8aa7f9e67c0e98a8f66b2d199eebfd23e3d498ed41e5593c4afe5611752d`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Sat, 29 Dec 2018 02:52:37 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:52:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:52:39 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:52:39 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:52:40 GMT
ENV JAVA_VERSION=11.0.1
# Sat, 29 Dec 2018 02:52:40 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Sat, 29 Dec 2018 02:54:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 02:54:02 GMT
CMD ["jshell"]
# Sat, 29 Dec 2018 10:47:45 GMT
CMD ["gradle"]
# Sat, 29 Dec 2018 10:47:45 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 14 Jan 2019 23:20:45 GMT
ENV GRADLE_VERSION=5.1.1
# Mon, 14 Jan 2019 23:20:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
# Mon, 14 Jan 2019 23:20:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 14 Jan 2019 23:20:50 GMT
USER gradle
# Mon, 14 Jan 2019 23:20:50 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 14 Jan 2019 23:20:50 GMT
WORKDIR /home/gradle
# Mon, 14 Jan 2019 23:20:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=4953323605c5d7b89e97d0dc7779e275bccedefcdac090aec123375eae0cc798
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db1045008babb180511e50f86fe629e2b8d7912c00414e373539130f29466f0`  
		Last Modified: Sat, 29 Dec 2018 03:21:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba72089e00c558e987f6b51ee0fa9806ed5a6c7b188539094c8e77a01f84f04`  
		Last Modified: Sat, 29 Dec 2018 03:21:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810bdb5dd91f82c447fc4d446e5d90edcd030b01fed5081199efa532e394c275`  
		Last Modified: Sat, 29 Dec 2018 03:21:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62b56347555630dfd6f134c3d404e8f424cfba12707a0705fc64d49d06a0122b`  
		Last Modified: Sat, 29 Dec 2018 03:22:10 GMT  
		Size: 325.5 MB (325475368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80adbcf6ca1ff26b423c6402939ba17a9b84852859887c4d444ef72ae25d02cc`  
		Last Modified: Mon, 14 Jan 2019 23:23:47 GMT  
		Size: 85.8 MB (85763148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48371b37ce49caa65029fb30ca2433d494a62c6df36ad0849666d98eb156d850`  
		Last Modified: Mon, 14 Jan 2019 23:23:44 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
