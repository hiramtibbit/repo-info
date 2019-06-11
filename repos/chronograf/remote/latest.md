## `chronograf:latest`

```console
$ docker pull chronograf@sha256:2eb2cae74c0b88c1d161d92155e1ab94eaad199e789a18646b8f46938644de14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:fb2acb1a7009aea952995855386596c8c79033f0b15029bb290c236ccfd16ffb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56847925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a028b8a9b41f29c5baee7a090c9e60ab5abf67d9c180877c01a3b6408dd5df9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:07:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 00:09:17 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Tue, 11 Jun 2019 00:09:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:09:40 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 11 Jun 2019 00:09:40 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 11 Jun 2019 00:09:40 GMT
EXPOSE 8888
# Tue, 11 Jun 2019 00:09:41 GMT
VOLUME [/var/lib/chronograf]
# Tue, 11 Jun 2019 00:09:41 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 11 Jun 2019 00:09:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 00:09:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e5793ceb280821397b6f5120b9792847d3784774e318ec62ca1a00f3f34d3c`  
		Last Modified: Tue, 11 Jun 2019 00:10:05 GMT  
		Size: 4.5 MB (4503545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a5ece93dead22f89a0486bd90423f4cb93981f0a2b7ad3291d8de93e2d9565`  
		Last Modified: Tue, 11 Jun 2019 00:10:45 GMT  
		Size: 29.8 MB (29830684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5919bebabb7c5b163a11cf75046d7a4a6c5f8255a117cecb3a9509b6db9410e2`  
		Last Modified: Tue, 11 Jun 2019 00:10:36 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d9a7b77bc325efa8ec1048e719b779a5a74380c43e440b736a9b8f516664182`  
		Last Modified: Tue, 11 Jun 2019 00:10:36 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b282b884d779163c12ff0afb2d42415468de9b656eb6776728da2577addea5`  
		Last Modified: Tue, 11 Jun 2019 00:10:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:1acd190392c6e10f21e5d6ee06adcb14cfd78a5e41aa0b4a93bfade3e6fe1eb7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50783686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb86e33cd3817142283997e7fe5f49620aaf195b6de587a59631524070dc68dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 11 Jun 2019 00:03:03 GMT
ADD file:4102df5a1a0de014e0753e42aec7c4f521a1adb132934625dc3a60945e20b048 in / 
# Tue, 11 Jun 2019 00:03:04 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:26:37 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 00:27:48 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Tue, 11 Jun 2019 00:28:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 11 Jun 2019 00:28:11 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 11 Jun 2019 00:28:12 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 11 Jun 2019 00:28:12 GMT
EXPOSE 8888
# Tue, 11 Jun 2019 00:28:13 GMT
VOLUME [/var/lib/chronograf]
# Tue, 11 Jun 2019 00:28:13 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 11 Jun 2019 00:28:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 00:28:14 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:5155b41fe73a7b2fc8284ed1160e8ad046f2bfd1606e73e4bbe3f54b05890fc9`  
		Last Modified: Tue, 11 Jun 2019 00:09:27 GMT  
		Size: 19.3 MB (19276185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e61d62794c48cacd77d1ce7ba865a9f0f73a3e7059469626622abe04edd37a`  
		Last Modified: Tue, 11 Jun 2019 00:28:29 GMT  
		Size: 3.9 MB (3877248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a457bb7afa05af652e79185e4e8d726203b4696af23005112e9fbe4d77f9504d`  
		Last Modified: Tue, 11 Jun 2019 00:29:04 GMT  
		Size: 27.6 MB (27605853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00481886d00494817bdcdd866a4dd47c910da75039a0456cdae40996f9528266`  
		Last Modified: Tue, 11 Jun 2019 00:28:56 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3ed1d57ae811f305c0ad414184d9310fc068b73ab4d817129873986f6eecc68`  
		Last Modified: Tue, 11 Jun 2019 00:28:56 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554af1c46128d217196b59016fc7f5ee8cbe214dd848fb4e3b5ee9bee5a3242c`  
		Last Modified: Tue, 11 Jun 2019 00:28:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:0325e72deadd11d9c4c69e13d4328565ea2c54816f798604ec4d1944b53367fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52247926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea2dd5958cb93b3ff082c24248af722da88261456b0e1449daa6c99e06b6551`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 08 May 2019 08:49:02 GMT
ADD file:fadb1563a7cd043d96e76895bb1bb3920f9a9262206eb9bcd4ef4b5aec8d9b35 in / 
# Wed, 08 May 2019 08:49:03 GMT
CMD ["bash"]
# Fri, 24 May 2019 22:39:40 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 24 May 2019 22:40:30 GMT
ENV CHRONOGRAF_VERSION=1.7.11
# Fri, 24 May 2019 22:40:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 24 May 2019 22:40:49 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Fri, 24 May 2019 22:40:49 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Fri, 24 May 2019 22:40:49 GMT
EXPOSE 8888
# Fri, 24 May 2019 22:40:50 GMT
VOLUME [/var/lib/chronograf]
# Fri, 24 May 2019 22:40:50 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Fri, 24 May 2019 22:40:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:40:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:29b80961214d7f0c89081fe8134e6e8e14ccfa1afe001357539f59930ff9e3ef`  
		Last Modified: Wed, 08 May 2019 08:55:12 GMT  
		Size: 20.3 MB (20333815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8586902d3a529c530ab68d1b332e54b4f2bc38f8f9d2cb1e3c64e7b2ae6033e`  
		Last Modified: Fri, 24 May 2019 22:41:04 GMT  
		Size: 4.1 MB (4080599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e4d9504ac725d15043224aa79105f078fad0475f132fe0be71fdea53495989`  
		Last Modified: Fri, 24 May 2019 22:41:34 GMT  
		Size: 27.8 MB (27809116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd31668a5787cba71bf8c2843d59f7af0581820047412a2155a096ec8070c829`  
		Last Modified: Fri, 24 May 2019 22:41:26 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96ee872891ee60e67fca2ca0d44f37c1eb0b43b04534098634e1d1f2dc1cd40`  
		Last Modified: Fri, 24 May 2019 22:41:26 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8192fc566d98f699a0a7a4f6ea7d3b73f28490d6814a3bc513a1a5a973bf7dc5`  
		Last Modified: Fri, 24 May 2019 22:41:26 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
