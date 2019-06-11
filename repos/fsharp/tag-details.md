<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `fsharp`

-	[`fsharp:10`](#fsharp10)
-	[`fsharp:10.2`](#fsharp102)
-	[`fsharp:10.2.3`](#fsharp1023)
-	[`fsharp:10.2.3-netcore`](#fsharp1023-netcore)
-	[`fsharp:10.2-netcore`](#fsharp102-netcore)
-	[`fsharp:10-netcore`](#fsharp10-netcore)
-	[`fsharp:4`](#fsharp4)
-	[`fsharp:4.1`](#fsharp41)
-	[`fsharp:4.1.34`](#fsharp4134)
-	[`fsharp:latest`](#fsharplatest)
-	[`fsharp:netcore`](#fsharpnetcore)

## `fsharp:10`

```console
$ docker pull fsharp@sha256:02d3556ff20d2442e271a9cf943649532f678ebe82c956ee7227de6b4f6df3c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:10` - linux; amd64

```console
$ docker pull fsharp@sha256:882d7ea69773e0fa4637b322d9214e29828bf220266310f789518b864490feca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175159846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa1399a924eab113055a2c0bbb13f2af8e52a363c760a5a07670084f5c50acc`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:53:39 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 05:53:39 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 06:10:09 GMT
RUN MONO_VERSION=5.20.1.19 &&     FSHARP_VERSION=10.2.3 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 11 Jun 2019 06:10:10 GMT
WORKDIR /root
# Tue, 11 Jun 2019 06:10:10 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15dba2f8b28ca0b3dbee4c34bc8d94190b145137b981665e916e9c2520139e2`  
		Last Modified: Tue, 11 Jun 2019 06:34:24 GMT  
		Size: 152.7 MB (152670544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:10` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:76ad9cf164d13f8d487e4e7fd360d95b49a9d98b20bb89d4dd43392badc514e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168825168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4039ecc2de29cc54aa2bb3deaedb0db261e68241bcbd63cec6af3baa85c69f`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:40:54 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 00:40:54 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 00:58:21 GMT
RUN MONO_VERSION=5.20.1.19 &&     FSHARP_VERSION=10.2.3 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 11 Jun 2019 00:58:23 GMT
WORKDIR /root
# Tue, 11 Jun 2019 00:58:24 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66b7d82b5b2feadc911cdf1b4a7a4301eac565998224c7ad6757721594aaea4`  
		Last Modified: Tue, 11 Jun 2019 00:59:42 GMT  
		Size: 148.5 MB (148491378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2`

```console
$ docker pull fsharp@sha256:02d3556ff20d2442e271a9cf943649532f678ebe82c956ee7227de6b4f6df3c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:10.2` - linux; amd64

```console
$ docker pull fsharp@sha256:882d7ea69773e0fa4637b322d9214e29828bf220266310f789518b864490feca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175159846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa1399a924eab113055a2c0bbb13f2af8e52a363c760a5a07670084f5c50acc`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:53:39 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 05:53:39 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 06:10:09 GMT
RUN MONO_VERSION=5.20.1.19 &&     FSHARP_VERSION=10.2.3 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 11 Jun 2019 06:10:10 GMT
WORKDIR /root
# Tue, 11 Jun 2019 06:10:10 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15dba2f8b28ca0b3dbee4c34bc8d94190b145137b981665e916e9c2520139e2`  
		Last Modified: Tue, 11 Jun 2019 06:34:24 GMT  
		Size: 152.7 MB (152670544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:10.2` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:76ad9cf164d13f8d487e4e7fd360d95b49a9d98b20bb89d4dd43392badc514e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168825168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4039ecc2de29cc54aa2bb3deaedb0db261e68241bcbd63cec6af3baa85c69f`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:40:54 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 00:40:54 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 00:58:21 GMT
RUN MONO_VERSION=5.20.1.19 &&     FSHARP_VERSION=10.2.3 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 11 Jun 2019 00:58:23 GMT
WORKDIR /root
# Tue, 11 Jun 2019 00:58:24 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66b7d82b5b2feadc911cdf1b4a7a4301eac565998224c7ad6757721594aaea4`  
		Last Modified: Tue, 11 Jun 2019 00:59:42 GMT  
		Size: 148.5 MB (148491378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2.3`

```console
$ docker pull fsharp@sha256:02d3556ff20d2442e271a9cf943649532f678ebe82c956ee7227de6b4f6df3c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:10.2.3` - linux; amd64

```console
$ docker pull fsharp@sha256:882d7ea69773e0fa4637b322d9214e29828bf220266310f789518b864490feca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175159846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa1399a924eab113055a2c0bbb13f2af8e52a363c760a5a07670084f5c50acc`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:53:39 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 05:53:39 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 06:10:09 GMT
RUN MONO_VERSION=5.20.1.19 &&     FSHARP_VERSION=10.2.3 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 11 Jun 2019 06:10:10 GMT
WORKDIR /root
# Tue, 11 Jun 2019 06:10:10 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15dba2f8b28ca0b3dbee4c34bc8d94190b145137b981665e916e9c2520139e2`  
		Last Modified: Tue, 11 Jun 2019 06:34:24 GMT  
		Size: 152.7 MB (152670544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:10.2.3` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:76ad9cf164d13f8d487e4e7fd360d95b49a9d98b20bb89d4dd43392badc514e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168825168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4039ecc2de29cc54aa2bb3deaedb0db261e68241bcbd63cec6af3baa85c69f`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:40:54 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 00:40:54 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 00:58:21 GMT
RUN MONO_VERSION=5.20.1.19 &&     FSHARP_VERSION=10.2.3 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 11 Jun 2019 00:58:23 GMT
WORKDIR /root
# Tue, 11 Jun 2019 00:58:24 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66b7d82b5b2feadc911cdf1b4a7a4301eac565998224c7ad6757721594aaea4`  
		Last Modified: Tue, 11 Jun 2019 00:59:42 GMT  
		Size: 148.5 MB (148491378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2.3-netcore`

```console
$ docker pull fsharp@sha256:8656dc23530a4d7acd1c9338ae6a760d102dc5e725092348d7f26f69cb256e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10.2.3-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:47f6a79701cac6f95b46d7508aeca582c51b71a4382cc7084bc19011b5dbb0ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **670.5 MB (670453089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f20ad30c660f56ffbb2202fe996bc678a588f3a1b43f9cb94e64c17ba7aa6a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:53:39 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 05:53:39 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 06:10:09 GMT
RUN MONO_VERSION=5.20.1.19 &&     FSHARP_VERSION=10.2.3 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 11 Jun 2019 06:10:10 GMT
WORKDIR /root
# Tue, 11 Jun 2019 06:10:10 GMT
CMD ["fsharpi"]
# Tue, 11 Jun 2019 06:31:04 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 06:31:04 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.2-api/
# Tue, 11 Jun 2019 06:31:05 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 11 Jun 2019 06:31:20 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 06:31:56 GMT
RUN DOTNET_SDK_VERSION=2.2.203 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=8DA955FA0AEEBB6513A6E8C4C23472286ED78BD5533AF37D79A4F2C42060E736FDA5FD48B61BF5AEC10BBA96EB2610FACC0F8A458823D374E1D437B26BA61A5C &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 11 Jun 2019 06:31:56 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 11 Jun 2019 06:33:04 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 11 Jun 2019 06:33:05 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15dba2f8b28ca0b3dbee4c34bc8d94190b145137b981665e916e9c2520139e2`  
		Last Modified: Tue, 11 Jun 2019 06:34:24 GMT  
		Size: 152.7 MB (152670544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3ead41952744f9686a6bed6f6b5e755e4bfde904dd15186f6a46215750fb83`  
		Last Modified: Tue, 11 Jun 2019 06:35:37 GMT  
		Size: 18.0 MB (18026077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962f77aee5c03c7bb2c55042be2690bce36b8da876402bd484af24cdce7bfcc0`  
		Last Modified: Tue, 11 Jun 2019 06:36:06 GMT  
		Size: 173.3 MB (173312590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c02c72d6fb74f3796406fd97ceee7180e4305c17e5b33109383ff46d9d180d5`  
		Last Modified: Tue, 11 Jun 2019 06:36:26 GMT  
		Size: 304.0 MB (303954576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2-netcore`

```console
$ docker pull fsharp@sha256:8656dc23530a4d7acd1c9338ae6a760d102dc5e725092348d7f26f69cb256e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10.2-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:47f6a79701cac6f95b46d7508aeca582c51b71a4382cc7084bc19011b5dbb0ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **670.5 MB (670453089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f20ad30c660f56ffbb2202fe996bc678a588f3a1b43f9cb94e64c17ba7aa6a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:53:39 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 05:53:39 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 06:10:09 GMT
RUN MONO_VERSION=5.20.1.19 &&     FSHARP_VERSION=10.2.3 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 11 Jun 2019 06:10:10 GMT
WORKDIR /root
# Tue, 11 Jun 2019 06:10:10 GMT
CMD ["fsharpi"]
# Tue, 11 Jun 2019 06:31:04 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 06:31:04 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.2-api/
# Tue, 11 Jun 2019 06:31:05 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 11 Jun 2019 06:31:20 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 06:31:56 GMT
RUN DOTNET_SDK_VERSION=2.2.203 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=8DA955FA0AEEBB6513A6E8C4C23472286ED78BD5533AF37D79A4F2C42060E736FDA5FD48B61BF5AEC10BBA96EB2610FACC0F8A458823D374E1D437B26BA61A5C &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 11 Jun 2019 06:31:56 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 11 Jun 2019 06:33:04 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 11 Jun 2019 06:33:05 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15dba2f8b28ca0b3dbee4c34bc8d94190b145137b981665e916e9c2520139e2`  
		Last Modified: Tue, 11 Jun 2019 06:34:24 GMT  
		Size: 152.7 MB (152670544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3ead41952744f9686a6bed6f6b5e755e4bfde904dd15186f6a46215750fb83`  
		Last Modified: Tue, 11 Jun 2019 06:35:37 GMT  
		Size: 18.0 MB (18026077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962f77aee5c03c7bb2c55042be2690bce36b8da876402bd484af24cdce7bfcc0`  
		Last Modified: Tue, 11 Jun 2019 06:36:06 GMT  
		Size: 173.3 MB (173312590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c02c72d6fb74f3796406fd97ceee7180e4305c17e5b33109383ff46d9d180d5`  
		Last Modified: Tue, 11 Jun 2019 06:36:26 GMT  
		Size: 304.0 MB (303954576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10-netcore`

```console
$ docker pull fsharp@sha256:8656dc23530a4d7acd1c9338ae6a760d102dc5e725092348d7f26f69cb256e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:47f6a79701cac6f95b46d7508aeca582c51b71a4382cc7084bc19011b5dbb0ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **670.5 MB (670453089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f20ad30c660f56ffbb2202fe996bc678a588f3a1b43f9cb94e64c17ba7aa6a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:53:39 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 05:53:39 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 06:10:09 GMT
RUN MONO_VERSION=5.20.1.19 &&     FSHARP_VERSION=10.2.3 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 11 Jun 2019 06:10:10 GMT
WORKDIR /root
# Tue, 11 Jun 2019 06:10:10 GMT
CMD ["fsharpi"]
# Tue, 11 Jun 2019 06:31:04 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 06:31:04 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.2-api/
# Tue, 11 Jun 2019 06:31:05 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 11 Jun 2019 06:31:20 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 06:31:56 GMT
RUN DOTNET_SDK_VERSION=2.2.203 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=8DA955FA0AEEBB6513A6E8C4C23472286ED78BD5533AF37D79A4F2C42060E736FDA5FD48B61BF5AEC10BBA96EB2610FACC0F8A458823D374E1D437B26BA61A5C &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 11 Jun 2019 06:31:56 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 11 Jun 2019 06:33:04 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 11 Jun 2019 06:33:05 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15dba2f8b28ca0b3dbee4c34bc8d94190b145137b981665e916e9c2520139e2`  
		Last Modified: Tue, 11 Jun 2019 06:34:24 GMT  
		Size: 152.7 MB (152670544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3ead41952744f9686a6bed6f6b5e755e4bfde904dd15186f6a46215750fb83`  
		Last Modified: Tue, 11 Jun 2019 06:35:37 GMT  
		Size: 18.0 MB (18026077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962f77aee5c03c7bb2c55042be2690bce36b8da876402bd484af24cdce7bfcc0`  
		Last Modified: Tue, 11 Jun 2019 06:36:06 GMT  
		Size: 173.3 MB (173312590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c02c72d6fb74f3796406fd97ceee7180e4305c17e5b33109383ff46d9d180d5`  
		Last Modified: Tue, 11 Jun 2019 06:36:26 GMT  
		Size: 304.0 MB (303954576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4`

```console
$ docker pull fsharp@sha256:801d649676d21f8b35ec2fb759a1823e0083231a4727e786eadcdb027bc12bf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4` - linux; amd64

```console
$ docker pull fsharp@sha256:4132ebf03bfef8645a1e12286e7bf83f43991af8faef9b2464900d584b71dddb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176290971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac21432fcfbd3ff8fcaed17ef19732b8bf868ff5bbd16bf39a8479020be9f34d`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:22:27 GMT
ADD file:235722b778b32c4ad9bc76ade4c42a6d1f05bce216ef941c81113127682b0f8f in / 
# Mon, 10 Jun 2019 23:22:28 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 06:10:20 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 06:10:20 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 06:30:56 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Tue, 11 Jun 2019 06:30:56 GMT
WORKDIR /root
# Tue, 11 Jun 2019 06:30:57 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:3ec709e8878b42cbd0833eeaf93930ca3cf04a1ee9faa5734114dabe3cd82bf9`  
		Last Modified: Mon, 10 Jun 2019 23:26:30 GMT  
		Size: 30.2 MB (30154031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1786287934426f58353f4d30c13fc77679fa10b2ef7f29ac0606773341bb495`  
		Last Modified: Tue, 11 Jun 2019 06:35:25 GMT  
		Size: 146.1 MB (146136940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1`

```console
$ docker pull fsharp@sha256:801d649676d21f8b35ec2fb759a1823e0083231a4727e786eadcdb027bc12bf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.1` - linux; amd64

```console
$ docker pull fsharp@sha256:4132ebf03bfef8645a1e12286e7bf83f43991af8faef9b2464900d584b71dddb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176290971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac21432fcfbd3ff8fcaed17ef19732b8bf868ff5bbd16bf39a8479020be9f34d`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:22:27 GMT
ADD file:235722b778b32c4ad9bc76ade4c42a6d1f05bce216ef941c81113127682b0f8f in / 
# Mon, 10 Jun 2019 23:22:28 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 06:10:20 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 06:10:20 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 06:30:56 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Tue, 11 Jun 2019 06:30:56 GMT
WORKDIR /root
# Tue, 11 Jun 2019 06:30:57 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:3ec709e8878b42cbd0833eeaf93930ca3cf04a1ee9faa5734114dabe3cd82bf9`  
		Last Modified: Mon, 10 Jun 2019 23:26:30 GMT  
		Size: 30.2 MB (30154031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1786287934426f58353f4d30c13fc77679fa10b2ef7f29ac0606773341bb495`  
		Last Modified: Tue, 11 Jun 2019 06:35:25 GMT  
		Size: 146.1 MB (146136940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1.34`

```console
$ docker pull fsharp@sha256:801d649676d21f8b35ec2fb759a1823e0083231a4727e786eadcdb027bc12bf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.1.34` - linux; amd64

```console
$ docker pull fsharp@sha256:4132ebf03bfef8645a1e12286e7bf83f43991af8faef9b2464900d584b71dddb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176290971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac21432fcfbd3ff8fcaed17ef19732b8bf868ff5bbd16bf39a8479020be9f34d`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:22:27 GMT
ADD file:235722b778b32c4ad9bc76ade4c42a6d1f05bce216ef941c81113127682b0f8f in / 
# Mon, 10 Jun 2019 23:22:28 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 06:10:20 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 06:10:20 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 06:30:56 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Tue, 11 Jun 2019 06:30:56 GMT
WORKDIR /root
# Tue, 11 Jun 2019 06:30:57 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:3ec709e8878b42cbd0833eeaf93930ca3cf04a1ee9faa5734114dabe3cd82bf9`  
		Last Modified: Mon, 10 Jun 2019 23:26:30 GMT  
		Size: 30.2 MB (30154031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1786287934426f58353f4d30c13fc77679fa10b2ef7f29ac0606773341bb495`  
		Last Modified: Tue, 11 Jun 2019 06:35:25 GMT  
		Size: 146.1 MB (146136940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:latest`

```console
$ docker pull fsharp@sha256:02d3556ff20d2442e271a9cf943649532f678ebe82c956ee7227de6b4f6df3c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:latest` - linux; amd64

```console
$ docker pull fsharp@sha256:882d7ea69773e0fa4637b322d9214e29828bf220266310f789518b864490feca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.2 MB (175159846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa1399a924eab113055a2c0bbb13f2af8e52a363c760a5a07670084f5c50acc`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:53:39 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 05:53:39 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 06:10:09 GMT
RUN MONO_VERSION=5.20.1.19 &&     FSHARP_VERSION=10.2.3 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 11 Jun 2019 06:10:10 GMT
WORKDIR /root
# Tue, 11 Jun 2019 06:10:10 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15dba2f8b28ca0b3dbee4c34bc8d94190b145137b981665e916e9c2520139e2`  
		Last Modified: Tue, 11 Jun 2019 06:34:24 GMT  
		Size: 152.7 MB (152670544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:latest` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:76ad9cf164d13f8d487e4e7fd360d95b49a9d98b20bb89d4dd43392badc514e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.8 MB (168825168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4039ecc2de29cc54aa2bb3deaedb0db261e68241bcbd63cec6af3baa85c69f`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:42 GMT
ADD file:cd613dd4ee4b2224b6debd778ceb35ef342fc7ea13102853ee42a5abb6f30d76 in / 
# Mon, 10 Jun 2019 23:41:43 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:40:54 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 00:40:54 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 00:58:21 GMT
RUN MONO_VERSION=5.20.1.19 &&     FSHARP_VERSION=10.2.3 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 11 Jun 2019 00:58:23 GMT
WORKDIR /root
# Tue, 11 Jun 2019 00:58:24 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:86ef8b977e9b28fc775a14aa2d4243a07dd2d142d19435649d2f478fbbee796b`  
		Last Modified: Mon, 10 Jun 2019 23:45:15 GMT  
		Size: 20.3 MB (20333790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66b7d82b5b2feadc911cdf1b4a7a4301eac565998224c7ad6757721594aaea4`  
		Last Modified: Tue, 11 Jun 2019 00:59:42 GMT  
		Size: 148.5 MB (148491378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:netcore`

```console
$ docker pull fsharp@sha256:8656dc23530a4d7acd1c9338ae6a760d102dc5e725092348d7f26f69cb256e60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:47f6a79701cac6f95b46d7508aeca582c51b71a4382cc7084bc19011b5dbb0ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **670.5 MB (670453089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f20ad30c660f56ffbb2202fe996bc678a588f3a1b43f9cb94e64c17ba7aa6a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 05:53:39 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 05:53:39 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 11 Jun 2019 06:10:09 GMT
RUN MONO_VERSION=5.20.1.19 &&     FSHARP_VERSION=10.2.3 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 11 Jun 2019 06:10:10 GMT
WORKDIR /root
# Tue, 11 Jun 2019 06:10:10 GMT
CMD ["fsharpi"]
# Tue, 11 Jun 2019 06:31:04 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 11 Jun 2019 06:31:04 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.2-api/
# Tue, 11 Jun 2019 06:31:05 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 11 Jun 2019 06:31:20 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 06:31:56 GMT
RUN DOTNET_SDK_VERSION=2.2.203 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=8DA955FA0AEEBB6513A6E8C4C23472286ED78BD5533AF37D79A4F2C42060E736FDA5FD48B61BF5AEC10BBA96EB2610FACC0F8A458823D374E1D437B26BA61A5C &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 11 Jun 2019 06:31:56 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 11 Jun 2019 06:33:04 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 11 Jun 2019 06:33:05 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15dba2f8b28ca0b3dbee4c34bc8d94190b145137b981665e916e9c2520139e2`  
		Last Modified: Tue, 11 Jun 2019 06:34:24 GMT  
		Size: 152.7 MB (152670544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3ead41952744f9686a6bed6f6b5e755e4bfde904dd15186f6a46215750fb83`  
		Last Modified: Tue, 11 Jun 2019 06:35:37 GMT  
		Size: 18.0 MB (18026077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962f77aee5c03c7bb2c55042be2690bce36b8da876402bd484af24cdce7bfcc0`  
		Last Modified: Tue, 11 Jun 2019 06:36:06 GMT  
		Size: 173.3 MB (173312590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c02c72d6fb74f3796406fd97ceee7180e4305c17e5b33109383ff46d9d180d5`  
		Last Modified: Tue, 11 Jun 2019 06:36:26 GMT  
		Size: 304.0 MB (303954576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
