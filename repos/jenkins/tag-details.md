<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:2.60.3`](#jenkins2603)
-	[`jenkins:2.60.3-alpine`](#jenkins2603-alpine)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:latest`](#jenkinslatest)

## `jenkins:2.60.3`

```console
$ docker pull jenkins@sha256:a3587f03b47d0aa5775662d709fd4e6b57e5e5fb8e176cc2b09b03d60a533251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:2.60.3` - linux; amd64

```console
$ docker pull jenkins@sha256:e0a2182dd5253b71d21bb301e1cf822455828360c3fd0721423537a019111676
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.4 MB (316405734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:170c4ca596b8bef88d03e86f9a6fde5935a2d845ffaae5388ff4fab0b73d1998`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 03:59:11 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:59:11 GMT
ARG user=jenkins
# Wed, 06 Jun 2018 03:59:12 GMT
ARG group=jenkins
# Wed, 06 Jun 2018 03:59:12 GMT
ARG uid=1000
# Wed, 06 Jun 2018 03:59:12 GMT
ARG gid=1000
# Wed, 06 Jun 2018 03:59:12 GMT
ARG http_port=8080
# Wed, 06 Jun 2018 03:59:13 GMT
ARG agent_port=50000
# Wed, 06 Jun 2018 03:59:13 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 06 Jun 2018 03:59:13 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 06 Jun 2018 03:59:14 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Wed, 06 Jun 2018 03:59:14 GMT
VOLUME [/var/jenkins_home]
# Wed, 06 Jun 2018 03:59:15 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 06 Jun 2018 03:59:15 GMT
ENV TINI_VERSION=0.14.0
# Wed, 06 Jun 2018 03:59:16 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Wed, 06 Jun 2018 03:59:19 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Wed, 06 Jun 2018 03:59:19 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 06 Jun 2018 03:59:20 GMT
ARG JENKINS_VERSION
# Wed, 06 Jun 2018 03:59:20 GMT
ENV JENKINS_VERSION=2.60.3
# Wed, 06 Jun 2018 03:59:20 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Wed, 06 Jun 2018 03:59:21 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Wed, 06 Jun 2018 03:59:24 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Wed, 06 Jun 2018 03:59:25 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 06 Jun 2018 03:59:25 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Wed, 06 Jun 2018 03:59:26 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 06 Jun 2018 03:59:26 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 03:59:26 GMT
EXPOSE 50000/tcp
# Wed, 06 Jun 2018 03:59:27 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 06 Jun 2018 03:59:27 GMT
USER [jenkins]
# Wed, 06 Jun 2018 03:59:28 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 06 Jun 2018 03:59:28 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Wed, 06 Jun 2018 03:59:28 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 06 Jun 2018 03:59:29 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Wed, 06 Jun 2018 03:59:29 GMT
COPY file:a4f750618f51f00d2f8268ac43fdd8d8ef5ce16e1d412afa5a9bc7492a5d975f in /usr/local/bin/install-plugins.sh 
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
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92f086037555d8ebb8622d9882662b995887974dcbb6526e0cbe383bed644f`  
		Last Modified: Wed, 06 Jun 2018 03:59:47 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3501eecd069be38700a48131a57d5a1a5439d5830ca5f0d97fe0b3d95970923`  
		Last Modified: Wed, 06 Jun 2018 03:59:45 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcdcf4470224ee05b1f800fff6adaa4e1db6c9d5bb50f21f0a2e9d6fe501db5`  
		Last Modified: Wed, 06 Jun 2018 03:59:45 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f75800ea70fc206e2cf714e57c222b5eac4f850d1c943956c3b4307c74844c`  
		Last Modified: Wed, 06 Jun 2018 03:59:45 GMT  
		Size: 354.8 KB (354773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d4d3de07383e3936c42aab10cbe3b2d59a79cd44a959477ea06189a942d517`  
		Last Modified: Wed, 06 Jun 2018 03:59:44 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355627401d95b3ff3b4912db7431a5a346c62fb53a6f665e0053910d4b11d0ee`  
		Last Modified: Wed, 06 Jun 2018 03:59:50 GMT  
		Size: 70.4 MB (70409107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcea463e66bcad0186d7738ebd482569ea992fdba395f86b7c19360c56992eb4`  
		Last Modified: Wed, 06 Jun 2018 03:59:42 GMT  
		Size: 441.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29c73e5671339eee2e9145cb3dfd6c70b5d725f35993881ce8ded64349d8d47`  
		Last Modified: Wed, 06 Jun 2018 03:59:42 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d10d4ad18ce8e450724d5606556f931c051fbf4c135165e2121fb76cb03197`  
		Last Modified: Wed, 06 Jun 2018 03:59:42 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1fad861e71aa08f501f7ceabc861390a4f701213d1e703cd558084e5cdd36d`  
		Last Modified: Wed, 06 Jun 2018 03:59:42 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46214987b2842e230aaf98c9db90a689d405bade92987a0414a2cf2c5259ef1`  
		Last Modified: Wed, 06 Jun 2018 03:59:43 GMT  
		Size: 2.6 KB (2628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:2.60.3-alpine`

```console
$ docker pull jenkins@sha256:dfa2198cc4ad223c06dacb11420b0dda20cf79b3308764ac10fe8f458524210f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:2.60.3-alpine` - linux; amd64

```console
$ docker pull jenkins@sha256:22531547b41d24f3549fd199d3e0ba0caa3e7f89b83adc36849ba64703018e83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168030358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad007d332533e8fe0fed1ee9b0053d7d09787de7e90886778421b20e3189d68`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 23:51:26 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Sat, 04 Nov 2017 23:51:26 GMT
ARG user=jenkins
# Sat, 04 Nov 2017 23:51:26 GMT
ARG group=jenkins
# Sat, 04 Nov 2017 23:51:26 GMT
ARG uid=1000
# Sat, 04 Nov 2017 23:51:27 GMT
ARG gid=1000
# Sat, 04 Nov 2017 23:51:27 GMT
ARG http_port=8080
# Sat, 04 Nov 2017 23:51:27 GMT
ARG agent_port=50000
# Sat, 04 Nov 2017 23:51:27 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Sat, 04 Nov 2017 23:51:27 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Sat, 04 Nov 2017 23:51:28 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Sat, 04 Nov 2017 23:51:28 GMT
VOLUME [/var/jenkins_home]
# Sat, 04 Nov 2017 23:51:29 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Sat, 04 Nov 2017 23:51:29 GMT
ENV TINI_VERSION=0.14.0
# Sat, 04 Nov 2017 23:51:29 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Sat, 04 Nov 2017 23:51:31 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Sat, 04 Nov 2017 23:51:33 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Sat, 04 Nov 2017 23:51:33 GMT
ARG JENKINS_VERSION
# Sat, 04 Nov 2017 23:51:34 GMT
ENV JENKINS_VERSION=2.60.3
# Sat, 04 Nov 2017 23:51:34 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Sat, 04 Nov 2017 23:51:34 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Sat, 04 Nov 2017 23:51:38 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Sat, 04 Nov 2017 23:51:38 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Sat, 04 Nov 2017 23:51:38 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Sat, 04 Nov 2017 23:51:39 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Sat, 04 Nov 2017 23:51:39 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 23:51:39 GMT
EXPOSE 50000/tcp
# Sat, 04 Nov 2017 23:51:39 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Sat, 04 Nov 2017 23:51:39 GMT
USER [jenkins]
# Sat, 04 Nov 2017 23:51:40 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Sat, 04 Nov 2017 23:51:40 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Sat, 04 Nov 2017 23:51:40 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Sat, 04 Nov 2017 23:51:40 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Sat, 04 Nov 2017 23:51:41 GMT
COPY file:a4f750618f51f00d2f8268ac43fdd8d8ef5ce16e1d412afa5a9bc7492a5d975f in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6954cc62bb70ebb5a3e8376cd779b5704d14ac494fffa70c2dfeebcab7c96287`  
		Last Modified: Sat, 04 Nov 2017 23:51:58 GMT  
		Size: 25.3 MB (25285459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bb3b322bbf6c282aca455999c3b7eba6dcb05baecfd5276293ae8b523e7f11`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6d7cf36d7950f6ae3639ec2c6cf0783fee64c76420a459d7b4be96533c8615`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d58fbab45c9b3fbce7a367be78a99b4abc7baed2664e469368b96de90166486`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 354.8 KB (354776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e1e3faa6ccd0fc5e11a82dcea5f7c3baf0d5b86f95973c28096afbdf4a8211`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11b7ce60662ccac140c46bd2569c371a11595a9b1e5756e7b0babcaeaacd9ed`  
		Last Modified: Sat, 04 Nov 2017 23:51:58 GMT  
		Size: 70.4 MB (70409102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69ee1843314781148fac759a1975f03c668423c8d94d3dd388a250a2d5286dc`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1a36b81d90f773f60568f5cb388bf5c4fb6bf394b14081a6ff9d72ae997f75`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17f7d647644b760426d7c2b88da815a98704a7a9df0bdd482949cf00dc923a3`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 831.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8b02f3281606b02d0de1a52d20bb9d538188dd442b3a5a87ca7fa59bce802b`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 1.6 KB (1551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e4bb5f4ba5cb4331965bb142df9625c0da7f65a9634fd47a27328a436ca00b`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 2.6 KB (2625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:alpine`

```console
$ docker pull jenkins@sha256:dfa2198cc4ad223c06dacb11420b0dda20cf79b3308764ac10fe8f458524210f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:alpine` - linux; amd64

```console
$ docker pull jenkins@sha256:22531547b41d24f3549fd199d3e0ba0caa3e7f89b83adc36849ba64703018e83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168030358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ad007d332533e8fe0fed1ee9b0053d7d09787de7e90886778421b20e3189d68`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Wed, 10 May 2017 16:38:16 GMT
ADD file:63f63606d6e289eb607c90e31de81802258906712727e473a2898f0f1ae55bb5 in / 
# Wed, 10 May 2017 16:38:17 GMT
CMD ["/bin/sh"]
# Wed, 10 May 2017 22:39:51 GMT
ENV LANG=C.UTF-8
# Wed, 10 May 2017 22:39:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 May 2017 22:39:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 May 2017 22:39:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 May 2017 22:39:55 GMT
ENV JAVA_VERSION=8u121
# Wed, 10 May 2017 22:39:56 GMT
ENV JAVA_ALPINE_VERSION=8.121.13-r0
# Wed, 10 May 2017 22:40:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 04 Nov 2017 23:51:26 GMT
RUN apk add --no-cache git openssh-client curl unzip bash ttf-dejavu coreutils
# Sat, 04 Nov 2017 23:51:26 GMT
ARG user=jenkins
# Sat, 04 Nov 2017 23:51:26 GMT
ARG group=jenkins
# Sat, 04 Nov 2017 23:51:26 GMT
ARG uid=1000
# Sat, 04 Nov 2017 23:51:27 GMT
ARG gid=1000
# Sat, 04 Nov 2017 23:51:27 GMT
ARG http_port=8080
# Sat, 04 Nov 2017 23:51:27 GMT
ARG agent_port=50000
# Sat, 04 Nov 2017 23:51:27 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Sat, 04 Nov 2017 23:51:27 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Sat, 04 Nov 2017 23:51:28 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN addgroup -g ${gid} ${group}     && adduser -h "$JENKINS_HOME" -u ${uid} -G ${group} -s /bin/bash -D ${user}
# Sat, 04 Nov 2017 23:51:28 GMT
VOLUME [/var/jenkins_home]
# Sat, 04 Nov 2017 23:51:29 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Sat, 04 Nov 2017 23:51:29 GMT
ENV TINI_VERSION=0.14.0
# Sat, 04 Nov 2017 23:51:29 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Sat, 04 Nov 2017 23:51:31 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Sat, 04 Nov 2017 23:51:33 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Sat, 04 Nov 2017 23:51:33 GMT
ARG JENKINS_VERSION
# Sat, 04 Nov 2017 23:51:34 GMT
ENV JENKINS_VERSION=2.60.3
# Sat, 04 Nov 2017 23:51:34 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Sat, 04 Nov 2017 23:51:34 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Sat, 04 Nov 2017 23:51:38 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Sat, 04 Nov 2017 23:51:38 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Sat, 04 Nov 2017 23:51:38 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Sat, 04 Nov 2017 23:51:39 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Sat, 04 Nov 2017 23:51:39 GMT
EXPOSE 8080/tcp
# Sat, 04 Nov 2017 23:51:39 GMT
EXPOSE 50000/tcp
# Sat, 04 Nov 2017 23:51:39 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Sat, 04 Nov 2017 23:51:39 GMT
USER [jenkins]
# Sat, 04 Nov 2017 23:51:40 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Sat, 04 Nov 2017 23:51:40 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Sat, 04 Nov 2017 23:51:40 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Sat, 04 Nov 2017 23:51:40 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Sat, 04 Nov 2017 23:51:41 GMT
COPY file:a4f750618f51f00d2f8268ac43fdd8d8ef5ce16e1d412afa5a9bc7492a5d975f in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:cfc728c1c5584d8e0ae69368fc9c34d54d72651355573ba42554c2469a0a6299`  
		Last Modified: Wed, 10 May 2017 16:41:01 GMT  
		Size: 2.0 MB (1967906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b12b87f0a0e1bc0a163558cc56861b86355598153fb9e35273ece1dabe81cae`  
		Last Modified: Fri, 12 May 2017 15:19:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7d6497a92f9de7c9b828962ad09a648e1d72687dda6bb986a72e95c61bb3dad`  
		Last Modified: Fri, 12 May 2017 15:19:30 GMT  
		Size: 70.0 MB (70004148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6954cc62bb70ebb5a3e8376cd779b5704d14ac494fffa70c2dfeebcab7c96287`  
		Last Modified: Sat, 04 Nov 2017 23:51:58 GMT  
		Size: 25.3 MB (25285459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87bb3b322bbf6c282aca455999c3b7eba6dcb05baecfd5276293ae8b523e7f11`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6d7cf36d7950f6ae3639ec2c6cf0783fee64c76420a459d7b4be96533c8615`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d58fbab45c9b3fbce7a367be78a99b4abc7baed2664e469368b96de90166486`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 354.8 KB (354776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14e1e3faa6ccd0fc5e11a82dcea5f7c3baf0d5b86f95973c28096afbdf4a8211`  
		Last Modified: Sat, 04 Nov 2017 23:51:53 GMT  
		Size: 427.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11b7ce60662ccac140c46bd2569c371a11595a9b1e5756e7b0babcaeaacd9ed`  
		Last Modified: Sat, 04 Nov 2017 23:51:58 GMT  
		Size: 70.4 MB (70409102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f69ee1843314781148fac759a1975f03c668423c8d94d3dd388a250a2d5286dc`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1a36b81d90f773f60568f5cb388bf5c4fb6bf394b14081a6ff9d72ae997f75`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 1.4 KB (1436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17f7d647644b760426d7c2b88da815a98704a7a9df0bdd482949cf00dc923a3`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 831.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8b02f3281606b02d0de1a52d20bb9d538188dd442b3a5a87ca7fa59bce802b`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 1.6 KB (1551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0e4bb5f4ba5cb4331965bb142df9625c0da7f65a9634fd47a27328a436ca00b`  
		Last Modified: Sat, 04 Nov 2017 23:51:51 GMT  
		Size: 2.6 KB (2625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jenkins:latest`

```console
$ docker pull jenkins@sha256:a3587f03b47d0aa5775662d709fd4e6b57e5e5fb8e176cc2b09b03d60a533251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

```console
$ docker pull jenkins@sha256:e0a2182dd5253b71d21bb301e1cf822455828360c3fd0721423537a019111676
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.4 MB (316405734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:170c4ca596b8bef88d03e86f9a6fde5935a2d845ffaae5388ff4fab0b73d1998`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 03:59:11 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 03:59:11 GMT
ARG user=jenkins
# Wed, 06 Jun 2018 03:59:12 GMT
ARG group=jenkins
# Wed, 06 Jun 2018 03:59:12 GMT
ARG uid=1000
# Wed, 06 Jun 2018 03:59:12 GMT
ARG gid=1000
# Wed, 06 Jun 2018 03:59:12 GMT
ARG http_port=8080
# Wed, 06 Jun 2018 03:59:13 GMT
ARG agent_port=50000
# Wed, 06 Jun 2018 03:59:13 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 06 Jun 2018 03:59:13 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 06 Jun 2018 03:59:14 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Wed, 06 Jun 2018 03:59:14 GMT
VOLUME [/var/jenkins_home]
# Wed, 06 Jun 2018 03:59:15 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 06 Jun 2018 03:59:15 GMT
ENV TINI_VERSION=0.14.0
# Wed, 06 Jun 2018 03:59:16 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Wed, 06 Jun 2018 03:59:19 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Wed, 06 Jun 2018 03:59:19 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 06 Jun 2018 03:59:20 GMT
ARG JENKINS_VERSION
# Wed, 06 Jun 2018 03:59:20 GMT
ENV JENKINS_VERSION=2.60.3
# Wed, 06 Jun 2018 03:59:20 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Wed, 06 Jun 2018 03:59:21 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Wed, 06 Jun 2018 03:59:24 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Wed, 06 Jun 2018 03:59:25 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 06 Jun 2018 03:59:25 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Wed, 06 Jun 2018 03:59:26 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 06 Jun 2018 03:59:26 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 03:59:26 GMT
EXPOSE 50000/tcp
# Wed, 06 Jun 2018 03:59:27 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 06 Jun 2018 03:59:27 GMT
USER [jenkins]
# Wed, 06 Jun 2018 03:59:28 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 06 Jun 2018 03:59:28 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Wed, 06 Jun 2018 03:59:28 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 06 Jun 2018 03:59:29 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Wed, 06 Jun 2018 03:59:29 GMT
COPY file:a4f750618f51f00d2f8268ac43fdd8d8ef5ce16e1d412afa5a9bc7492a5d975f in /usr/local/bin/install-plugins.sh 
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
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92f086037555d8ebb8622d9882662b995887974dcbb6526e0cbe383bed644f`  
		Last Modified: Wed, 06 Jun 2018 03:59:47 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3501eecd069be38700a48131a57d5a1a5439d5830ca5f0d97fe0b3d95970923`  
		Last Modified: Wed, 06 Jun 2018 03:59:45 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcdcf4470224ee05b1f800fff6adaa4e1db6c9d5bb50f21f0a2e9d6fe501db5`  
		Last Modified: Wed, 06 Jun 2018 03:59:45 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f75800ea70fc206e2cf714e57c222b5eac4f850d1c943956c3b4307c74844c`  
		Last Modified: Wed, 06 Jun 2018 03:59:45 GMT  
		Size: 354.8 KB (354773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d4d3de07383e3936c42aab10cbe3b2d59a79cd44a959477ea06189a942d517`  
		Last Modified: Wed, 06 Jun 2018 03:59:44 GMT  
		Size: 434.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:355627401d95b3ff3b4912db7431a5a346c62fb53a6f665e0053910d4b11d0ee`  
		Last Modified: Wed, 06 Jun 2018 03:59:50 GMT  
		Size: 70.4 MB (70409107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcea463e66bcad0186d7738ebd482569ea992fdba395f86b7c19360c56992eb4`  
		Last Modified: Wed, 06 Jun 2018 03:59:42 GMT  
		Size: 441.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29c73e5671339eee2e9145cb3dfd6c70b5d725f35993881ce8ded64349d8d47`  
		Last Modified: Wed, 06 Jun 2018 03:59:42 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d10d4ad18ce8e450724d5606556f931c051fbf4c135165e2121fb76cb03197`  
		Last Modified: Wed, 06 Jun 2018 03:59:42 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1fad861e71aa08f501f7ceabc861390a4f701213d1e703cd558084e5cdd36d`  
		Last Modified: Wed, 06 Jun 2018 03:59:42 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46214987b2842e230aaf98c9db90a689d405bade92987a0414a2cf2c5259ef1`  
		Last Modified: Wed, 06 Jun 2018 03:59:43 GMT  
		Size: 2.6 KB (2628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
