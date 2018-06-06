<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `jenkins`

-	[`jenkins:2.60.3`](#jenkins2603)
-	[`jenkins:2.60.3-alpine`](#jenkins2603-alpine)
-	[`jenkins:alpine`](#jenkinsalpine)
-	[`jenkins:latest`](#jenkinslatest)

## `jenkins:2.60.3`

```console
$ docker pull jenkins@sha256:7ef3b03a8f870dca547d28b0cf47915a50eb220a9d191dcdde14b89df3055eef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:2.60.3` - linux; amd64

```console
$ docker pull jenkins@sha256:80c1892570b37c76659db441c56c969cf403bfcc3c35eb2b517cd44cb7914bd9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.4 MB (316403875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b4164f97896556763b7c12e12c59d2b58c05cfa1dcdcd8db12d65413a957e2`
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
# Wed, 06 Jun 2018 18:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:43:16 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:43:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:43:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:43:18 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 18:43:19 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:43:19 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:43:19 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:44:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:44:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 20:59:08 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 20:59:08 GMT
ARG user=jenkins
# Wed, 06 Jun 2018 20:59:09 GMT
ARG group=jenkins
# Wed, 06 Jun 2018 20:59:09 GMT
ARG uid=1000
# Wed, 06 Jun 2018 20:59:09 GMT
ARG gid=1000
# Wed, 06 Jun 2018 20:59:09 GMT
ARG http_port=8080
# Wed, 06 Jun 2018 20:59:10 GMT
ARG agent_port=50000
# Wed, 06 Jun 2018 20:59:10 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 06 Jun 2018 20:59:10 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 06 Jun 2018 20:59:11 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Wed, 06 Jun 2018 20:59:11 GMT
VOLUME [/var/jenkins_home]
# Wed, 06 Jun 2018 20:59:12 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 06 Jun 2018 20:59:12 GMT
ENV TINI_VERSION=0.14.0
# Wed, 06 Jun 2018 20:59:13 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Wed, 06 Jun 2018 20:59:15 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Wed, 06 Jun 2018 20:59:16 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 06 Jun 2018 20:59:16 GMT
ARG JENKINS_VERSION
# Wed, 06 Jun 2018 20:59:16 GMT
ENV JENKINS_VERSION=2.60.3
# Wed, 06 Jun 2018 20:59:17 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Wed, 06 Jun 2018 20:59:17 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Wed, 06 Jun 2018 20:59:21 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Wed, 06 Jun 2018 20:59:21 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 06 Jun 2018 20:59:21 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Wed, 06 Jun 2018 20:59:22 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 06 Jun 2018 20:59:22 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 20:59:23 GMT
EXPOSE 50000/tcp
# Wed, 06 Jun 2018 20:59:23 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 06 Jun 2018 20:59:23 GMT
USER [jenkins]
# Wed, 06 Jun 2018 20:59:24 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 06 Jun 2018 20:59:24 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Wed, 06 Jun 2018 20:59:25 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 06 Jun 2018 20:59:25 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Wed, 06 Jun 2018 20:59:26 GMT
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
	-	`sha256:b621e52d9d658893f0e51550b5414c10829793b963124ae9647e49969a509376`  
		Last Modified: Wed, 06 Jun 2018 19:03:02 GMT  
		Size: 892.5 KB (892549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12314f6054acb6b912887bf6ed9d0054a73412f73a3dc0213241d1ca4adc2dd`  
		Last Modified: Wed, 06 Jun 2018 19:03:02 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ce6397976f9916f45826968371d80d8894dce238e7afb4e775a962f6cf0632`  
		Last Modified: Wed, 06 Jun 2018 19:03:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965859e0769be99cf2b18ab5a6eab78a7fb01f4006922dfa976f5d90b1d54834`  
		Last Modified: Wed, 06 Jun 2018 19:03:32 GMT  
		Size: 134.0 MB (133970784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a76f2995e397f8236214496eb67842f821cf592228e3c46504ed3273de9f9d0`  
		Last Modified: Wed, 06 Jun 2018 19:03:02 GMT  
		Size: 272.1 KB (272133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66460fcc34394ed933d404d608a3a4a619ab840cb15a642329772cf4a8d21df5`  
		Last Modified: Wed, 06 Jun 2018 20:59:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cebe5764db83b120f855be8a10d276d1f93c8fd2c16c725d667819fff13a482`  
		Last Modified: Wed, 06 Jun 2018 20:59:43 GMT  
		Size: 4.2 KB (4153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c0313308e4b39fcabb040aeb5b7637a1c6e97bfc603f29f8492a8a1f5bc962`  
		Last Modified: Wed, 06 Jun 2018 20:59:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7da5f9c8421c27001dd1ea16942da4ea7b6b269a56e218ddc1e3a783fa6eca`  
		Last Modified: Wed, 06 Jun 2018 20:59:43 GMT  
		Size: 354.8 KB (354775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413c45ec348b0bd3a3c2e939bfcc69aed730ebe177752c9b459eb7ff935b61b2`  
		Last Modified: Wed, 06 Jun 2018 20:59:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765c8b11cecb8b440595651eae09b012b9eb114510a2ea37a9466b7706bdf9e0`  
		Last Modified: Wed, 06 Jun 2018 20:59:46 GMT  
		Size: 70.4 MB (70409107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaef52e80d79cd728f11db788725eac860d52fc69c9422b88288802b719f482f`  
		Last Modified: Wed, 06 Jun 2018 20:59:40 GMT  
		Size: 440.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3004ee0c1343dd6cbc3ad5217d16d507259f5c39665df7ac777f8c39046339`  
		Last Modified: Wed, 06 Jun 2018 20:59:39 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861f33e616c1ca720092731b9b1f0ae9831990f69bb493ebd0446f128dc06d6e`  
		Last Modified: Wed, 06 Jun 2018 20:59:39 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d0994305ab4d8aaebf465ddf1c67d7fc180c1e5b3f571408c7e580b397b072`  
		Last Modified: Wed, 06 Jun 2018 20:59:39 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67828a4ce0d3f00dca77520211d9296570335d877bcf83c46037474b5d3e05c8`  
		Last Modified: Wed, 06 Jun 2018 20:59:40 GMT  
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
$ docker pull jenkins@sha256:7ef3b03a8f870dca547d28b0cf47915a50eb220a9d191dcdde14b89df3055eef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

```console
$ docker pull jenkins@sha256:80c1892570b37c76659db441c56c969cf403bfcc3c35eb2b517cd44cb7914bd9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.4 MB (316403875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07b4164f97896556763b7c12e12c59d2b58c05cfa1dcdcd8db12d65413a957e2`
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
# Wed, 06 Jun 2018 18:43:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 18:43:16 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 18:43:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 18:43:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 18:43:18 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 18:43:19 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 18:43:19 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 18:43:19 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 18:44:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 18:44:12 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 20:59:08 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 20:59:08 GMT
ARG user=jenkins
# Wed, 06 Jun 2018 20:59:09 GMT
ARG group=jenkins
# Wed, 06 Jun 2018 20:59:09 GMT
ARG uid=1000
# Wed, 06 Jun 2018 20:59:09 GMT
ARG gid=1000
# Wed, 06 Jun 2018 20:59:09 GMT
ARG http_port=8080
# Wed, 06 Jun 2018 20:59:10 GMT
ARG agent_port=50000
# Wed, 06 Jun 2018 20:59:10 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Wed, 06 Jun 2018 20:59:10 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Wed, 06 Jun 2018 20:59:11 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Wed, 06 Jun 2018 20:59:11 GMT
VOLUME [/var/jenkins_home]
# Wed, 06 Jun 2018 20:59:12 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Wed, 06 Jun 2018 20:59:12 GMT
ENV TINI_VERSION=0.14.0
# Wed, 06 Jun 2018 20:59:13 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Wed, 06 Jun 2018 20:59:15 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Wed, 06 Jun 2018 20:59:16 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Wed, 06 Jun 2018 20:59:16 GMT
ARG JENKINS_VERSION
# Wed, 06 Jun 2018 20:59:16 GMT
ENV JENKINS_VERSION=2.60.3
# Wed, 06 Jun 2018 20:59:17 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Wed, 06 Jun 2018 20:59:17 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Wed, 06 Jun 2018 20:59:21 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Wed, 06 Jun 2018 20:59:21 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Wed, 06 Jun 2018 20:59:21 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Wed, 06 Jun 2018 20:59:22 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Wed, 06 Jun 2018 20:59:22 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 20:59:23 GMT
EXPOSE 50000/tcp
# Wed, 06 Jun 2018 20:59:23 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Wed, 06 Jun 2018 20:59:23 GMT
USER [jenkins]
# Wed, 06 Jun 2018 20:59:24 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Wed, 06 Jun 2018 20:59:24 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Wed, 06 Jun 2018 20:59:25 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Wed, 06 Jun 2018 20:59:25 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Wed, 06 Jun 2018 20:59:26 GMT
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
	-	`sha256:b621e52d9d658893f0e51550b5414c10829793b963124ae9647e49969a509376`  
		Last Modified: Wed, 06 Jun 2018 19:03:02 GMT  
		Size: 892.5 KB (892549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f12314f6054acb6b912887bf6ed9d0054a73412f73a3dc0213241d1ca4adc2dd`  
		Last Modified: Wed, 06 Jun 2018 19:03:02 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ce6397976f9916f45826968371d80d8894dce238e7afb4e775a962f6cf0632`  
		Last Modified: Wed, 06 Jun 2018 19:03:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965859e0769be99cf2b18ab5a6eab78a7fb01f4006922dfa976f5d90b1d54834`  
		Last Modified: Wed, 06 Jun 2018 19:03:32 GMT  
		Size: 134.0 MB (133970784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a76f2995e397f8236214496eb67842f821cf592228e3c46504ed3273de9f9d0`  
		Last Modified: Wed, 06 Jun 2018 19:03:02 GMT  
		Size: 272.1 KB (272133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66460fcc34394ed933d404d608a3a4a619ab840cb15a642329772cf4a8d21df5`  
		Last Modified: Wed, 06 Jun 2018 20:59:44 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cebe5764db83b120f855be8a10d276d1f93c8fd2c16c725d667819fff13a482`  
		Last Modified: Wed, 06 Jun 2018 20:59:43 GMT  
		Size: 4.2 KB (4153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c0313308e4b39fcabb040aeb5b7637a1c6e97bfc603f29f8492a8a1f5bc962`  
		Last Modified: Wed, 06 Jun 2018 20:59:43 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7da5f9c8421c27001dd1ea16942da4ea7b6b269a56e218ddc1e3a783fa6eca`  
		Last Modified: Wed, 06 Jun 2018 20:59:43 GMT  
		Size: 354.8 KB (354775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:413c45ec348b0bd3a3c2e939bfcc69aed730ebe177752c9b459eb7ff935b61b2`  
		Last Modified: Wed, 06 Jun 2018 20:59:42 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765c8b11cecb8b440595651eae09b012b9eb114510a2ea37a9466b7706bdf9e0`  
		Last Modified: Wed, 06 Jun 2018 20:59:46 GMT  
		Size: 70.4 MB (70409107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaef52e80d79cd728f11db788725eac860d52fc69c9422b88288802b719f482f`  
		Last Modified: Wed, 06 Jun 2018 20:59:40 GMT  
		Size: 440.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3004ee0c1343dd6cbc3ad5217d16d507259f5c39665df7ac777f8c39046339`  
		Last Modified: Wed, 06 Jun 2018 20:59:39 GMT  
		Size: 1.4 KB (1442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:861f33e616c1ca720092731b9b1f0ae9831990f69bb493ebd0446f128dc06d6e`  
		Last Modified: Wed, 06 Jun 2018 20:59:39 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d0994305ab4d8aaebf465ddf1c67d7fc180c1e5b3f571408c7e580b397b072`  
		Last Modified: Wed, 06 Jun 2018 20:59:39 GMT  
		Size: 1.6 KB (1556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67828a4ce0d3f00dca77520211d9296570335d877bcf83c46037474b5d3e05c8`  
		Last Modified: Wed, 06 Jun 2018 20:59:40 GMT  
		Size: 2.6 KB (2628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
