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
-	[`chronograf:1.7.8`](#chronograf178)
-	[`chronograf:1.7.8-alpine`](#chronograf178-alpine)
-	[`chronograf:1.7-alpine`](#chronograf17-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.5`

```console
$ docker pull chronograf@sha256:1f7e70314522b215641927f06d0d9efba25c182190810a6ef1c8b910da43e90c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5` - linux; amd64

```console
$ docker pull chronograf@sha256:8123088852efcbee25dd32e32cbf40b35f5b9a3ce79c1272435cd7874e3d5763
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49076830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97780efd9992974ce95f5219ff4a2bb95683197828b63d8cb239cf282ede1f97`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:11:23 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 26 Mar 2019 23:11:23 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 26 Mar 2019 23:11:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Mar 2019 23:11:35 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 26 Mar 2019 23:11:35 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 26 Mar 2019 23:11:35 GMT
EXPOSE 8888
# Tue, 26 Mar 2019 23:11:35 GMT
VOLUME [/var/lib/chronograf]
# Tue, 26 Mar 2019 23:11:35 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 26 Mar 2019 23:11:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Mar 2019 23:11:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309bb94eb7c8c2b3b65ff4830dcab0f76716e8f9908e1ebc344da27cfe4afe3a`  
		Last Modified: Tue, 26 Mar 2019 23:12:33 GMT  
		Size: 4.5 MB (4503502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233e8ebf2572e5cc8f994e42f64a45d3fad3025ccbc57bce3498648db2a11084`  
		Last Modified: Tue, 26 Mar 2019 23:12:41 GMT  
		Size: 22.1 MB (22052884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a7f1e3aeb7c28d670bc16d73cbba7c5e51ee3f98a499a6b79a8b2c3ca293b5`  
		Last Modified: Tue, 26 Mar 2019 23:12:32 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ac79754cf4b0f6558d8660ffa79b07a292cf2cece3b60bd6122f4674df9672`  
		Last Modified: Tue, 26 Mar 2019 23:12:32 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ffdc2b82abc71f39467481887f18815adb6c5430c4ac24df94d8832e0bdcb4`  
		Last Modified: Tue, 26 Mar 2019 23:12:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:1469acb42dc09b74b06d7ee11b3dc833abac2ab4e014054c43fbd3558f3ab72b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43640087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f148264dcb1bf0c1046bc04a355624f6a8fb7b730a93623e3b27389e429b9b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:38:34 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 14:38:35 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 05 Mar 2019 14:38:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:38:55 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 14:38:56 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 14:38:56 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 14:38:57 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 14:38:57 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 14:38:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 14:38:59 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ba34841111970b21594ddeb49c390336f328ebac3318a5575d8499a8e953d7`  
		Last Modified: Tue, 05 Mar 2019 14:40:19 GMT  
		Size: 3.9 MB (3877184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbeb8e40ffbe83a7898228220c600bbcbdc8d6518e760249489ea0608e23f22a`  
		Last Modified: Tue, 05 Mar 2019 14:40:25 GMT  
		Size: 20.5 MB (20456013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bb4d257ade2467b672f1b9cee85f3805f0e99af67945c4cfe440f09b7eb8dc`  
		Last Modified: Tue, 05 Mar 2019 14:40:18 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401849fa4f33c2c7f1cacb1ecfa4d867994217d4ace899ecb4e236112538357d`  
		Last Modified: Tue, 05 Mar 2019 14:40:18 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc15714f04c78148577f64d0526c2b3b99d950f3faa506658bca7df272f6fd57`  
		Last Modified: Tue, 05 Mar 2019 14:40:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8a19a918f0c7b10665b754318cacde1854445a8a37611a32fc5dde246468d6a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45108174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a80500db22de28561d52650fbfc5f8c087df7569116b97ae864c3fe6c837be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:10:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 10:11:01 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Mar 2019 10:12:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:12:44 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 27 Mar 2019 10:12:45 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Mar 2019 10:12:46 GMT
EXPOSE 8888
# Wed, 27 Mar 2019 10:12:47 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Mar 2019 10:12:48 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 27 Mar 2019 10:12:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 10:12:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60583caf3af85646b427d46254573b00fd07b2929f619f12d9c9cb7b23c767e8`  
		Last Modified: Wed, 27 Mar 2019 10:15:25 GMT  
		Size: 4.1 MB (4079940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ae33e30046857051158702d68e25bb0751b02699bbf2f5fec015cdfbbc502`  
		Last Modified: Wed, 27 Mar 2019 10:15:32 GMT  
		Size: 20.7 MB (20663653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b5593f86850700b4b5de6e3277a083e000a784a10fa866655e239a8138f097`  
		Last Modified: Wed, 27 Mar 2019 10:15:24 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37e2404b953ef1e80a18f80abeafb4234230a14c6eee50c8c3eb9dd8509128f`  
		Last Modified: Wed, 27 Mar 2019 10:15:24 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c9b2b1127a05315928ab56e9d8949d556b0ef8da46d340e4447b0a92534d0c`  
		Last Modified: Wed, 27 Mar 2019 10:15:24 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0`

```console
$ docker pull chronograf@sha256:1f7e70314522b215641927f06d0d9efba25c182190810a6ef1c8b910da43e90c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0` - linux; amd64

```console
$ docker pull chronograf@sha256:8123088852efcbee25dd32e32cbf40b35f5b9a3ce79c1272435cd7874e3d5763
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49076830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97780efd9992974ce95f5219ff4a2bb95683197828b63d8cb239cf282ede1f97`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:11:23 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 26 Mar 2019 23:11:23 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 26 Mar 2019 23:11:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Mar 2019 23:11:35 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 26 Mar 2019 23:11:35 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 26 Mar 2019 23:11:35 GMT
EXPOSE 8888
# Tue, 26 Mar 2019 23:11:35 GMT
VOLUME [/var/lib/chronograf]
# Tue, 26 Mar 2019 23:11:35 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 26 Mar 2019 23:11:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Mar 2019 23:11:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309bb94eb7c8c2b3b65ff4830dcab0f76716e8f9908e1ebc344da27cfe4afe3a`  
		Last Modified: Tue, 26 Mar 2019 23:12:33 GMT  
		Size: 4.5 MB (4503502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233e8ebf2572e5cc8f994e42f64a45d3fad3025ccbc57bce3498648db2a11084`  
		Last Modified: Tue, 26 Mar 2019 23:12:41 GMT  
		Size: 22.1 MB (22052884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a7f1e3aeb7c28d670bc16d73cbba7c5e51ee3f98a499a6b79a8b2c3ca293b5`  
		Last Modified: Tue, 26 Mar 2019 23:12:32 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ac79754cf4b0f6558d8660ffa79b07a292cf2cece3b60bd6122f4674df9672`  
		Last Modified: Tue, 26 Mar 2019 23:12:32 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ffdc2b82abc71f39467481887f18815adb6c5430c4ac24df94d8832e0bdcb4`  
		Last Modified: Tue, 26 Mar 2019 23:12:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:1469acb42dc09b74b06d7ee11b3dc833abac2ab4e014054c43fbd3558f3ab72b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43640087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f148264dcb1bf0c1046bc04a355624f6a8fb7b730a93623e3b27389e429b9b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:38:34 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 14:38:35 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 05 Mar 2019 14:38:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:38:55 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 14:38:56 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 14:38:56 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 14:38:57 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 14:38:57 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 14:38:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 14:38:59 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ba34841111970b21594ddeb49c390336f328ebac3318a5575d8499a8e953d7`  
		Last Modified: Tue, 05 Mar 2019 14:40:19 GMT  
		Size: 3.9 MB (3877184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbeb8e40ffbe83a7898228220c600bbcbdc8d6518e760249489ea0608e23f22a`  
		Last Modified: Tue, 05 Mar 2019 14:40:25 GMT  
		Size: 20.5 MB (20456013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bb4d257ade2467b672f1b9cee85f3805f0e99af67945c4cfe440f09b7eb8dc`  
		Last Modified: Tue, 05 Mar 2019 14:40:18 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401849fa4f33c2c7f1cacb1ecfa4d867994217d4ace899ecb4e236112538357d`  
		Last Modified: Tue, 05 Mar 2019 14:40:18 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc15714f04c78148577f64d0526c2b3b99d950f3faa506658bca7df272f6fd57`  
		Last Modified: Tue, 05 Mar 2019 14:40:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8a19a918f0c7b10665b754318cacde1854445a8a37611a32fc5dde246468d6a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45108174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a80500db22de28561d52650fbfc5f8c087df7569116b97ae864c3fe6c837be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:10:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 10:11:01 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Mar 2019 10:12:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:12:44 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 27 Mar 2019 10:12:45 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Mar 2019 10:12:46 GMT
EXPOSE 8888
# Wed, 27 Mar 2019 10:12:47 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Mar 2019 10:12:48 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 27 Mar 2019 10:12:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 10:12:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60583caf3af85646b427d46254573b00fd07b2929f619f12d9c9cb7b23c767e8`  
		Last Modified: Wed, 27 Mar 2019 10:15:25 GMT  
		Size: 4.1 MB (4079940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ae33e30046857051158702d68e25bb0751b02699bbf2f5fec015cdfbbc502`  
		Last Modified: Wed, 27 Mar 2019 10:15:32 GMT  
		Size: 20.7 MB (20663653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b5593f86850700b4b5de6e3277a083e000a784a10fa866655e239a8138f097`  
		Last Modified: Wed, 27 Mar 2019 10:15:24 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37e2404b953ef1e80a18f80abeafb4234230a14c6eee50c8c3eb9dd8509128f`  
		Last Modified: Wed, 27 Mar 2019 10:15:24 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c9b2b1127a05315928ab56e9d8949d556b0ef8da46d340e4447b0a92534d0c`  
		Last Modified: Wed, 27 Mar 2019 10:15:24 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1`

```console
$ docker pull chronograf@sha256:1f7e70314522b215641927f06d0d9efba25c182190810a6ef1c8b910da43e90c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0.1` - linux; amd64

```console
$ docker pull chronograf@sha256:8123088852efcbee25dd32e32cbf40b35f5b9a3ce79c1272435cd7874e3d5763
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49076830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97780efd9992974ce95f5219ff4a2bb95683197828b63d8cb239cf282ede1f97`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:11:23 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 26 Mar 2019 23:11:23 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 26 Mar 2019 23:11:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Mar 2019 23:11:35 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 26 Mar 2019 23:11:35 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 26 Mar 2019 23:11:35 GMT
EXPOSE 8888
# Tue, 26 Mar 2019 23:11:35 GMT
VOLUME [/var/lib/chronograf]
# Tue, 26 Mar 2019 23:11:35 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 26 Mar 2019 23:11:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Mar 2019 23:11:36 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309bb94eb7c8c2b3b65ff4830dcab0f76716e8f9908e1ebc344da27cfe4afe3a`  
		Last Modified: Tue, 26 Mar 2019 23:12:33 GMT  
		Size: 4.5 MB (4503502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233e8ebf2572e5cc8f994e42f64a45d3fad3025ccbc57bce3498648db2a11084`  
		Last Modified: Tue, 26 Mar 2019 23:12:41 GMT  
		Size: 22.1 MB (22052884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44a7f1e3aeb7c28d670bc16d73cbba7c5e51ee3f98a499a6b79a8b2c3ca293b5`  
		Last Modified: Tue, 26 Mar 2019 23:12:32 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ac79754cf4b0f6558d8660ffa79b07a292cf2cece3b60bd6122f4674df9672`  
		Last Modified: Tue, 26 Mar 2019 23:12:32 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ffdc2b82abc71f39467481887f18815adb6c5430c4ac24df94d8832e0bdcb4`  
		Last Modified: Tue, 26 Mar 2019 23:12:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:1469acb42dc09b74b06d7ee11b3dc833abac2ab4e014054c43fbd3558f3ab72b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43640087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f148264dcb1bf0c1046bc04a355624f6a8fb7b730a93623e3b27389e429b9b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:38:34 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 14:38:35 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Tue, 05 Mar 2019 14:38:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:38:55 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 14:38:56 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 14:38:56 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 14:38:57 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 14:38:57 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 14:38:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 14:38:59 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ba34841111970b21594ddeb49c390336f328ebac3318a5575d8499a8e953d7`  
		Last Modified: Tue, 05 Mar 2019 14:40:19 GMT  
		Size: 3.9 MB (3877184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbeb8e40ffbe83a7898228220c600bbcbdc8d6518e760249489ea0608e23f22a`  
		Last Modified: Tue, 05 Mar 2019 14:40:25 GMT  
		Size: 20.5 MB (20456013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58bb4d257ade2467b672f1b9cee85f3805f0e99af67945c4cfe440f09b7eb8dc`  
		Last Modified: Tue, 05 Mar 2019 14:40:18 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401849fa4f33c2c7f1cacb1ecfa4d867994217d4ace899ecb4e236112538357d`  
		Last Modified: Tue, 05 Mar 2019 14:40:18 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc15714f04c78148577f64d0526c2b3b99d950f3faa506658bca7df272f6fd57`  
		Last Modified: Tue, 05 Mar 2019 14:40:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:8a19a918f0c7b10665b754318cacde1854445a8a37611a32fc5dde246468d6a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45108174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a80500db22de28561d52650fbfc5f8c087df7569116b97ae864c3fe6c837be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:10:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 10:11:01 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Wed, 27 Mar 2019 10:12:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:12:44 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 27 Mar 2019 10:12:45 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Mar 2019 10:12:46 GMT
EXPOSE 8888
# Wed, 27 Mar 2019 10:12:47 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Mar 2019 10:12:48 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 27 Mar 2019 10:12:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 10:12:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60583caf3af85646b427d46254573b00fd07b2929f619f12d9c9cb7b23c767e8`  
		Last Modified: Wed, 27 Mar 2019 10:15:25 GMT  
		Size: 4.1 MB (4079940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689ae33e30046857051158702d68e25bb0751b02699bbf2f5fec015cdfbbc502`  
		Last Modified: Wed, 27 Mar 2019 10:15:32 GMT  
		Size: 20.7 MB (20663653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b5593f86850700b4b5de6e3277a083e000a784a10fa866655e239a8138f097`  
		Last Modified: Wed, 27 Mar 2019 10:15:24 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37e2404b953ef1e80a18f80abeafb4234230a14c6eee50c8c3eb9dd8509128f`  
		Last Modified: Wed, 27 Mar 2019 10:15:24 GMT  
		Size: 11.9 KB (11912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c9b2b1127a05315928ab56e9d8949d556b0ef8da46d340e4447b0a92534d0c`  
		Last Modified: Wed, 27 Mar 2019 10:15:24 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1-alpine`

```console
$ docker pull chronograf@sha256:d4240b9f178ea6d18b14ab9548337261e090a4381385ae2ceab032a7f38c4e70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0.1-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e211fd1862845a380cdb6bd6bc68cadb675c7d04a97f106378f35ed1dbfda8d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14164797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4340bb2d0b9ab43d934cd68745406ba6618c33413138c7dc3ebd6b0fb8b3538a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:09:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 07 Mar 2019 23:10:04 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:10:04 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 07 Mar 2019 23:10:04 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Mar 2019 23:10:04 GMT
EXPOSE 8888
# Thu, 07 Mar 2019 23:10:04 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Mar 2019 23:10:05 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:10:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:10:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e30b7edeead151fb1c445d2498c0e73f9ede7edc569a23c2e2d694c047a5b`  
		Last Modified: Thu, 07 Mar 2019 23:10:41 GMT  
		Size: 11.6 MB (11623962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b38cef9882eda5e9713d17b99c83d46010d0e0edda3f10c94f8039e26e0d06`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af78d5b2a0c11fc452bdfc825938df1ed4fef8a839aa861b0094c70107f89dae`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f55077a417572c7705fbaf77201ecc64c3f5bf0827b275f6a8798de38ed6d5`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0-alpine`

```console
$ docker pull chronograf@sha256:d4240b9f178ea6d18b14ab9548337261e090a4381385ae2ceab032a7f38c4e70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e211fd1862845a380cdb6bd6bc68cadb675c7d04a97f106378f35ed1dbfda8d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14164797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4340bb2d0b9ab43d934cd68745406ba6618c33413138c7dc3ebd6b0fb8b3538a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:09:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 07 Mar 2019 23:10:04 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:10:04 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 07 Mar 2019 23:10:04 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Mar 2019 23:10:04 GMT
EXPOSE 8888
# Thu, 07 Mar 2019 23:10:04 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Mar 2019 23:10:05 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:10:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:10:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e30b7edeead151fb1c445d2498c0e73f9ede7edc569a23c2e2d694c047a5b`  
		Last Modified: Thu, 07 Mar 2019 23:10:41 GMT  
		Size: 11.6 MB (11623962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b38cef9882eda5e9713d17b99c83d46010d0e0edda3f10c94f8039e26e0d06`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af78d5b2a0c11fc452bdfc825938df1ed4fef8a839aa861b0094c70107f89dae`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f55077a417572c7705fbaf77201ecc64c3f5bf0827b275f6a8798de38ed6d5`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5-alpine`

```console
$ docker pull chronograf@sha256:d4240b9f178ea6d18b14ab9548337261e090a4381385ae2ceab032a7f38c4e70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:e211fd1862845a380cdb6bd6bc68cadb675c7d04a97f106378f35ed1dbfda8d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14164797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4340bb2d0b9ab43d934cd68745406ba6618c33413138c7dc3ebd6b0fb8b3538a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:09:59 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 07 Mar 2019 23:10:04 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:10:04 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 07 Mar 2019 23:10:04 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Mar 2019 23:10:04 GMT
EXPOSE 8888
# Thu, 07 Mar 2019 23:10:04 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Mar 2019 23:10:05 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:10:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:10:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e30b7edeead151fb1c445d2498c0e73f9ede7edc569a23c2e2d694c047a5b`  
		Last Modified: Thu, 07 Mar 2019 23:10:41 GMT  
		Size: 11.6 MB (11623962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b38cef9882eda5e9713d17b99c83d46010d0e0edda3f10c94f8039e26e0d06`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af78d5b2a0c11fc452bdfc825938df1ed4fef8a839aa861b0094c70107f89dae`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 11.9 KB (11900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f55077a417572c7705fbaf77201ecc64c3f5bf0827b275f6a8798de38ed6d5`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6`

```console
$ docker pull chronograf@sha256:7e275833d759dc4a57fbf9f83b161a3d422a8a6d074281a5dbefa456f1953b13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6` - linux; amd64

```console
$ docker pull chronograf@sha256:851e3ada81eca243cd5e8a6e5cc84a596452e9f99cd380afb3750c1fbfaa8270
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49120165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9c39ce22d849168850fdab3b67e5bacc4f2821c26c6d37085376189fbf9c8e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:11:23 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 26 Mar 2019 23:11:46 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Tue, 26 Mar 2019 23:11:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Mar 2019 23:11:58 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 26 Mar 2019 23:11:58 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 26 Mar 2019 23:11:58 GMT
EXPOSE 8888
# Tue, 26 Mar 2019 23:11:58 GMT
VOLUME [/var/lib/chronograf]
# Tue, 26 Mar 2019 23:11:59 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 26 Mar 2019 23:11:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Mar 2019 23:11:59 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309bb94eb7c8c2b3b65ff4830dcab0f76716e8f9908e1ebc344da27cfe4afe3a`  
		Last Modified: Tue, 26 Mar 2019 23:12:33 GMT  
		Size: 4.5 MB (4503502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde307cffba17237ec4a11d91aa531f7223d1407612530d422f2d90dfb647686`  
		Last Modified: Tue, 26 Mar 2019 23:12:49 GMT  
		Size: 22.1 MB (22096217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417671276bd6f636633e049f15f293a4f5eaba11b1916b217c53d87e42d2bc24`  
		Last Modified: Tue, 26 Mar 2019 23:12:45 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ec0dd63fcb7d279e64beef30ddd7b878eca2876a3a7ad5ca026464ae85dc3b`  
		Last Modified: Tue, 26 Mar 2019 23:12:45 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c06c9513fa975573930f31acc7ebb3574d345d21d5652c07878981a6fa92f94`  
		Last Modified: Tue, 26 Mar 2019 23:12:45 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:84d638bfa1a7d879d0e7144029f3183d49ec16d7d227c6ebfb691bdcd8e889ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43705704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f399ef91b337b80a66807bded29dec0ebb4630f34b15cb7385c5a832797c2c7a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:38:34 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 14:39:06 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Tue, 05 Mar 2019 14:39:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:39:30 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 14:39:30 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 14:39:31 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 14:39:31 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 14:39:32 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 14:39:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 14:39:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ba34841111970b21594ddeb49c390336f328ebac3318a5575d8499a8e953d7`  
		Last Modified: Tue, 05 Mar 2019 14:40:19 GMT  
		Size: 3.9 MB (3877184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815181854c57e69edb22eecdeb49b0d243d02387a9cf73aed894e6edfa003cff`  
		Last Modified: Tue, 05 Mar 2019 14:40:39 GMT  
		Size: 20.5 MB (20521631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361d9295dcbff76d7f84ffbbc16a2d85337df4a2fb8982dc45dc32ad0cdc986`  
		Last Modified: Tue, 05 Mar 2019 14:40:32 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb41c987a9032b2396af9aacba2f3fc3b47dc133fa59405a5f2bdd35f5e7437e`  
		Last Modified: Tue, 05 Mar 2019 14:40:32 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2038d0af77e315bf6de145278449aaf15879a31872b076101485145be9ed49a`  
		Last Modified: Tue, 05 Mar 2019 14:40:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:1d665de9b9665ebe0caf2899c6626729f7024623dfb55569e7841f167c369075
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45165962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed564eaf8bb6976fc2da8224e7786b281e49516065938022d2781b2bfc30c6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:10:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 10:13:07 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Wed, 27 Mar 2019 10:13:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:13:58 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 27 Mar 2019 10:13:59 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Mar 2019 10:14:00 GMT
EXPOSE 8888
# Wed, 27 Mar 2019 10:14:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Mar 2019 10:14:02 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 27 Mar 2019 10:14:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 10:14:04 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60583caf3af85646b427d46254573b00fd07b2929f619f12d9c9cb7b23c767e8`  
		Last Modified: Wed, 27 Mar 2019 10:15:25 GMT  
		Size: 4.1 MB (4079940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90738232ef221c967406db4bbdf2836376d15a5c07fde41df02fb0ca5db7b4be`  
		Last Modified: Wed, 27 Mar 2019 10:15:49 GMT  
		Size: 20.7 MB (20721443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b463ef53c4205f8200b913f96f9c4af2c863f3f0a0b7ef67f7179bd4851c58cc`  
		Last Modified: Wed, 27 Mar 2019 10:15:41 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df62b659cdfe5219fe0ad0f92647916a5a861400e13975e6cca6abbefa44c73`  
		Last Modified: Wed, 27 Mar 2019 10:15:41 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d88a18e1dbdf2633c1620705ff0f3b8eba93542cfd54b7059d24586a78d7dec`  
		Last Modified: Wed, 27 Mar 2019 10:15:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.2`

```console
$ docker pull chronograf@sha256:7e275833d759dc4a57fbf9f83b161a3d422a8a6d074281a5dbefa456f1953b13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6.2` - linux; amd64

```console
$ docker pull chronograf@sha256:851e3ada81eca243cd5e8a6e5cc84a596452e9f99cd380afb3750c1fbfaa8270
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49120165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9c39ce22d849168850fdab3b67e5bacc4f2821c26c6d37085376189fbf9c8e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:11:23 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 26 Mar 2019 23:11:46 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Tue, 26 Mar 2019 23:11:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Mar 2019 23:11:58 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 26 Mar 2019 23:11:58 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 26 Mar 2019 23:11:58 GMT
EXPOSE 8888
# Tue, 26 Mar 2019 23:11:58 GMT
VOLUME [/var/lib/chronograf]
# Tue, 26 Mar 2019 23:11:59 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 26 Mar 2019 23:11:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Mar 2019 23:11:59 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309bb94eb7c8c2b3b65ff4830dcab0f76716e8f9908e1ebc344da27cfe4afe3a`  
		Last Modified: Tue, 26 Mar 2019 23:12:33 GMT  
		Size: 4.5 MB (4503502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde307cffba17237ec4a11d91aa531f7223d1407612530d422f2d90dfb647686`  
		Last Modified: Tue, 26 Mar 2019 23:12:49 GMT  
		Size: 22.1 MB (22096217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:417671276bd6f636633e049f15f293a4f5eaba11b1916b217c53d87e42d2bc24`  
		Last Modified: Tue, 26 Mar 2019 23:12:45 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ec0dd63fcb7d279e64beef30ddd7b878eca2876a3a7ad5ca026464ae85dc3b`  
		Last Modified: Tue, 26 Mar 2019 23:12:45 GMT  
		Size: 11.9 KB (11909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c06c9513fa975573930f31acc7ebb3574d345d21d5652c07878981a6fa92f94`  
		Last Modified: Tue, 26 Mar 2019 23:12:45 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.2` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:84d638bfa1a7d879d0e7144029f3183d49ec16d7d227c6ebfb691bdcd8e889ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43705704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f399ef91b337b80a66807bded29dec0ebb4630f34b15cb7385c5a832797c2c7a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:38:34 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 14:39:06 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Tue, 05 Mar 2019 14:39:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:39:30 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 14:39:30 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 14:39:31 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 14:39:31 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 14:39:32 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 14:39:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 14:39:33 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ba34841111970b21594ddeb49c390336f328ebac3318a5575d8499a8e953d7`  
		Last Modified: Tue, 05 Mar 2019 14:40:19 GMT  
		Size: 3.9 MB (3877184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815181854c57e69edb22eecdeb49b0d243d02387a9cf73aed894e6edfa003cff`  
		Last Modified: Tue, 05 Mar 2019 14:40:39 GMT  
		Size: 20.5 MB (20521631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7361d9295dcbff76d7f84ffbbc16a2d85337df4a2fb8982dc45dc32ad0cdc986`  
		Last Modified: Tue, 05 Mar 2019 14:40:32 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb41c987a9032b2396af9aacba2f3fc3b47dc133fa59405a5f2bdd35f5e7437e`  
		Last Modified: Tue, 05 Mar 2019 14:40:32 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2038d0af77e315bf6de145278449aaf15879a31872b076101485145be9ed49a`  
		Last Modified: Tue, 05 Mar 2019 14:40:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.2` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:1d665de9b9665ebe0caf2899c6626729f7024623dfb55569e7841f167c369075
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45165962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed564eaf8bb6976fc2da8224e7786b281e49516065938022d2781b2bfc30c6b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:10:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 10:13:07 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Wed, 27 Mar 2019 10:13:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:13:58 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 27 Mar 2019 10:13:59 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Mar 2019 10:14:00 GMT
EXPOSE 8888
# Wed, 27 Mar 2019 10:14:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Mar 2019 10:14:02 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 27 Mar 2019 10:14:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 10:14:04 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60583caf3af85646b427d46254573b00fd07b2929f619f12d9c9cb7b23c767e8`  
		Last Modified: Wed, 27 Mar 2019 10:15:25 GMT  
		Size: 4.1 MB (4079940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90738232ef221c967406db4bbdf2836376d15a5c07fde41df02fb0ca5db7b4be`  
		Last Modified: Wed, 27 Mar 2019 10:15:49 GMT  
		Size: 20.7 MB (20721443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b463ef53c4205f8200b913f96f9c4af2c863f3f0a0b7ef67f7179bd4851c58cc`  
		Last Modified: Wed, 27 Mar 2019 10:15:41 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df62b659cdfe5219fe0ad0f92647916a5a861400e13975e6cca6abbefa44c73`  
		Last Modified: Wed, 27 Mar 2019 10:15:41 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d88a18e1dbdf2633c1620705ff0f3b8eba93542cfd54b7059d24586a78d7dec`  
		Last Modified: Wed, 27 Mar 2019 10:15:41 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.2-alpine`

```console
$ docker pull chronograf@sha256:12af06023306d9859ac48ceb8e1f68a10d0ab69e10d7eac40ee603e9ede34bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6.2-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:00f15ee8b2908870ebb95ac04b0610dd24b5f70ab6f807d664d5e1ab7a836bbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14277532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776865be4c29a91fcc144e3a5043e35b65ed123d0ba42ee81dc341bfd5dd1806`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:10:10 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Thu, 07 Mar 2019 23:10:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:10:15 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 07 Mar 2019 23:10:15 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Mar 2019 23:10:15 GMT
EXPOSE 8888
# Thu, 07 Mar 2019 23:10:15 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Mar 2019 23:10:16 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:10:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:10:16 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd8709443bbccd9a30f06171bf649bc75c52372bbdfcd161a3673e7274a23d6`  
		Last Modified: Thu, 07 Mar 2019 23:10:48 GMT  
		Size: 11.7 MB (11736702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510b6aa79f5e733fe6361d1288127f10fc9a5b7b5e9722b55f41e873e78d44d4`  
		Last Modified: Thu, 07 Mar 2019 23:10:46 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26be3db59e02fd9d70c69e7e135de79f7f4c5c5e94ae2844051e286a238a5039`  
		Last Modified: Thu, 07 Mar 2019 23:10:46 GMT  
		Size: 11.9 KB (11897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d9b61a7e468b51bbcd73ed8168e8afc82926d2b7916ee85c243d7ac1ca7aef`  
		Last Modified: Thu, 07 Mar 2019 23:10:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6-alpine`

```console
$ docker pull chronograf@sha256:12af06023306d9859ac48ceb8e1f68a10d0ab69e10d7eac40ee603e9ede34bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:00f15ee8b2908870ebb95ac04b0610dd24b5f70ab6f807d664d5e1ab7a836bbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14277532 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:776865be4c29a91fcc144e3a5043e35b65ed123d0ba42ee81dc341bfd5dd1806`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:10:10 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Thu, 07 Mar 2019 23:10:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:10:15 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 07 Mar 2019 23:10:15 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Mar 2019 23:10:15 GMT
EXPOSE 8888
# Thu, 07 Mar 2019 23:10:15 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Mar 2019 23:10:16 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:10:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:10:16 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd8709443bbccd9a30f06171bf649bc75c52372bbdfcd161a3673e7274a23d6`  
		Last Modified: Thu, 07 Mar 2019 23:10:48 GMT  
		Size: 11.7 MB (11736702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510b6aa79f5e733fe6361d1288127f10fc9a5b7b5e9722b55f41e873e78d44d4`  
		Last Modified: Thu, 07 Mar 2019 23:10:46 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26be3db59e02fd9d70c69e7e135de79f7f4c5c5e94ae2844051e286a238a5039`  
		Last Modified: Thu, 07 Mar 2019 23:10:46 GMT  
		Size: 11.9 KB (11897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4d9b61a7e468b51bbcd73ed8168e8afc82926d2b7916ee85c243d7ac1ca7aef`  
		Last Modified: Thu, 07 Mar 2019 23:10:46 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7`

```console
$ docker pull chronograf@sha256:f646257f52e5be753ff3c521002cef8b5f3f9d7bcf2df4877342d81bd245150c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.7` - linux; amd64

```console
$ docker pull chronograf@sha256:1a6e4d5353f6d007c551726141b1a280ae7f211d31fce2b028aceddff5754ddd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55225742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc1b738d794dc15e0c45f708a24089d3cb88609c71c112d5dc3e3487285e643`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:11:23 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 26 Mar 2019 23:12:06 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Tue, 26 Mar 2019 23:12:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Mar 2019 23:12:18 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 26 Mar 2019 23:12:18 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 26 Mar 2019 23:12:19 GMT
EXPOSE 8888
# Tue, 26 Mar 2019 23:12:19 GMT
VOLUME [/var/lib/chronograf]
# Tue, 26 Mar 2019 23:12:19 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 26 Mar 2019 23:12:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Mar 2019 23:12:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309bb94eb7c8c2b3b65ff4830dcab0f76716e8f9908e1ebc344da27cfe4afe3a`  
		Last Modified: Tue, 26 Mar 2019 23:12:33 GMT  
		Size: 4.5 MB (4503502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0914113713868d8b3dd3014e53aaad831c287455e74308f47601fa28a43a161`  
		Last Modified: Tue, 26 Mar 2019 23:12:57 GMT  
		Size: 28.2 MB (28201802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd11500cef84d2cc487af2d2384415868a8737c9c7ef6130fc78321bc4b0a06`  
		Last Modified: Tue, 26 Mar 2019 23:12:53 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f70a3f3804659841b8f5c6b7e4fbf18be8a040d1fe7d06667477830c8055014`  
		Last Modified: Tue, 26 Mar 2019 23:12:53 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f701cb9e9ef45c69a58ea00bb885dc6c5b3e03f1a38aea95e64e5538d6dc40c6`  
		Last Modified: Tue, 26 Mar 2019 23:12:52 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:8d4993f8fc735b137f444649b7ac773dfe09b35d3cb9ec1e6414a9713e7a8d99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49199484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169c20cb502598d4bdac3a879e39e40fa7acfbd985285f496bcb4cd7fd53c266`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:38:34 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 14:39:39 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Tue, 05 Mar 2019 14:40:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:40:02 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 14:40:03 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 14:40:03 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 14:40:04 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 14:40:04 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 14:40:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 14:40:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ba34841111970b21594ddeb49c390336f328ebac3318a5575d8499a8e953d7`  
		Last Modified: Tue, 05 Mar 2019 14:40:19 GMT  
		Size: 3.9 MB (3877184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a257a9e012d4e11a58e2c7bdd8b4149daa328ce1561e01a65487a21ca61c19`  
		Last Modified: Tue, 05 Mar 2019 14:40:55 GMT  
		Size: 26.0 MB (26015407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b26b6e0fb274faf9a2612fbacfd593cd68dbad3ff4346a34ca76c2f7866dca2`  
		Last Modified: Tue, 05 Mar 2019 14:40:47 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb61ac5a3212c84702a7975dd5e3f7ccdaef4f835a06aaa4e9d148ab43956573`  
		Last Modified: Tue, 05 Mar 2019 14:40:47 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047d62f13acc851368fb0c25dfc9827afdd4b46bd2d91a63ca3b655ad6277ac7`  
		Last Modified: Tue, 05 Mar 2019 14:40:47 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:a6c676a902aef811c1d944d3cecf8937c82f35e98f86b847260093e21e24e763
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50668275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764b50d5152d571352be46d6b76e168f255d4f289f2d589cdff170783a4549cc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:10:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 10:14:11 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Wed, 27 Mar 2019 10:14:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:14:57 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 27 Mar 2019 10:14:58 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Mar 2019 10:15:00 GMT
EXPOSE 8888
# Wed, 27 Mar 2019 10:15:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Mar 2019 10:15:02 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 27 Mar 2019 10:15:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 10:15:04 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60583caf3af85646b427d46254573b00fd07b2929f619f12d9c9cb7b23c767e8`  
		Last Modified: Wed, 27 Mar 2019 10:15:25 GMT  
		Size: 4.1 MB (4079940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5080de97b04ced8d4a758498756253ffccb5c2a5a9080b5898e44ccbc07ded7d`  
		Last Modified: Wed, 27 Mar 2019 10:16:05 GMT  
		Size: 26.2 MB (26223759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039930a30945899515da4541a73329cdc20486b6231cc26403ac9bb69112400e`  
		Last Modified: Wed, 27 Mar 2019 10:15:56 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5a867732c9038fea8b119e4dccf2e9b03a8aec5f34347511e1696fa8d9a4cc`  
		Last Modified: Wed, 27 Mar 2019 10:15:56 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c797603fabadc31b1d10611d30fa90d34ffcc804f4adb60eee3d6225720849d4`  
		Last Modified: Wed, 27 Mar 2019 10:15:56 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7.8`

```console
$ docker pull chronograf@sha256:f646257f52e5be753ff3c521002cef8b5f3f9d7bcf2df4877342d81bd245150c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.7.8` - linux; amd64

```console
$ docker pull chronograf@sha256:1a6e4d5353f6d007c551726141b1a280ae7f211d31fce2b028aceddff5754ddd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55225742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc1b738d794dc15e0c45f708a24089d3cb88609c71c112d5dc3e3487285e643`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:11:23 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 26 Mar 2019 23:12:06 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Tue, 26 Mar 2019 23:12:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Mar 2019 23:12:18 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 26 Mar 2019 23:12:18 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 26 Mar 2019 23:12:19 GMT
EXPOSE 8888
# Tue, 26 Mar 2019 23:12:19 GMT
VOLUME [/var/lib/chronograf]
# Tue, 26 Mar 2019 23:12:19 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 26 Mar 2019 23:12:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Mar 2019 23:12:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309bb94eb7c8c2b3b65ff4830dcab0f76716e8f9908e1ebc344da27cfe4afe3a`  
		Last Modified: Tue, 26 Mar 2019 23:12:33 GMT  
		Size: 4.5 MB (4503502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0914113713868d8b3dd3014e53aaad831c287455e74308f47601fa28a43a161`  
		Last Modified: Tue, 26 Mar 2019 23:12:57 GMT  
		Size: 28.2 MB (28201802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd11500cef84d2cc487af2d2384415868a8737c9c7ef6130fc78321bc4b0a06`  
		Last Modified: Tue, 26 Mar 2019 23:12:53 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f70a3f3804659841b8f5c6b7e4fbf18be8a040d1fe7d06667477830c8055014`  
		Last Modified: Tue, 26 Mar 2019 23:12:53 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f701cb9e9ef45c69a58ea00bb885dc6c5b3e03f1a38aea95e64e5538d6dc40c6`  
		Last Modified: Tue, 26 Mar 2019 23:12:52 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7.8` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:8d4993f8fc735b137f444649b7ac773dfe09b35d3cb9ec1e6414a9713e7a8d99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49199484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169c20cb502598d4bdac3a879e39e40fa7acfbd985285f496bcb4cd7fd53c266`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:38:34 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 14:39:39 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Tue, 05 Mar 2019 14:40:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:40:02 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 14:40:03 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 14:40:03 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 14:40:04 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 14:40:04 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 14:40:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 14:40:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ba34841111970b21594ddeb49c390336f328ebac3318a5575d8499a8e953d7`  
		Last Modified: Tue, 05 Mar 2019 14:40:19 GMT  
		Size: 3.9 MB (3877184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a257a9e012d4e11a58e2c7bdd8b4149daa328ce1561e01a65487a21ca61c19`  
		Last Modified: Tue, 05 Mar 2019 14:40:55 GMT  
		Size: 26.0 MB (26015407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b26b6e0fb274faf9a2612fbacfd593cd68dbad3ff4346a34ca76c2f7866dca2`  
		Last Modified: Tue, 05 Mar 2019 14:40:47 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb61ac5a3212c84702a7975dd5e3f7ccdaef4f835a06aaa4e9d148ab43956573`  
		Last Modified: Tue, 05 Mar 2019 14:40:47 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047d62f13acc851368fb0c25dfc9827afdd4b46bd2d91a63ca3b655ad6277ac7`  
		Last Modified: Tue, 05 Mar 2019 14:40:47 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7.8` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:a6c676a902aef811c1d944d3cecf8937c82f35e98f86b847260093e21e24e763
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50668275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764b50d5152d571352be46d6b76e168f255d4f289f2d589cdff170783a4549cc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:10:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 10:14:11 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Wed, 27 Mar 2019 10:14:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:14:57 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 27 Mar 2019 10:14:58 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Mar 2019 10:15:00 GMT
EXPOSE 8888
# Wed, 27 Mar 2019 10:15:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Mar 2019 10:15:02 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 27 Mar 2019 10:15:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 10:15:04 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60583caf3af85646b427d46254573b00fd07b2929f619f12d9c9cb7b23c767e8`  
		Last Modified: Wed, 27 Mar 2019 10:15:25 GMT  
		Size: 4.1 MB (4079940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5080de97b04ced8d4a758498756253ffccb5c2a5a9080b5898e44ccbc07ded7d`  
		Last Modified: Wed, 27 Mar 2019 10:16:05 GMT  
		Size: 26.2 MB (26223759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039930a30945899515da4541a73329cdc20486b6231cc26403ac9bb69112400e`  
		Last Modified: Wed, 27 Mar 2019 10:15:56 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5a867732c9038fea8b119e4dccf2e9b03a8aec5f34347511e1696fa8d9a4cc`  
		Last Modified: Wed, 27 Mar 2019 10:15:56 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c797603fabadc31b1d10611d30fa90d34ffcc804f4adb60eee3d6225720849d4`  
		Last Modified: Wed, 27 Mar 2019 10:15:56 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7.8-alpine`

```console
$ docker pull chronograf@sha256:c6bf715544000a3669033aa1c6cd8c8e443be16b41a0b437d39a4015efbb4be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.7.8-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:22f0be1369f6d439c201e967e51c7223682842c678a8b6b405cf1205f2312759
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16692897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35062c92326e89ef4dc1e33ba4e4963c4230914f777e7ee0913fbdba57e9829`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:10:21 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Thu, 07 Mar 2019 23:10:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:10:27 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 07 Mar 2019 23:10:27 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Mar 2019 23:10:27 GMT
EXPOSE 8888
# Thu, 07 Mar 2019 23:10:27 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Mar 2019 23:10:27 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:10:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:10:28 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a051c35ef2d1888683f6b4eb054918c68c13c21cf791775f0eba249d7dd4202`  
		Last Modified: Thu, 07 Mar 2019 23:10:56 GMT  
		Size: 14.2 MB (14152062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c151f26f853ff0ab21e81f2e34a4d73dc2c8fe1b39730a3ffc74a0151ceeef`  
		Last Modified: Thu, 07 Mar 2019 23:10:52 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da51175bf1f04355d7d2746f774ad2f2c384d55eba48ba93c8ad26efdc5357b1`  
		Last Modified: Thu, 07 Mar 2019 23:10:53 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba863e148e33b97949726b75fab5f0eec2d8b5ee70a49ca641621a6f33e0120`  
		Last Modified: Thu, 07 Mar 2019 23:10:53 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7-alpine`

```console
$ docker pull chronograf@sha256:c6bf715544000a3669033aa1c6cd8c8e443be16b41a0b437d39a4015efbb4be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.7-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:22f0be1369f6d439c201e967e51c7223682842c678a8b6b405cf1205f2312759
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16692897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35062c92326e89ef4dc1e33ba4e4963c4230914f777e7ee0913fbdba57e9829`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:10:21 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Thu, 07 Mar 2019 23:10:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:10:27 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 07 Mar 2019 23:10:27 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Mar 2019 23:10:27 GMT
EXPOSE 8888
# Thu, 07 Mar 2019 23:10:27 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Mar 2019 23:10:27 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:10:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:10:28 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a051c35ef2d1888683f6b4eb054918c68c13c21cf791775f0eba249d7dd4202`  
		Last Modified: Thu, 07 Mar 2019 23:10:56 GMT  
		Size: 14.2 MB (14152062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c151f26f853ff0ab21e81f2e34a4d73dc2c8fe1b39730a3ffc74a0151ceeef`  
		Last Modified: Thu, 07 Mar 2019 23:10:52 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da51175bf1f04355d7d2746f774ad2f2c384d55eba48ba93c8ad26efdc5357b1`  
		Last Modified: Thu, 07 Mar 2019 23:10:53 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba863e148e33b97949726b75fab5f0eec2d8b5ee70a49ca641621a6f33e0120`  
		Last Modified: Thu, 07 Mar 2019 23:10:53 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:c6bf715544000a3669033aa1c6cd8c8e443be16b41a0b437d39a4015efbb4be1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:22f0be1369f6d439c201e967e51c7223682842c678a8b6b405cf1205f2312759
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16692897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d35062c92326e89ef4dc1e33ba4e4963c4230914f777e7ee0913fbdba57e9829`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:09:59 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:10:21 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Thu, 07 Mar 2019 23:10:26 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:10:27 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 07 Mar 2019 23:10:27 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 07 Mar 2019 23:10:27 GMT
EXPOSE 8888
# Thu, 07 Mar 2019 23:10:27 GMT
VOLUME [/var/lib/chronograf]
# Thu, 07 Mar 2019 23:10:27 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:10:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:10:28 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525cc71d40f5b3d4f6d76534ff4adfb2ddf665ee633f847631fb9c4640a58e9`  
		Last Modified: Thu, 07 Mar 2019 23:10:39 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a051c35ef2d1888683f6b4eb054918c68c13c21cf791775f0eba249d7dd4202`  
		Last Modified: Thu, 07 Mar 2019 23:10:56 GMT  
		Size: 14.2 MB (14152062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c151f26f853ff0ab21e81f2e34a4d73dc2c8fe1b39730a3ffc74a0151ceeef`  
		Last Modified: Thu, 07 Mar 2019 23:10:52 GMT  
		Size: 12.2 KB (12242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da51175bf1f04355d7d2746f774ad2f2c384d55eba48ba93c8ad26efdc5357b1`  
		Last Modified: Thu, 07 Mar 2019 23:10:53 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ba863e148e33b97949726b75fab5f0eec2d8b5ee70a49ca641621a6f33e0120`  
		Last Modified: Thu, 07 Mar 2019 23:10:53 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:f646257f52e5be753ff3c521002cef8b5f3f9d7bcf2df4877342d81bd245150c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:1a6e4d5353f6d007c551726141b1a280ae7f211d31fce2b028aceddff5754ddd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55225742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cc1b738d794dc15e0c45f708a24089d3cb88609c71c112d5dc3e3487285e643`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:11:23 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 26 Mar 2019 23:12:06 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Tue, 26 Mar 2019 23:12:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Mar 2019 23:12:18 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 26 Mar 2019 23:12:18 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 26 Mar 2019 23:12:19 GMT
EXPOSE 8888
# Tue, 26 Mar 2019 23:12:19 GMT
VOLUME [/var/lib/chronograf]
# Tue, 26 Mar 2019 23:12:19 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 26 Mar 2019 23:12:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 26 Mar 2019 23:12:19 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:309bb94eb7c8c2b3b65ff4830dcab0f76716e8f9908e1ebc344da27cfe4afe3a`  
		Last Modified: Tue, 26 Mar 2019 23:12:33 GMT  
		Size: 4.5 MB (4503502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0914113713868d8b3dd3014e53aaad831c287455e74308f47601fa28a43a161`  
		Last Modified: Tue, 26 Mar 2019 23:12:57 GMT  
		Size: 28.2 MB (28201802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcd11500cef84d2cc487af2d2384415868a8737c9c7ef6130fc78321bc4b0a06`  
		Last Modified: Tue, 26 Mar 2019 23:12:53 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f70a3f3804659841b8f5c6b7e4fbf18be8a040d1fe7d06667477830c8055014`  
		Last Modified: Tue, 26 Mar 2019 23:12:53 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f701cb9e9ef45c69a58ea00bb885dc6c5b3e03f1a38aea95e64e5538d6dc40c6`  
		Last Modified: Tue, 26 Mar 2019 23:12:52 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:8d4993f8fc735b137f444649b7ac773dfe09b35d3cb9ec1e6414a9713e7a8d99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49199484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:169c20cb502598d4bdac3a879e39e40fa7acfbd985285f496bcb4cd7fd53c266`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Tue, 05 Mar 2019 13:11:01 GMT
ADD file:5d43d39fbe853e1f4c9f89be2ddc937fb88624889c511b9a75d6389c2b67918a in / 
# Tue, 05 Mar 2019 13:11:03 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 14:38:34 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 14:39:39 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Tue, 05 Mar 2019 14:40:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Tue, 05 Mar 2019 14:40:02 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Tue, 05 Mar 2019 14:40:03 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Tue, 05 Mar 2019 14:40:03 GMT
EXPOSE 8888
# Tue, 05 Mar 2019 14:40:04 GMT
VOLUME [/var/lib/chronograf]
# Tue, 05 Mar 2019 14:40:04 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Tue, 05 Mar 2019 14:40:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 14:40:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:ecad9bd7ef0cc879127c92e50db573b75c643910463a12affaa5be77c7960bda`  
		Last Modified: Tue, 05 Mar 2019 13:18:41 GMT  
		Size: 19.3 MB (19282494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ba34841111970b21594ddeb49c390336f328ebac3318a5575d8499a8e953d7`  
		Last Modified: Tue, 05 Mar 2019 14:40:19 GMT  
		Size: 3.9 MB (3877184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a257a9e012d4e11a58e2c7bdd8b4149daa328ce1561e01a65487a21ca61c19`  
		Last Modified: Tue, 05 Mar 2019 14:40:55 GMT  
		Size: 26.0 MB (26015407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b26b6e0fb274faf9a2612fbacfd593cd68dbad3ff4346a34ca76c2f7866dca2`  
		Last Modified: Tue, 05 Mar 2019 14:40:47 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb61ac5a3212c84702a7975dd5e3f7ccdaef4f835a06aaa4e9d148ab43956573`  
		Last Modified: Tue, 05 Mar 2019 14:40:47 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047d62f13acc851368fb0c25dfc9827afdd4b46bd2d91a63ca3b655ad6277ac7`  
		Last Modified: Tue, 05 Mar 2019 14:40:47 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:a6c676a902aef811c1d944d3cecf8937c82f35e98f86b847260093e21e24e763
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50668275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764b50d5152d571352be46d6b76e168f255d4f289f2d589cdff170783a4549cc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:10:59 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 10:14:11 GMT
ENV CHRONOGRAF_VERSION=1.7.8
# Wed, 27 Mar 2019 10:14:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 27 Mar 2019 10:14:57 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 27 Mar 2019 10:14:58 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 27 Mar 2019 10:15:00 GMT
EXPOSE 8888
# Wed, 27 Mar 2019 10:15:01 GMT
VOLUME [/var/lib/chronograf]
# Wed, 27 Mar 2019 10:15:02 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 27 Mar 2019 10:15:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 10:15:04 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60583caf3af85646b427d46254573b00fd07b2929f619f12d9c9cb7b23c767e8`  
		Last Modified: Wed, 27 Mar 2019 10:15:25 GMT  
		Size: 4.1 MB (4079940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5080de97b04ced8d4a758498756253ffccb5c2a5a9080b5898e44ccbc07ded7d`  
		Last Modified: Wed, 27 Mar 2019 10:16:05 GMT  
		Size: 26.2 MB (26223759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039930a30945899515da4541a73329cdc20486b6231cc26403ac9bb69112400e`  
		Last Modified: Wed, 27 Mar 2019 10:15:56 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5a867732c9038fea8b119e4dccf2e9b03a8aec5f34347511e1696fa8d9a4cc`  
		Last Modified: Wed, 27 Mar 2019 10:15:56 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c797603fabadc31b1d10611d30fa90d34ffcc804f4adb60eee3d6225720849d4`  
		Last Modified: Wed, 27 Mar 2019 10:15:56 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
