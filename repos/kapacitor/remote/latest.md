## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:018e09d92c9df7f42a59bb61d7b1b647b312f2948c0d9688856912445dda8c29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:513a8492eb243083335fd8b3adf27c32f1238a133cc1b5896112ba6d39ae5bba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.5 MB (106450946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fb6a6383f695eb16548c697356949b6905cd4412b52610ba506ac48785725b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:45:55 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 11 Jun 2019 08:45:58 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 19 Jun 2019 20:23:13 GMT
ENV KAPACITOR_VERSION=1.5.3
# Wed, 19 Jun 2019 20:23:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 19 Jun 2019 20:23:20 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 19 Jun 2019 20:23:20 GMT
EXPOSE 9092
# Wed, 19 Jun 2019 20:23:20 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 19 Jun 2019 20:23:21 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Wed, 19 Jun 2019 20:23:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:23:21 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0a07de932207f1ba3680f923056cbae5620192819aa3cbf784302f6f17c404`  
		Last Modified: Tue, 11 Jun 2019 08:46:42 GMT  
		Size: 13.1 MB (13051506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd14177bb731feab484a327ef1d0096e1f1d9624a351540e3f579e9e7434d08a`  
		Last Modified: Tue, 11 Jun 2019 08:46:40 GMT  
		Size: 2.8 KB (2775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1140fc3eb61c3843940cb85d09bcbd3d743edda17d2747c9d93515845356cfe`  
		Last Modified: Wed, 19 Jun 2019 20:23:50 GMT  
		Size: 32.9 MB (32931612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fad75266c775252abd9fc3f85227a424775024e8fe632be33f42a44a6c264d`  
		Last Modified: Wed, 19 Jun 2019 20:23:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0118489c23c019c87e39ee7f2b8a1cfd463167b6b030e591942808b02e2e59bd`  
		Last Modified: Wed, 19 Jun 2019 20:23:44 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:dd786831229f5f1f01d6ef66c9807794c08ad4afbab6fb907bdfb444d7ecc32a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99627054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcaf3257318ac45e66d3d42cb1888343c5ca033b7c8a69286e1d2b8e09bd6ae4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 11 Jun 2019 00:02:40 GMT
ADD file:a533ab960a52dd32ca40bdcb55083ba8c340e110f8519a3eda696b46a4a07165 in / 
# Tue, 11 Jun 2019 00:02:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:09:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:29:15 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 13 Jun 2019 00:29:20 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 19 Jun 2019 20:23:43 GMT
ENV KAPACITOR_VERSION=1.5.3
# Wed, 19 Jun 2019 20:23:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 19 Jun 2019 20:23:52 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 19 Jun 2019 20:23:53 GMT
EXPOSE 9092
# Wed, 19 Jun 2019 20:23:54 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 19 Jun 2019 20:23:54 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Wed, 19 Jun 2019 20:23:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:23:55 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:162e276b1a29dfd1a4601fd55aeaeb0175b63182e9190b1b0068252e5196b015`  
		Last Modified: Tue, 11 Jun 2019 00:09:02 GMT  
		Size: 42.1 MB (42082622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052e820679506cc68db5317ee3f92e7f5f520894f881940a686f7b1280ff93a0`  
		Last Modified: Tue, 11 Jun 2019 01:17:33 GMT  
		Size: 9.5 MB (9485206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5e84bede193d1aa79031526fbcfa99e8b6cf354b12a7cfbe5cdfe2c9acf155`  
		Last Modified: Tue, 11 Jun 2019 01:17:32 GMT  
		Size: 3.9 MB (3918643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b9389d0695275e1468798c9d2d399c0935a95a4e69119167ef72000df16db85`  
		Last Modified: Thu, 13 Jun 2019 00:30:12 GMT  
		Size: 13.2 MB (13231406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2734d9861eecf0c9807a83b20232af253bc8a68ff94e4af54fb9c9144d1f23a9`  
		Last Modified: Thu, 13 Jun 2019 00:30:09 GMT  
		Size: 2.8 KB (2804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5575654ebe9740fd1078f905d43dd67f6682642c656eeaac0c307c8da7f9c54`  
		Last Modified: Wed, 19 Jun 2019 20:24:18 GMT  
		Size: 30.9 MB (30905916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b439bd2cdd7535a2322caa133d3c1436b52259efc1efaadda801f1053ab70ab7`  
		Last Modified: Wed, 19 Jun 2019 20:24:08 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3017524b52ffb839bd8b08ff77be6f4160730aa094f125de6d32ec121f02163`  
		Last Modified: Wed, 19 Jun 2019 20:24:08 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:b57ee065c275783b1792bc50c99a96879293e5cf1ede38f21bda300bebdaf2cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.6 MB (100636750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48653566720beba2e0f3f004061b8be33db2d949c9b5d9ba39321be0081af908`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:16:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 13 Jun 2019 00:16:32 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 19 Jun 2019 20:25:31 GMT
ENV KAPACITOR_VERSION=1.5.3
# Wed, 19 Jun 2019 20:25:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 19 Jun 2019 20:25:38 GMT
COPY file:9450c5dcbc0a583243f987f682dc6c44d9e4a3f1c31d1bb9957f313457e444ec in /etc/kapacitor/kapacitor.conf 
# Wed, 19 Jun 2019 20:25:38 GMT
EXPOSE 9092
# Wed, 19 Jun 2019 20:25:38 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 19 Jun 2019 20:25:39 GMT
COPY file:a229567085df49450fcc70ed6d49efcbdfc41ca92b6c5bdb3b541cb803165dbc in /entrypoint.sh 
# Wed, 19 Jun 2019 20:25:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 20:25:40 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4579724c1a9cbbeb91053f719bf515654043a3e39cfaa248ebedc84c2f0460ea`  
		Last Modified: Tue, 11 Jun 2019 00:36:45 GMT  
		Size: 9.7 MB (9734083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a493ac681ca78302ad6a97cd01e4daa5f1d995f0523f5e5cb8306071eea417b5`  
		Last Modified: Tue, 11 Jun 2019 00:36:43 GMT  
		Size: 4.1 MB (4094360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3d5d43ff6dcb2af3affbe3e2f3509c0295d060135348b34b9140fcf75fdeca`  
		Last Modified: Thu, 13 Jun 2019 00:17:09 GMT  
		Size: 12.8 MB (12757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17cde79d89fa21ecc71c6882bc6e2cc84de93215a6146324576fe36cbaae5cc`  
		Last Modified: Thu, 13 Jun 2019 00:17:07 GMT  
		Size: 2.8 KB (2803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2808baeccb378d050a4951a2c5686e300d2c9515e49014548ded4ededc18cc53`  
		Last Modified: Wed, 19 Jun 2019 20:25:58 GMT  
		Size: 30.9 MB (30905724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1539051c4b9bcb45381127edcb078ae86e0bac52d85efdf67ba96e38d3068cb3`  
		Last Modified: Wed, 19 Jun 2019 20:25:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ed427b1b1121720993dab108a097d359683c6f8a102bea5e6d3497f713c3aa`  
		Last Modified: Wed, 19 Jun 2019 20:25:49 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
