## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:cfeccbd3dcb2a60203af725f7f6ab567736845622c99014a17c156f6e6729e6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:f52d0e634a6a50718c773d2cabfa135d0e7db4563b6bb03b2812277bfe102aa6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106434094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3891525d55651d9ea40f1a9f169b75d0958c2e94b7e166195f3f066ba2951a67`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 06:27:05 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 08 May 2019 06:27:08 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 06:27:21 GMT
ENV KAPACITOR_VERSION=1.5.2
# Wed, 08 May 2019 06:27:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 06:27:26 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 08 May 2019 06:27:26 GMT
EXPOSE 9092
# Wed, 08 May 2019 06:27:26 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 08 May 2019 06:27:26 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Wed, 08 May 2019 06:27:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 06:27:26 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714b91aed2a4820159a1b3f51cea2660beba62cac72b0480b1624fb72575e347`  
		Last Modified: Wed, 08 May 2019 06:27:40 GMT  
		Size: 13.0 MB (13048359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be26d279ca9a638812d8801526bdcbaeaae244a622f812f787a045acfcc14a68`  
		Last Modified: Wed, 08 May 2019 06:27:39 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb42042e7041f18fb5362b4c39939ace54f4256e9a8a80bc36db6e9da0664e1b`  
		Last Modified: Wed, 08 May 2019 06:27:54 GMT  
		Size: 32.9 MB (32918223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f41b2a24d80e3781ad4418495650f532e4a2a7f763905e1747890db3106412`  
		Last Modified: Wed, 08 May 2019 06:27:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c292a55903a409abeebcc5678fe78b8cf10a831239cfd4e98c2c7cfbe8965a9`  
		Last Modified: Wed, 08 May 2019 06:27:48 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:76216438468630141f381001f372f83b86405fbd4eb57d3b841296481a23a0d2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99619639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4265662eb41e7f6dc07025e4c1840a721196fd24dac791d9b3cdb6fcb977c4d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:19:37 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 08 May 2019 16:19:42 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 16:20:02 GMT
ENV KAPACITOR_VERSION=1.5.2
# Wed, 08 May 2019 16:20:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 16:20:10 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 08 May 2019 16:20:11 GMT
EXPOSE 9092
# Wed, 08 May 2019 16:20:11 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 08 May 2019 16:20:12 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Wed, 08 May 2019 16:20:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 16:20:14 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ccf76a027a119e71e93556878621494cfcee575c050e86ea32150a153833411`  
		Last Modified: Wed, 08 May 2019 16:20:42 GMT  
		Size: 13.2 MB (13230302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b85dcd95d8f28d136e84e7e12b66171170edafd99e5ff3789ccb35ec265cb25`  
		Last Modified: Wed, 08 May 2019 16:20:37 GMT  
		Size: 2.8 KB (2802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79e8dc692bd68d8125a2336509b58609506844c5dd0fd2b7096fb49787dbe553`  
		Last Modified: Wed, 08 May 2019 16:21:04 GMT  
		Size: 30.9 MB (30899702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7560c860b43d393672fb2fcb9dbb79eeab2c77a5e053835730c0a758a13209c2`  
		Last Modified: Wed, 08 May 2019 16:20:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be2df9143de885109cedda8005eeee5519c3294faa00c535d10f00848718b032`  
		Last Modified: Wed, 08 May 2019 16:20:54 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:8194fe63d19af6a46a16dae667f7c69d9bc1acb3fd23c349fbcc7bd642e94c8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100626900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a88e5ad10ba8877b1e12be15ea72febfdc0eb163560f9d611ac7592c5e72dd4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 23:27:49 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 08 May 2019 23:27:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 23:28:27 GMT
ENV KAPACITOR_VERSION=1.5.2
# Wed, 08 May 2019 23:28:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 23:28:46 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 08 May 2019 23:28:47 GMT
EXPOSE 9092
# Wed, 08 May 2019 23:28:49 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 08 May 2019 23:28:50 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Wed, 08 May 2019 23:28:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 23:28:52 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9031651960ca97bdf86ab013bfd74a5d5092e7517362ff62d2fbb7893f18b2`  
		Last Modified: Wed, 08 May 2019 23:29:26 GMT  
		Size: 12.8 MB (12754832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03543ef9441fabd1468f6b4438585a03a30b61b5a5f867a334dd04c0cd0aeea`  
		Last Modified: Wed, 08 May 2019 23:29:18 GMT  
		Size: 2.8 KB (2775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf009e52e1769939c7caac6324afbdc4109dd7d13152c488f94833cb918749c5`  
		Last Modified: Wed, 08 May 2019 23:30:18 GMT  
		Size: 30.9 MB (30899617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40ce8d0cc6014207861b4487e315042fd6598f7a52f45332e3439549f12afb1b`  
		Last Modified: Wed, 08 May 2019 23:29:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04aa6b44bb90116d398c939b2e1d0e490737abbe16e7f13f18663a443fe57596`  
		Last Modified: Wed, 08 May 2019 23:29:55 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
