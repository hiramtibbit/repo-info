<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `thrift`

-	[`thrift:0.10`](#thrift010)
-	[`thrift:0.10.0`](#thrift0100)
-	[`thrift:0.11`](#thrift011)
-	[`thrift:0.11.0`](#thrift0110)
-	[`thrift:0.9`](#thrift09)
-	[`thrift:0.9.3`](#thrift093)
-	[`thrift:latest`](#thriftlatest)

## `thrift:0.10`

```console
$ docker pull thrift@sha256:0143ad2ca19d21fa95c4f3f7051c251b6f36debfb799adbeed428677dad004f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `thrift:0.10` - linux; amd64

```console
$ docker pull thrift@sha256:3d093244498a84a8f5402c0e8f4bdef587818691c992a9259981a6516d25b79a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52326674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8d2a02b402d183f15e7a62ae904b63ca644c4954e16bda3342446397f551824`
-	Default Command: `["thrift"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:03:03 GMT
MAINTAINER Adam Hawkins <hi@ahawkins.me>
# Tue, 26 Jun 2018 22:03:04 GMT
ENV THRIFT_VERSION=0.10.0
# Tue, 26 Jun 2018 22:07:12 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Jun 2018 22:07:12 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6241c5e53efda8cd17e2409511eb655ad76f904425c7fa9fc21d1d06f2cb9614`  
		Last Modified: Tue, 26 Jun 2018 22:12:30 GMT  
		Size: 13.0 MB (12986982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `thrift:0.10.0`

```console
$ docker pull thrift@sha256:0143ad2ca19d21fa95c4f3f7051c251b6f36debfb799adbeed428677dad004f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `thrift:0.10.0` - linux; amd64

```console
$ docker pull thrift@sha256:3d093244498a84a8f5402c0e8f4bdef587818691c992a9259981a6516d25b79a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52326674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8d2a02b402d183f15e7a62ae904b63ca644c4954e16bda3342446397f551824`
-	Default Command: `["thrift"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:03:03 GMT
MAINTAINER Adam Hawkins <hi@ahawkins.me>
# Tue, 26 Jun 2018 22:03:04 GMT
ENV THRIFT_VERSION=0.10.0
# Tue, 26 Jun 2018 22:07:12 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Jun 2018 22:07:12 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6241c5e53efda8cd17e2409511eb655ad76f904425c7fa9fc21d1d06f2cb9614`  
		Last Modified: Tue, 26 Jun 2018 22:12:30 GMT  
		Size: 13.0 MB (12986982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `thrift:0.11`

```console
$ docker pull thrift@sha256:b138ae26a291335a7b07dbcd07298632ff5d911b2a2c45a78bc0338dfa16fe80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `thrift:0.11` - linux; amd64

```console
$ docker pull thrift@sha256:922e01c84caa97cf08791d50ed0db7a0d811017c0e7b34880caa18e494a33eba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52472344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b862eecaa91449a9a7acb8fe0dfabe5a45bddc477fd1907ff7f95ad4b1c03ef8`
-	Default Command: `["thrift"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:07:34 GMT
LABEL authors=Adam Hawkins <hi@ahawkins.me>
# Tue, 26 Jun 2018 22:07:34 GMT
ENV THRIFT_VERSION=0.11.0
# Tue, 26 Jun 2018 22:11:33 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Jun 2018 22:11:34 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceac4119cb5e3c0599571072eeb95394264480cec4c16c5db23b87cee388b5f2`  
		Last Modified: Tue, 26 Jun 2018 22:12:59 GMT  
		Size: 13.1 MB (13132652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `thrift:0.11.0`

```console
$ docker pull thrift@sha256:b138ae26a291335a7b07dbcd07298632ff5d911b2a2c45a78bc0338dfa16fe80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `thrift:0.11.0` - linux; amd64

```console
$ docker pull thrift@sha256:922e01c84caa97cf08791d50ed0db7a0d811017c0e7b34880caa18e494a33eba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52472344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b862eecaa91449a9a7acb8fe0dfabe5a45bddc477fd1907ff7f95ad4b1c03ef8`
-	Default Command: `["thrift"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:07:34 GMT
LABEL authors=Adam Hawkins <hi@ahawkins.me>
# Tue, 26 Jun 2018 22:07:34 GMT
ENV THRIFT_VERSION=0.11.0
# Tue, 26 Jun 2018 22:11:33 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Jun 2018 22:11:34 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceac4119cb5e3c0599571072eeb95394264480cec4c16c5db23b87cee388b5f2`  
		Last Modified: Tue, 26 Jun 2018 22:12:59 GMT  
		Size: 13.1 MB (13132652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `thrift:0.9`

```console
$ docker pull thrift@sha256:55a9c36476d9230cbaf68a3fc18e300c2b9c59067466b705498b2c8916126a95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `thrift:0.9` - linux; amd64

```console
$ docker pull thrift@sha256:a755b7e8d13018ae3e1ca7adcf9808c2be8f76b4342fc9be9f0cc0b5ecc07e46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51268798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7534fcd369191870f53a6582336f37a8a1acd9213bb5d587f2d728b4a92182bf`
-	Default Command: `["thrift"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:58:32 GMT
MAINTAINER Adam Hawkins <adam@hawkins.io>
# Tue, 26 Jun 2018 21:58:32 GMT
ENV THRIFT_VERSION=0.9.3
# Tue, 26 Jun 2018 22:02:41 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Jun 2018 22:02:45 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cad6f283a679f405104a868c351550017fc42286e77f274c69d945e27122b6e`  
		Last Modified: Tue, 26 Jun 2018 22:12:00 GMT  
		Size: 11.9 MB (11929106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `thrift:0.9.3`

```console
$ docker pull thrift@sha256:55a9c36476d9230cbaf68a3fc18e300c2b9c59067466b705498b2c8916126a95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `thrift:0.9.3` - linux; amd64

```console
$ docker pull thrift@sha256:a755b7e8d13018ae3e1ca7adcf9808c2be8f76b4342fc9be9f0cc0b5ecc07e46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51268798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7534fcd369191870f53a6582336f37a8a1acd9213bb5d587f2d728b4a92182bf`
-	Default Command: `["thrift"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 21:58:32 GMT
MAINTAINER Adam Hawkins <adam@hawkins.io>
# Tue, 26 Jun 2018 21:58:32 GMT
ENV THRIFT_VERSION=0.9.3
# Tue, 26 Jun 2018 22:02:41 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Jun 2018 22:02:45 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cad6f283a679f405104a868c351550017fc42286e77f274c69d945e27122b6e`  
		Last Modified: Tue, 26 Jun 2018 22:12:00 GMT  
		Size: 11.9 MB (11929106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `thrift:latest`

```console
$ docker pull thrift@sha256:b138ae26a291335a7b07dbcd07298632ff5d911b2a2c45a78bc0338dfa16fe80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `thrift:latest` - linux; amd64

```console
$ docker pull thrift@sha256:922e01c84caa97cf08791d50ed0db7a0d811017c0e7b34880caa18e494a33eba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52472344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b862eecaa91449a9a7acb8fe0dfabe5a45bddc477fd1907ff7f95ad4b1c03ef8`
-	Default Command: `["thrift"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:07:34 GMT
LABEL authors=Adam Hawkins <hi@ahawkins.me>
# Tue, 26 Jun 2018 22:07:34 GMT
ENV THRIFT_VERSION=0.11.0
# Tue, 26 Jun 2018 22:11:33 GMT
RUN buildDeps=" 		automake 		bison 		curl 		flex 		g++ 		libboost-dev 		libboost-filesystem-dev 		libboost-program-options-dev 		libboost-system-dev 		libboost-test-dev 		libevent-dev 		libssl-dev 		libtool 		make 		pkg-config 	"; 	apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* 	&& curl -sSL "http://apache.mirrors.spacedump.net/thrift/$THRIFT_VERSION/thrift-$THRIFT_VERSION.tar.gz" -o thrift.tar.gz 	&& mkdir -p /usr/src/thrift 	&& tar zxf thrift.tar.gz -C /usr/src/thrift --strip-components=1 	&& rm thrift.tar.gz 	&& cd /usr/src/thrift 	&& ./configure  --without-python --without-cpp 	&& make 	&& make install 	&& cd / 	&& rm -rf /usr/src/thrift 	&& curl -k -sSL "https://storage.googleapis.com/golang/go1.4.linux-amd64.tar.gz" -o go.tar.gz 	&& tar xzf go.tar.gz 	&& rm go.tar.gz 	&& cp go/bin/gofmt /usr/bin/gofmt 	&& rm -rf go 	&& apt-get purge -y --auto-remove $buildDeps
# Tue, 26 Jun 2018 22:11:34 GMT
CMD ["thrift"]
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceac4119cb5e3c0599571072eeb95394264480cec4c16c5db23b87cee388b5f2`  
		Last Modified: Tue, 26 Jun 2018 22:12:59 GMT  
		Size: 13.1 MB (13132652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
