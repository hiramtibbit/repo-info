<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `chronograf`

-	[`chronograf:1.5`](#chronograf15)
-	[`chronograf:1.5.0`](#chronograf150)
-	[`chronograf:1.5.0.1`](#chronograf1501)
-	[`chronograf:1.5.0.1-alpine`](#chronograf1501-alpine)
-	[`chronograf:1.5.0-alpine`](#chronograf150-alpine)
-	[`chronograf:1.5-alpine`](#chronograf15-alpine)
-	[`chronograf:1.6`](#chronograf16)
-	[`chronograf:1.6.2`](#chronograf162)
-	[`chronograf:1.6.2-alpine`](#chronograf162-alpine)
-	[`chronograf:1.6-alpine`](#chronograf16-alpine)
-	[`chronograf:1.7`](#chronograf17)
-	[`chronograf:1.7.5`](#chronograf175)
-	[`chronograf:1.7.5-alpine`](#chronograf175-alpine)
-	[`chronograf:1.7-alpine`](#chronograf17-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.5`

```console
$ docker pull chronograf@sha256:62e78b1f830cdac86b160ae3913dfcea70fd9656728671c60a75645af4a2e5df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5` - linux; amd64

```console
$ docker pull chronograf@sha256:2a94d4cf8bf6a5c8d8de9034e34bd91c0b535ee6529a0addd6110306cc1e4d93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49047592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e03cb273509d90573f69593530c9296244f08a9201013969c98e9e87fb7653c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:13:46 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 11:13:47 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Fri, 16 Nov 2018 11:13:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 02:19:21 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:19:21 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:19:22 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:19:22 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:19:22 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 02:19:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:19:22 GMT
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
	-	`sha256:645065c7280a810d586190c3f9b96d2171c6aaef23232fa036581ff1de20e262`  
		Last Modified: Fri, 16 Nov 2018 11:18:36 GMT  
		Size: 22.0 MB (22033506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005c1152858e47563b42f82d7a861313bb4e03a954638c941d621d09daade228`  
		Last Modified: Tue, 18 Dec 2018 02:20:11 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d53f15e066a2a75fe27a60936f9b51180c3d70d3adce298a0afb520bef46bc`  
		Last Modified: Tue, 18 Dec 2018 02:20:12 GMT  
		Size: 11.9 KB (11914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d92e17a7c74ba8d9558767643b9dd3b98103e7e597490dae69017ab4d5fb6eb`  
		Last Modified: Tue, 18 Dec 2018 02:20:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:8b142833f86b89289d179ff8878fb5d4dcdc57d282cb1da70efef45947a950b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43616159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ba9ed78fd19df95595f33a613d3121f2a7ac6ca1a6164ffeaf2f01aa01acd9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:49 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 18:14:50 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Fri, 16 Nov 2018 18:15:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 18:15:13 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 16 Nov 2018 18:15:14 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 16 Nov 2018 18:15:14 GMT
EXPOSE 8888/tcp
# Fri, 16 Nov 2018 18:15:14 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Nov 2018 18:15:15 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 16 Nov 2018 18:15:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 18:15:24 GMT
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
	-	`sha256:e1041d5fba17fa4c41d2a3e1c04c12b82b3d85158b6a92c4e0b4f8cb5a7f3e15`  
		Last Modified: Fri, 16 Nov 2018 18:17:20 GMT  
		Size: 20.4 MB (20444546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdfa95943a6bf5d023b4f976cb3d915552cb69872452c2be5dbede75cf0e48f`  
		Last Modified: Fri, 16 Nov 2018 18:17:12 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302651efea09109a627b0ee8d160b4249874119a52cf1e16535baac23224f506`  
		Last Modified: Fri, 16 Nov 2018 18:17:12 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05ee4374d2fde2ea9f41dba343fa04a7835ac8db917ea1e8888c10b43dfdfaf`  
		Last Modified: Fri, 16 Nov 2018 18:17:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:bd1020e330e0ecce24403e991d3619ed00013bab5c1489da33d8a2ef3ea79890
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45081496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5786facbfe072322f80da0f228b24a5c3322fa663d5e51547006835fbfcd3ccf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:55:35 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 17 Nov 2018 02:55:36 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Sat, 17 Nov 2018 02:56:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 09:40:12 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 09:40:13 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 09:40:14 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 09:40:16 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 09:40:17 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 09:40:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 09:40:20 GMT
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
	-	`sha256:2ed356fc11f77daffc98bb54ac7185998bfeba649015c79f55bcdd15ca08a021`  
		Last Modified: Sat, 17 Nov 2018 02:59:21 GMT  
		Size: 20.6 MB (20647285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d0fb628308b751ce6b00b935d9df41e4b12216e5ed4b9eefc4ad9cb443d052`  
		Last Modified: Tue, 18 Dec 2018 09:41:42 GMT  
		Size: 12.3 KB (12256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5488dd51f69b7cf4576a7711ba897d12aee54b1b05b42c6250de66a04af2170e`  
		Last Modified: Tue, 18 Dec 2018 09:41:42 GMT  
		Size: 11.9 KB (11914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e0954c274f8e087301e065143dc32adcd06c0238f19c30e291432527b67144`  
		Last Modified: Tue, 18 Dec 2018 09:41:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0`

```console
$ docker pull chronograf@sha256:62e78b1f830cdac86b160ae3913dfcea70fd9656728671c60a75645af4a2e5df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0` - linux; amd64

```console
$ docker pull chronograf@sha256:2a94d4cf8bf6a5c8d8de9034e34bd91c0b535ee6529a0addd6110306cc1e4d93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49047592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e03cb273509d90573f69593530c9296244f08a9201013969c98e9e87fb7653c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:13:46 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 11:13:47 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Fri, 16 Nov 2018 11:13:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 02:19:21 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:19:21 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:19:22 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:19:22 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:19:22 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 02:19:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:19:22 GMT
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
	-	`sha256:645065c7280a810d586190c3f9b96d2171c6aaef23232fa036581ff1de20e262`  
		Last Modified: Fri, 16 Nov 2018 11:18:36 GMT  
		Size: 22.0 MB (22033506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005c1152858e47563b42f82d7a861313bb4e03a954638c941d621d09daade228`  
		Last Modified: Tue, 18 Dec 2018 02:20:11 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d53f15e066a2a75fe27a60936f9b51180c3d70d3adce298a0afb520bef46bc`  
		Last Modified: Tue, 18 Dec 2018 02:20:12 GMT  
		Size: 11.9 KB (11914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d92e17a7c74ba8d9558767643b9dd3b98103e7e597490dae69017ab4d5fb6eb`  
		Last Modified: Tue, 18 Dec 2018 02:20:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:8b142833f86b89289d179ff8878fb5d4dcdc57d282cb1da70efef45947a950b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43616159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ba9ed78fd19df95595f33a613d3121f2a7ac6ca1a6164ffeaf2f01aa01acd9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:49 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 18:14:50 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Fri, 16 Nov 2018 18:15:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 18:15:13 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 16 Nov 2018 18:15:14 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 16 Nov 2018 18:15:14 GMT
EXPOSE 8888/tcp
# Fri, 16 Nov 2018 18:15:14 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Nov 2018 18:15:15 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 16 Nov 2018 18:15:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 18:15:24 GMT
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
	-	`sha256:e1041d5fba17fa4c41d2a3e1c04c12b82b3d85158b6a92c4e0b4f8cb5a7f3e15`  
		Last Modified: Fri, 16 Nov 2018 18:17:20 GMT  
		Size: 20.4 MB (20444546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdfa95943a6bf5d023b4f976cb3d915552cb69872452c2be5dbede75cf0e48f`  
		Last Modified: Fri, 16 Nov 2018 18:17:12 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302651efea09109a627b0ee8d160b4249874119a52cf1e16535baac23224f506`  
		Last Modified: Fri, 16 Nov 2018 18:17:12 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05ee4374d2fde2ea9f41dba343fa04a7835ac8db917ea1e8888c10b43dfdfaf`  
		Last Modified: Fri, 16 Nov 2018 18:17:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:bd1020e330e0ecce24403e991d3619ed00013bab5c1489da33d8a2ef3ea79890
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45081496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5786facbfe072322f80da0f228b24a5c3322fa663d5e51547006835fbfcd3ccf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:55:35 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 17 Nov 2018 02:55:36 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Sat, 17 Nov 2018 02:56:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 09:40:12 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 09:40:13 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 09:40:14 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 09:40:16 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 09:40:17 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 09:40:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 09:40:20 GMT
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
	-	`sha256:2ed356fc11f77daffc98bb54ac7185998bfeba649015c79f55bcdd15ca08a021`  
		Last Modified: Sat, 17 Nov 2018 02:59:21 GMT  
		Size: 20.6 MB (20647285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d0fb628308b751ce6b00b935d9df41e4b12216e5ed4b9eefc4ad9cb443d052`  
		Last Modified: Tue, 18 Dec 2018 09:41:42 GMT  
		Size: 12.3 KB (12256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5488dd51f69b7cf4576a7711ba897d12aee54b1b05b42c6250de66a04af2170e`  
		Last Modified: Tue, 18 Dec 2018 09:41:42 GMT  
		Size: 11.9 KB (11914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e0954c274f8e087301e065143dc32adcd06c0238f19c30e291432527b67144`  
		Last Modified: Tue, 18 Dec 2018 09:41:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1`

```console
$ docker pull chronograf@sha256:62e78b1f830cdac86b160ae3913dfcea70fd9656728671c60a75645af4a2e5df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0.1` - linux; amd64

```console
$ docker pull chronograf@sha256:2a94d4cf8bf6a5c8d8de9034e34bd91c0b535ee6529a0addd6110306cc1e4d93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49047592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e03cb273509d90573f69593530c9296244f08a9201013969c98e9e87fb7653c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:13:46 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 11:13:47 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Fri, 16 Nov 2018 11:13:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 02:19:21 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:19:21 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:19:22 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:19:22 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:19:22 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 02:19:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:19:22 GMT
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
	-	`sha256:645065c7280a810d586190c3f9b96d2171c6aaef23232fa036581ff1de20e262`  
		Last Modified: Fri, 16 Nov 2018 11:18:36 GMT  
		Size: 22.0 MB (22033506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005c1152858e47563b42f82d7a861313bb4e03a954638c941d621d09daade228`  
		Last Modified: Tue, 18 Dec 2018 02:20:11 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d53f15e066a2a75fe27a60936f9b51180c3d70d3adce298a0afb520bef46bc`  
		Last Modified: Tue, 18 Dec 2018 02:20:12 GMT  
		Size: 11.9 KB (11914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d92e17a7c74ba8d9558767643b9dd3b98103e7e597490dae69017ab4d5fb6eb`  
		Last Modified: Tue, 18 Dec 2018 02:20:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:8b142833f86b89289d179ff8878fb5d4dcdc57d282cb1da70efef45947a950b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43616159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ba9ed78fd19df95595f33a613d3121f2a7ac6ca1a6164ffeaf2f01aa01acd9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:49 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 18:14:50 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Fri, 16 Nov 2018 18:15:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 18:15:13 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 16 Nov 2018 18:15:14 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 16 Nov 2018 18:15:14 GMT
EXPOSE 8888/tcp
# Fri, 16 Nov 2018 18:15:14 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Nov 2018 18:15:15 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 16 Nov 2018 18:15:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 18:15:24 GMT
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
	-	`sha256:e1041d5fba17fa4c41d2a3e1c04c12b82b3d85158b6a92c4e0b4f8cb5a7f3e15`  
		Last Modified: Fri, 16 Nov 2018 18:17:20 GMT  
		Size: 20.4 MB (20444546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdfa95943a6bf5d023b4f976cb3d915552cb69872452c2be5dbede75cf0e48f`  
		Last Modified: Fri, 16 Nov 2018 18:17:12 GMT  
		Size: 12.2 KB (12245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302651efea09109a627b0ee8d160b4249874119a52cf1e16535baac23224f506`  
		Last Modified: Fri, 16 Nov 2018 18:17:12 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05ee4374d2fde2ea9f41dba343fa04a7835ac8db917ea1e8888c10b43dfdfaf`  
		Last Modified: Fri, 16 Nov 2018 18:17:12 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:bd1020e330e0ecce24403e991d3619ed00013bab5c1489da33d8a2ef3ea79890
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45081496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5786facbfe072322f80da0f228b24a5c3322fa663d5e51547006835fbfcd3ccf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:55:35 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 17 Nov 2018 02:55:36 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Sat, 17 Nov 2018 02:56:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 09:40:12 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 09:40:13 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 09:40:14 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 09:40:16 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 09:40:17 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 09:40:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 09:40:20 GMT
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
	-	`sha256:2ed356fc11f77daffc98bb54ac7185998bfeba649015c79f55bcdd15ca08a021`  
		Last Modified: Sat, 17 Nov 2018 02:59:21 GMT  
		Size: 20.6 MB (20647285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47d0fb628308b751ce6b00b935d9df41e4b12216e5ed4b9eefc4ad9cb443d052`  
		Last Modified: Tue, 18 Dec 2018 09:41:42 GMT  
		Size: 12.3 KB (12256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5488dd51f69b7cf4576a7711ba897d12aee54b1b05b42c6250de66a04af2170e`  
		Last Modified: Tue, 18 Dec 2018 09:41:42 GMT  
		Size: 11.9 KB (11914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e0954c274f8e087301e065143dc32adcd06c0238f19c30e291432527b67144`  
		Last Modified: Tue, 18 Dec 2018 09:41:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1-alpine`

```console
$ docker pull chronograf@sha256:82900ccb8a7068790e86b60453c419caa89cddb431fcde858ef27962db2053c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0.1-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:421e882d03fb1f42618ec5e8415f283e133384ace18dcd60289c6c16a9b2799a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14016173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21cfee1b06e88a3f862964d8fe51f857288e8b1f2626eb04e23fca73f3c91c29`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 22:45:28 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 11 Sep 2018 22:45:34 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Dec 2018 02:19:25 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:19:25 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:19:26 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:19:26 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:19:26 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Tue, 18 Dec 2018 02:19:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:19:26 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49937e3f7d58da3700e6b65bc4c752390b1ae035bb671d25578ef7588c38da00`  
		Last Modified: Tue, 11 Sep 2018 22:46:07 GMT  
		Size: 11.6 MB (11623662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319eed83504caa59f6aa7528c0a2870f374fd885e0c857dd03de67111416412`  
		Last Modified: Tue, 18 Dec 2018 02:20:17 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a78aad21e8b85b66d5c253accf9d22667d2fea3dbb84674b37f5ce4c4fcf75`  
		Last Modified: Tue, 18 Dec 2018 02:20:17 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cecf6ed9d45ae051572fd2db765aefbc8d4f1efc7fce06183a51bc8184ae8b`  
		Last Modified: Tue, 18 Dec 2018 02:20:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0-alpine`

```console
$ docker pull chronograf@sha256:82900ccb8a7068790e86b60453c419caa89cddb431fcde858ef27962db2053c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:421e882d03fb1f42618ec5e8415f283e133384ace18dcd60289c6c16a9b2799a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14016173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21cfee1b06e88a3f862964d8fe51f857288e8b1f2626eb04e23fca73f3c91c29`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 22:45:28 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 11 Sep 2018 22:45:34 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Dec 2018 02:19:25 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:19:25 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:19:26 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:19:26 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:19:26 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Tue, 18 Dec 2018 02:19:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:19:26 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49937e3f7d58da3700e6b65bc4c752390b1ae035bb671d25578ef7588c38da00`  
		Last Modified: Tue, 11 Sep 2018 22:46:07 GMT  
		Size: 11.6 MB (11623662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319eed83504caa59f6aa7528c0a2870f374fd885e0c857dd03de67111416412`  
		Last Modified: Tue, 18 Dec 2018 02:20:17 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a78aad21e8b85b66d5c253accf9d22667d2fea3dbb84674b37f5ce4c4fcf75`  
		Last Modified: Tue, 18 Dec 2018 02:20:17 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cecf6ed9d45ae051572fd2db765aefbc8d4f1efc7fce06183a51bc8184ae8b`  
		Last Modified: Tue, 18 Dec 2018 02:20:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5-alpine`

```console
$ docker pull chronograf@sha256:82900ccb8a7068790e86b60453c419caa89cddb431fcde858ef27962db2053c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:421e882d03fb1f42618ec5e8415f283e133384ace18dcd60289c6c16a9b2799a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14016173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21cfee1b06e88a3f862964d8fe51f857288e8b1f2626eb04e23fca73f3c91c29`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 22:45:28 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 11 Sep 2018 22:45:34 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Dec 2018 02:19:25 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:19:25 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:19:26 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:19:26 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:19:26 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Tue, 18 Dec 2018 02:19:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:19:26 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49937e3f7d58da3700e6b65bc4c752390b1ae035bb671d25578ef7588c38da00`  
		Last Modified: Tue, 11 Sep 2018 22:46:07 GMT  
		Size: 11.6 MB (11623662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c319eed83504caa59f6aa7528c0a2870f374fd885e0c857dd03de67111416412`  
		Last Modified: Tue, 18 Dec 2018 02:20:17 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a78aad21e8b85b66d5c253accf9d22667d2fea3dbb84674b37f5ce4c4fcf75`  
		Last Modified: Tue, 18 Dec 2018 02:20:17 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cecf6ed9d45ae051572fd2db765aefbc8d4f1efc7fce06183a51bc8184ae8b`  
		Last Modified: Tue, 18 Dec 2018 02:20:17 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6`

```console
$ docker pull chronograf@sha256:f9f4ed2463469f0b5c6f3edd24e93320a6c5fd20d8187eed622515ac0d9aba36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6` - linux; amd64

```console
$ docker pull chronograf@sha256:a8786d5376d9d8cec1725483aa5082ece2aadba9704a5d1a2ff2b2c28c381ba5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49092140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7385c53bcb6587aa8ed79ccf25591395e76f9d07246518af3177a905eeb38ee3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:13:46 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 11:15:47 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Fri, 16 Nov 2018 11:15:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 02:19:29 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:19:30 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:19:30 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:19:30 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:19:30 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 02:19:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:19:30 GMT
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
	-	`sha256:248e1532b31fcfa4a9af9a79a3cb50903ba56ecc9a01d395f96113104c358735`  
		Last Modified: Fri, 16 Nov 2018 11:19:27 GMT  
		Size: 22.1 MB (22078057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e7f3593bb09de6c0d72a3df584cc7a9c9d228b70e9969534edfb39d808accb`  
		Last Modified: Tue, 18 Dec 2018 02:20:24 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b5958389b02f7734f98d292577bf7f4e918cda72dbc9e3804dc3cee5ff21f4`  
		Last Modified: Tue, 18 Dec 2018 02:20:24 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21829bb40cb32878f1e3f356a5ae7db50cd41f5fe7cf13fc2fcfc7071b86d7b2`  
		Last Modified: Tue, 18 Dec 2018 02:20:24 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:603689aba48cab0c1b7b15ab082e6445439e30de0592bba69e95cfce330cfe89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43676246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75950ecf0827180a808e4238af23ea5743cf145d0c2642c62a9b6f2191560646`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:49 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 18:15:42 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Fri, 16 Nov 2018 18:16:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 18:16:02 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 16 Nov 2018 18:16:03 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 16 Nov 2018 18:16:03 GMT
EXPOSE 8888/tcp
# Fri, 16 Nov 2018 18:16:04 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Nov 2018 18:16:05 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 16 Nov 2018 18:16:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 18:16:06 GMT
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
	-	`sha256:47692420b2985e584fb50107452bce546cbb2e548ac658be4650d492d17616f0`  
		Last Modified: Fri, 16 Nov 2018 18:17:55 GMT  
		Size: 20.5 MB (20504622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bab22acd48b57229e656de8bba14c6b8ce076c2abc7af6dbad2abf1443d9e8`  
		Last Modified: Fri, 16 Nov 2018 18:17:48 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77be037e0b617ef4c4b46528b7a0e421f5897cfa2362dbe6a3b24c00a171138c`  
		Last Modified: Fri, 16 Nov 2018 18:17:49 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddd9371dc657df15871b54d582b6140d6daa0eeebc7b1f68ea5a49a30475759`  
		Last Modified: Fri, 16 Nov 2018 18:17:48 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:0bc4f36f0c2f4e897b8c014fa040b320da17b34d62f02297c27d9a8c3d0d7bdd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45142694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a513d82918fdeec450d3e29e26a963522960059e7423d096f41313be86c7b81b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:55:35 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 17 Nov 2018 02:56:40 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Sat, 17 Nov 2018 02:57:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 09:40:25 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 09:40:26 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 09:40:27 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 09:40:28 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 09:40:29 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 09:40:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 09:40:31 GMT
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
	-	`sha256:fd348dd026a1b66acb4a445751fa7bd7b71c5b68d1e616c531d7bfa3508cafb3`  
		Last Modified: Sat, 17 Nov 2018 03:00:52 GMT  
		Size: 20.7 MB (20708492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889fd83e998d400b1b18d52d882a42305df52c65b89e56a9059f567a8d66fa93`  
		Last Modified: Tue, 18 Dec 2018 09:41:53 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1567e101612b1c11974419586ee25a7e00b34a00df38893a9a111e63a5309cc9`  
		Last Modified: Tue, 18 Dec 2018 09:41:53 GMT  
		Size: 11.9 KB (11914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c490c26d288bb185accb6f098f47a564ec4a875289b83d70e613c966e46fb241`  
		Last Modified: Tue, 18 Dec 2018 09:41:53 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.2`

```console
$ docker pull chronograf@sha256:f9f4ed2463469f0b5c6f3edd24e93320a6c5fd20d8187eed622515ac0d9aba36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6.2` - linux; amd64

```console
$ docker pull chronograf@sha256:a8786d5376d9d8cec1725483aa5082ece2aadba9704a5d1a2ff2b2c28c381ba5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49092140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7385c53bcb6587aa8ed79ccf25591395e76f9d07246518af3177a905eeb38ee3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:13:46 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 11:15:47 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Fri, 16 Nov 2018 11:15:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 02:19:29 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:19:30 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:19:30 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:19:30 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:19:30 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 02:19:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:19:30 GMT
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
	-	`sha256:248e1532b31fcfa4a9af9a79a3cb50903ba56ecc9a01d395f96113104c358735`  
		Last Modified: Fri, 16 Nov 2018 11:19:27 GMT  
		Size: 22.1 MB (22078057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e7f3593bb09de6c0d72a3df584cc7a9c9d228b70e9969534edfb39d808accb`  
		Last Modified: Tue, 18 Dec 2018 02:20:24 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b5958389b02f7734f98d292577bf7f4e918cda72dbc9e3804dc3cee5ff21f4`  
		Last Modified: Tue, 18 Dec 2018 02:20:24 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21829bb40cb32878f1e3f356a5ae7db50cd41f5fe7cf13fc2fcfc7071b86d7b2`  
		Last Modified: Tue, 18 Dec 2018 02:20:24 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.2` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:603689aba48cab0c1b7b15ab082e6445439e30de0592bba69e95cfce330cfe89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43676246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75950ecf0827180a808e4238af23ea5743cf145d0c2642c62a9b6f2191560646`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:49 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 18:15:42 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Fri, 16 Nov 2018 18:16:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 16 Nov 2018 18:16:02 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 16 Nov 2018 18:16:03 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 16 Nov 2018 18:16:03 GMT
EXPOSE 8888/tcp
# Fri, 16 Nov 2018 18:16:04 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Nov 2018 18:16:05 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 16 Nov 2018 18:16:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 18:16:06 GMT
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
	-	`sha256:47692420b2985e584fb50107452bce546cbb2e548ac658be4650d492d17616f0`  
		Last Modified: Fri, 16 Nov 2018 18:17:55 GMT  
		Size: 20.5 MB (20504622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3bab22acd48b57229e656de8bba14c6b8ce076c2abc7af6dbad2abf1443d9e8`  
		Last Modified: Fri, 16 Nov 2018 18:17:48 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77be037e0b617ef4c4b46528b7a0e421f5897cfa2362dbe6a3b24c00a171138c`  
		Last Modified: Fri, 16 Nov 2018 18:17:49 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ddd9371dc657df15871b54d582b6140d6daa0eeebc7b1f68ea5a49a30475759`  
		Last Modified: Fri, 16 Nov 2018 18:17:48 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.2` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:0bc4f36f0c2f4e897b8c014fa040b320da17b34d62f02297c27d9a8c3d0d7bdd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45142694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a513d82918fdeec450d3e29e26a963522960059e7423d096f41313be86c7b81b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:55:35 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 17 Nov 2018 02:56:40 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Sat, 17 Nov 2018 02:57:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 09:40:25 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 09:40:26 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 09:40:27 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 09:40:28 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 09:40:29 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 09:40:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 09:40:31 GMT
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
	-	`sha256:fd348dd026a1b66acb4a445751fa7bd7b71c5b68d1e616c531d7bfa3508cafb3`  
		Last Modified: Sat, 17 Nov 2018 03:00:52 GMT  
		Size: 20.7 MB (20708492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:889fd83e998d400b1b18d52d882a42305df52c65b89e56a9059f567a8d66fa93`  
		Last Modified: Tue, 18 Dec 2018 09:41:53 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1567e101612b1c11974419586ee25a7e00b34a00df38893a9a111e63a5309cc9`  
		Last Modified: Tue, 18 Dec 2018 09:41:53 GMT  
		Size: 11.9 KB (11914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c490c26d288bb185accb6f098f47a564ec4a875289b83d70e613c966e46fb241`  
		Last Modified: Tue, 18 Dec 2018 09:41:53 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.2-alpine`

```console
$ docker pull chronograf@sha256:2b1cf6b89614d6a9896e0601ec161995e103682b2fb42073d99e0855236ace40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6.2-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:f8a960b335c3da76fe8727c0a59c86c78814645f1e6ffdf44827bae0d2dbcb51
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14129719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c3ce011d5c1207c6bd3f512fa39e13fe8aeab69c9f4177967feb726c278133`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 22:45:45 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Tue, 11 Sep 2018 22:45:50 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Dec 2018 02:19:33 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:19:34 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:19:34 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:19:34 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:19:34 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Tue, 18 Dec 2018 02:19:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:19:34 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2349a8a7f7bdda0cb09368e8145f2e6cdfab26381349afa12e6f435bf8c5effc`  
		Last Modified: Tue, 11 Sep 2018 22:46:26 GMT  
		Size: 11.7 MB (11737197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdf8f8f443b73db4ead07229e290dde51e2aea4d9bb5f17e750956e8d2b60ea`  
		Last Modified: Tue, 18 Dec 2018 02:20:29 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc344f9c1d2758bcd8967a9ad2daf20c4663776ce46798b362ab1deb608d960f`  
		Last Modified: Tue, 18 Dec 2018 02:20:29 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4f83906b065a7453a38628dcf8180d63554530b636bbcaad4aadc271aee9b9`  
		Last Modified: Tue, 18 Dec 2018 02:20:29 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6-alpine`

```console
$ docker pull chronograf@sha256:2b1cf6b89614d6a9896e0601ec161995e103682b2fb42073d99e0855236ace40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:f8a960b335c3da76fe8727c0a59c86c78814645f1e6ffdf44827bae0d2dbcb51
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14129719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63c3ce011d5c1207c6bd3f512fa39e13fe8aeab69c9f4177967feb726c278133`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 22:45:45 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Tue, 11 Sep 2018 22:45:50 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Dec 2018 02:19:33 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:19:34 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:19:34 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:19:34 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:19:34 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Tue, 18 Dec 2018 02:19:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:19:34 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2349a8a7f7bdda0cb09368e8145f2e6cdfab26381349afa12e6f435bf8c5effc`  
		Last Modified: Tue, 11 Sep 2018 22:46:26 GMT  
		Size: 11.7 MB (11737197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bdf8f8f443b73db4ead07229e290dde51e2aea4d9bb5f17e750956e8d2b60ea`  
		Last Modified: Tue, 18 Dec 2018 02:20:29 GMT  
		Size: 12.2 KB (12248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc344f9c1d2758bcd8967a9ad2daf20c4663776ce46798b362ab1deb608d960f`  
		Last Modified: Tue, 18 Dec 2018 02:20:29 GMT  
		Size: 11.9 KB (11904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4f83906b065a7453a38628dcf8180d63554530b636bbcaad4aadc271aee9b9`  
		Last Modified: Tue, 18 Dec 2018 02:20:29 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7`

```console
$ docker pull chronograf@sha256:f0c0d71056721d391c7799b9b14f4001e664387cae46c7693189258cae8b59d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.7` - linux; amd64

```console
$ docker pull chronograf@sha256:20d6d0d029c44566ab9fa3fe9ff362d569ec07d3b0e257e80b43776a79a586ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54935916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce9994397ed4fe4b5551bc6950ca66ffb1e611855eaa2d2659104e6c48d7874`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:13:46 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 18 Dec 2018 02:19:37 GMT
ENV CHRONOGRAF_VERSION=1.7.5
# Tue, 18 Dec 2018 02:19:50 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 02:19:50 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:19:50 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:19:50 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:19:51 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:19:51 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 02:19:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:19:51 GMT
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
	-	`sha256:d71b3c173ad373e6ea6322d3007dd546d0998d9707cd081b8bbb078d88038c7e`  
		Last Modified: Tue, 18 Dec 2018 02:20:40 GMT  
		Size: 27.9 MB (27921831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8055903b0af6380b145b38cfc785a9578ea0a8a3535f118efaaf125e0e7990`  
		Last Modified: Tue, 18 Dec 2018 02:20:35 GMT  
		Size: 12.3 KB (12253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1118abd5d659cdaaa8f5be77af7905a33547c759d62669852dd6ca51995fb50`  
		Last Modified: Tue, 18 Dec 2018 02:20:35 GMT  
		Size: 11.9 KB (11913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f119b2fe7794ed868bbe1b433c6a048ca06490ef27ed4a12128fb09e979683`  
		Last Modified: Tue, 18 Dec 2018 02:20:35 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:2a164f3344091ab4cb6e0447912a212499e591fb8a43330f5f012c28e324f8be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44501030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2ca819522c21e3c6110af0f0514856c46d8ce2aafa243e30e22b8afb38a4fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:49 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 14 Dec 2018 12:58:15 GMT
ENV CHRONOGRAF_VERSION=1.7.4
# Fri, 14 Dec 2018 12:58:41 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Dec 2018 12:58:50 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 14 Dec 2018 12:58:51 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 14 Dec 2018 12:58:51 GMT
EXPOSE 8888/tcp
# Fri, 14 Dec 2018 12:58:52 GMT
VOLUME [/var/lib/chronograf]
# Fri, 14 Dec 2018 12:58:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 14 Dec 2018 12:58:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 12:58:53 GMT
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
	-	`sha256:d5e57bf74c93ecd4cbd891f35f5e5676d379ed2e199928d29a70a66c79566ee5`  
		Last Modified: Fri, 14 Dec 2018 12:59:29 GMT  
		Size: 21.3 MB (21329397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d49272f030fca45018722e29dfa07acfb22549f641e87e725058d41e9d19ea4`  
		Last Modified: Fri, 14 Dec 2018 12:59:23 GMT  
		Size: 12.3 KB (12253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b33592c1a04e0be0e2232df88086da9cbf2a58de16eb5cc5e8d96888ba4e72`  
		Last Modified: Fri, 14 Dec 2018 12:59:23 GMT  
		Size: 11.9 KB (11913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be35ab40f3ce836254f8e6a7df4647410e0b4235d9804b93b5b8ff2032851fe`  
		Last Modified: Fri, 14 Dec 2018 12:59:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:e6b4498eb6191657be1daa59b4947018ee752a8f53052c78285d7768de1b11e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50405829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc734baf8da057c3bbf11bebdf62345c8f2b39e6f7588eb7173c34bfda978c18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:55:35 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 18 Dec 2018 09:40:37 GMT
ENV CHRONOGRAF_VERSION=1.7.5
# Tue, 18 Dec 2018 09:41:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 09:41:21 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 09:41:22 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 09:41:22 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 09:41:23 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 09:41:23 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 09:41:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 09:41:25 GMT
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
	-	`sha256:7faaee0e2f4efa34f4d30ebb6a89c664b8b640a449b4fed3f50ff719e6a0dbfc`  
		Last Modified: Tue, 18 Dec 2018 09:42:11 GMT  
		Size: 26.0 MB (25971627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d4dde66993354bd8a6a200ef7359381b7ff4e435b4cb25c7e153671f33a046`  
		Last Modified: Tue, 18 Dec 2018 09:42:02 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00128d00582cbd1831a0d050fcdc377a1472d6996760b8a16d21d1bf80674417`  
		Last Modified: Tue, 18 Dec 2018 09:42:02 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985c65fb86b182cfb3df55ec766dace874484c3ac59f5aa3cdca4a34e3918c75`  
		Last Modified: Tue, 18 Dec 2018 09:42:02 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7.5`

```console
$ docker pull chronograf@sha256:f0c0d71056721d391c7799b9b14f4001e664387cae46c7693189258cae8b59d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.7.5` - linux; amd64

```console
$ docker pull chronograf@sha256:20d6d0d029c44566ab9fa3fe9ff362d569ec07d3b0e257e80b43776a79a586ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54935916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce9994397ed4fe4b5551bc6950ca66ffb1e611855eaa2d2659104e6c48d7874`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:13:46 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 18 Dec 2018 02:19:37 GMT
ENV CHRONOGRAF_VERSION=1.7.5
# Tue, 18 Dec 2018 02:19:50 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 02:19:50 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:19:50 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:19:50 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:19:51 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:19:51 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 02:19:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:19:51 GMT
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
	-	`sha256:d71b3c173ad373e6ea6322d3007dd546d0998d9707cd081b8bbb078d88038c7e`  
		Last Modified: Tue, 18 Dec 2018 02:20:40 GMT  
		Size: 27.9 MB (27921831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8055903b0af6380b145b38cfc785a9578ea0a8a3535f118efaaf125e0e7990`  
		Last Modified: Tue, 18 Dec 2018 02:20:35 GMT  
		Size: 12.3 KB (12253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1118abd5d659cdaaa8f5be77af7905a33547c759d62669852dd6ca51995fb50`  
		Last Modified: Tue, 18 Dec 2018 02:20:35 GMT  
		Size: 11.9 KB (11913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f119b2fe7794ed868bbe1b433c6a048ca06490ef27ed4a12128fb09e979683`  
		Last Modified: Tue, 18 Dec 2018 02:20:35 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7.5` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:2a164f3344091ab4cb6e0447912a212499e591fb8a43330f5f012c28e324f8be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44501030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2ca819522c21e3c6110af0f0514856c46d8ce2aafa243e30e22b8afb38a4fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:49 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 14 Dec 2018 12:58:15 GMT
ENV CHRONOGRAF_VERSION=1.7.4
# Fri, 14 Dec 2018 12:58:41 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Dec 2018 12:58:50 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 14 Dec 2018 12:58:51 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 14 Dec 2018 12:58:51 GMT
EXPOSE 8888/tcp
# Fri, 14 Dec 2018 12:58:52 GMT
VOLUME [/var/lib/chronograf]
# Fri, 14 Dec 2018 12:58:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 14 Dec 2018 12:58:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 12:58:53 GMT
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
	-	`sha256:d5e57bf74c93ecd4cbd891f35f5e5676d379ed2e199928d29a70a66c79566ee5`  
		Last Modified: Fri, 14 Dec 2018 12:59:29 GMT  
		Size: 21.3 MB (21329397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d49272f030fca45018722e29dfa07acfb22549f641e87e725058d41e9d19ea4`  
		Last Modified: Fri, 14 Dec 2018 12:59:23 GMT  
		Size: 12.3 KB (12253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b33592c1a04e0be0e2232df88086da9cbf2a58de16eb5cc5e8d96888ba4e72`  
		Last Modified: Fri, 14 Dec 2018 12:59:23 GMT  
		Size: 11.9 KB (11913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be35ab40f3ce836254f8e6a7df4647410e0b4235d9804b93b5b8ff2032851fe`  
		Last Modified: Fri, 14 Dec 2018 12:59:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7.5` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:e6b4498eb6191657be1daa59b4947018ee752a8f53052c78285d7768de1b11e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50405829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc734baf8da057c3bbf11bebdf62345c8f2b39e6f7588eb7173c34bfda978c18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:55:35 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 18 Dec 2018 09:40:37 GMT
ENV CHRONOGRAF_VERSION=1.7.5
# Tue, 18 Dec 2018 09:41:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 09:41:21 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 09:41:22 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 09:41:22 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 09:41:23 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 09:41:23 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 09:41:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 09:41:25 GMT
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
	-	`sha256:7faaee0e2f4efa34f4d30ebb6a89c664b8b640a449b4fed3f50ff719e6a0dbfc`  
		Last Modified: Tue, 18 Dec 2018 09:42:11 GMT  
		Size: 26.0 MB (25971627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d4dde66993354bd8a6a200ef7359381b7ff4e435b4cb25c7e153671f33a046`  
		Last Modified: Tue, 18 Dec 2018 09:42:02 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00128d00582cbd1831a0d050fcdc377a1472d6996760b8a16d21d1bf80674417`  
		Last Modified: Tue, 18 Dec 2018 09:42:02 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985c65fb86b182cfb3df55ec766dace874484c3ac59f5aa3cdca4a34e3918c75`  
		Last Modified: Tue, 18 Dec 2018 09:42:02 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7.5-alpine`

```console
$ docker pull chronograf@sha256:d7f76b4e97aa25323c632e80fb0d74e8a6ca09657e149c5d34bbc68a16272b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.7.5-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:534818b2e6868ceec7fdde8fad20f8b196065a83d495083e631f036e14dc6198
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16382910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a589b969180e5df5da36d6ab86a65cc1b6410c13d7dbbf0bbd9b85d9e896ba91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 18 Dec 2018 02:19:55 GMT
ENV CHRONOGRAF_VERSION=1.7.5
# Tue, 18 Dec 2018 02:19:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Dec 2018 02:20:00 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:20:00 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:20:00 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:20:00 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:20:00 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Tue, 18 Dec 2018 02:20:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:20:01 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5deb8ec3300b1d69d7c61e51221705bb196a2fb0acef16b1b3c46b288665bba3`  
		Last Modified: Tue, 18 Dec 2018 02:20:48 GMT  
		Size: 14.0 MB (13990404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec02bf6296a578a5fdcf0a62a01fc9594f63adc939fe2291528fe7ffefb8722e`  
		Last Modified: Tue, 18 Dec 2018 02:20:46 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e113f22eea45b646cdfb9a6cb6a5b6de2bfe4695616cf67be54dae06df6352`  
		Last Modified: Tue, 18 Dec 2018 02:20:46 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9c178ce7515aa81fc75b10bfcd5127f45c911b227976f82da675f937861fe6`  
		Last Modified: Tue, 18 Dec 2018 02:20:46 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7-alpine`

```console
$ docker pull chronograf@sha256:d7f76b4e97aa25323c632e80fb0d74e8a6ca09657e149c5d34bbc68a16272b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.7-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:534818b2e6868ceec7fdde8fad20f8b196065a83d495083e631f036e14dc6198
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16382910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a589b969180e5df5da36d6ab86a65cc1b6410c13d7dbbf0bbd9b85d9e896ba91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 18 Dec 2018 02:19:55 GMT
ENV CHRONOGRAF_VERSION=1.7.5
# Tue, 18 Dec 2018 02:19:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Dec 2018 02:20:00 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:20:00 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:20:00 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:20:00 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:20:00 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Tue, 18 Dec 2018 02:20:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:20:01 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5deb8ec3300b1d69d7c61e51221705bb196a2fb0acef16b1b3c46b288665bba3`  
		Last Modified: Tue, 18 Dec 2018 02:20:48 GMT  
		Size: 14.0 MB (13990404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec02bf6296a578a5fdcf0a62a01fc9594f63adc939fe2291528fe7ffefb8722e`  
		Last Modified: Tue, 18 Dec 2018 02:20:46 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e113f22eea45b646cdfb9a6cb6a5b6de2bfe4695616cf67be54dae06df6352`  
		Last Modified: Tue, 18 Dec 2018 02:20:46 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9c178ce7515aa81fc75b10bfcd5127f45c911b227976f82da675f937861fe6`  
		Last Modified: Tue, 18 Dec 2018 02:20:46 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:d7f76b4e97aa25323c632e80fb0d74e8a6ca09657e149c5d34bbc68a16272b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:534818b2e6868ceec7fdde8fad20f8b196065a83d495083e631f036e14dc6198
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.4 MB (16382910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a589b969180e5df5da36d6ab86a65cc1b6410c13d7dbbf0bbd9b85d9e896ba91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 22:45:28 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 18 Dec 2018 02:19:55 GMT
ENV CHRONOGRAF_VERSION=1.7.5
# Tue, 18 Dec 2018 02:19:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 18 Dec 2018 02:20:00 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:20:00 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:20:00 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:20:00 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:20:00 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Tue, 18 Dec 2018 02:20:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:20:01 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f03c30403d647d96c4f523e09d3a5eed8d31da11d35c90ef78cc830b8f9746`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 351.3 KB (351286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5deb8ec3300b1d69d7c61e51221705bb196a2fb0acef16b1b3c46b288665bba3`  
		Last Modified: Tue, 18 Dec 2018 02:20:48 GMT  
		Size: 14.0 MB (13990404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec02bf6296a578a5fdcf0a62a01fc9594f63adc939fe2291528fe7ffefb8722e`  
		Last Modified: Tue, 18 Dec 2018 02:20:46 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e113f22eea45b646cdfb9a6cb6a5b6de2bfe4695616cf67be54dae06df6352`  
		Last Modified: Tue, 18 Dec 2018 02:20:46 GMT  
		Size: 11.9 KB (11895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9c178ce7515aa81fc75b10bfcd5127f45c911b227976f82da675f937861fe6`  
		Last Modified: Tue, 18 Dec 2018 02:20:46 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:f0c0d71056721d391c7799b9b14f4001e664387cae46c7693189258cae8b59d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:20d6d0d029c44566ab9fa3fe9ff362d569ec07d3b0e257e80b43776a79a586ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.9 MB (54935916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce9994397ed4fe4b5551bc6950ca66ffb1e611855eaa2d2659104e6c48d7874`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:13:46 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 18 Dec 2018 02:19:37 GMT
ENV CHRONOGRAF_VERSION=1.7.5
# Tue, 18 Dec 2018 02:19:50 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 02:19:50 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 02:19:50 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 02:19:50 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 02:19:51 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 02:19:51 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 02:19:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 02:19:51 GMT
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
	-	`sha256:d71b3c173ad373e6ea6322d3007dd546d0998d9707cd081b8bbb078d88038c7e`  
		Last Modified: Tue, 18 Dec 2018 02:20:40 GMT  
		Size: 27.9 MB (27921831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8055903b0af6380b145b38cfc785a9578ea0a8a3535f118efaaf125e0e7990`  
		Last Modified: Tue, 18 Dec 2018 02:20:35 GMT  
		Size: 12.3 KB (12253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1118abd5d659cdaaa8f5be77af7905a33547c759d62669852dd6ca51995fb50`  
		Last Modified: Tue, 18 Dec 2018 02:20:35 GMT  
		Size: 11.9 KB (11913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f119b2fe7794ed868bbe1b433c6a048ca06490ef27ed4a12128fb09e979683`  
		Last Modified: Tue, 18 Dec 2018 02:20:35 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:2a164f3344091ab4cb6e0447912a212499e591fb8a43330f5f012c28e324f8be
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44501030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf2ca819522c21e3c6110af0f0514856c46d8ce2aafa243e30e22b8afb38a4fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 13:09:32 GMT
ADD file:dbddf6cec329cf26640d0898aecbeff1c7a67bc245092317a47bfd07c1a49a2d in / 
# Fri, 16 Nov 2018 13:09:33 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:14:49 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 14 Dec 2018 12:58:15 GMT
ENV CHRONOGRAF_VERSION=1.7.4
# Fri, 14 Dec 2018 12:58:41 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Fri, 14 Dec 2018 12:58:50 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 14 Dec 2018 12:58:51 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 14 Dec 2018 12:58:51 GMT
EXPOSE 8888/tcp
# Fri, 14 Dec 2018 12:58:52 GMT
VOLUME [/var/lib/chronograf]
# Fri, 14 Dec 2018 12:58:52 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 14 Dec 2018 12:58:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 12:58:53 GMT
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
	-	`sha256:d5e57bf74c93ecd4cbd891f35f5e5676d379ed2e199928d29a70a66c79566ee5`  
		Last Modified: Fri, 14 Dec 2018 12:59:29 GMT  
		Size: 21.3 MB (21329397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d49272f030fca45018722e29dfa07acfb22549f641e87e725058d41e9d19ea4`  
		Last Modified: Fri, 14 Dec 2018 12:59:23 GMT  
		Size: 12.3 KB (12253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6b33592c1a04e0be0e2232df88086da9cbf2a58de16eb5cc5e8d96888ba4e72`  
		Last Modified: Fri, 14 Dec 2018 12:59:23 GMT  
		Size: 11.9 KB (11913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6be35ab40f3ce836254f8e6a7df4647410e0b4235d9804b93b5b8ff2032851fe`  
		Last Modified: Fri, 14 Dec 2018 12:59:23 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:e6b4498eb6191657be1daa59b4947018ee752a8f53052c78285d7768de1b11e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50405829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc734baf8da057c3bbf11bebdf62345c8f2b39e6f7588eb7173c34bfda978c18`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:55:35 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 18 Dec 2018 09:40:37 GMT
ENV CHRONOGRAF_VERSION=1.7.5
# Tue, 18 Dec 2018 09:41:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 18 Dec 2018 09:41:21 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 18 Dec 2018 09:41:22 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 18 Dec 2018 09:41:22 GMT
EXPOSE 8888
# Tue, 18 Dec 2018 09:41:23 GMT
VOLUME [/var/lib/chronograf]
# Tue, 18 Dec 2018 09:41:23 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 18 Dec 2018 09:41:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 18 Dec 2018 09:41:25 GMT
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
	-	`sha256:7faaee0e2f4efa34f4d30ebb6a89c664b8b640a449b4fed3f50ff719e6a0dbfc`  
		Last Modified: Tue, 18 Dec 2018 09:42:11 GMT  
		Size: 26.0 MB (25971627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d4dde66993354bd8a6a200ef7359381b7ff4e435b4cb25c7e153671f33a046`  
		Last Modified: Tue, 18 Dec 2018 09:42:02 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00128d00582cbd1831a0d050fcdc377a1472d6996760b8a16d21d1bf80674417`  
		Last Modified: Tue, 18 Dec 2018 09:42:02 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985c65fb86b182cfb3df55ec766dace874484c3ac59f5aa3cdca4a34e3918c75`  
		Last Modified: Tue, 18 Dec 2018 09:42:02 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
