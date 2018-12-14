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
-	[`chronograf:1.7.4`](#chronograf174)
-	[`chronograf:1.7.4-alpine`](#chronograf174-alpine)
-	[`chronograf:1.7-alpine`](#chronograf17-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.5`

```console
$ docker pull chronograf@sha256:4998776b65818c4643f4ce19e47edd2fb54b5b4f81c7ac5ac858f59d39a57d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5` - linux; amd64

```console
$ docker pull chronograf@sha256:27e5260ab7610425bfc8a7624ccf32c92cb7bd20f1ed3a32603537e4eb460409
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49047578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457f227f3178a8cd887d45575ce48a49a5f92bf332ecf2ab0e7456e3d2d52c0e`
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
# Fri, 16 Nov 2018 11:13:59 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 16 Nov 2018 11:13:59 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 16 Nov 2018 11:14:00 GMT
EXPOSE 8888/tcp
# Fri, 16 Nov 2018 11:14:00 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Nov 2018 11:14:00 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 16 Nov 2018 11:14:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 11:14:01 GMT
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
	-	`sha256:772bcbd371ecc5b7330f4714b8dd1dd2720407bb663af4542176fc1fc8d03427`  
		Last Modified: Fri, 16 Nov 2018 11:18:31 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704998c3fbc3b96110abcfb497ab8736f23382df0aeb89965b199526a2161b71`  
		Last Modified: Fri, 16 Nov 2018 11:18:31 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee1c1ae48f7cd0163dd2e192ddb99c327a63c45eba79409a46c723247ed4d1c`  
		Last Modified: Fri, 16 Nov 2018 11:18:31 GMT  
		Size: 239.0 B  
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
$ docker pull chronograf@sha256:6a226d915c7a4d9e13d4f873582cffcd2e69a1a114ac37d983f936a6dc625217
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45081488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce37ce6973d898117d2e5dcebe0f4a3b74ab1ae2ffcef041fbef361f5e0a63e`
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
# Sat, 17 Nov 2018 02:56:12 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 17 Nov 2018 02:56:12 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 17 Nov 2018 02:56:13 GMT
EXPOSE 8888/tcp
# Sat, 17 Nov 2018 02:56:14 GMT
VOLUME [/var/lib/chronograf]
# Sat, 17 Nov 2018 02:56:15 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 17 Nov 2018 02:56:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 02:56:16 GMT
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
	-	`sha256:f701670fc77679ecd43842c0517e0cd6fe3ca92095faa46fe29a3fd8f008ae02`  
		Last Modified: Sat, 17 Nov 2018 02:59:13 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a828505ec57d41552944be4e5998362163ab66b30ba51c1113a556fa681f231`  
		Last Modified: Sat, 17 Nov 2018 02:59:13 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667e655578a2b4ea615416d6970a41ec61efa0a8010d88f89e0fdc75e568fead`  
		Last Modified: Sat, 17 Nov 2018 02:59:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0`

```console
$ docker pull chronograf@sha256:4998776b65818c4643f4ce19e47edd2fb54b5b4f81c7ac5ac858f59d39a57d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0` - linux; amd64

```console
$ docker pull chronograf@sha256:27e5260ab7610425bfc8a7624ccf32c92cb7bd20f1ed3a32603537e4eb460409
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49047578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457f227f3178a8cd887d45575ce48a49a5f92bf332ecf2ab0e7456e3d2d52c0e`
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
# Fri, 16 Nov 2018 11:13:59 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 16 Nov 2018 11:13:59 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 16 Nov 2018 11:14:00 GMT
EXPOSE 8888/tcp
# Fri, 16 Nov 2018 11:14:00 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Nov 2018 11:14:00 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 16 Nov 2018 11:14:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 11:14:01 GMT
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
	-	`sha256:772bcbd371ecc5b7330f4714b8dd1dd2720407bb663af4542176fc1fc8d03427`  
		Last Modified: Fri, 16 Nov 2018 11:18:31 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704998c3fbc3b96110abcfb497ab8736f23382df0aeb89965b199526a2161b71`  
		Last Modified: Fri, 16 Nov 2018 11:18:31 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee1c1ae48f7cd0163dd2e192ddb99c327a63c45eba79409a46c723247ed4d1c`  
		Last Modified: Fri, 16 Nov 2018 11:18:31 GMT  
		Size: 239.0 B  
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
$ docker pull chronograf@sha256:6a226d915c7a4d9e13d4f873582cffcd2e69a1a114ac37d983f936a6dc625217
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45081488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce37ce6973d898117d2e5dcebe0f4a3b74ab1ae2ffcef041fbef361f5e0a63e`
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
# Sat, 17 Nov 2018 02:56:12 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 17 Nov 2018 02:56:12 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 17 Nov 2018 02:56:13 GMT
EXPOSE 8888/tcp
# Sat, 17 Nov 2018 02:56:14 GMT
VOLUME [/var/lib/chronograf]
# Sat, 17 Nov 2018 02:56:15 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 17 Nov 2018 02:56:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 02:56:16 GMT
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
	-	`sha256:f701670fc77679ecd43842c0517e0cd6fe3ca92095faa46fe29a3fd8f008ae02`  
		Last Modified: Sat, 17 Nov 2018 02:59:13 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a828505ec57d41552944be4e5998362163ab66b30ba51c1113a556fa681f231`  
		Last Modified: Sat, 17 Nov 2018 02:59:13 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667e655578a2b4ea615416d6970a41ec61efa0a8010d88f89e0fdc75e568fead`  
		Last Modified: Sat, 17 Nov 2018 02:59:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1`

```console
$ docker pull chronograf@sha256:4998776b65818c4643f4ce19e47edd2fb54b5b4f81c7ac5ac858f59d39a57d25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0.1` - linux; amd64

```console
$ docker pull chronograf@sha256:27e5260ab7610425bfc8a7624ccf32c92cb7bd20f1ed3a32603537e4eb460409
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 MB (49047578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:457f227f3178a8cd887d45575ce48a49a5f92bf332ecf2ab0e7456e3d2d52c0e`
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
# Fri, 16 Nov 2018 11:13:59 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 16 Nov 2018 11:13:59 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 16 Nov 2018 11:14:00 GMT
EXPOSE 8888/tcp
# Fri, 16 Nov 2018 11:14:00 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Nov 2018 11:14:00 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 16 Nov 2018 11:14:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 11:14:01 GMT
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
	-	`sha256:772bcbd371ecc5b7330f4714b8dd1dd2720407bb663af4542176fc1fc8d03427`  
		Last Modified: Fri, 16 Nov 2018 11:18:31 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:704998c3fbc3b96110abcfb497ab8736f23382df0aeb89965b199526a2161b71`  
		Last Modified: Fri, 16 Nov 2018 11:18:31 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee1c1ae48f7cd0163dd2e192ddb99c327a63c45eba79409a46c723247ed4d1c`  
		Last Modified: Fri, 16 Nov 2018 11:18:31 GMT  
		Size: 239.0 B  
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
$ docker pull chronograf@sha256:6a226d915c7a4d9e13d4f873582cffcd2e69a1a114ac37d983f936a6dc625217
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45081488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce37ce6973d898117d2e5dcebe0f4a3b74ab1ae2ffcef041fbef361f5e0a63e`
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
# Sat, 17 Nov 2018 02:56:12 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 17 Nov 2018 02:56:12 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 17 Nov 2018 02:56:13 GMT
EXPOSE 8888/tcp
# Sat, 17 Nov 2018 02:56:14 GMT
VOLUME [/var/lib/chronograf]
# Sat, 17 Nov 2018 02:56:15 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 17 Nov 2018 02:56:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 02:56:16 GMT
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
	-	`sha256:f701670fc77679ecd43842c0517e0cd6fe3ca92095faa46fe29a3fd8f008ae02`  
		Last Modified: Sat, 17 Nov 2018 02:59:13 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a828505ec57d41552944be4e5998362163ab66b30ba51c1113a556fa681f231`  
		Last Modified: Sat, 17 Nov 2018 02:59:13 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667e655578a2b4ea615416d6970a41ec61efa0a8010d88f89e0fdc75e568fead`  
		Last Modified: Sat, 17 Nov 2018 02:59:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1-alpine`

```console
$ docker pull chronograf@sha256:f50fe4a1084c0d8ff32e00ee496236fcf0b769bc5c11c8140299d8555781dddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0.1-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:a95cc411c2bbce343ad840bac61fc857ee63ce990bd1925fb04cc1bbdb94a057
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14016171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4636e377636f3e727186f31b5c01b525e79557e1036c5ae643f439e0e9d26546`
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
# Tue, 11 Sep 2018 22:45:34 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 11 Sep 2018 22:45:34 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 11 Sep 2018 22:45:34 GMT
EXPOSE 8888/tcp
# Tue, 11 Sep 2018 22:45:34 GMT
VOLUME [/var/lib/chronograf]
# Tue, 11 Sep 2018 22:45:35 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 11 Sep 2018 22:45:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 22:45:35 GMT
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
	-	`sha256:ab711b9036fc3a420ba3097991c4e2cba9d249cde5ab51e2fe261b392ee12070`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ea867de68da26d154b8404506d054687ab338d3e5ecb10c72ff8e9b72c0583`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe6902ff501ead9067f51b5805e574a81303f6b269e3c23fbe3d805e8c44435`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0-alpine`

```console
$ docker pull chronograf@sha256:f50fe4a1084c0d8ff32e00ee496236fcf0b769bc5c11c8140299d8555781dddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:a95cc411c2bbce343ad840bac61fc857ee63ce990bd1925fb04cc1bbdb94a057
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14016171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4636e377636f3e727186f31b5c01b525e79557e1036c5ae643f439e0e9d26546`
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
# Tue, 11 Sep 2018 22:45:34 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 11 Sep 2018 22:45:34 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 11 Sep 2018 22:45:34 GMT
EXPOSE 8888/tcp
# Tue, 11 Sep 2018 22:45:34 GMT
VOLUME [/var/lib/chronograf]
# Tue, 11 Sep 2018 22:45:35 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 11 Sep 2018 22:45:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 22:45:35 GMT
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
	-	`sha256:ab711b9036fc3a420ba3097991c4e2cba9d249cde5ab51e2fe261b392ee12070`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ea867de68da26d154b8404506d054687ab338d3e5ecb10c72ff8e9b72c0583`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe6902ff501ead9067f51b5805e574a81303f6b269e3c23fbe3d805e8c44435`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5-alpine`

```console
$ docker pull chronograf@sha256:f50fe4a1084c0d8ff32e00ee496236fcf0b769bc5c11c8140299d8555781dddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:a95cc411c2bbce343ad840bac61fc857ee63ce990bd1925fb04cc1bbdb94a057
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.0 MB (14016171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4636e377636f3e727186f31b5c01b525e79557e1036c5ae643f439e0e9d26546`
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
# Tue, 11 Sep 2018 22:45:34 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 11 Sep 2018 22:45:34 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 11 Sep 2018 22:45:34 GMT
EXPOSE 8888/tcp
# Tue, 11 Sep 2018 22:45:34 GMT
VOLUME [/var/lib/chronograf]
# Tue, 11 Sep 2018 22:45:35 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 11 Sep 2018 22:45:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 22:45:35 GMT
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
	-	`sha256:ab711b9036fc3a420ba3097991c4e2cba9d249cde5ab51e2fe261b392ee12070`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 12.2 KB (12241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92ea867de68da26d154b8404506d054687ab338d3e5ecb10c72ff8e9b72c0583`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 11.9 KB (11898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebe6902ff501ead9067f51b5805e574a81303f6b269e3c23fbe3d805e8c44435`  
		Last Modified: Tue, 11 Sep 2018 22:46:04 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6`

```console
$ docker pull chronograf@sha256:1843c53d857692708be48d86f10dcec3212e499b2b7cdf3c993bae3905614ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6` - linux; amd64

```console
$ docker pull chronograf@sha256:7889daa228b1187cd390b188ba98c861db07c55adbbbfe0942062697819f0f74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49092135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:838c254c25465ef794bd85e1f19d2f7fab7843d6f36c517a673d7972c18ab844`
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
# Fri, 16 Nov 2018 11:15:59 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 16 Nov 2018 11:15:59 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 16 Nov 2018 11:15:59 GMT
EXPOSE 8888/tcp
# Fri, 16 Nov 2018 11:15:59 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Nov 2018 11:16:00 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 16 Nov 2018 11:16:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 11:16:00 GMT
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
	-	`sha256:f72b0fa62ea9b1bf64cf35b3f5e19bdfe55bd0ef907c0a45665140718a75c3aa`  
		Last Modified: Fri, 16 Nov 2018 11:19:22 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65803e0339a111e62408f55ad4e78de3aad63d5059d02a166a21ff4363a7eb76`  
		Last Modified: Fri, 16 Nov 2018 11:19:22 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b786a21e8f047c4cad120900fe776553ff226d605ff06f40ac9b62fefc3725b`  
		Last Modified: Fri, 16 Nov 2018 11:19:22 GMT  
		Size: 239.0 B  
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
$ docker pull chronograf@sha256:e68e6f3ddb854fe12234c2394bbc1c81f71a5239d8de1d4a43e5e13620659f15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45142689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb5866f991560da5bdf87ba75b696e8629d0033afdeeeb128561553f40e94c2`
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
# Sat, 17 Nov 2018 02:57:25 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 17 Nov 2018 02:57:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 17 Nov 2018 02:57:27 GMT
EXPOSE 8888/tcp
# Sat, 17 Nov 2018 02:57:28 GMT
VOLUME [/var/lib/chronograf]
# Sat, 17 Nov 2018 02:57:29 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 17 Nov 2018 02:57:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 02:57:30 GMT
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
	-	`sha256:c27516b17108e1b9ffd0f9f23c2e933bd9f9f26100247afc9193f754ef57968a`  
		Last Modified: Sat, 17 Nov 2018 03:00:44 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429da8b6d297361b819b44264e5f40395ddec50fcd9c58f29fba564b4df76903`  
		Last Modified: Sat, 17 Nov 2018 03:00:44 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424ceb5197d0ec79fb68b08d409151ffe9d498a4b75c981a5abfe36ee17d93ec`  
		Last Modified: Sat, 17 Nov 2018 03:00:44 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.2`

```console
$ docker pull chronograf@sha256:1843c53d857692708be48d86f10dcec3212e499b2b7cdf3c993bae3905614ade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6.2` - linux; amd64

```console
$ docker pull chronograf@sha256:7889daa228b1187cd390b188ba98c861db07c55adbbbfe0942062697819f0f74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49092135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:838c254c25465ef794bd85e1f19d2f7fab7843d6f36c517a673d7972c18ab844`
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
# Fri, 16 Nov 2018 11:15:59 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Fri, 16 Nov 2018 11:15:59 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Fri, 16 Nov 2018 11:15:59 GMT
EXPOSE 8888/tcp
# Fri, 16 Nov 2018 11:15:59 GMT
VOLUME [/var/lib/chronograf]
# Fri, 16 Nov 2018 11:16:00 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Fri, 16 Nov 2018 11:16:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 11:16:00 GMT
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
	-	`sha256:f72b0fa62ea9b1bf64cf35b3f5e19bdfe55bd0ef907c0a45665140718a75c3aa`  
		Last Modified: Fri, 16 Nov 2018 11:19:22 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65803e0339a111e62408f55ad4e78de3aad63d5059d02a166a21ff4363a7eb76`  
		Last Modified: Fri, 16 Nov 2018 11:19:22 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b786a21e8f047c4cad120900fe776553ff226d605ff06f40ac9b62fefc3725b`  
		Last Modified: Fri, 16 Nov 2018 11:19:22 GMT  
		Size: 239.0 B  
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
$ docker pull chronograf@sha256:e68e6f3ddb854fe12234c2394bbc1c81f71a5239d8de1d4a43e5e13620659f15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45142689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6eb5866f991560da5bdf87ba75b696e8629d0033afdeeeb128561553f40e94c2`
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
# Sat, 17 Nov 2018 02:57:25 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 17 Nov 2018 02:57:26 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 17 Nov 2018 02:57:27 GMT
EXPOSE 8888/tcp
# Sat, 17 Nov 2018 02:57:28 GMT
VOLUME [/var/lib/chronograf]
# Sat, 17 Nov 2018 02:57:29 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 17 Nov 2018 02:57:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 02:57:30 GMT
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
	-	`sha256:c27516b17108e1b9ffd0f9f23c2e933bd9f9f26100247afc9193f754ef57968a`  
		Last Modified: Sat, 17 Nov 2018 03:00:44 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:429da8b6d297361b819b44264e5f40395ddec50fcd9c58f29fba564b4df76903`  
		Last Modified: Sat, 17 Nov 2018 03:00:44 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424ceb5197d0ec79fb68b08d409151ffe9d498a4b75c981a5abfe36ee17d93ec`  
		Last Modified: Sat, 17 Nov 2018 03:00:44 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.2-alpine`

```console
$ docker pull chronograf@sha256:b9c21b620f623300ed9f3a1795d3c78396d4f2203b8792cc6d948a7baec5d1f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6.2-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:bc2c9c06b9aa8aa2dfd062414a1848d489ab7b193169b4fd0bbd0b62fd3f433d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14129708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b257f70b056a3a25e1904a7a6e6c6cbefb0489f8f52096e8880754cf40080224`
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
# Tue, 11 Sep 2018 22:45:51 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 11 Sep 2018 22:45:51 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 11 Sep 2018 22:45:51 GMT
EXPOSE 8888/tcp
# Tue, 11 Sep 2018 22:45:51 GMT
VOLUME [/var/lib/chronograf]
# Tue, 11 Sep 2018 22:45:52 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 11 Sep 2018 22:45:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 22:45:52 GMT
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
	-	`sha256:d32190bf4d91cd0df282de75348fb6f823d05dedb6ce78fa6f8a69f239c2803b`  
		Last Modified: Tue, 11 Sep 2018 22:46:23 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13155af12dbcb1433aa3b22a1b82cd329081a93de9cd81e0c29460cd04873c79`  
		Last Modified: Tue, 11 Sep 2018 22:46:25 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84686f6b89be33c683dd50ad1c14aab8c459587363059a9b34f835038e7883b`  
		Last Modified: Tue, 11 Sep 2018 22:46:23 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6-alpine`

```console
$ docker pull chronograf@sha256:b9c21b620f623300ed9f3a1795d3c78396d4f2203b8792cc6d948a7baec5d1f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:bc2c9c06b9aa8aa2dfd062414a1848d489ab7b193169b4fd0bbd0b62fd3f433d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.1 MB (14129708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b257f70b056a3a25e1904a7a6e6c6cbefb0489f8f52096e8880754cf40080224`
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
# Tue, 11 Sep 2018 22:45:51 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Tue, 11 Sep 2018 22:45:51 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Tue, 11 Sep 2018 22:45:51 GMT
EXPOSE 8888/tcp
# Tue, 11 Sep 2018 22:45:51 GMT
VOLUME [/var/lib/chronograf]
# Tue, 11 Sep 2018 22:45:52 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Tue, 11 Sep 2018 22:45:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 22:45:52 GMT
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
	-	`sha256:d32190bf4d91cd0df282de75348fb6f823d05dedb6ce78fa6f8a69f239c2803b`  
		Last Modified: Tue, 11 Sep 2018 22:46:23 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13155af12dbcb1433aa3b22a1b82cd329081a93de9cd81e0c29460cd04873c79`  
		Last Modified: Tue, 11 Sep 2018 22:46:25 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84686f6b89be33c683dd50ad1c14aab8c459587363059a9b34f835038e7883b`  
		Last Modified: Tue, 11 Sep 2018 22:46:23 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7`

```console
$ docker pull chronograf@sha256:b07b27a14a0549391394456b083d9e8402255ba8a7fb47972ecbd66b0f41dd48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.7` - linux; amd64

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

### `chronograf:1.7` - linux; arm variant v7

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

### `chronograf:1.7` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6f4130227c731fd0e7046a6d854539bf40e097084cefbd8647f00f7bb97b3f0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45956278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5946fba702eab8e240d021e1e4c19e49b48c7b367dc38578ac3246ec9f3e19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:55:35 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 17 Nov 2018 02:57:49 GMT
ENV CHRONOGRAF_VERSION=1.7.3
# Sat, 17 Nov 2018 02:58:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 02:58:42 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 17 Nov 2018 02:58:43 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 17 Nov 2018 02:58:44 GMT
EXPOSE 8888/tcp
# Sat, 17 Nov 2018 02:58:45 GMT
VOLUME [/var/lib/chronograf]
# Sat, 17 Nov 2018 02:58:46 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 17 Nov 2018 02:58:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 02:58:48 GMT
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
	-	`sha256:706ffbdc1cd64031810e2b41778cb5b15614d843e7ae6dd1ec7ad0fe3f880795`  
		Last Modified: Sat, 17 Nov 2018 03:01:39 GMT  
		Size: 21.5 MB (21522079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d09f05c778e1a77b65e5c1d7e82ea0f27bd9d066c4de90ece852603e3cbadd`  
		Last Modified: Sat, 17 Nov 2018 03:01:32 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9966733b6503c407b672a68da19afec9a33963ecfc28a8ef0963bab3ef338560`  
		Last Modified: Sat, 17 Nov 2018 03:01:31 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f8ef228e0dd538322c003466f278be5af8cde76416fa307461bb2981ce2c40`  
		Last Modified: Sat, 17 Nov 2018 03:01:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7.4`

```console
$ docker pull chronograf@sha256:b07b27a14a0549391394456b083d9e8402255ba8a7fb47972ecbd66b0f41dd48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.7.4` - linux; amd64

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

### `chronograf:1.7.4` - linux; arm variant v7

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

### `chronograf:1.7.4` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:6f4130227c731fd0e7046a6d854539bf40e097084cefbd8647f00f7bb97b3f0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45956278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5946fba702eab8e240d021e1e4c19e49b48c7b367dc38578ac3246ec9f3e19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:55:35 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 17 Nov 2018 02:57:49 GMT
ENV CHRONOGRAF_VERSION=1.7.3
# Sat, 17 Nov 2018 02:58:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 02:58:42 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 17 Nov 2018 02:58:43 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 17 Nov 2018 02:58:44 GMT
EXPOSE 8888/tcp
# Sat, 17 Nov 2018 02:58:45 GMT
VOLUME [/var/lib/chronograf]
# Sat, 17 Nov 2018 02:58:46 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 17 Nov 2018 02:58:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 02:58:48 GMT
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
	-	`sha256:706ffbdc1cd64031810e2b41778cb5b15614d843e7ae6dd1ec7ad0fe3f880795`  
		Last Modified: Sat, 17 Nov 2018 03:01:39 GMT  
		Size: 21.5 MB (21522079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d09f05c778e1a77b65e5c1d7e82ea0f27bd9d066c4de90ece852603e3cbadd`  
		Last Modified: Sat, 17 Nov 2018 03:01:32 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9966733b6503c407b672a68da19afec9a33963ecfc28a8ef0963bab3ef338560`  
		Last Modified: Sat, 17 Nov 2018 03:01:31 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f8ef228e0dd538322c003466f278be5af8cde76416fa307461bb2981ce2c40`  
		Last Modified: Sat, 17 Nov 2018 03:01:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7.4-alpine`

```console
$ docker pull chronograf@sha256:36a1cf539558e2ba8b24da35c54a39176757b67579ae4fef4eec5f8564c9ce94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.7.4-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:5a481caeaa82022ecab91bb617569b7278e965a21160613f8359431cd8b1311e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14630873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd08ad0392a4f08539127d46b1a81afaa08907da5950f100a8be01f90b88bac`
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
# Thu, 13 Dec 2018 23:22:50 GMT
ENV CHRONOGRAF_VERSION=1.7.4
# Thu, 13 Dec 2018 23:22:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 13 Dec 2018 23:22:55 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 13 Dec 2018 23:22:55 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 13 Dec 2018 23:22:56 GMT
EXPOSE 8888/tcp
# Thu, 13 Dec 2018 23:22:56 GMT
VOLUME [/var/lib/chronograf]
# Thu, 13 Dec 2018 23:22:56 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 13 Dec 2018 23:22:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Dec 2018 23:22:57 GMT
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
	-	`sha256:3a31f0f522ac3b44c4a479e43304d32ff737c63a5c3ef25dc3cd4808c4e1c671`  
		Last Modified: Thu, 13 Dec 2018 23:25:11 GMT  
		Size: 12.2 MB (12238359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f30fcc95d2e8879ef07d29a487a419a9337e76f0d57f7c738e8900dbd722dcf`  
		Last Modified: Thu, 13 Dec 2018 23:25:08 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968b23849ec2c7b4c38a8b9d85c405fd5a11326fde7b3ddf51ce2d83f8c19d7e`  
		Last Modified: Thu, 13 Dec 2018 23:25:08 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923f2249fe087381f2dadbbc09a7877c11fd77b012a1da15c74316eef2ecd0ef`  
		Last Modified: Thu, 13 Dec 2018 23:25:09 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7-alpine`

```console
$ docker pull chronograf@sha256:36a1cf539558e2ba8b24da35c54a39176757b67579ae4fef4eec5f8564c9ce94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.7-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:5a481caeaa82022ecab91bb617569b7278e965a21160613f8359431cd8b1311e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14630873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd08ad0392a4f08539127d46b1a81afaa08907da5950f100a8be01f90b88bac`
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
# Thu, 13 Dec 2018 23:22:50 GMT
ENV CHRONOGRAF_VERSION=1.7.4
# Thu, 13 Dec 2018 23:22:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 13 Dec 2018 23:22:55 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 13 Dec 2018 23:22:55 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 13 Dec 2018 23:22:56 GMT
EXPOSE 8888/tcp
# Thu, 13 Dec 2018 23:22:56 GMT
VOLUME [/var/lib/chronograf]
# Thu, 13 Dec 2018 23:22:56 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 13 Dec 2018 23:22:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Dec 2018 23:22:57 GMT
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
	-	`sha256:3a31f0f522ac3b44c4a479e43304d32ff737c63a5c3ef25dc3cd4808c4e1c671`  
		Last Modified: Thu, 13 Dec 2018 23:25:11 GMT  
		Size: 12.2 MB (12238359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f30fcc95d2e8879ef07d29a487a419a9337e76f0d57f7c738e8900dbd722dcf`  
		Last Modified: Thu, 13 Dec 2018 23:25:08 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968b23849ec2c7b4c38a8b9d85c405fd5a11326fde7b3ddf51ce2d83f8c19d7e`  
		Last Modified: Thu, 13 Dec 2018 23:25:08 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923f2249fe087381f2dadbbc09a7877c11fd77b012a1da15c74316eef2ecd0ef`  
		Last Modified: Thu, 13 Dec 2018 23:25:09 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:36a1cf539558e2ba8b24da35c54a39176757b67579ae4fef4eec5f8564c9ce94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:5a481caeaa82022ecab91bb617569b7278e965a21160613f8359431cd8b1311e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14630873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbd08ad0392a4f08539127d46b1a81afaa08907da5950f100a8be01f90b88bac`
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
# Thu, 13 Dec 2018 23:22:50 GMT
ENV CHRONOGRAF_VERSION=1.7.4
# Thu, 13 Dec 2018 23:22:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 13 Dec 2018 23:22:55 GMT
COPY file:bb4b392707bfb4ca737581b240f672796f5744c7220fea711a5d1f669992b912 in /usr/share/chronograf/LICENSE 
# Thu, 13 Dec 2018 23:22:55 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Thu, 13 Dec 2018 23:22:56 GMT
EXPOSE 8888/tcp
# Thu, 13 Dec 2018 23:22:56 GMT
VOLUME [/var/lib/chronograf]
# Thu, 13 Dec 2018 23:22:56 GMT
COPY file:70420cc587871e64a3833c5e0724565624ad66205b4febab38c9c37f93a25e28 in /entrypoint.sh 
# Thu, 13 Dec 2018 23:22:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Dec 2018 23:22:57 GMT
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
	-	`sha256:3a31f0f522ac3b44c4a479e43304d32ff737c63a5c3ef25dc3cd4808c4e1c671`  
		Last Modified: Thu, 13 Dec 2018 23:25:11 GMT  
		Size: 12.2 MB (12238359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f30fcc95d2e8879ef07d29a487a419a9337e76f0d57f7c738e8900dbd722dcf`  
		Last Modified: Thu, 13 Dec 2018 23:25:08 GMT  
		Size: 12.2 KB (12244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968b23849ec2c7b4c38a8b9d85c405fd5a11326fde7b3ddf51ce2d83f8c19d7e`  
		Last Modified: Thu, 13 Dec 2018 23:25:08 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:923f2249fe087381f2dadbbc09a7877c11fd77b012a1da15c74316eef2ecd0ef`  
		Last Modified: Thu, 13 Dec 2018 23:25:09 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:b07b27a14a0549391394456b083d9e8402255ba8a7fb47972ecbd66b0f41dd48
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
$ docker pull chronograf@sha256:6f4130227c731fd0e7046a6d854539bf40e097084cefbd8647f00f7bb97b3f0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45956278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5946fba702eab8e240d021e1e4c19e49b48c7b367dc38578ac3246ec9f3e19`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 16 Nov 2018 10:14:24 GMT
ADD file:f12d39e66b336ca9d9a73319a35399c91c68f9023de2c1385f873a4aa804228b in / 
# Fri, 16 Nov 2018 10:14:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:55:35 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 17 Nov 2018 02:57:49 GMT
ENV CHRONOGRAF_VERSION=1.7.3
# Sat, 17 Nov 2018 02:58:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 17 Nov 2018 02:58:42 GMT
COPY file:30de17380b1f353617f3efd8df8d07d842ebdd75d750781b20cc7588a54c918d in /usr/share/chronograf/LICENSE 
# Sat, 17 Nov 2018 02:58:43 GMT
COPY file:8cfc239e035af78ba9337d25f99200091e0d054985fe0c87e60b767d7759d99d in /usr/share/chronograf/agpl-3.0.md 
# Sat, 17 Nov 2018 02:58:44 GMT
EXPOSE 8888/tcp
# Sat, 17 Nov 2018 02:58:45 GMT
VOLUME [/var/lib/chronograf]
# Sat, 17 Nov 2018 02:58:46 GMT
COPY file:5e829c8058b054261083c78e0bc7ad8730ab2331be79c5c3e1b6b84993b3224b in /entrypoint.sh 
# Sat, 17 Nov 2018 02:58:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 02:58:48 GMT
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
	-	`sha256:706ffbdc1cd64031810e2b41778cb5b15614d843e7ae6dd1ec7ad0fe3f880795`  
		Last Modified: Sat, 17 Nov 2018 03:01:39 GMT  
		Size: 21.5 MB (21522079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d09f05c778e1a77b65e5c1d7e82ea0f27bd9d066c4de90ece852603e3cbadd`  
		Last Modified: Sat, 17 Nov 2018 03:01:32 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9966733b6503c407b672a68da19afec9a33963ecfc28a8ef0963bab3ef338560`  
		Last Modified: Sat, 17 Nov 2018 03:01:31 GMT  
		Size: 11.9 KB (11907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5f8ef228e0dd538322c003466f278be5af8cde76416fa307461bb2981ce2c40`  
		Last Modified: Sat, 17 Nov 2018 03:01:31 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
