## `golang:latest`

```console
$ docker pull golang@sha256:a20c8c4667d9a57678698d9a352fb0a23420b792948de052a02e0603e36ae4cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le

### `golang:latest` - linux; amd64

```console
$ docker pull golang@sha256:1c57b46602b4687ec70410edb5e781163abf43009692e9890593e1b6c99f2091
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296088945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7942203692b309381a814bf866057710625524ddb7501d21236273759fb05e4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 04:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 06 Apr 2019 01:19:33 GMT
ENV GOLANG_VERSION=1.12.2
# Sat, 06 Apr 2019 01:19:46 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='f28c1fde8f293cc5c83ae8de76373cf76ae9306909564f54e0edcf140ce8fe3f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='38d92116cd8c408e995972ff7fb0b6453c4f2214bde602d1772bd88f9d4d5c60' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='598558fe54bbdce8b676f81e37f514dd70b8fc1377086658ae6e836480e900eb' ;; 		i386) goRelArch='linux-386'; goRelSha256='3005a7937ff2be7ea9badd416cc37dfe2ff589d3a311f1685de0a805e45455b6' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='62be1d5f38e322edc21de0debd3051247faff59890c343a7f2173c15098dbd35' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a41b0b11f5e34c3cccd7619bddf79a6d4b94bcbd2160fefcdf25f0afe87cad0a' ;; 		*) goRelArch='src'; goRelSha256='af992580a4a609309c734d46fd4374fe3095961263e609d9b017e2dffc3b7b58'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 06 Apr 2019 01:19:46 GMT
ENV GOPATH=/go
# Sat, 06 Apr 2019 01:19:46 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Apr 2019 01:19:47 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 06 Apr 2019 01:19:47 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:963c818ebafc12959707fcabfc8952ba84ad92514041f7b6ec66ddfb5702141f`  
		Last Modified: Wed, 27 Mar 2019 04:42:28 GMT  
		Size: 57.6 MB (57633991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17355b0ffe5d1e8442c18d24ed701c4da86999a53739008c81f8ce2fabca493d`  
		Last Modified: Sat, 06 Apr 2019 01:27:36 GMT  
		Size: 127.9 MB (127924726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eca7cce1124a2c7541568e511c5aa48465670bf5b57060e287a38ad8e5c8c83`  
		Last Modified: Sat, 06 Apr 2019 01:27:15 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:latest` - linux; ppc64le

```console
$ docker pull golang@sha256:c2f1c54da5086a952413cd02360b92a6cab7f6961f228aa8f7722ac2c1dbfbca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.7 MB (266737764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a72fe84d5b753490a64b7b9bb33e4dca51af63890fabaaddf7e581b1d6699c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		g++ 		gcc 		libc6-dev 		make 		pkg-config 	&& rm -rf /var/lib/apt/lists/*
# Sat, 06 Apr 2019 08:17:09 GMT
ENV GOLANG_VERSION=1.12.2
# Sat, 06 Apr 2019 08:17:34 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) goRelArch='linux-amd64'; goRelSha256='f28c1fde8f293cc5c83ae8de76373cf76ae9306909564f54e0edcf140ce8fe3f' ;; 		armhf) goRelArch='linux-armv6l'; goRelSha256='38d92116cd8c408e995972ff7fb0b6453c4f2214bde602d1772bd88f9d4d5c60' ;; 		arm64) goRelArch='linux-arm64'; goRelSha256='598558fe54bbdce8b676f81e37f514dd70b8fc1377086658ae6e836480e900eb' ;; 		i386) goRelArch='linux-386'; goRelSha256='3005a7937ff2be7ea9badd416cc37dfe2ff589d3a311f1685de0a805e45455b6' ;; 		ppc64el) goRelArch='linux-ppc64le'; goRelSha256='62be1d5f38e322edc21de0debd3051247faff59890c343a7f2173c15098dbd35' ;; 		s390x) goRelArch='linux-s390x'; goRelSha256='a41b0b11f5e34c3cccd7619bddf79a6d4b94bcbd2160fefcdf25f0afe87cad0a' ;; 		*) goRelArch='src'; goRelSha256='af992580a4a609309c734d46fd4374fe3095961263e609d9b017e2dffc3b7b58'; 			echo >&2; echo >&2 "warning: current architecture ($dpkgArch) does not have a corresponding Go binary release; will be building from source"; echo >&2 ;; 	esac; 		url="https://golang.org/dl/go${GOLANG_VERSION}.${goRelArch}.tar.gz"; 	wget -O go.tgz "$url"; 	echo "${goRelSha256} *go.tgz" | sha256sum -c -; 	tar -C /usr/local -xzf go.tgz; 	rm go.tgz; 		if [ "$goRelArch" = 'src' ]; then 		echo >&2; 		echo >&2 'error: UNIMPLEMENTED'; 		echo >&2 'TODO install golang-any from jessie-backports for GOROOT_BOOTSTRAP (and uninstall after build)'; 		echo >&2; 		exit 1; 	fi; 		export PATH="/usr/local/go/bin:$PATH"; 	go version
# Sat, 06 Apr 2019 08:17:37 GMT
ENV GOPATH=/go
# Sat, 06 Apr 2019 08:17:41 GMT
ENV PATH=/go/bin:/usr/local/go/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Apr 2019 08:17:50 GMT
RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# Sat, 06 Apr 2019 08:17:54 GMT
WORKDIR /go
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ad113cc2153d182f0554f1111ae7f5f2fe9d44d9ecbba52fa6c2a0e258e776`  
		Last Modified: Wed, 27 Mar 2019 15:29:48 GMT  
		Size: 52.8 MB (52809777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7e09fd2b7bcc206659d4aa3650fefd25dd2230d5ff9f03d7243f81bf8490ea`  
		Last Modified: Sat, 06 Apr 2019 08:27:11 GMT  
		Size: 104.0 MB (103960171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314e5fac58b817fe6b0e622e65d17cbb257997e1c9032b59a24753c437b8fc39`  
		Last Modified: Sat, 06 Apr 2019 08:26:32 GMT  
		Size: 156.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
