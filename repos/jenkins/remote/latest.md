## `jenkins:latest`

```console
$ docker pull jenkins@sha256:93263adb6ab1ecb240b342a9e62e782c5b46d4d87cd01830021d1dfe89acb518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jenkins:latest` - linux; amd64

```console
$ docker pull jenkins@sha256:2e2436f90d68ac5960a29731c8d490087be8f8f23e12c8691a642ccb44be63c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.3 MB (356306527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b210b6c238ac0311264bfeef881d2021071c3886fcb537df63dd161a8da9ed1`
-	Entrypoint: `["\/bin\/tini","--","\/usr\/local\/bin\/jenkins.sh"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:09:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 21:22:52 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:22:53 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:22:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:23:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:23:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 17:02:55 GMT
RUN apt-get update && apt-get install -y git curl && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 17:02:56 GMT
ARG user=jenkins
# Tue, 20 Mar 2018 17:02:56 GMT
ARG group=jenkins
# Tue, 20 Mar 2018 17:02:56 GMT
ARG uid=1000
# Tue, 20 Mar 2018 17:02:56 GMT
ARG gid=1000
# Tue, 20 Mar 2018 17:02:57 GMT
ARG http_port=8080
# Tue, 20 Mar 2018 17:02:57 GMT
ARG agent_port=50000
# Tue, 20 Mar 2018 17:02:57 GMT
ENV JENKINS_HOME=/var/jenkins_home
# Tue, 20 Mar 2018 17:02:57 GMT
ENV JENKINS_SLAVE_AGENT_PORT=50000
# Tue, 20 Mar 2018 17:02:58 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN groupadd -g ${gid} ${group}     && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}
# Tue, 20 Mar 2018 17:02:59 GMT
VOLUME [/var/jenkins_home]
# Tue, 20 Mar 2018 17:03:00 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN mkdir -p /usr/share/jenkins/ref/init.groovy.d
# Tue, 20 Mar 2018 17:03:00 GMT
ENV TINI_VERSION=0.14.0
# Tue, 20 Mar 2018 17:03:01 GMT
ENV TINI_SHA=6c41ec7d33e857d4779f14d9c74924cab0c7973485d2972419a3b7c7620ff5fd
# Tue, 20 Mar 2018 17:03:04 GMT
# ARGS: agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL https://github.com/krallin/tini/releases/download/v${TINI_VERSION}/tini-static-amd64 -o /bin/tini && chmod +x /bin/tini   && echo "$TINI_SHA  /bin/tini" | sha256sum -c -
# Tue, 20 Mar 2018 17:03:05 GMT
COPY file:c629bc0b9ecb5b7233000c973f65721df4ce1307a5d5b33ac3871ff61a9172ff in /usr/share/jenkins/ref/init.groovy.d/tcp-slave-agent-port.groovy 
# Tue, 20 Mar 2018 17:03:05 GMT
ARG JENKINS_VERSION
# Tue, 20 Mar 2018 17:03:06 GMT
ENV JENKINS_VERSION=2.60.3
# Tue, 20 Mar 2018 17:03:06 GMT
ARG JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a
# Tue, 20 Mar 2018 17:03:07 GMT
ARG JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war
# Tue, 20 Mar 2018 17:03:10 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN curl -fsSL ${JENKINS_URL} -o /usr/share/jenkins/jenkins.war   && echo "${JENKINS_SHA}  /usr/share/jenkins/jenkins.war" | sha256sum -c -
# Tue, 20 Mar 2018 17:03:11 GMT
ENV JENKINS_UC=https://updates.jenkins.io
# Tue, 20 Mar 2018 17:03:11 GMT
ENV JENKINS_UC_EXPERIMENTAL=https://updates.jenkins.io/experimental
# Tue, 20 Mar 2018 17:03:12 GMT
# ARGS: JENKINS_SHA=2d71b8f87c8417f9303a73d52901a59678ee6c0eefcf7325efed6035ff39372a JENKINS_URL=https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/2.60.3/jenkins-war-2.60.3.war agent_port=50000 gid=1000 group=jenkins http_port=8080 uid=1000 user=jenkins
RUN chown -R ${user} "$JENKINS_HOME" /usr/share/jenkins/ref
# Tue, 20 Mar 2018 17:03:13 GMT
EXPOSE 8080/tcp
# Tue, 20 Mar 2018 17:03:13 GMT
EXPOSE 50000/tcp
# Tue, 20 Mar 2018 17:03:14 GMT
ENV COPY_REFERENCE_FILE_LOG=/var/jenkins_home/copy_reference_file.log
# Tue, 20 Mar 2018 17:03:14 GMT
USER [jenkins]
# Tue, 20 Mar 2018 17:03:15 GMT
COPY file:26c3c5818bc87662d1f4905a3ed73bd55a0a75f731c7dc52d0599c00f51408e9 in /usr/local/bin/jenkins-support 
# Tue, 20 Mar 2018 17:03:15 GMT
COPY file:1a774b24a2bbd880e2ce47b3d642b8c04bbdbede0f2256dbdb11f62b65f696ba in /usr/local/bin/jenkins.sh 
# Tue, 20 Mar 2018 17:03:16 GMT
ENTRYPOINT ["/bin/tini" "--" "/usr/local/bin/jenkins.sh"]
# Tue, 20 Mar 2018 17:03:16 GMT
COPY file:9f0a7faf8951842e0f42c1a3f3bb54ff4ec5263064508077347c57376da68b46 in /usr/local/bin/plugins.sh 
# Tue, 20 Mar 2018 17:03:17 GMT
COPY file:a4f750618f51f00d2f8268ac43fdd8d8ef5ce16e1d412afa5a9bc7492a5d975f in /usr/local/bin/install-plugins.sh 
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da44f64ae9991a9e8cb7c2af4dfd63608bd4026552b2b6a7f523dcfac960e1ac`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 892.2 KB (892173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbc7b377a9155696eb0b684bd1999bc43937918552d73fd9697ea50ef46528a`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c70b3786f72e5255ccd51e27840d1c853a17561b5e94a4359b17d27494d50`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bbcf733166f991331a80e1cd55a91111c4ba96fc7ce1ecabd05b450b7da7a3`  
		Last Modified: Mon, 19 Mar 2018 23:42:27 GMT  
		Size: 172.7 MB (172725313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d3e8de8ec6d87b8485a8a3b66d63125a033cfb0711f8af24b4f600f524e276`  
		Last Modified: Mon, 19 Mar 2018 23:41:54 GMT  
		Size: 272.1 KB (272122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1455927bc48bdac95c51fb70aac0ddaabada2847d3549f2456fa3606635d501`  
		Last Modified: Tue, 20 Mar 2018 17:03:49 GMT  
		Size: 1.0 MB (1038661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3c626322f1422a23194d5c38306835a3bfbe54de7c2dfb320ad5c486414c35`  
		Last Modified: Tue, 20 Mar 2018 17:03:48 GMT  
		Size: 4.2 KB (4184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23612106c74ce4247fcfa3ae878fb0aa24db7a196b22c6993131c5d1b55989de`  
		Last Modified: Tue, 20 Mar 2018 17:03:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:596d10c47bfa1678b69b3ac960148acfdf82505608a5e29fb0e49fb1255c0486`  
		Last Modified: Tue, 20 Mar 2018 17:03:46 GMT  
		Size: 354.8 KB (354776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e8d5201cdbcbdc14b3a44d5d9b16a01430f484645eb99ce822c0f81b162c64`  
		Last Modified: Tue, 20 Mar 2018 17:03:48 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3d92fb5e98f5b0581a069c06355aa88e66a482923ca2f9fd1fa2adf157a94b`  
		Last Modified: Tue, 20 Mar 2018 17:03:53 GMT  
		Size: 70.4 MB (70409107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc5965f9d105e776a3e5712167a4776530ab252cfc9e2195e3e100e3b7615309`  
		Last Modified: Tue, 20 Mar 2018 17:03:43 GMT  
		Size: 439.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6816953234b3935d97fac24881c39b5b7a5e10296dfdf8c6f5b4d9daf5f3c6af`  
		Last Modified: Tue, 20 Mar 2018 17:03:46 GMT  
		Size: 1.4 KB (1440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49ca30dec0191f5d2768e6b18097bc9391721e0f193da7c6d0b2f48cb9ceee3`  
		Last Modified: Tue, 20 Mar 2018 17:03:44 GMT  
		Size: 838.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0713317dfd5af62eecc8eec9279c6c9e9b27c4778243c274d92596cba296c09b`  
		Last Modified: Tue, 20 Mar 2018 17:03:43 GMT  
		Size: 1.6 KB (1554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522ab7b13eb6cbffb92651b5defd04c8a898439624cea0c8332954d54c74db4d`  
		Last Modified: Tue, 20 Mar 2018 17:03:44 GMT  
		Size: 2.6 KB (2628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
