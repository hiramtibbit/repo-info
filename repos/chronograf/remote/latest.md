## `chronograf:latest`

```console
$ docker pull chronograf@sha256:ae465cc16476d066f7c036fe4574772ecabca7fb74bae947cc55f57024ca1839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:2cc36f8db97304bb4f48e906d961b53c77ab38846b633b7eaa95ee32b4639e12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49086379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7a28897b52cfdbf42e72364d373923a5e5e83979c67af634a1b8dcdcd05d6a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 02:45:03 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 02:45:31 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Jun 2018 02:45:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 02:45:43 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 02:45:44 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 02:45:44 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 02:45:44 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 02:45:45 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 02:45:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 02:45:45 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec9893fa1131c8b9f3378ccd8be6f850276e2cc0003baa2647329b9752d9de8`  
		Last Modified: Wed, 27 Jun 2018 02:46:02 GMT  
		Size: 4.5 MB (4500442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0302a38a11b294de38c36949d38a2b443ca01c58c379ee67fafeae15587ddd21`  
		Last Modified: Wed, 27 Jun 2018 02:46:44 GMT  
		Size: 22.1 MB (22064569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35eb6bda4b4de043add21c10ddd9ed9d8b96dfd4d3d805883f1fdd759641188e`  
		Last Modified: Wed, 27 Jun 2018 02:46:40 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447c248c9e84cd22909935f9798a37c959cb8aacf88e9c74660d412b2fad1ce3`  
		Last Modified: Wed, 27 Jun 2018 02:46:40 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ba9f8b18aeb96b7601054890904a77ff3eb4a6ea02f3235d3205f0c046f65d`  
		Last Modified: Wed, 27 Jun 2018 02:46:40 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:ff2d5fd9ebabda71cfca93c965b3aacccf12f8030774f3c44888652914841407
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43662969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fefdce8b5239f2c228dc59f53cb5cb948d9de32bb61c1cca8f52c0cb96aadab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:51 GMT
ADD file:d05cf75761bffd94ce908a55d38fc4966c194aa14492730dfdc1e52c3ddd0892 in / 
# Wed, 27 Jun 2018 12:03:54 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:32:22 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 12:32:49 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Jun 2018 12:33:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 12:33:05 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 12:33:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 12:33:06 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 12:33:07 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 12:33:07 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 12:33:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 12:33:08 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a779870b6875e97ad1448eaf9befb46011e0fd10ef5014f59d63f624b51de26f`  
		Last Modified: Wed, 27 Jun 2018 12:13:30 GMT  
		Size: 19.3 MB (19286273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8eb997914bb9d8a6e114c125348ba71cb266c6c05fba612f55fe5e9f7f7f29a`  
		Last Modified: Wed, 27 Jun 2018 12:33:23 GMT  
		Size: 3.9 MB (3873161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7117ec5b954fcfd2cf45dd6d47924e05e15cab9b6fe56f84fdb67acbe84c24`  
		Last Modified: Wed, 27 Jun 2018 12:33:54 GMT  
		Size: 20.5 MB (20479136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da7729c4e5eb711f29fc1c9f95dc8c20ca6aeaa2b7be1603b963d30dd03ef82`  
		Last Modified: Wed, 27 Jun 2018 12:33:47 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99b764bceebc322447446bf16702f0935b88174142d0e8694ddffc75dc6d0e4`  
		Last Modified: Wed, 27 Jun 2018 12:33:48 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c2785b535f25c2d7970fd823bcddc26057662e72befa20f083739ce87cbf04`  
		Last Modified: Wed, 27 Jun 2018 12:33:48 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:a8e656bc244cd8c667eaaed42373c7b96c0c2a54d8138f6df04ecb3a23f83602
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45128351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee31d6f46a30b1987458b2019d903eb9df560c4909bed645ae9cb9d17b39f62`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:44 GMT
ADD file:b8a1907d99b0b9f75b52f8e25d5c346caf0244b325919c02090ab1e05ba1cf18 in / 
# Wed, 27 Jun 2018 08:47:45 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:26:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 11:27:45 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Jun 2018 11:28:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Jun 2018 11:28:22 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 27 Jun 2018 11:28:23 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Jun 2018 11:28:31 GMT
EXPOSE 8888/tcp
# Wed, 27 Jun 2018 11:28:32 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Jun 2018 11:28:33 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 27 Jun 2018 11:28:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 11:28:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:153362478bb06475bede3bd6da2ff08a91dd9fc6f245c70bb5a033b65f38ac14`  
		Last Modified: Wed, 27 Jun 2018 08:58:51 GMT  
		Size: 20.3 MB (20348077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:624eee8d0596d4678feb2ed4ecef0248589f810c2ad2ee2ba68278c40abe755c`  
		Last Modified: Wed, 27 Jun 2018 11:29:10 GMT  
		Size: 4.1 MB (4075191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02dbe495673fb1e047d30d5e212001703dd3b6036ff2b8e0d08ad2d2056360e5`  
		Last Modified: Wed, 27 Jun 2018 11:30:07 GMT  
		Size: 20.7 MB (20680694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99b16db27dc7394121ea2ae6a384953f340d70172a37ef4050a987bcfedfb25f`  
		Last Modified: Wed, 27 Jun 2018 11:30:00 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851949009872ee100e7783fe3f599babc41e67d3e7aa7a8bd4ef21c020972678`  
		Last Modified: Wed, 27 Jun 2018 11:30:00 GMT  
		Size: 11.9 KB (11902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:823750097fed4657d2d05cc1bfb68ae1d5197f48dc8e6028d04196ffc60d3004`  
		Last Modified: Wed, 27 Jun 2018 11:30:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
