## `chronograf:latest`

```console
$ docker pull chronograf@sha256:c424d9160e22a90c6a08afd2817929c3ecdbb4def45df231e333ba1949b1fc26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:2d37283866b5cb9f0f69972696aa1e2268a8e81cc2373fd5737d886c21598283
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49959451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fcbefcf92eb3063144af05aa6dbc25c113ebdfec1e7c0fb25bf82f76bd1ba9f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:13:46 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Dec 2018 23:21:40 GMT
ENV CHRONOGRAF_VERSION=1.7.4
# Thu, 13 Dec 2018 23:22:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Thu, 13 Dec 2018 23:22:10 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Thu, 13 Dec 2018 23:22:10 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 13 Dec 2018 23:22:11 GMT
EXPOSE 8888/tcp
# Thu, 13 Dec 2018 23:22:11 GMT
VOLUME [/var/lib/chronograf]
# Thu, 13 Dec 2018 23:22:11 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Thu, 13 Dec 2018 23:22:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Dec 2018 23:22:12 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a10410d20ef9d53569a1d488c394c7b8e4819a683ef62c549eaaaafe54a48f5`  
		Last Modified: Fri, 16 Nov 2018 11:18:32 GMT  
		Size: 4.5 MB (4503403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5f69310446675b348b4937cc4effcf8cf05d46c52a7cc16b1689d59d15e0d5b`  
		Last Modified: Thu, 13 Dec 2018 23:23:38 GMT  
		Size: 22.9 MB (22945364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a751d0b3c57c0f43e4d240b19230c44ab9ab8874e28788e7679318ac5c8c30e3`  
		Last Modified: Thu, 13 Dec 2018 23:23:33 GMT  
		Size: 12.3 KB (12254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa8c187df2b4043f90ca26173021ce903f52fc7e2239d86273eb24f29236d46`  
		Last Modified: Thu, 13 Dec 2018 23:23:33 GMT  
		Size: 11.9 KB (11914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5f8121ac682708f1d06588d0c5023bf8340df0a77eeb3167baa39d649fa7478`  
		Last Modified: Thu, 13 Dec 2018 23:23:33 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:a41d2acea57eee97691a6c97f693a78e8cd6aa16f54f75a67d114dca83dccbc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44493521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:074bc639d2654ed779052f5957819c65fecfbdb86f0dd78bf0ad04160f9345d5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:49 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 18:16:19 GMT
ENV CHRONOGRAF_VERSION=1.7.3
# Fri, 16 Nov 2018 18:16:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 18:16:41 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 16 Nov 2018 18:16:42 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 16 Nov 2018 18:16:43 GMT
EXPOSE 8888/tcp
# Fri, 16 Nov 2018 18:16:43 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Nov 2018 18:16:44 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 16 Nov 2018 18:16:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 18:16:45 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:88950d48cb7db5e5f329d377a3f7f1260b31f4e0f2d7202fbfc08f7685b41580`  
		Last Modified: Fri, 16 Nov 2018 13:22:02 GMT  
		Size: 19.3 MB (19270059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d6430d941ff9fd1338df29ee29cd475551cd9517a9e74595c60129a3759104`  
		Last Modified: Fri, 16 Nov 2018 18:17:13 GMT  
		Size: 3.9 MB (3877169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490bcac01134772e05522f3742ec41defe9b0bc761768a18c1aeedd508ceecb4`  
		Last Modified: Fri, 16 Nov 2018 18:18:21 GMT  
		Size: 21.3 MB (21321893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd5ad0c238a4137c0dc9052bf1fb18758064367b3adeff15b6594a9cb470b72`  
		Last Modified: Fri, 16 Nov 2018 18:18:14 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3f3de9bf64d8c36add4ea37091ba99dc97648757752d540656b566f51beac3a`  
		Last Modified: Fri, 16 Nov 2018 18:18:14 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9df98b429d35a2fcfeb0e2cafdbad8bc48123c46f7aee7aa055717815e4353fe`  
		Last Modified: Fri, 16 Nov 2018 18:18:14 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:2003326747527e9da5bac2a18aa0bfa87215b0450c97ff1a68514f7fce55233e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45971288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c73105350bd775355b89ff5333257c536839e7b732f63877a6764d2c8ffaee1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:55:35 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 14 Dec 2018 09:40:09 GMT
ENV CHRONOGRAF_VERSION=1.7.4
# Fri, 14 Dec 2018 09:40:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Dec 2018 09:40:45 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 14 Dec 2018 09:40:46 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 14 Dec 2018 09:40:47 GMT
EXPOSE 8888/tcp
# Fri, 14 Dec 2018 09:40:47 GMT
VOLUME [/var/lib/chronograf]
# Fri, 14 Dec 2018 09:40:48 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 14 Dec 2018 09:40:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 09:40:49 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:2216f9d9ff00a3bca028dc4e59b0b7dfcebea1fa5910cc432b3d2f2f4eb2016b`  
		Last Modified: Thu, 15 Nov 2018 01:53:09 GMT  
		Size: 20.3 MB (20331309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a4fe19304d6bdd1c1857871e8caf6625e9b9a900bb6bd25eb9c382d3b48a69`  
		Last Modified: Sat, 17 Nov 2018 02:59:15 GMT  
		Size: 4.1 MB (4078493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7883cdfe283cd1d0337b8479935864c4f2115d681017896d69aa1114c394612f`  
		Last Modified: Fri, 14 Dec 2018 09:41:21 GMT  
		Size: 21.5 MB (21537090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9749df11c5480ddd913ecc8e614f97a3e3f7bd4f0c2da10bac007721b073e3e0`  
		Last Modified: Fri, 14 Dec 2018 09:41:13 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f727b7e0895124eb0d3ce1fa060fcae379cc4382a0beefbd652ec53ca0bedeb6`  
		Last Modified: Fri, 14 Dec 2018 09:41:13 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff78fc899d2cba523ee14aa7f1aeb007f6521614013e39c3cab7367a7fb0a487`  
		Last Modified: Fri, 14 Dec 2018 09:41:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
