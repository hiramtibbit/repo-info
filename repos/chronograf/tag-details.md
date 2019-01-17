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
-	[`chronograf:1.7.7`](#chronograf177)
-	[`chronograf:1.7.7-alpine`](#chronograf177-alpine)
-	[`chronograf:1.7-alpine`](#chronograf17-alpine)
-	[`chronograf:alpine`](#chronografalpine)
-	[`chronograf:latest`](#chronograflatest)

## `chronograf:1.5`

```console
$ docker pull chronograf@sha256:640855503324f061de7154673e2f87f149745c3d93f7a7b6e9899c0b571b521e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5` - linux; amd64

```console
$ docker pull chronograf@sha256:ba19f1bc0a6b00b4e02700cc60775ba6d509c14c70a254b5686d7866f44cdafb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49074414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36be5c78eef0bf50d9d5ee81f6301709dfe2a6694a5ac7b495691cd8cd352fa0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:28:37 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 03:28:37 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Sat, 29 Dec 2018 03:28:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 03:28:49 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 03:28:49 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 03:28:49 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 03:28:49 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 03:28:50 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 03:28:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 03:28:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91dfe7f2c52afc2c71c8254c6f7eec5c54fdb1913f825c5069d066a45e1d7085`  
		Last Modified: Sat, 29 Dec 2018 03:29:50 GMT  
		Size: 4.5 MB (4503273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2604803ec9df7e16d6d7bdf93dadb089a58e52fade4e62d38759fcaf12b6d21`  
		Last Modified: Sat, 29 Dec 2018 03:29:55 GMT  
		Size: 22.1 MB (22053825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca7c72a90381e5ece6d3d0f09ed16bee9ebc4b5dff8aa4abdd7489dd1d30422`  
		Last Modified: Sat, 29 Dec 2018 03:29:49 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9bb8b0e2e4f9dfa2c7f38d6e99b48ffd7500ebfaa247f0d15d2008eb30df1a`  
		Last Modified: Sat, 29 Dec 2018 03:29:49 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb4f2adde89230792421c56d5da102e44844f6bb20c4a0cef083df6f2be6a18`  
		Last Modified: Sat, 29 Dec 2018 03:29:49 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:a870827c50c824ea61713784e246c893bb9e4f4c0b4074054f0165cfd4068f1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43635530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fef48e2092a97f8e8fd9efdf59ba375ba95fb2356dde3c7086e8c037e8be0ae3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:20:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 14:20:42 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Sat, 29 Dec 2018 14:21:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 14:21:01 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 14:21:02 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 14:21:02 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 14:21:03 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 14:21:04 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 14:21:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 14:21:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4c7846b3e7459cd93201407050c597328609a51d20b97b7d9b28927a304283`  
		Last Modified: Sat, 29 Dec 2018 14:22:19 GMT  
		Size: 3.9 MB (3877114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d01b8ebc119598b39ae24130d6707ec092fb2e770a12a127e0a8de6ba85b94`  
		Last Modified: Sat, 29 Dec 2018 14:22:26 GMT  
		Size: 20.5 MB (20456268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb98f3dc32f977f6b542f2d923a12e699d6be0cead7e633e3634581a0c49e5`  
		Last Modified: Sat, 29 Dec 2018 14:22:18 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73536df5982721321e0544af945ff7cecf0ad4c132ddbd2dea645c12d83830f7`  
		Last Modified: Sat, 29 Dec 2018 14:22:18 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005beda7e94e1fe9fc0e1cc4b6786c236bf4d44b6bf64ff144aa3d69c1ba843`  
		Last Modified: Sat, 29 Dec 2018 14:22:18 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:1056f971c56d44f099657080c932cfec3a00cb01c4f1d18b3ba1c9ddc9afcd08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45101583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5918b681f19551fba774bac2088fccaf5be7c5ba47426f3bf7497c3d73c4eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:56:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 16:56:45 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Sat, 29 Dec 2018 16:57:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 16:57:31 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 16:57:31 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 16:57:32 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 16:57:35 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 16:57:36 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 16:57:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 16:57:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1b77d8260092d5c64f8a0fbf875f97284b872fcdb97a7de3fb6d5f5ade6226`  
		Last Modified: Sat, 29 Dec 2018 17:01:32 GMT  
		Size: 4.1 MB (4078503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da441e5d75d41fa585500551581100e2c6affe730e938018ab6bb8d3895b2196`  
		Last Modified: Sat, 29 Dec 2018 17:01:39 GMT  
		Size: 20.7 MB (20661171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe50860ac40ff92976c34e70e1a9678c403ebbf88a3347ec3eb05695c65c0de6`  
		Last Modified: Sat, 29 Dec 2018 17:01:31 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e30bfba9bde5fa75511830ffbbd6833bf5a5e3d203820b3254010e078da893d`  
		Last Modified: Sat, 29 Dec 2018 17:01:31 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe64ab3d72e4f150edfbb297466636dbfdf9d0530634de1f766a3ba51f961897`  
		Last Modified: Sat, 29 Dec 2018 17:01:31 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0`

```console
$ docker pull chronograf@sha256:640855503324f061de7154673e2f87f149745c3d93f7a7b6e9899c0b571b521e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0` - linux; amd64

```console
$ docker pull chronograf@sha256:ba19f1bc0a6b00b4e02700cc60775ba6d509c14c70a254b5686d7866f44cdafb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49074414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36be5c78eef0bf50d9d5ee81f6301709dfe2a6694a5ac7b495691cd8cd352fa0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:28:37 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 03:28:37 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Sat, 29 Dec 2018 03:28:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 03:28:49 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 03:28:49 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 03:28:49 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 03:28:49 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 03:28:50 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 03:28:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 03:28:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91dfe7f2c52afc2c71c8254c6f7eec5c54fdb1913f825c5069d066a45e1d7085`  
		Last Modified: Sat, 29 Dec 2018 03:29:50 GMT  
		Size: 4.5 MB (4503273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2604803ec9df7e16d6d7bdf93dadb089a58e52fade4e62d38759fcaf12b6d21`  
		Last Modified: Sat, 29 Dec 2018 03:29:55 GMT  
		Size: 22.1 MB (22053825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca7c72a90381e5ece6d3d0f09ed16bee9ebc4b5dff8aa4abdd7489dd1d30422`  
		Last Modified: Sat, 29 Dec 2018 03:29:49 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9bb8b0e2e4f9dfa2c7f38d6e99b48ffd7500ebfaa247f0d15d2008eb30df1a`  
		Last Modified: Sat, 29 Dec 2018 03:29:49 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb4f2adde89230792421c56d5da102e44844f6bb20c4a0cef083df6f2be6a18`  
		Last Modified: Sat, 29 Dec 2018 03:29:49 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:a870827c50c824ea61713784e246c893bb9e4f4c0b4074054f0165cfd4068f1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43635530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fef48e2092a97f8e8fd9efdf59ba375ba95fb2356dde3c7086e8c037e8be0ae3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:20:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 14:20:42 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Sat, 29 Dec 2018 14:21:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 14:21:01 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 14:21:02 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 14:21:02 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 14:21:03 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 14:21:04 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 14:21:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 14:21:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4c7846b3e7459cd93201407050c597328609a51d20b97b7d9b28927a304283`  
		Last Modified: Sat, 29 Dec 2018 14:22:19 GMT  
		Size: 3.9 MB (3877114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d01b8ebc119598b39ae24130d6707ec092fb2e770a12a127e0a8de6ba85b94`  
		Last Modified: Sat, 29 Dec 2018 14:22:26 GMT  
		Size: 20.5 MB (20456268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb98f3dc32f977f6b542f2d923a12e699d6be0cead7e633e3634581a0c49e5`  
		Last Modified: Sat, 29 Dec 2018 14:22:18 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73536df5982721321e0544af945ff7cecf0ad4c132ddbd2dea645c12d83830f7`  
		Last Modified: Sat, 29 Dec 2018 14:22:18 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005beda7e94e1fe9fc0e1cc4b6786c236bf4d44b6bf64ff144aa3d69c1ba843`  
		Last Modified: Sat, 29 Dec 2018 14:22:18 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:1056f971c56d44f099657080c932cfec3a00cb01c4f1d18b3ba1c9ddc9afcd08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45101583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5918b681f19551fba774bac2088fccaf5be7c5ba47426f3bf7497c3d73c4eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:56:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 16:56:45 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Sat, 29 Dec 2018 16:57:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 16:57:31 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 16:57:31 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 16:57:32 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 16:57:35 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 16:57:36 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 16:57:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 16:57:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1b77d8260092d5c64f8a0fbf875f97284b872fcdb97a7de3fb6d5f5ade6226`  
		Last Modified: Sat, 29 Dec 2018 17:01:32 GMT  
		Size: 4.1 MB (4078503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da441e5d75d41fa585500551581100e2c6affe730e938018ab6bb8d3895b2196`  
		Last Modified: Sat, 29 Dec 2018 17:01:39 GMT  
		Size: 20.7 MB (20661171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe50860ac40ff92976c34e70e1a9678c403ebbf88a3347ec3eb05695c65c0de6`  
		Last Modified: Sat, 29 Dec 2018 17:01:31 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e30bfba9bde5fa75511830ffbbd6833bf5a5e3d203820b3254010e078da893d`  
		Last Modified: Sat, 29 Dec 2018 17:01:31 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe64ab3d72e4f150edfbb297466636dbfdf9d0530634de1f766a3ba51f961897`  
		Last Modified: Sat, 29 Dec 2018 17:01:31 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1`

```console
$ docker pull chronograf@sha256:640855503324f061de7154673e2f87f149745c3d93f7a7b6e9899c0b571b521e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.5.0.1` - linux; amd64

```console
$ docker pull chronograf@sha256:ba19f1bc0a6b00b4e02700cc60775ba6d509c14c70a254b5686d7866f44cdafb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49074414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36be5c78eef0bf50d9d5ee81f6301709dfe2a6694a5ac7b495691cd8cd352fa0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:28:37 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 03:28:37 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Sat, 29 Dec 2018 03:28:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 03:28:49 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 03:28:49 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 03:28:49 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 03:28:49 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 03:28:50 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 03:28:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 03:28:51 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91dfe7f2c52afc2c71c8254c6f7eec5c54fdb1913f825c5069d066a45e1d7085`  
		Last Modified: Sat, 29 Dec 2018 03:29:50 GMT  
		Size: 4.5 MB (4503273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2604803ec9df7e16d6d7bdf93dadb089a58e52fade4e62d38759fcaf12b6d21`  
		Last Modified: Sat, 29 Dec 2018 03:29:55 GMT  
		Size: 22.1 MB (22053825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca7c72a90381e5ece6d3d0f09ed16bee9ebc4b5dff8aa4abdd7489dd1d30422`  
		Last Modified: Sat, 29 Dec 2018 03:29:49 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9bb8b0e2e4f9dfa2c7f38d6e99b48ffd7500ebfaa247f0d15d2008eb30df1a`  
		Last Modified: Sat, 29 Dec 2018 03:29:49 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb4f2adde89230792421c56d5da102e44844f6bb20c4a0cef083df6f2be6a18`  
		Last Modified: Sat, 29 Dec 2018 03:29:49 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:a870827c50c824ea61713784e246c893bb9e4f4c0b4074054f0165cfd4068f1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.6 MB (43635530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fef48e2092a97f8e8fd9efdf59ba375ba95fb2356dde3c7086e8c037e8be0ae3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:20:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 14:20:42 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Sat, 29 Dec 2018 14:21:00 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 14:21:01 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 14:21:02 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 14:21:02 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 14:21:03 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 14:21:04 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 14:21:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 14:21:05 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4c7846b3e7459cd93201407050c597328609a51d20b97b7d9b28927a304283`  
		Last Modified: Sat, 29 Dec 2018 14:22:19 GMT  
		Size: 3.9 MB (3877114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44d01b8ebc119598b39ae24130d6707ec092fb2e770a12a127e0a8de6ba85b94`  
		Last Modified: Sat, 29 Dec 2018 14:22:26 GMT  
		Size: 20.5 MB (20456268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4bb98f3dc32f977f6b542f2d923a12e699d6be0cead7e633e3634581a0c49e5`  
		Last Modified: Sat, 29 Dec 2018 14:22:18 GMT  
		Size: 12.2 KB (12247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73536df5982721321e0544af945ff7cecf0ad4c132ddbd2dea645c12d83830f7`  
		Last Modified: Sat, 29 Dec 2018 14:22:18 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6005beda7e94e1fe9fc0e1cc4b6786c236bf4d44b6bf64ff144aa3d69c1ba843`  
		Last Modified: Sat, 29 Dec 2018 14:22:18 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.5.0.1` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:1056f971c56d44f099657080c932cfec3a00cb01c4f1d18b3ba1c9ddc9afcd08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.1 MB (45101583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a5918b681f19551fba774bac2088fccaf5be7c5ba47426f3bf7497c3d73c4eb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:56:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 16:56:45 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Sat, 29 Dec 2018 16:57:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 16:57:31 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 16:57:31 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 16:57:32 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 16:57:35 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 16:57:36 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 16:57:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 16:57:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1b77d8260092d5c64f8a0fbf875f97284b872fcdb97a7de3fb6d5f5ade6226`  
		Last Modified: Sat, 29 Dec 2018 17:01:32 GMT  
		Size: 4.1 MB (4078503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da441e5d75d41fa585500551581100e2c6affe730e938018ab6bb8d3895b2196`  
		Last Modified: Sat, 29 Dec 2018 17:01:39 GMT  
		Size: 20.7 MB (20661171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe50860ac40ff92976c34e70e1a9678c403ebbf88a3347ec3eb05695c65c0de6`  
		Last Modified: Sat, 29 Dec 2018 17:01:31 GMT  
		Size: 12.2 KB (12250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e30bfba9bde5fa75511830ffbbd6833bf5a5e3d203820b3254010e078da893d`  
		Last Modified: Sat, 29 Dec 2018 17:01:31 GMT  
		Size: 11.9 KB (11908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe64ab3d72e4f150edfbb297466636dbfdf9d0530634de1f766a3ba51f961897`  
		Last Modified: Sat, 29 Dec 2018 17:01:31 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0.1-alpine`

```console
$ docker pull chronograf@sha256:2498d580b5cab90d6db737a5a326ae240a0d8cdc2858ebe4cea41212d9def471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0.1-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:c4b4687aa6880d5a51079405cb62fa3ff5deaaa9ed54af036f59252b3bf6c315
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14164656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9496fac873a6fb8336677c2c5d2667078522240588f9f1a5336ab61b0856355`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:24 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:19:24 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 10 Jan 2019 22:19:28 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:19:29 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 10 Jan 2019 22:19:29 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 10 Jan 2019 22:19:29 GMT
EXPOSE 8888
# Thu, 10 Jan 2019 22:19:29 GMT
VOLUME [/var/lib/chronograf]
# Thu, 10 Jan 2019 22:19:29 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:19:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:19:30 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4cd3866a9b4defaeec2d83b5bce5f48075b09175092e8fc1023790461f2862`  
		Last Modified: Thu, 10 Jan 2019 22:20:05 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29adb48a60bab2a12e2e9f2e9aa1596cddddadf9d9bb95453dd30bdaf18e041d`  
		Last Modified: Thu, 10 Jan 2019 22:20:07 GMT  
		Size: 11.6 MB (11623975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdde97acaebe7000e02f5e33e262920a54014838df1e278cf2a98950c996879f`  
		Last Modified: Thu, 10 Jan 2019 22:20:05 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95de0ecff4ee33c876375481105e97b2d44c41664be797907789f6dd237acdf`  
		Last Modified: Thu, 10 Jan 2019 22:20:19 GMT  
		Size: 11.9 KB (11897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9548e1061daca9906410043ccd950852abc7d1193c886032d277acd795b8de`  
		Last Modified: Thu, 10 Jan 2019 22:20:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5.0-alpine`

```console
$ docker pull chronograf@sha256:2498d580b5cab90d6db737a5a326ae240a0d8cdc2858ebe4cea41212d9def471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5.0-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:c4b4687aa6880d5a51079405cb62fa3ff5deaaa9ed54af036f59252b3bf6c315
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14164656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9496fac873a6fb8336677c2c5d2667078522240588f9f1a5336ab61b0856355`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:24 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:19:24 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 10 Jan 2019 22:19:28 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:19:29 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 10 Jan 2019 22:19:29 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 10 Jan 2019 22:19:29 GMT
EXPOSE 8888
# Thu, 10 Jan 2019 22:19:29 GMT
VOLUME [/var/lib/chronograf]
# Thu, 10 Jan 2019 22:19:29 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:19:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:19:30 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4cd3866a9b4defaeec2d83b5bce5f48075b09175092e8fc1023790461f2862`  
		Last Modified: Thu, 10 Jan 2019 22:20:05 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29adb48a60bab2a12e2e9f2e9aa1596cddddadf9d9bb95453dd30bdaf18e041d`  
		Last Modified: Thu, 10 Jan 2019 22:20:07 GMT  
		Size: 11.6 MB (11623975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdde97acaebe7000e02f5e33e262920a54014838df1e278cf2a98950c996879f`  
		Last Modified: Thu, 10 Jan 2019 22:20:05 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95de0ecff4ee33c876375481105e97b2d44c41664be797907789f6dd237acdf`  
		Last Modified: Thu, 10 Jan 2019 22:20:19 GMT  
		Size: 11.9 KB (11897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9548e1061daca9906410043ccd950852abc7d1193c886032d277acd795b8de`  
		Last Modified: Thu, 10 Jan 2019 22:20:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.5-alpine`

```console
$ docker pull chronograf@sha256:2498d580b5cab90d6db737a5a326ae240a0d8cdc2858ebe4cea41212d9def471
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.5-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:c4b4687aa6880d5a51079405cb62fa3ff5deaaa9ed54af036f59252b3bf6c315
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14164656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9496fac873a6fb8336677c2c5d2667078522240588f9f1a5336ab61b0856355`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:24 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:19:24 GMT
ENV CHRONOGRAF_VERSION=1.5.0.1
# Thu, 10 Jan 2019 22:19:28 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:19:29 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 10 Jan 2019 22:19:29 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 10 Jan 2019 22:19:29 GMT
EXPOSE 8888
# Thu, 10 Jan 2019 22:19:29 GMT
VOLUME [/var/lib/chronograf]
# Thu, 10 Jan 2019 22:19:29 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:19:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:19:30 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4cd3866a9b4defaeec2d83b5bce5f48075b09175092e8fc1023790461f2862`  
		Last Modified: Thu, 10 Jan 2019 22:20:05 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29adb48a60bab2a12e2e9f2e9aa1596cddddadf9d9bb95453dd30bdaf18e041d`  
		Last Modified: Thu, 10 Jan 2019 22:20:07 GMT  
		Size: 11.6 MB (11623975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdde97acaebe7000e02f5e33e262920a54014838df1e278cf2a98950c996879f`  
		Last Modified: Thu, 10 Jan 2019 22:20:05 GMT  
		Size: 12.2 KB (12240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f95de0ecff4ee33c876375481105e97b2d44c41664be797907789f6dd237acdf`  
		Last Modified: Thu, 10 Jan 2019 22:20:19 GMT  
		Size: 11.9 KB (11897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9548e1061daca9906410043ccd950852abc7d1193c886032d277acd795b8de`  
		Last Modified: Thu, 10 Jan 2019 22:20:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6`

```console
$ docker pull chronograf@sha256:fea960ae8965bc1b8391e7f44603a49d6600a453e7fcf255f8da7fd579437234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6` - linux; amd64

```console
$ docker pull chronograf@sha256:2649b184c89d4f03a779d5b950413868d87733577a2d21454b02f9e25b89da34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49116264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7290296acf9a61323424db7715883e87dc08f5c916686b95ca9120a48d24b3de`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:28:37 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 03:29:01 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Sat, 29 Dec 2018 03:29:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 03:29:12 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 03:29:13 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 03:29:13 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 03:29:13 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 03:29:13 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 03:29:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 03:29:13 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91dfe7f2c52afc2c71c8254c6f7eec5c54fdb1913f825c5069d066a45e1d7085`  
		Last Modified: Sat, 29 Dec 2018 03:29:50 GMT  
		Size: 4.5 MB (4503273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f725495762d1b25ed38ca067a6096bc0a523540a6c975613dfeb8a640843ab08`  
		Last Modified: Sat, 29 Dec 2018 03:30:09 GMT  
		Size: 22.1 MB (22095675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3f542350ee5f94e0bc1a31f52ee96d972afce129733dfa23c72fc1ad7692bc`  
		Last Modified: Sat, 29 Dec 2018 03:30:02 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f64849a6c306be693610e9507b18b0df439d47e06324b6bdd640dfd9a2c08b`  
		Last Modified: Sat, 29 Dec 2018 03:30:02 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a30e30ff23256f1555096d0fdb8acbe672e471d06a8568a14d0ed17da4636f`  
		Last Modified: Sat, 29 Dec 2018 03:30:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:298aedd5680a512fb64ac88b254e413fbcb88dc7b0bc2fd6591c0dc5a184c5af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43699180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a3e9ea3d0fa0782e3933c22a02e2c8de6e906c62b92d3b55416780b2ea4819`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:20:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 14:21:15 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Sat, 29 Dec 2018 14:21:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 14:21:35 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 14:21:36 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 14:21:37 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 14:21:37 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 14:21:38 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 14:21:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 14:21:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4c7846b3e7459cd93201407050c597328609a51d20b97b7d9b28927a304283`  
		Last Modified: Sat, 29 Dec 2018 14:22:19 GMT  
		Size: 3.9 MB (3877114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66e8e4b026e6d17b9524b897b8e3ab764aaa09db58ce03dec62f2ee8a6df89e`  
		Last Modified: Sat, 29 Dec 2018 14:22:40 GMT  
		Size: 20.5 MB (20519921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3074be99653588bddfb17aa4823e8428d7db7aad5d4ff966377eb62f6e521deb`  
		Last Modified: Sat, 29 Dec 2018 14:22:32 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb6ec36f53c0ecaa355ec447c480b8b77c5b62f2cca94633401fe28d33c0f50`  
		Last Modified: Sat, 29 Dec 2018 14:22:32 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96acd030f585e7a40c4370e47948531f1562d63e407405481406359b78865a2`  
		Last Modified: Sat, 29 Dec 2018 14:22:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:770b331b26109275b8df086e1a5dcaf42fef8e5bbcd575c54514158e2caca2ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45160926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8b1e06da125854091d3f319c3400cd1d7994a7ba566a91f45d2c93dd5e4fca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:56:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 16:57:57 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Sat, 29 Dec 2018 16:59:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 16:59:34 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 16:59:35 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 16:59:37 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 16:59:40 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 16:59:40 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 16:59:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 16:59:43 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1b77d8260092d5c64f8a0fbf875f97284b872fcdb97a7de3fb6d5f5ade6226`  
		Last Modified: Sat, 29 Dec 2018 17:01:32 GMT  
		Size: 4.1 MB (4078503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97e94e043db03835bb20678997112e844551de63d2f749e6c828472cfe38677`  
		Last Modified: Sat, 29 Dec 2018 17:01:57 GMT  
		Size: 20.7 MB (20720511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d9a51959a55097e3ceccf85f63adc6a379d0764ad6d04384d680be018e395f`  
		Last Modified: Sat, 29 Dec 2018 17:01:50 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a196688654bdeccb74e4585488738a45f470a08e602209232ee03ea358b7da9`  
		Last Modified: Sat, 29 Dec 2018 17:01:49 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1b0768440b45b0e7a8000a34c04479ff2e96284a560fce49b7a36a0cdc1497`  
		Last Modified: Sat, 29 Dec 2018 17:01:49 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.2`

```console
$ docker pull chronograf@sha256:fea960ae8965bc1b8391e7f44603a49d6600a453e7fcf255f8da7fd579437234
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.6.2` - linux; amd64

```console
$ docker pull chronograf@sha256:2649b184c89d4f03a779d5b950413868d87733577a2d21454b02f9e25b89da34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49116264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7290296acf9a61323424db7715883e87dc08f5c916686b95ca9120a48d24b3de`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:28:37 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 03:29:01 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Sat, 29 Dec 2018 03:29:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 03:29:12 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 03:29:13 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 03:29:13 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 03:29:13 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 03:29:13 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 03:29:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 03:29:13 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91dfe7f2c52afc2c71c8254c6f7eec5c54fdb1913f825c5069d066a45e1d7085`  
		Last Modified: Sat, 29 Dec 2018 03:29:50 GMT  
		Size: 4.5 MB (4503273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f725495762d1b25ed38ca067a6096bc0a523540a6c975613dfeb8a640843ab08`  
		Last Modified: Sat, 29 Dec 2018 03:30:09 GMT  
		Size: 22.1 MB (22095675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3f542350ee5f94e0bc1a31f52ee96d972afce129733dfa23c72fc1ad7692bc`  
		Last Modified: Sat, 29 Dec 2018 03:30:02 GMT  
		Size: 12.3 KB (12251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f64849a6c306be693610e9507b18b0df439d47e06324b6bdd640dfd9a2c08b`  
		Last Modified: Sat, 29 Dec 2018 03:30:02 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a30e30ff23256f1555096d0fdb8acbe672e471d06a8568a14d0ed17da4636f`  
		Last Modified: Sat, 29 Dec 2018 03:30:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.2` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:298aedd5680a512fb64ac88b254e413fbcb88dc7b0bc2fd6591c0dc5a184c5af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 MB (43699180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a3e9ea3d0fa0782e3933c22a02e2c8de6e906c62b92d3b55416780b2ea4819`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:20:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 14:21:15 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Sat, 29 Dec 2018 14:21:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 14:21:35 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 14:21:36 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 14:21:37 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 14:21:37 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 14:21:38 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 14:21:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 14:21:39 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4c7846b3e7459cd93201407050c597328609a51d20b97b7d9b28927a304283`  
		Last Modified: Sat, 29 Dec 2018 14:22:19 GMT  
		Size: 3.9 MB (3877114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66e8e4b026e6d17b9524b897b8e3ab764aaa09db58ce03dec62f2ee8a6df89e`  
		Last Modified: Sat, 29 Dec 2018 14:22:40 GMT  
		Size: 20.5 MB (20519921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3074be99653588bddfb17aa4823e8428d7db7aad5d4ff966377eb62f6e521deb`  
		Last Modified: Sat, 29 Dec 2018 14:22:32 GMT  
		Size: 12.2 KB (12246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb6ec36f53c0ecaa355ec447c480b8b77c5b62f2cca94633401fe28d33c0f50`  
		Last Modified: Sat, 29 Dec 2018 14:22:32 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96acd030f585e7a40c4370e47948531f1562d63e407405481406359b78865a2`  
		Last Modified: Sat, 29 Dec 2018 14:22:32 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.6.2` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:770b331b26109275b8df086e1a5dcaf42fef8e5bbcd575c54514158e2caca2ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45160926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8b1e06da125854091d3f319c3400cd1d7994a7ba566a91f45d2c93dd5e4fca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:56:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 16:57:57 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Sat, 29 Dec 2018 16:59:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Sat, 29 Dec 2018 16:59:34 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Sat, 29 Dec 2018 16:59:35 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Sat, 29 Dec 2018 16:59:37 GMT
EXPOSE 8888
# Sat, 29 Dec 2018 16:59:40 GMT
VOLUME [/var/lib/chronograf]
# Sat, 29 Dec 2018 16:59:40 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Sat, 29 Dec 2018 16:59:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 16:59:43 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1b77d8260092d5c64f8a0fbf875f97284b872fcdb97a7de3fb6d5f5ade6226`  
		Last Modified: Sat, 29 Dec 2018 17:01:32 GMT  
		Size: 4.1 MB (4078503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f97e94e043db03835bb20678997112e844551de63d2f749e6c828472cfe38677`  
		Last Modified: Sat, 29 Dec 2018 17:01:57 GMT  
		Size: 20.7 MB (20720511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d9a51959a55097e3ceccf85f63adc6a379d0764ad6d04384d680be018e395f`  
		Last Modified: Sat, 29 Dec 2018 17:01:50 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a196688654bdeccb74e4585488738a45f470a08e602209232ee03ea358b7da9`  
		Last Modified: Sat, 29 Dec 2018 17:01:49 GMT  
		Size: 11.9 KB (11910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1b0768440b45b0e7a8000a34c04479ff2e96284a560fce49b7a36a0cdc1497`  
		Last Modified: Sat, 29 Dec 2018 17:01:49 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6.2-alpine`

```console
$ docker pull chronograf@sha256:cde57d0beb9060c332674e20636d9b089cc1a61cf530fe244500ddf67d059717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6.2-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:7c20b62caa5ebad7ab0f0f51329eaad0e5203c93b604927a2ec709faac5ab0b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14277404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbfbce31150bf607585c0eeb43112a5f0d7866da20a309c42d28d584ff9060cc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:24 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:19:36 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Thu, 10 Jan 2019 22:19:40 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:19:41 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 10 Jan 2019 22:19:41 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 10 Jan 2019 22:19:41 GMT
EXPOSE 8888
# Thu, 10 Jan 2019 22:19:41 GMT
VOLUME [/var/lib/chronograf]
# Thu, 10 Jan 2019 22:19:41 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:19:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:19:42 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4cd3866a9b4defaeec2d83b5bce5f48075b09175092e8fc1023790461f2862`  
		Last Modified: Thu, 10 Jan 2019 22:20:05 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf6afa3fd92fbe30bce1dca7379a3aa20eb252c89581e0870c647c622c61cad`  
		Last Modified: Thu, 10 Jan 2019 22:20:25 GMT  
		Size: 11.7 MB (11736721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491498c88d71c7803fd9dd734208d71610e2620d42d8c55ee2ab297a92c88177`  
		Last Modified: Thu, 10 Jan 2019 22:20:23 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd49901c69cefb7bfc2282ee0ab104c3e95036a9dabb7f8cc9d2fd28adeb318`  
		Last Modified: Thu, 10 Jan 2019 22:20:23 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dcc9bfdcb925fa3876278b5a9e8e3d0aa50a774b152282c1b0081631c77a83`  
		Last Modified: Thu, 10 Jan 2019 22:20:23 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.6-alpine`

```console
$ docker pull chronograf@sha256:cde57d0beb9060c332674e20636d9b089cc1a61cf530fe244500ddf67d059717
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.6-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:7c20b62caa5ebad7ab0f0f51329eaad0e5203c93b604927a2ec709faac5ab0b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14277404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbfbce31150bf607585c0eeb43112a5f0d7866da20a309c42d28d584ff9060cc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:24 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Thu, 10 Jan 2019 22:19:36 GMT
ENV CHRONOGRAF_VERSION=1.6.2
# Thu, 10 Jan 2019 22:19:40 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:19:41 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Thu, 10 Jan 2019 22:19:41 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Thu, 10 Jan 2019 22:19:41 GMT
EXPOSE 8888
# Thu, 10 Jan 2019 22:19:41 GMT
VOLUME [/var/lib/chronograf]
# Thu, 10 Jan 2019 22:19:41 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:19:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:19:42 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4cd3866a9b4defaeec2d83b5bce5f48075b09175092e8fc1023790461f2862`  
		Last Modified: Thu, 10 Jan 2019 22:20:05 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcf6afa3fd92fbe30bce1dca7379a3aa20eb252c89581e0870c647c622c61cad`  
		Last Modified: Thu, 10 Jan 2019 22:20:25 GMT  
		Size: 11.7 MB (11736721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:491498c88d71c7803fd9dd734208d71610e2620d42d8c55ee2ab297a92c88177`  
		Last Modified: Thu, 10 Jan 2019 22:20:23 GMT  
		Size: 12.2 KB (12238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd49901c69cefb7bfc2282ee0ab104c3e95036a9dabb7f8cc9d2fd28adeb318`  
		Last Modified: Thu, 10 Jan 2019 22:20:23 GMT  
		Size: 11.9 KB (11901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dcc9bfdcb925fa3876278b5a9e8e3d0aa50a774b152282c1b0081631c77a83`  
		Last Modified: Thu, 10 Jan 2019 22:20:23 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7`

```console
$ docker pull chronograf@sha256:c40a36e684ab2040cdfd2e4570e1cecbfe940a9faea53efda8353a3d35ed1628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.7` - linux; amd64

```console
$ docker pull chronograf@sha256:21f22441077713f6b945d869bb5cb3ec88801f8e2cfc9fc456d86f7364bc0b02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55223952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac922cbf1644526295fa22366f5dc547b9df9b8645b4fa4af610f86584fbaa82`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:28:37 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 16 Jan 2019 00:19:30 GMT
ENV CHRONOGRAF_VERSION=1.7.6
# Wed, 16 Jan 2019 00:19:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 16 Jan 2019 00:19:44 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 16 Jan 2019 00:19:44 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 16 Jan 2019 00:19:44 GMT
EXPOSE 8888
# Wed, 16 Jan 2019 00:19:44 GMT
VOLUME [/var/lib/chronograf]
# Wed, 16 Jan 2019 00:19:44 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 16 Jan 2019 00:19:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Jan 2019 00:19:45 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91dfe7f2c52afc2c71c8254c6f7eec5c54fdb1913f825c5069d066a45e1d7085`  
		Last Modified: Sat, 29 Dec 2018 03:29:50 GMT  
		Size: 4.5 MB (4503273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08146e6367ff03517eeba635864331fb3a77d0870bb822e97209918bbc8cc0a7`  
		Last Modified: Wed, 16 Jan 2019 00:20:13 GMT  
		Size: 28.2 MB (28203368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfe402cf99b4ab2a9e382e56d1129ceb1fb7e4dac891554c318552d8e36cf02`  
		Last Modified: Wed, 16 Jan 2019 00:20:08 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a83f09c3fbec55fb44f55292a0226c9d4a86147bb33d7a1aeb4aebd6dce024`  
		Last Modified: Wed, 16 Jan 2019 00:20:09 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6924e1beec45b2c1b386bc3431e246fdd839eb8ce236045b9df7e3f502bf68e`  
		Last Modified: Wed, 16 Jan 2019 00:20:09 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:d33fc327487635c2954f1e7391da543b9b3b28cb658114402c34d112f5f05fc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49197414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d125847ddf7eda239ab5f2d13c0c4ba34696b27770eff0757ef78e4761e4889`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:20:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 16 Jan 2019 12:57:26 GMT
ENV CHRONOGRAF_VERSION=1.7.6
# Wed, 16 Jan 2019 12:57:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 16 Jan 2019 12:57:47 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 16 Jan 2019 12:57:48 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 16 Jan 2019 12:57:48 GMT
EXPOSE 8888
# Wed, 16 Jan 2019 12:57:49 GMT
VOLUME [/var/lib/chronograf]
# Wed, 16 Jan 2019 12:57:49 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 16 Jan 2019 12:57:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Jan 2019 12:57:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4c7846b3e7459cd93201407050c597328609a51d20b97b7d9b28927a304283`  
		Last Modified: Sat, 29 Dec 2018 14:22:19 GMT  
		Size: 3.9 MB (3877114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca92b25c4f8501a28fcff3b5e1d869fc7f271d73fb9b93a4c0f572b4da9277f`  
		Last Modified: Wed, 16 Jan 2019 12:58:09 GMT  
		Size: 26.0 MB (26018143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a9119a0b3968eaca5de81555e1ddd837fb7d352dd1982308a298eb967cec9d`  
		Last Modified: Wed, 16 Jan 2019 12:58:01 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40c76249fa3b90a2ed4d724cec79c990d54557ab0d09bbfc762d2dfe2d27a8d`  
		Last Modified: Wed, 16 Jan 2019 12:58:01 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff35d34929feed19c0a2ef39232bf06291b671f8cb807f8d92ac15fe9d1163a`  
		Last Modified: Wed, 16 Jan 2019 12:58:01 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:9b6e393d1476fe3c61d472ce7e4fcc0ab7c62aa96651e5d868b816dceb2679e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50661139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3fce9868a84eb39567c4f44e63b206a0a38d94081f071f49445649727faa83c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:56:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 16 Jan 2019 09:39:32 GMT
ENV CHRONOGRAF_VERSION=1.7.6
# Wed, 16 Jan 2019 09:40:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 16 Jan 2019 09:40:17 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 16 Jan 2019 09:40:18 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 16 Jan 2019 09:40:19 GMT
EXPOSE 8888
# Wed, 16 Jan 2019 09:40:20 GMT
VOLUME [/var/lib/chronograf]
# Wed, 16 Jan 2019 09:40:21 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 16 Jan 2019 09:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Jan 2019 09:40:23 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1b77d8260092d5c64f8a0fbf875f97284b872fcdb97a7de3fb6d5f5ade6226`  
		Last Modified: Sat, 29 Dec 2018 17:01:32 GMT  
		Size: 4.1 MB (4078503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d52d0725db22d7001d5d90cf639784874234e790c8fd09fb7f267e0c7733bad`  
		Last Modified: Wed, 16 Jan 2019 09:40:54 GMT  
		Size: 26.2 MB (26220722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ca7408912e0d4035cb8792d7c335d098a8f58d945d6b7a04d8a2c8b0ffe9a`  
		Last Modified: Wed, 16 Jan 2019 09:40:46 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990e17cb0e7c0b6e876c694384e5697aba56815ae01bed2e3bb44bbcbfacc769`  
		Last Modified: Wed, 16 Jan 2019 09:40:46 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfed57b464e7d42738e7f88c6851c55d975721a7ec9d878f6bd2049122e124be`  
		Last Modified: Wed, 16 Jan 2019 09:40:46 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7.7`

```console
$ docker pull chronograf@sha256:c40a36e684ab2040cdfd2e4570e1cecbfe940a9faea53efda8353a3d35ed1628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:1.7.7` - linux; amd64

```console
$ docker pull chronograf@sha256:21f22441077713f6b945d869bb5cb3ec88801f8e2cfc9fc456d86f7364bc0b02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55223952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac922cbf1644526295fa22366f5dc547b9df9b8645b4fa4af610f86584fbaa82`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:28:37 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 16 Jan 2019 00:19:30 GMT
ENV CHRONOGRAF_VERSION=1.7.6
# Wed, 16 Jan 2019 00:19:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 16 Jan 2019 00:19:44 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 16 Jan 2019 00:19:44 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 16 Jan 2019 00:19:44 GMT
EXPOSE 8888
# Wed, 16 Jan 2019 00:19:44 GMT
VOLUME [/var/lib/chronograf]
# Wed, 16 Jan 2019 00:19:44 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 16 Jan 2019 00:19:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Jan 2019 00:19:45 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91dfe7f2c52afc2c71c8254c6f7eec5c54fdb1913f825c5069d066a45e1d7085`  
		Last Modified: Sat, 29 Dec 2018 03:29:50 GMT  
		Size: 4.5 MB (4503273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08146e6367ff03517eeba635864331fb3a77d0870bb822e97209918bbc8cc0a7`  
		Last Modified: Wed, 16 Jan 2019 00:20:13 GMT  
		Size: 28.2 MB (28203368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfe402cf99b4ab2a9e382e56d1129ceb1fb7e4dac891554c318552d8e36cf02`  
		Last Modified: Wed, 16 Jan 2019 00:20:08 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a83f09c3fbec55fb44f55292a0226c9d4a86147bb33d7a1aeb4aebd6dce024`  
		Last Modified: Wed, 16 Jan 2019 00:20:09 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6924e1beec45b2c1b386bc3431e246fdd839eb8ce236045b9df7e3f502bf68e`  
		Last Modified: Wed, 16 Jan 2019 00:20:09 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7.7` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:d33fc327487635c2954f1e7391da543b9b3b28cb658114402c34d112f5f05fc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49197414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d125847ddf7eda239ab5f2d13c0c4ba34696b27770eff0757ef78e4761e4889`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:20:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 16 Jan 2019 12:57:26 GMT
ENV CHRONOGRAF_VERSION=1.7.6
# Wed, 16 Jan 2019 12:57:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 16 Jan 2019 12:57:47 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 16 Jan 2019 12:57:48 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 16 Jan 2019 12:57:48 GMT
EXPOSE 8888
# Wed, 16 Jan 2019 12:57:49 GMT
VOLUME [/var/lib/chronograf]
# Wed, 16 Jan 2019 12:57:49 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 16 Jan 2019 12:57:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Jan 2019 12:57:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4c7846b3e7459cd93201407050c597328609a51d20b97b7d9b28927a304283`  
		Last Modified: Sat, 29 Dec 2018 14:22:19 GMT  
		Size: 3.9 MB (3877114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca92b25c4f8501a28fcff3b5e1d869fc7f271d73fb9b93a4c0f572b4da9277f`  
		Last Modified: Wed, 16 Jan 2019 12:58:09 GMT  
		Size: 26.0 MB (26018143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a9119a0b3968eaca5de81555e1ddd837fb7d352dd1982308a298eb967cec9d`  
		Last Modified: Wed, 16 Jan 2019 12:58:01 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40c76249fa3b90a2ed4d724cec79c990d54557ab0d09bbfc762d2dfe2d27a8d`  
		Last Modified: Wed, 16 Jan 2019 12:58:01 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff35d34929feed19c0a2ef39232bf06291b671f8cb807f8d92ac15fe9d1163a`  
		Last Modified: Wed, 16 Jan 2019 12:58:01 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:1.7.7` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:9b6e393d1476fe3c61d472ce7e4fcc0ab7c62aa96651e5d868b816dceb2679e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50661139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3fce9868a84eb39567c4f44e63b206a0a38d94081f071f49445649727faa83c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:56:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 16 Jan 2019 09:39:32 GMT
ENV CHRONOGRAF_VERSION=1.7.6
# Wed, 16 Jan 2019 09:40:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 16 Jan 2019 09:40:17 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 16 Jan 2019 09:40:18 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 16 Jan 2019 09:40:19 GMT
EXPOSE 8888
# Wed, 16 Jan 2019 09:40:20 GMT
VOLUME [/var/lib/chronograf]
# Wed, 16 Jan 2019 09:40:21 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 16 Jan 2019 09:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Jan 2019 09:40:23 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1b77d8260092d5c64f8a0fbf875f97284b872fcdb97a7de3fb6d5f5ade6226`  
		Last Modified: Sat, 29 Dec 2018 17:01:32 GMT  
		Size: 4.1 MB (4078503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d52d0725db22d7001d5d90cf639784874234e790c8fd09fb7f267e0c7733bad`  
		Last Modified: Wed, 16 Jan 2019 09:40:54 GMT  
		Size: 26.2 MB (26220722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ca7408912e0d4035cb8792d7c335d098a8f58d945d6b7a04d8a2c8b0ffe9a`  
		Last Modified: Wed, 16 Jan 2019 09:40:46 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990e17cb0e7c0b6e876c694384e5697aba56815ae01bed2e3bb44bbcbfacc769`  
		Last Modified: Wed, 16 Jan 2019 09:40:46 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfed57b464e7d42738e7f88c6851c55d975721a7ec9d878f6bd2049122e124be`  
		Last Modified: Wed, 16 Jan 2019 09:40:46 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7.7-alpine`

```console
$ docker pull chronograf@sha256:3875acb451b1a3d5ccd02d7cffa28e8cf5b0693fa6641ca5ec442f6cc3f744bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.7.7-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:3b21b33226297a607194001f9421756ce82005a16fe7541acc9c6b2558c6a5b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16691642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327b9efee79ae17f40a585e41b38e1da48fbc9801bcdab5f7d521d0dc617a60f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:24 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 16 Jan 2019 00:19:50 GMT
ENV CHRONOGRAF_VERSION=1.7.6
# Wed, 16 Jan 2019 00:19:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 16 Jan 2019 00:19:55 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Wed, 16 Jan 2019 00:19:55 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 16 Jan 2019 00:19:56 GMT
EXPOSE 8888
# Wed, 16 Jan 2019 00:19:56 GMT
VOLUME [/var/lib/chronograf]
# Wed, 16 Jan 2019 00:19:56 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Wed, 16 Jan 2019 00:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Jan 2019 00:19:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4cd3866a9b4defaeec2d83b5bce5f48075b09175092e8fc1023790461f2862`  
		Last Modified: Thu, 10 Jan 2019 22:20:05 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5aec48bf9b5dd863b3850851c54e076737ee1e99ff047b04610c37fb0ba09b`  
		Last Modified: Wed, 16 Jan 2019 00:20:21 GMT  
		Size: 14.2 MB (14150957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053fc991ccdaff53925857c63cab5238277189f575af6e691a4dda1fe6be4759`  
		Last Modified: Wed, 16 Jan 2019 00:20:18 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfde19b35c615d59e9562e3dec01fef9c231f7a512c905f1a2ce5ff871e0e96`  
		Last Modified: Wed, 16 Jan 2019 00:20:18 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d80cd5ff58b43a046f314c42abf71bc8f11fce082d33f060a50cfbc8c85f8d3`  
		Last Modified: Wed, 16 Jan 2019 00:20:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:1.7-alpine`

```console
$ docker pull chronograf@sha256:3875acb451b1a3d5ccd02d7cffa28e8cf5b0693fa6641ca5ec442f6cc3f744bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:1.7-alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:3b21b33226297a607194001f9421756ce82005a16fe7541acc9c6b2558c6a5b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16691642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327b9efee79ae17f40a585e41b38e1da48fbc9801bcdab5f7d521d0dc617a60f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:24 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 16 Jan 2019 00:19:50 GMT
ENV CHRONOGRAF_VERSION=1.7.6
# Wed, 16 Jan 2019 00:19:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 16 Jan 2019 00:19:55 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Wed, 16 Jan 2019 00:19:55 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 16 Jan 2019 00:19:56 GMT
EXPOSE 8888
# Wed, 16 Jan 2019 00:19:56 GMT
VOLUME [/var/lib/chronograf]
# Wed, 16 Jan 2019 00:19:56 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Wed, 16 Jan 2019 00:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Jan 2019 00:19:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4cd3866a9b4defaeec2d83b5bce5f48075b09175092e8fc1023790461f2862`  
		Last Modified: Thu, 10 Jan 2019 22:20:05 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5aec48bf9b5dd863b3850851c54e076737ee1e99ff047b04610c37fb0ba09b`  
		Last Modified: Wed, 16 Jan 2019 00:20:21 GMT  
		Size: 14.2 MB (14150957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053fc991ccdaff53925857c63cab5238277189f575af6e691a4dda1fe6be4759`  
		Last Modified: Wed, 16 Jan 2019 00:20:18 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfde19b35c615d59e9562e3dec01fef9c231f7a512c905f1a2ce5ff871e0e96`  
		Last Modified: Wed, 16 Jan 2019 00:20:18 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d80cd5ff58b43a046f314c42abf71bc8f11fce082d33f060a50cfbc8c85f8d3`  
		Last Modified: Wed, 16 Jan 2019 00:20:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:alpine`

```console
$ docker pull chronograf@sha256:3875acb451b1a3d5ccd02d7cffa28e8cf5b0693fa6641ca5ec442f6cc3f744bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `chronograf:alpine` - linux; amd64

```console
$ docker pull chronograf@sha256:3b21b33226297a607194001f9421756ce82005a16fe7541acc9c6b2558c6a5b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16691642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327b9efee79ae17f40a585e41b38e1da48fbc9801bcdab5f7d521d0dc617a60f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:19:24 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Wed, 16 Jan 2019 00:19:50 GMT
ENV CHRONOGRAF_VERSION=1.7.6
# Wed, 16 Jan 2019 00:19:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/chronograf/releases/chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz.asc chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf chronograf-${CHRONOGRAF_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/chronograf-*/chronograf.conf &&     chmod +x /usr/src/chronograf-*/* &&     cp -a /usr/src/chronograf-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 16 Jan 2019 00:19:55 GMT
COPY file:aa4a9d01295c7013d89da92a943af071556aea6dbe6269affd4664fdd86969b8 in /usr/share/chronograf/LICENSE 
# Wed, 16 Jan 2019 00:19:55 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 16 Jan 2019 00:19:56 GMT
EXPOSE 8888
# Wed, 16 Jan 2019 00:19:56 GMT
VOLUME [/var/lib/chronograf]
# Wed, 16 Jan 2019 00:19:56 GMT
COPY file:91fe01086b7984524af1eeb6657c6aea15ce5e169fd42a42e1ef2c54374d30a2 in /entrypoint.sh 
# Wed, 16 Jan 2019 00:19:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Jan 2019 00:19:56 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4cd3866a9b4defaeec2d83b5bce5f48075b09175092e8fc1023790461f2862`  
		Last Modified: Thu, 10 Jan 2019 22:20:05 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5aec48bf9b5dd863b3850851c54e076737ee1e99ff047b04610c37fb0ba09b`  
		Last Modified: Wed, 16 Jan 2019 00:20:21 GMT  
		Size: 14.2 MB (14150957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053fc991ccdaff53925857c63cab5238277189f575af6e691a4dda1fe6be4759`  
		Last Modified: Wed, 16 Jan 2019 00:20:18 GMT  
		Size: 12.2 KB (12243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dfde19b35c615d59e9562e3dec01fef9c231f7a512c905f1a2ce5ff871e0e96`  
		Last Modified: Wed, 16 Jan 2019 00:20:18 GMT  
		Size: 11.9 KB (11899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d80cd5ff58b43a046f314c42abf71bc8f11fce082d33f060a50cfbc8c85f8d3`  
		Last Modified: Wed, 16 Jan 2019 00:20:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `chronograf:latest`

```console
$ docker pull chronograf@sha256:c40a36e684ab2040cdfd2e4570e1cecbfe940a9faea53efda8353a3d35ed1628
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `chronograf:latest` - linux; amd64

```console
$ docker pull chronograf@sha256:21f22441077713f6b945d869bb5cb3ec88801f8e2cfc9fc456d86f7364bc0b02
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55223952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac922cbf1644526295fa22366f5dc547b9df9b8645b4fa4af610f86584fbaa82`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:28:37 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 16 Jan 2019 00:19:30 GMT
ENV CHRONOGRAF_VERSION=1.7.6
# Wed, 16 Jan 2019 00:19:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 16 Jan 2019 00:19:44 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 16 Jan 2019 00:19:44 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 16 Jan 2019 00:19:44 GMT
EXPOSE 8888
# Wed, 16 Jan 2019 00:19:44 GMT
VOLUME [/var/lib/chronograf]
# Wed, 16 Jan 2019 00:19:44 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 16 Jan 2019 00:19:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Jan 2019 00:19:45 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91dfe7f2c52afc2c71c8254c6f7eec5c54fdb1913f825c5069d066a45e1d7085`  
		Last Modified: Sat, 29 Dec 2018 03:29:50 GMT  
		Size: 4.5 MB (4503273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08146e6367ff03517eeba635864331fb3a77d0870bb822e97209918bbc8cc0a7`  
		Last Modified: Wed, 16 Jan 2019 00:20:13 GMT  
		Size: 28.2 MB (28203368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfe402cf99b4ab2a9e382e56d1129ceb1fb7e4dac891554c318552d8e36cf02`  
		Last Modified: Wed, 16 Jan 2019 00:20:08 GMT  
		Size: 12.2 KB (12249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a83f09c3fbec55fb44f55292a0226c9d4a86147bb33d7a1aeb4aebd6dce024`  
		Last Modified: Wed, 16 Jan 2019 00:20:09 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6924e1beec45b2c1b386bc3431e246fdd839eb8ce236045b9df7e3f502bf68e`  
		Last Modified: Wed, 16 Jan 2019 00:20:09 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm variant v7

```console
$ docker pull chronograf@sha256:d33fc327487635c2954f1e7391da543b9b3b28cb658114402c34d112f5f05fc4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49197414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d125847ddf7eda239ab5f2d13c0c4ba34696b27770eff0757ef78e4761e4889`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:57 GMT
ADD file:287bc4fa3803b40afca4bcac26d92079fb862f7b968e960e01ae536b1b5c7aea in / 
# Sat, 29 Dec 2018 13:04:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 14:20:42 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 16 Jan 2019 12:57:26 GMT
ENV CHRONOGRAF_VERSION=1.7.6
# Wed, 16 Jan 2019 12:57:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 16 Jan 2019 12:57:47 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 16 Jan 2019 12:57:48 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 16 Jan 2019 12:57:48 GMT
EXPOSE 8888
# Wed, 16 Jan 2019 12:57:49 GMT
VOLUME [/var/lib/chronograf]
# Wed, 16 Jan 2019 12:57:49 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 16 Jan 2019 12:57:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Jan 2019 12:57:50 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:eb2ab017daa46c13a41d60225632e89c8b5c24a9bdafb2b75b1d415830b41e6b`  
		Last Modified: Sat, 29 Dec 2018 13:12:36 GMT  
		Size: 19.3 MB (19277755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4c7846b3e7459cd93201407050c597328609a51d20b97b7d9b28927a304283`  
		Last Modified: Sat, 29 Dec 2018 14:22:19 GMT  
		Size: 3.9 MB (3877114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ca92b25c4f8501a28fcff3b5e1d869fc7f271d73fb9b93a4c0f572b4da9277f`  
		Last Modified: Wed, 16 Jan 2019 12:58:09 GMT  
		Size: 26.0 MB (26018143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a9119a0b3968eaca5de81555e1ddd837fb7d352dd1982308a298eb967cec9d`  
		Last Modified: Wed, 16 Jan 2019 12:58:01 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a40c76249fa3b90a2ed4d724cec79c990d54557ab0d09bbfc762d2dfe2d27a8d`  
		Last Modified: Wed, 16 Jan 2019 12:58:01 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff35d34929feed19c0a2ef39232bf06291b671f8cb807f8d92ac15fe9d1163a`  
		Last Modified: Wed, 16 Jan 2019 12:58:01 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `chronograf:latest` - linux; arm64 variant v8

```console
$ docker pull chronograf@sha256:9b6e393d1476fe3c61d472ce7e4fcc0ab7c62aa96651e5d868b816dceb2679e9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50661139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3fce9868a84eb39567c4f44e63b206a0a38d94081f071f49445649727faa83c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["chronograf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:46 GMT
ADD file:e4db5c28a0f74e32be4419aae491e4b9dc7402f3640369289e24c52028c871ad in / 
# Sat, 29 Dec 2018 10:08:47 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 16:56:44 GMT
RUN set -ex &&     apt-get update && apt-get install -y gpg dirmngr --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 16 Jan 2019 09:39:32 GMT
ENV CHRONOGRAF_VERSION=1.7.6
# Wed, 16 Jan 2019 09:40:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     set -x &&     apt-get update && apt-get install -y ca-certificates curl --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc" &&     curl -SLO "https://dl.influxdata.com/chronograf/releases/chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb" &&     gpg --batch --verify chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb.asc chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     dpkg -i chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb &&     rm -f chronograf_${CHRONOGRAF_VERSION}_${ARCH}.deb* &&     apt-get purge -y --auto-remove $buildDeps
# Wed, 16 Jan 2019 09:40:17 GMT
COPY file:6403df1bf15a98453f66ca6b38ee538c184409065ea1d3c321788dec9eaa5c77 in /usr/share/chronograf/LICENSE 
# Wed, 16 Jan 2019 09:40:18 GMT
COPY file:6a5854b87d89e3055231dd56f8f199c325f44eeed8faed4cf32833126a5b9cd9 in /usr/share/chronograf/agpl-3.0.md 
# Wed, 16 Jan 2019 09:40:19 GMT
EXPOSE 8888
# Wed, 16 Jan 2019 09:40:20 GMT
VOLUME [/var/lib/chronograf]
# Wed, 16 Jan 2019 09:40:21 GMT
COPY file:7ce45912f7e80a04754c20ff31c757dd5de5eb9a5845af3b183b4a5227dd1c1e in /entrypoint.sh 
# Wed, 16 Jan 2019 09:40:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Jan 2019 09:40:23 GMT
CMD ["chronograf"]
```

-	Layers:
	-	`sha256:1a07b0163994a6d3328beeaa3400f6304e68548ffb84deefcb74427a6b65a489`  
		Last Modified: Sat, 29 Dec 2018 10:15:04 GMT  
		Size: 20.3 MB (20337511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1b77d8260092d5c64f8a0fbf875f97284b872fcdb97a7de3fb6d5f5ade6226`  
		Last Modified: Sat, 29 Dec 2018 17:01:32 GMT  
		Size: 4.1 MB (4078503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d52d0725db22d7001d5d90cf639784874234e790c8fd09fb7f267e0c7733bad`  
		Last Modified: Wed, 16 Jan 2019 09:40:54 GMT  
		Size: 26.2 MB (26220722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ca7408912e0d4035cb8792d7c335d098a8f58d945d6b7a04d8a2c8b0ffe9a`  
		Last Modified: Wed, 16 Jan 2019 09:40:46 GMT  
		Size: 12.3 KB (12252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:990e17cb0e7c0b6e876c694384e5697aba56815ae01bed2e3bb44bbcbfacc769`  
		Last Modified: Wed, 16 Jan 2019 09:40:46 GMT  
		Size: 11.9 KB (11911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfed57b464e7d42738e7f88c6851c55d975721a7ec9d878f6bd2049122e124be`  
		Last Modified: Wed, 16 Jan 2019 09:40:46 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
