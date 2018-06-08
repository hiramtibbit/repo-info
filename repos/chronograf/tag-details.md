<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.4`](#chronograf14)
-	[`chronograf:1.4.4`](#chronograf144)
-	[`chronograf:1.4.4.2`](#chronograf1442)
-	[`chronograf:1.4.4.2-alpine`](#chronograf1442-alpine)
-	[`chronograf:1.4.4-alpine`](#chronograf144-alpine)
-	[`chronograf:1.4-alpine`](#chronograf14-alpine)
-	[`chronograf:1.5`](#chronograf15)
-	[`chronograf:1.5.0`](#chronograf150)
-	[`chronograf:1.5.0.1`](#chronograf1501)
-	[`chronograf:1.5.0.1-alpine`](#chronograf1501-alpine)
-	[`chronograf:1.5.0-alpine`](#chronograf150-alpine)
-	[`chronograf:1.5-alpine`](#chronograf15-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.4`

```console
$ docker pull chronograf@sha256:32cec46995499a9c75190318fbea62b991318444f102495c514a9cf250973db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.4` - linux; amd64

```console
$ docker pull chronograf@sha256:a5cb43c17616d28e8d4718d8117c2de87635daa2dbfd9f67db910547868ff7c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48546581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a476b6e172a062361a9ba5cc791747f8490609bbdeea9a503724bddaf1c213f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 23:41:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Jun 2018 23:41:32 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Wed, 06 Jun 2018 23:41:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Jun 2018 23:41:58 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:41:59 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:41:59 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:41:59 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:41:59 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 06 Jun 2018 23:41:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:41:59 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df19f719d9924249e1005caf2e80d09c24d584317e1acb9ab2ae319a626cee90`  
		Last Modified: Wed, 06 Jun 2018 23:44:13 GMT  
		Size: 4.5 MB (4500397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2223032fd18ea0c241c50fbf6a8dcc4903345ebfac4757969dc7a68f0a8ff8af`  
		Last Modified: Wed, 06 Jun 2018 23:46:17 GMT  
		Size: 21.5 MB (21525754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2947b34393fd55bc2ef746cd7a45ce94a3faad75b00baf2e65d1cfa311d19f99`  
		Last Modified: Wed, 06 Jun 2018 23:43:53 GMT  
		Size: 12.3 KB (12253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdb68d291f9312d7c71386d2d1d9740c500f36c415c6a5a0ea8f6f4af2702ec`  
		Last Modified: Wed, 06 Jun 2018 23:43:53 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8ed26ad3cd76869e888dd46a26940a7f0914cb943014d4571f6d8654f2d2cf`  
		Last Modified: Wed, 06 Jun 2018 23:43:53 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:acdca04f196bffc6bc8f114c6a68aa60112af62d36e3c3a15f7dfe9b45488c99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43105369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d787438268e21f6b8af0e5d8a99356dff2bb7083d723d3e0597970cc1aefdb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 04 May 2018 11:58:00 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Fri, 04 May 2018 11:58:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 04 May 2018 11:58:21 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 04 May 2018 11:58:29 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 04 May 2018 11:58:30 GMT
EXPOSE 8888/tcp
# Fri, 04 May 2018 11:58:30 GMT
VOLUME [/var/lib/chronograf]
# Fri, 04 May 2018 11:58:31 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 04 May 2018 11:58:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 May 2018 11:58:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dd0c89825e53b7cc7525e90a3213c9f6ddf632cdeeaf6522a84e1f3a1bc675`  
		Last Modified: Sat, 28 Apr 2018 12:36:56 GMT  
		Size: 3.9 MB (3873102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5964b793ef7171532159f7f53612e3aae8b4644540844d90150931b729b2760b`  
		Last Modified: Fri, 04 May 2018 11:59:01 GMT  
		Size: 19.9 MB (19921087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f313d56508faa7c2fb1a81882723f31d150973f1a8a561729d162037c6ff8`  
		Last Modified: Fri, 04 May 2018 11:58:55 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0dc8ab056c16f3b338d117a342a4124430e120e9a774ab81f01bc517db0783`  
		Last Modified: Fri, 04 May 2018 11:58:54 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e870694bc574130763d6594382eb61ac75ae97f8db94fdcacb2a3933a47308`  
		Last Modified: Fri, 04 May 2018 11:58:55 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:2bcdaf376faf5632b04d54321859fd9d8af0b86e3075f95ad48a36ad70c117cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44570170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64235773815c60ba3e046448c0573806be2d3c27890913b4c4535fbe9fbcd293`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 09:04:10 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 04 May 2018 08:39:49 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Fri, 04 May 2018 08:40:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 04 May 2018 08:40:36 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 04 May 2018 08:40:37 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 04 May 2018 08:40:38 GMT
EXPOSE 8888/tcp
# Fri, 04 May 2018 08:40:39 GMT
VOLUME [/var/lib/chronograf]
# Fri, 04 May 2018 08:40:40 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 04 May 2018 08:40:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 May 2018 08:40:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1ed840f6129db27f8a762fcdc2e6f407b2189ce2f3f863723380f1dfd7df6e`  
		Last Modified: Tue, 01 May 2018 09:06:44 GMT  
		Size: 4.1 MB (4075078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76353a4707c5c6462003c2545c1ee656b11bdf6f4521af02e8a181123ae0258c`  
		Last Modified: Fri, 04 May 2018 08:41:14 GMT  
		Size: 20.1 MB (20122786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792ef7dcd22a5c94d225aae752de928b0e9a4f73f04852d34390bb46e27ca4c5`  
		Last Modified: Fri, 04 May 2018 08:41:05 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216a45b4c1cb0025f2980fe759d9a4e8ac8a5fc2985796a4cc18e4121b37acc0`  
		Last Modified: Fri, 04 May 2018 08:41:05 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2e6754f531be23451c80fb2c8750aeecdfd8a4dd663af4ef1b9e0f6761f1f9`  
		Last Modified: Fri, 04 May 2018 08:41:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.4`

```console
$ docker pull chronograf@sha256:32cec46995499a9c75190318fbea62b991318444f102495c514a9cf250973db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.4.4` - linux; amd64

```console
$ docker pull chronograf@sha256:a5cb43c17616d28e8d4718d8117c2de87635daa2dbfd9f67db910547868ff7c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48546581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a476b6e172a062361a9ba5cc791747f8490609bbdeea9a503724bddaf1c213f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 23:41:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Jun 2018 23:41:32 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Wed, 06 Jun 2018 23:41:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Jun 2018 23:41:58 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:41:59 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:41:59 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:41:59 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:41:59 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 06 Jun 2018 23:41:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:41:59 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df19f719d9924249e1005caf2e80d09c24d584317e1acb9ab2ae319a626cee90`  
		Last Modified: Wed, 06 Jun 2018 23:44:13 GMT  
		Size: 4.5 MB (4500397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2223032fd18ea0c241c50fbf6a8dcc4903345ebfac4757969dc7a68f0a8ff8af`  
		Last Modified: Wed, 06 Jun 2018 23:46:17 GMT  
		Size: 21.5 MB (21525754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2947b34393fd55bc2ef746cd7a45ce94a3faad75b00baf2e65d1cfa311d19f99`  
		Last Modified: Wed, 06 Jun 2018 23:43:53 GMT  
		Size: 12.3 KB (12253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdb68d291f9312d7c71386d2d1d9740c500f36c415c6a5a0ea8f6f4af2702ec`  
		Last Modified: Wed, 06 Jun 2018 23:43:53 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8ed26ad3cd76869e888dd46a26940a7f0914cb943014d4571f6d8654f2d2cf`  
		Last Modified: Wed, 06 Jun 2018 23:43:53 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.4` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:acdca04f196bffc6bc8f114c6a68aa60112af62d36e3c3a15f7dfe9b45488c99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43105369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d787438268e21f6b8af0e5d8a99356dff2bb7083d723d3e0597970cc1aefdb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 04 May 2018 11:58:00 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Fri, 04 May 2018 11:58:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 04 May 2018 11:58:21 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 04 May 2018 11:58:29 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 04 May 2018 11:58:30 GMT
EXPOSE 8888/tcp
# Fri, 04 May 2018 11:58:30 GMT
VOLUME [/var/lib/chronograf]
# Fri, 04 May 2018 11:58:31 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 04 May 2018 11:58:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 May 2018 11:58:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dd0c89825e53b7cc7525e90a3213c9f6ddf632cdeeaf6522a84e1f3a1bc675`  
		Last Modified: Sat, 28 Apr 2018 12:36:56 GMT  
		Size: 3.9 MB (3873102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5964b793ef7171532159f7f53612e3aae8b4644540844d90150931b729b2760b`  
		Last Modified: Fri, 04 May 2018 11:59:01 GMT  
		Size: 19.9 MB (19921087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f313d56508faa7c2fb1a81882723f31d150973f1a8a561729d162037c6ff8`  
		Last Modified: Fri, 04 May 2018 11:58:55 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0dc8ab056c16f3b338d117a342a4124430e120e9a774ab81f01bc517db0783`  
		Last Modified: Fri, 04 May 2018 11:58:54 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e870694bc574130763d6594382eb61ac75ae97f8db94fdcacb2a3933a47308`  
		Last Modified: Fri, 04 May 2018 11:58:55 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:2bcdaf376faf5632b04d54321859fd9d8af0b86e3075f95ad48a36ad70c117cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44570170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64235773815c60ba3e046448c0573806be2d3c27890913b4c4535fbe9fbcd293`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 09:04:10 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 04 May 2018 08:39:49 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Fri, 04 May 2018 08:40:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 04 May 2018 08:40:36 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 04 May 2018 08:40:37 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 04 May 2018 08:40:38 GMT
EXPOSE 8888/tcp
# Fri, 04 May 2018 08:40:39 GMT
VOLUME [/var/lib/chronograf]
# Fri, 04 May 2018 08:40:40 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 04 May 2018 08:40:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 May 2018 08:40:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1ed840f6129db27f8a762fcdc2e6f407b2189ce2f3f863723380f1dfd7df6e`  
		Last Modified: Tue, 01 May 2018 09:06:44 GMT  
		Size: 4.1 MB (4075078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76353a4707c5c6462003c2545c1ee656b11bdf6f4521af02e8a181123ae0258c`  
		Last Modified: Fri, 04 May 2018 08:41:14 GMT  
		Size: 20.1 MB (20122786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792ef7dcd22a5c94d225aae752de928b0e9a4f73f04852d34390bb46e27ca4c5`  
		Last Modified: Fri, 04 May 2018 08:41:05 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216a45b4c1cb0025f2980fe759d9a4e8ac8a5fc2985796a4cc18e4121b37acc0`  
		Last Modified: Fri, 04 May 2018 08:41:05 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2e6754f531be23451c80fb2c8750aeecdfd8a4dd663af4ef1b9e0f6761f1f9`  
		Last Modified: Fri, 04 May 2018 08:41:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.4.2`

```console
$ docker pull chronograf@sha256:32cec46995499a9c75190318fbea62b991318444f102495c514a9cf250973db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.4.4.2` - linux; amd64

```console
$ docker pull chronograf@sha256:a5cb43c17616d28e8d4718d8117c2de87635daa2dbfd9f67db910547868ff7c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48546581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a476b6e172a062361a9ba5cc791747f8490609bbdeea9a503724bddaf1c213f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 23:41:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Jun 2018 23:41:32 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Wed, 06 Jun 2018 23:41:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Jun 2018 23:41:58 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:41:59 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:41:59 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:41:59 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:41:59 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 06 Jun 2018 23:41:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:41:59 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df19f719d9924249e1005caf2e80d09c24d584317e1acb9ab2ae319a626cee90`  
		Last Modified: Wed, 06 Jun 2018 23:44:13 GMT  
		Size: 4.5 MB (4500397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2223032fd18ea0c241c50fbf6a8dcc4903345ebfac4757969dc7a68f0a8ff8af`  
		Last Modified: Wed, 06 Jun 2018 23:46:17 GMT  
		Size: 21.5 MB (21525754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2947b34393fd55bc2ef746cd7a45ce94a3faad75b00baf2e65d1cfa311d19f99`  
		Last Modified: Wed, 06 Jun 2018 23:43:53 GMT  
		Size: 12.3 KB (12253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cdb68d291f9312d7c71386d2d1d9740c500f36c415c6a5a0ea8f6f4af2702ec`  
		Last Modified: Wed, 06 Jun 2018 23:43:53 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8ed26ad3cd76869e888dd46a26940a7f0914cb943014d4571f6d8654f2d2cf`  
		Last Modified: Wed, 06 Jun 2018 23:43:53 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.4.2` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:acdca04f196bffc6bc8f114c6a68aa60112af62d36e3c3a15f7dfe9b45488c99
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.1 MB (43105369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d787438268e21f6b8af0e5d8a99356dff2bb7083d723d3e0597970cc1aefdb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 04 May 2018 11:58:00 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Fri, 04 May 2018 11:58:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 04 May 2018 11:58:21 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 04 May 2018 11:58:29 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 04 May 2018 11:58:30 GMT
EXPOSE 8888/tcp
# Fri, 04 May 2018 11:58:30 GMT
VOLUME [/var/lib/chronograf]
# Fri, 04 May 2018 11:58:31 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 04 May 2018 11:58:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 May 2018 11:58:32 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dd0c89825e53b7cc7525e90a3213c9f6ddf632cdeeaf6522a84e1f3a1bc675`  
		Last Modified: Sat, 28 Apr 2018 12:36:56 GMT  
		Size: 3.9 MB (3873102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5964b793ef7171532159f7f53612e3aae8b4644540844d90150931b729b2760b`  
		Last Modified: Fri, 04 May 2018 11:59:01 GMT  
		Size: 19.9 MB (19921087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd9f313d56508faa7c2fb1a81882723f31d150973f1a8a561729d162037c6ff8`  
		Last Modified: Fri, 04 May 2018 11:58:55 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0dc8ab056c16f3b338d117a342a4124430e120e9a774ab81f01bc517db0783`  
		Last Modified: Fri, 04 May 2018 11:58:54 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e870694bc574130763d6594382eb61ac75ae97f8db94fdcacb2a3933a47308`  
		Last Modified: Fri, 04 May 2018 11:58:55 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.4.4.2` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:2bcdaf376faf5632b04d54321859fd9d8af0b86e3075f95ad48a36ad70c117cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44570170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64235773815c60ba3e046448c0573806be2d3c27890913b4c4535fbe9fbcd293`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 09:04:10 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 04 May 2018 08:39:49 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Fri, 04 May 2018 08:40:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 04 May 2018 08:40:36 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 04 May 2018 08:40:37 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 04 May 2018 08:40:38 GMT
EXPOSE 8888/tcp
# Fri, 04 May 2018 08:40:39 GMT
VOLUME [/var/lib/chronograf]
# Fri, 04 May 2018 08:40:40 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 04 May 2018 08:40:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 May 2018 08:40:41 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1ed840f6129db27f8a762fcdc2e6f407b2189ce2f3f863723380f1dfd7df6e`  
		Last Modified: Tue, 01 May 2018 09:06:44 GMT  
		Size: 4.1 MB (4075078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76353a4707c5c6462003c2545c1ee656b11bdf6f4521af02e8a181123ae0258c`  
		Last Modified: Fri, 04 May 2018 08:41:14 GMT  
		Size: 20.1 MB (20122786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:792ef7dcd22a5c94d225aae752de928b0e9a4f73f04852d34390bb46e27ca4c5`  
		Last Modified: Fri, 04 May 2018 08:41:05 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:216a45b4c1cb0025f2980fe759d9a4e8ac8a5fc2985796a4cc18e4121b37acc0`  
		Last Modified: Fri, 04 May 2018 08:41:05 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2e6754f531be23451c80fb2c8750aeecdfd8a4dd663af4ef1b9e0f6761f1f9`  
		Last Modified: Fri, 04 May 2018 08:41:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.4.2-alpine`

```console
$ docker pull chronograf@sha256:194ae792eb3e407931ae04fc18356644e955d068746b25af2ddc5c985969edc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.4.4.2-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:09fd2848dc04fd9527acca373cc4b9b826c4813bca3865378efed1c4a4054638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13571880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b529e79fcf2d51941e1015848f7f66a74d6b07e517d482c37cb583f9a54faa1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 23:42:12 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 06 Jun 2018 23:42:13 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Wed, 06 Jun 2018 23:42:24 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 23:42:25 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:42:25 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:42:25 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:42:25 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:42:26 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:42:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:42:26 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffdb1617ef576cb00c9954cff658f08d9ad83c52de5631608fcc250b461cbcf`  
		Last Modified: Wed, 06 Jun 2018 23:47:04 GMT  
		Size: 351.0 KB (351019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9bf8fce44559f1f5d9c3fbaf05cf5247a3069a73eddae78a2dfb7b07f1fbb7`  
		Last Modified: Wed, 06 Jun 2018 23:47:24 GMT  
		Size: 11.2 MB (11204582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49f15339af98d6a33470520c3003daf7c8028a0cf8738d644c0fd59758ad21d`  
		Last Modified: Wed, 06 Jun 2018 23:46:58 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0d52df41255c51e1f74733e1dc64810e1c37b1df68948e51fd2d997c7eb32`  
		Last Modified: Wed, 06 Jun 2018 23:46:58 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a68d941e4caa24358036bf7ce3bc7f2eae6fe3489019b671b818a0d79da391`  
		Last Modified: Wed, 06 Jun 2018 23:46:59 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4.4-alpine`

```console
$ docker pull chronograf@sha256:194ae792eb3e407931ae04fc18356644e955d068746b25af2ddc5c985969edc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.4.4-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:09fd2848dc04fd9527acca373cc4b9b826c4813bca3865378efed1c4a4054638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13571880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b529e79fcf2d51941e1015848f7f66a74d6b07e517d482c37cb583f9a54faa1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 23:42:12 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 06 Jun 2018 23:42:13 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Wed, 06 Jun 2018 23:42:24 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 23:42:25 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:42:25 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:42:25 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:42:25 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:42:26 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:42:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:42:26 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffdb1617ef576cb00c9954cff658f08d9ad83c52de5631608fcc250b461cbcf`  
		Last Modified: Wed, 06 Jun 2018 23:47:04 GMT  
		Size: 351.0 KB (351019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9bf8fce44559f1f5d9c3fbaf05cf5247a3069a73eddae78a2dfb7b07f1fbb7`  
		Last Modified: Wed, 06 Jun 2018 23:47:24 GMT  
		Size: 11.2 MB (11204582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49f15339af98d6a33470520c3003daf7c8028a0cf8738d644c0fd59758ad21d`  
		Last Modified: Wed, 06 Jun 2018 23:46:58 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0d52df41255c51e1f74733e1dc64810e1c37b1df68948e51fd2d997c7eb32`  
		Last Modified: Wed, 06 Jun 2018 23:46:58 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a68d941e4caa24358036bf7ce3bc7f2eae6fe3489019b671b818a0d79da391`  
		Last Modified: Wed, 06 Jun 2018 23:46:59 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.4-alpine`

```console
$ docker pull chronograf@sha256:194ae792eb3e407931ae04fc18356644e955d068746b25af2ddc5c985969edc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.4-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:09fd2848dc04fd9527acca373cc4b9b826c4813bca3865378efed1c4a4054638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.6 MB (13571880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b529e79fcf2d51941e1015848f7f66a74d6b07e517d482c37cb583f9a54faa1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 23:42:12 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 06 Jun 2018 23:42:13 GMT
ENV CHRONOGRAF_VERSION=1.4.4.2
# Wed, 06 Jun 2018 23:42:24 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 23:42:25 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:42:25 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:42:25 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:42:25 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:42:26 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:42:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:42:26 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffdb1617ef576cb00c9954cff658f08d9ad83c52de5631608fcc250b461cbcf`  
		Last Modified: Wed, 06 Jun 2018 23:47:04 GMT  
		Size: 351.0 KB (351019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9bf8fce44559f1f5d9c3fbaf05cf5247a3069a73eddae78a2dfb7b07f1fbb7`  
		Last Modified: Wed, 06 Jun 2018 23:47:24 GMT  
		Size: 11.2 MB (11204582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d49f15339af98d6a33470520c3003daf7c8028a0cf8738d644c0fd59758ad21d`  
		Last Modified: Wed, 06 Jun 2018 23:46:58 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf0d52df41255c51e1f74733e1dc64810e1c37b1df68948e51fd2d997c7eb32`  
		Last Modified: Wed, 06 Jun 2018 23:46:58 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7a68d941e4caa24358036bf7ce3bc7f2eae6fe3489019b671b818a0d79da391`  
		Last Modified: Wed, 06 Jun 2018 23:46:59 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5`

```console
$ docker pull chronograf@sha256:aa15d97b71f60038ed400be46d8bc980f38ba52c92a69120694c087524d05738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5` - linux; amd64

```console
$ docker pull chronograf@sha256:3628f971d336d7c91a665fe1d0c7fd09caefb6787c20b179a2234b082eb7bbf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49085501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549ee1b2b88d0396d793345561473d56417ae776454ba8c3da3d0f9bde0df9b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 23:41:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Jun 2018 23:42:32 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 06 Jun 2018 23:43:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Jun 2018 23:43:06 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:43:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:43:06 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:43:06 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:43:07 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 06 Jun 2018 23:43:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:43:07 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df19f719d9924249e1005caf2e80d09c24d584317e1acb9ab2ae319a626cee90`  
		Last Modified: Wed, 06 Jun 2018 23:44:13 GMT  
		Size: 4.5 MB (4500397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797a7e32642d85a9ef8ea49d5f42e040ed79ca8b6ae35a6cdc20d1c4f196e4a5`  
		Last Modified: Wed, 06 Jun 2018 23:49:08 GMT  
		Size: 22.1 MB (22064684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c7d639c3fe15f860db73b31daea65805a956a677fcf273cd1d135544190d43`  
		Last Modified: Wed, 06 Jun 2018 23:47:58 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d049cc7aeaabd2debfeb49d80be3aaf85e9e611b272b7ea79cb24d7f9100aee`  
		Last Modified: Wed, 06 Jun 2018 23:47:58 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b06914bc79958ee20b855a461f465398c95d3072b85af191d77c135aab2e6d`  
		Last Modified: Wed, 06 Jun 2018 23:47:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:ade785607e7fb5e1b816c57d5cad0bfad4a23270e4dfa23fa2e6397c3d4aae8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43663442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289cbca18c19960be3c890caf7ef1359cd24acf911cc5a7fcc0f326e10d9c4e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 08 Jun 2018 11:57:46 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Fri, 08 Jun 2018 11:58:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Jun 2018 11:58:03 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 08 Jun 2018 11:58:04 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 08 Jun 2018 11:58:04 GMT
EXPOSE 8888/tcp
# Fri, 08 Jun 2018 11:58:04 GMT
VOLUME [/var/lib/chronograf]
# Fri, 08 Jun 2018 11:58:05 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 08 Jun 2018 11:58:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Jun 2018 11:58:06 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dd0c89825e53b7cc7525e90a3213c9f6ddf632cdeeaf6522a84e1f3a1bc675`  
		Last Modified: Sat, 28 Apr 2018 12:36:56 GMT  
		Size: 3.9 MB (3873102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8c3135c20a48e60efc6afb98b2e652718e7a02901fc2190bd7ea050e89574a`  
		Last Modified: Fri, 08 Jun 2018 11:58:29 GMT  
		Size: 20.5 MB (20479149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae87ba02c1cffd9e9945ac18e0149e1c629b24e66920d1085e5faee2097fe44f`  
		Last Modified: Fri, 08 Jun 2018 11:58:22 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f750f606ac398a30d19a9560e49d8daf251eaabbfb490c1710eaeda88ac07b`  
		Last Modified: Fri, 08 Jun 2018 11:58:22 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ea845a7bda6c2235e6b97b5cb3f7728d9d5c9914e9ce39bf74db58387e7ac5`  
		Last Modified: Fri, 08 Jun 2018 11:58:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6636b9538a9b00244111aaea1250e5e13e98ee4bb2b4a2ec814c900e95b6cb7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45128313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb98b4665d46fac478084d30fe1568f038989a670320f6589bbc3aeaf0322609`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 09:04:10 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Jun 2018 08:39:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 07 Jun 2018 08:40:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Jun 2018 08:40:51 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 07 Jun 2018 08:40:52 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Jun 2018 08:40:53 GMT
EXPOSE 8888/tcp
# Thu, 07 Jun 2018 08:40:54 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Jun 2018 08:40:54 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 07 Jun 2018 08:40:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Jun 2018 08:40:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1ed840f6129db27f8a762fcdc2e6f407b2189ce2f3f863723380f1dfd7df6e`  
		Last Modified: Tue, 01 May 2018 09:06:44 GMT  
		Size: 4.1 MB (4075078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35381bf547d1a4a080fd8528d71a9b05b0a5fff9fc1083fefdbfe2263d63d298`  
		Last Modified: Thu, 07 Jun 2018 08:41:26 GMT  
		Size: 20.7 MB (20680923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6047e1bae5b2d36f65e0cf9799ba2812d8fffb669666a91c17f94ac6b47466b8`  
		Last Modified: Thu, 07 Jun 2018 08:41:18 GMT  
		Size: 12.3 KB (12254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368cec1b7f9560047a6491cafeb5e9de61798b39ae9fccc62b31d68a8a26b5e5`  
		Last Modified: Thu, 07 Jun 2018 08:41:18 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ef1b8cfe7f667d37b675aaac3570b292ebc985c9065a7f566585e9674bffb5`  
		Last Modified: Thu, 07 Jun 2018 08:41:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0`

```console
$ docker pull chronograf@sha256:aa15d97b71f60038ed400be46d8bc980f38ba52c92a69120694c087524d05738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0` - linux; amd64

```console
$ docker pull chronograf@sha256:3628f971d336d7c91a665fe1d0c7fd09caefb6787c20b179a2234b082eb7bbf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49085501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549ee1b2b88d0396d793345561473d56417ae776454ba8c3da3d0f9bde0df9b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 23:41:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Jun 2018 23:42:32 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 06 Jun 2018 23:43:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Jun 2018 23:43:06 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:43:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:43:06 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:43:06 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:43:07 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 06 Jun 2018 23:43:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:43:07 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df19f719d9924249e1005caf2e80d09c24d584317e1acb9ab2ae319a626cee90`  
		Last Modified: Wed, 06 Jun 2018 23:44:13 GMT  
		Size: 4.5 MB (4500397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797a7e32642d85a9ef8ea49d5f42e040ed79ca8b6ae35a6cdc20d1c4f196e4a5`  
		Last Modified: Wed, 06 Jun 2018 23:49:08 GMT  
		Size: 22.1 MB (22064684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c7d639c3fe15f860db73b31daea65805a956a677fcf273cd1d135544190d43`  
		Last Modified: Wed, 06 Jun 2018 23:47:58 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d049cc7aeaabd2debfeb49d80be3aaf85e9e611b272b7ea79cb24d7f9100aee`  
		Last Modified: Wed, 06 Jun 2018 23:47:58 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b06914bc79958ee20b855a461f465398c95d3072b85af191d77c135aab2e6d`  
		Last Modified: Wed, 06 Jun 2018 23:47:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:ade785607e7fb5e1b816c57d5cad0bfad4a23270e4dfa23fa2e6397c3d4aae8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43663442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289cbca18c19960be3c890caf7ef1359cd24acf911cc5a7fcc0f326e10d9c4e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 08 Jun 2018 11:57:46 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Fri, 08 Jun 2018 11:58:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Jun 2018 11:58:03 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 08 Jun 2018 11:58:04 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 08 Jun 2018 11:58:04 GMT
EXPOSE 8888/tcp
# Fri, 08 Jun 2018 11:58:04 GMT
VOLUME [/var/lib/chronograf]
# Fri, 08 Jun 2018 11:58:05 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 08 Jun 2018 11:58:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Jun 2018 11:58:06 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dd0c89825e53b7cc7525e90a3213c9f6ddf632cdeeaf6522a84e1f3a1bc675`  
		Last Modified: Sat, 28 Apr 2018 12:36:56 GMT  
		Size: 3.9 MB (3873102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8c3135c20a48e60efc6afb98b2e652718e7a02901fc2190bd7ea050e89574a`  
		Last Modified: Fri, 08 Jun 2018 11:58:29 GMT  
		Size: 20.5 MB (20479149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae87ba02c1cffd9e9945ac18e0149e1c629b24e66920d1085e5faee2097fe44f`  
		Last Modified: Fri, 08 Jun 2018 11:58:22 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f750f606ac398a30d19a9560e49d8daf251eaabbfb490c1710eaeda88ac07b`  
		Last Modified: Fri, 08 Jun 2018 11:58:22 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ea845a7bda6c2235e6b97b5cb3f7728d9d5c9914e9ce39bf74db58387e7ac5`  
		Last Modified: Fri, 08 Jun 2018 11:58:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6636b9538a9b00244111aaea1250e5e13e98ee4bb2b4a2ec814c900e95b6cb7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45128313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb98b4665d46fac478084d30fe1568f038989a670320f6589bbc3aeaf0322609`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 09:04:10 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Jun 2018 08:39:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 07 Jun 2018 08:40:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Jun 2018 08:40:51 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 07 Jun 2018 08:40:52 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Jun 2018 08:40:53 GMT
EXPOSE 8888/tcp
# Thu, 07 Jun 2018 08:40:54 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Jun 2018 08:40:54 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 07 Jun 2018 08:40:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Jun 2018 08:40:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1ed840f6129db27f8a762fcdc2e6f407b2189ce2f3f863723380f1dfd7df6e`  
		Last Modified: Tue, 01 May 2018 09:06:44 GMT  
		Size: 4.1 MB (4075078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35381bf547d1a4a080fd8528d71a9b05b0a5fff9fc1083fefdbfe2263d63d298`  
		Last Modified: Thu, 07 Jun 2018 08:41:26 GMT  
		Size: 20.7 MB (20680923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6047e1bae5b2d36f65e0cf9799ba2812d8fffb669666a91c17f94ac6b47466b8`  
		Last Modified: Thu, 07 Jun 2018 08:41:18 GMT  
		Size: 12.3 KB (12254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368cec1b7f9560047a6491cafeb5e9de61798b39ae9fccc62b31d68a8a26b5e5`  
		Last Modified: Thu, 07 Jun 2018 08:41:18 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ef1b8cfe7f667d37b675aaac3570b292ebc985c9065a7f566585e9674bffb5`  
		Last Modified: Thu, 07 Jun 2018 08:41:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1`

```console
$ docker pull chronograf@sha256:aa15d97b71f60038ed400be46d8bc980f38ba52c92a69120694c087524d05738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0.1` - linux; amd64

```console
$ docker pull chronograf@sha256:3628f971d336d7c91a665fe1d0c7fd09caefb6787c20b179a2234b082eb7bbf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49085501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549ee1b2b88d0396d793345561473d56417ae776454ba8c3da3d0f9bde0df9b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 23:41:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Jun 2018 23:42:32 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 06 Jun 2018 23:43:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Jun 2018 23:43:06 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:43:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:43:06 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:43:06 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:43:07 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 06 Jun 2018 23:43:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:43:07 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df19f719d9924249e1005caf2e80d09c24d584317e1acb9ab2ae319a626cee90`  
		Last Modified: Wed, 06 Jun 2018 23:44:13 GMT  
		Size: 4.5 MB (4500397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797a7e32642d85a9ef8ea49d5f42e040ed79ca8b6ae35a6cdc20d1c4f196e4a5`  
		Last Modified: Wed, 06 Jun 2018 23:49:08 GMT  
		Size: 22.1 MB (22064684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c7d639c3fe15f860db73b31daea65805a956a677fcf273cd1d135544190d43`  
		Last Modified: Wed, 06 Jun 2018 23:47:58 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d049cc7aeaabd2debfeb49d80be3aaf85e9e611b272b7ea79cb24d7f9100aee`  
		Last Modified: Wed, 06 Jun 2018 23:47:58 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b06914bc79958ee20b855a461f465398c95d3072b85af191d77c135aab2e6d`  
		Last Modified: Wed, 06 Jun 2018 23:47:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:ade785607e7fb5e1b816c57d5cad0bfad4a23270e4dfa23fa2e6397c3d4aae8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43663442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289cbca18c19960be3c890caf7ef1359cd24acf911cc5a7fcc0f326e10d9c4e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 08 Jun 2018 11:57:46 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Fri, 08 Jun 2018 11:58:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Jun 2018 11:58:03 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 08 Jun 2018 11:58:04 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 08 Jun 2018 11:58:04 GMT
EXPOSE 8888/tcp
# Fri, 08 Jun 2018 11:58:04 GMT
VOLUME [/var/lib/chronograf]
# Fri, 08 Jun 2018 11:58:05 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 08 Jun 2018 11:58:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Jun 2018 11:58:06 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dd0c89825e53b7cc7525e90a3213c9f6ddf632cdeeaf6522a84e1f3a1bc675`  
		Last Modified: Sat, 28 Apr 2018 12:36:56 GMT  
		Size: 3.9 MB (3873102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8c3135c20a48e60efc6afb98b2e652718e7a02901fc2190bd7ea050e89574a`  
		Last Modified: Fri, 08 Jun 2018 11:58:29 GMT  
		Size: 20.5 MB (20479149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae87ba02c1cffd9e9945ac18e0149e1c629b24e66920d1085e5faee2097fe44f`  
		Last Modified: Fri, 08 Jun 2018 11:58:22 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f750f606ac398a30d19a9560e49d8daf251eaabbfb490c1710eaeda88ac07b`  
		Last Modified: Fri, 08 Jun 2018 11:58:22 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ea845a7bda6c2235e6b97b5cb3f7728d9d5c9914e9ce39bf74db58387e7ac5`  
		Last Modified: Fri, 08 Jun 2018 11:58:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6636b9538a9b00244111aaea1250e5e13e98ee4bb2b4a2ec814c900e95b6cb7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45128313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb98b4665d46fac478084d30fe1568f038989a670320f6589bbc3aeaf0322609`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 09:04:10 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Jun 2018 08:39:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 07 Jun 2018 08:40:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Jun 2018 08:40:51 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 07 Jun 2018 08:40:52 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Jun 2018 08:40:53 GMT
EXPOSE 8888/tcp
# Thu, 07 Jun 2018 08:40:54 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Jun 2018 08:40:54 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 07 Jun 2018 08:40:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Jun 2018 08:40:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1ed840f6129db27f8a762fcdc2e6f407b2189ce2f3f863723380f1dfd7df6e`  
		Last Modified: Tue, 01 May 2018 09:06:44 GMT  
		Size: 4.1 MB (4075078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35381bf547d1a4a080fd8528d71a9b05b0a5fff9fc1083fefdbfe2263d63d298`  
		Last Modified: Thu, 07 Jun 2018 08:41:26 GMT  
		Size: 20.7 MB (20680923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6047e1bae5b2d36f65e0cf9799ba2812d8fffb669666a91c17f94ac6b47466b8`  
		Last Modified: Thu, 07 Jun 2018 08:41:18 GMT  
		Size: 12.3 KB (12254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368cec1b7f9560047a6491cafeb5e9de61798b39ae9fccc62b31d68a8a26b5e5`  
		Last Modified: Thu, 07 Jun 2018 08:41:18 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ef1b8cfe7f667d37b675aaac3570b292ebc985c9065a7f566585e9674bffb5`  
		Last Modified: Thu, 07 Jun 2018 08:41:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1-alpine`

```console
$ docker pull chronograf@sha256:c4bd86971db303742e5cd4620ce3475bbb6ee8f672bb436e97b5d6d61fe03dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0.1-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:a54aa0ebc55dd2d0aa0bf307a3dfc31151f1c337790a8e7b5d906a46dfaf5fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13991231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d22654c6dcf31c80e8cf0f1a8b80364dc79b5637b2c478275d4f1d742f55a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 23:42:12 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 06 Jun 2018 23:43:15 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 06 Jun 2018 23:43:32 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 23:43:32 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:43:32 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:43:32 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:43:32 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:43:33 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:43:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:43:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffdb1617ef576cb00c9954cff658f08d9ad83c52de5631608fcc250b461cbcf`  
		Last Modified: Wed, 06 Jun 2018 23:47:04 GMT  
		Size: 351.0 KB (351019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db9b376782f512cc0a2a2ccb47fea1a0f2fab644d8166b7847b3c7fdebbecbc`  
		Last Modified: Wed, 06 Jun 2018 23:50:24 GMT  
		Size: 11.6 MB (11623940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a002b62e873b362441bcbd0bda6a80b4c7d5fa625bca020381d3ba07cce69f83`  
		Last Modified: Wed, 06 Jun 2018 23:49:42 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a848869075f338d0e955e2a72f53d6dfd3f8a7fc85a4ebbbdb5ded863710e8`  
		Last Modified: Wed, 06 Jun 2018 23:49:43 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfc8145d095bde17addea8c84ea00465bd10f7e5d3dd0e6395bce8abf9c847f`  
		Last Modified: Wed, 06 Jun 2018 23:49:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0-alpine`

```console
$ docker pull chronograf@sha256:c4bd86971db303742e5cd4620ce3475bbb6ee8f672bb436e97b5d6d61fe03dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:a54aa0ebc55dd2d0aa0bf307a3dfc31151f1c337790a8e7b5d906a46dfaf5fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13991231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d22654c6dcf31c80e8cf0f1a8b80364dc79b5637b2c478275d4f1d742f55a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 23:42:12 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 06 Jun 2018 23:43:15 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 06 Jun 2018 23:43:32 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 23:43:32 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:43:32 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:43:32 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:43:32 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:43:33 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:43:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:43:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffdb1617ef576cb00c9954cff658f08d9ad83c52de5631608fcc250b461cbcf`  
		Last Modified: Wed, 06 Jun 2018 23:47:04 GMT  
		Size: 351.0 KB (351019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db9b376782f512cc0a2a2ccb47fea1a0f2fab644d8166b7847b3c7fdebbecbc`  
		Last Modified: Wed, 06 Jun 2018 23:50:24 GMT  
		Size: 11.6 MB (11623940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a002b62e873b362441bcbd0bda6a80b4c7d5fa625bca020381d3ba07cce69f83`  
		Last Modified: Wed, 06 Jun 2018 23:49:42 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a848869075f338d0e955e2a72f53d6dfd3f8a7fc85a4ebbbdb5ded863710e8`  
		Last Modified: Wed, 06 Jun 2018 23:49:43 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfc8145d095bde17addea8c84ea00465bd10f7e5d3dd0e6395bce8abf9c847f`  
		Last Modified: Wed, 06 Jun 2018 23:49:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5-alpine`

```console
$ docker pull chronograf@sha256:c4bd86971db303742e5cd4620ce3475bbb6ee8f672bb436e97b5d6d61fe03dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:a54aa0ebc55dd2d0aa0bf307a3dfc31151f1c337790a8e7b5d906a46dfaf5fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13991231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d22654c6dcf31c80e8cf0f1a8b80364dc79b5637b2c478275d4f1d742f55a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 23:42:12 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 06 Jun 2018 23:43:15 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 06 Jun 2018 23:43:32 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 23:43:32 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:43:32 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:43:32 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:43:32 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:43:33 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:43:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:43:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffdb1617ef576cb00c9954cff658f08d9ad83c52de5631608fcc250b461cbcf`  
		Last Modified: Wed, 06 Jun 2018 23:47:04 GMT  
		Size: 351.0 KB (351019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db9b376782f512cc0a2a2ccb47fea1a0f2fab644d8166b7847b3c7fdebbecbc`  
		Last Modified: Wed, 06 Jun 2018 23:50:24 GMT  
		Size: 11.6 MB (11623940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a002b62e873b362441bcbd0bda6a80b4c7d5fa625bca020381d3ba07cce69f83`  
		Last Modified: Wed, 06 Jun 2018 23:49:42 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a848869075f338d0e955e2a72f53d6dfd3f8a7fc85a4ebbbdb5ded863710e8`  
		Last Modified: Wed, 06 Jun 2018 23:49:43 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfc8145d095bde17addea8c84ea00465bd10f7e5d3dd0e6395bce8abf9c847f`  
		Last Modified: Wed, 06 Jun 2018 23:49:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:c4bd86971db303742e5cd4620ce3475bbb6ee8f672bb436e97b5d6d61fe03dfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:a54aa0ebc55dd2d0aa0bf307a3dfc31151f1c337790a8e7b5d906a46dfaf5fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (13991231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92d22654c6dcf31c80e8cf0f1a8b80364dc79b5637b2c478275d4f1d742f55a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 23:42:12 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 06 Jun 2018 23:43:15 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 06 Jun 2018 23:43:32 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 23:43:32 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:43:32 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:43:32 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:43:32 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:43:33 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Wed, 06 Jun 2018 23:43:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:43:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffdb1617ef576cb00c9954cff658f08d9ad83c52de5631608fcc250b461cbcf`  
		Last Modified: Wed, 06 Jun 2018 23:47:04 GMT  
		Size: 351.0 KB (351019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db9b376782f512cc0a2a2ccb47fea1a0f2fab644d8166b7847b3c7fdebbecbc`  
		Last Modified: Wed, 06 Jun 2018 23:50:24 GMT  
		Size: 11.6 MB (11623940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a002b62e873b362441bcbd0bda6a80b4c7d5fa625bca020381d3ba07cce69f83`  
		Last Modified: Wed, 06 Jun 2018 23:49:42 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25a848869075f338d0e955e2a72f53d6dfd3f8a7fc85a4ebbbdb5ded863710e8`  
		Last Modified: Wed, 06 Jun 2018 23:49:43 GMT  
		Size: 11.9 KB (11896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dfc8145d095bde17addea8c84ea00465bd10f7e5d3dd0e6395bce8abf9c847f`  
		Last Modified: Wed, 06 Jun 2018 23:49:44 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:aa15d97b71f60038ed400be46d8bc980f38ba52c92a69120694c087524d05738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:3628f971d336d7c91a665fe1d0c7fd09caefb6787c20b179a2234b082eb7bbf7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49085501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549ee1b2b88d0396d793345561473d56417ae776454ba8c3da3d0f9bde0df9b5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 23:41:31 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Jun 2018 23:42:32 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 06 Jun 2018 23:43:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 06 Jun 2018 23:43:06 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Wed, 06 Jun 2018 23:43:06 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Wed, 06 Jun 2018 23:43:06 GMT
EXPOSE 8888/tcp
# Wed, 06 Jun 2018 23:43:06 GMT
VOLUME [/var/lib/chronograf]
# Wed, 06 Jun 2018 23:43:07 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Wed, 06 Jun 2018 23:43:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 23:43:07 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df19f719d9924249e1005caf2e80d09c24d584317e1acb9ab2ae319a626cee90`  
		Last Modified: Wed, 06 Jun 2018 23:44:13 GMT  
		Size: 4.5 MB (4500397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797a7e32642d85a9ef8ea49d5f42e040ed79ca8b6ae35a6cdc20d1c4f196e4a5`  
		Last Modified: Wed, 06 Jun 2018 23:49:08 GMT  
		Size: 22.1 MB (22064684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c7d639c3fe15f860db73b31daea65805a956a677fcf273cd1d135544190d43`  
		Last Modified: Wed, 06 Jun 2018 23:47:58 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d049cc7aeaabd2debfeb49d80be3aaf85e9e611b272b7ea79cb24d7f9100aee`  
		Last Modified: Wed, 06 Jun 2018 23:47:58 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2b06914bc79958ee20b855a461f465398c95d3072b85af191d77c135aab2e6d`  
		Last Modified: Wed, 06 Jun 2018 23:47:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:ade785607e7fb5e1b816c57d5cad0bfad4a23270e4dfa23fa2e6397c3d4aae8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43663442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:289cbca18c19960be3c890caf7ef1359cd24acf911cc5a7fcc0f326e10d9c4e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:35:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 08 Jun 2018 11:57:46 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Fri, 08 Jun 2018 11:58:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 08 Jun 2018 11:58:03 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 08 Jun 2018 11:58:04 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 08 Jun 2018 11:58:04 GMT
EXPOSE 8888/tcp
# Fri, 08 Jun 2018 11:58:04 GMT
VOLUME [/var/lib/chronograf]
# Fri, 08 Jun 2018 11:58:05 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 08 Jun 2018 11:58:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Jun 2018 11:58:06 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dd0c89825e53b7cc7525e90a3213c9f6ddf632cdeeaf6522a84e1f3a1bc675`  
		Last Modified: Sat, 28 Apr 2018 12:36:56 GMT  
		Size: 3.9 MB (3873102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8c3135c20a48e60efc6afb98b2e652718e7a02901fc2190bd7ea050e89574a`  
		Last Modified: Fri, 08 Jun 2018 11:58:29 GMT  
		Size: 20.5 MB (20479149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae87ba02c1cffd9e9945ac18e0149e1c629b24e66920d1085e5faee2097fe44f`  
		Last Modified: Fri, 08 Jun 2018 11:58:22 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f750f606ac398a30d19a9560e49d8daf251eaabbfb490c1710eaeda88ac07b`  
		Last Modified: Fri, 08 Jun 2018 11:58:22 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ea845a7bda6c2235e6b97b5cb3f7728d9d5c9914e9ce39bf74db58387e7ac5`  
		Last Modified: Fri, 08 Jun 2018 11:58:22 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6636b9538a9b00244111aaea1250e5e13e98ee4bb2b4a2ec814c900e95b6cb7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45128313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb98b4665d46fac478084d30fe1568f038989a670320f6589bbc3aeaf0322609`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 09:04:10 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Jun 2018 08:39:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 07 Jun 2018 08:40:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 07 Jun 2018 08:40:51 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 07 Jun 2018 08:40:52 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Jun 2018 08:40:53 GMT
EXPOSE 8888/tcp
# Thu, 07 Jun 2018 08:40:54 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Jun 2018 08:40:54 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 07 Jun 2018 08:40:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Jun 2018 08:40:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1ed840f6129db27f8a762fcdc2e6f407b2189ce2f3f863723380f1dfd7df6e`  
		Last Modified: Tue, 01 May 2018 09:06:44 GMT  
		Size: 4.1 MB (4075078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35381bf547d1a4a080fd8528d71a9b05b0a5fff9fc1083fefdbfe2263d63d298`  
		Last Modified: Thu, 07 Jun 2018 08:41:26 GMT  
		Size: 20.7 MB (20680923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6047e1bae5b2d36f65e0cf9799ba2812d8fffb669666a91c17f94ac6b47466b8`  
		Last Modified: Thu, 07 Jun 2018 08:41:18 GMT  
		Size: 12.3 KB (12254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:368cec1b7f9560047a6491cafeb5e9de61798b39ae9fccc62b31d68a8a26b5e5`  
		Last Modified: Thu, 07 Jun 2018 08:41:18 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ef1b8cfe7f667d37b675aaac3570b292ebc985c9065a7f566585e9674bffb5`  
		Last Modified: Thu, 07 Jun 2018 08:41:19 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
