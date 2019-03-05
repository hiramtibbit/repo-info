<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `fsharp`

-	[`fsharp:10`](#fsharp10)
-	[`fsharp:10.2`](#fsharp102)
-	[`fsharp:10.2.1`](#fsharp1021)
-	[`fsharp:10.2.1-netcore`](#fsharp1021-netcore)
-	[`fsharp:10.2-netcore`](#fsharp102-netcore)
-	[`fsharp:10-netcore`](#fsharp10-netcore)
-	[`fsharp:4`](#fsharp4)
-	[`fsharp:4.0`](#fsharp40)
-	[`fsharp:4.0.1`](#fsharp401)
-	[`fsharp:4.0.1.1`](#fsharp4011)
-	[`fsharp:4.1`](#fsharp41)
-	[`fsharp:4.1.34`](#fsharp4134)
-	[`fsharp:latest`](#fsharplatest)
-	[`fsharp:netcore`](#fsharpnetcore)

## `fsharp:10`

```console
$ docker pull fsharp@sha256:dbddcb89165a62b4eca122cfa1cd327bb1da8cb5e5c3503f2dda49648451357e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:10` - linux; amd64

```console
$ docker pull fsharp@sha256:b8d272a0557e47a8d0f4f160e5503bcdbf643d8c386f8542c54e139c566f1b3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167490930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953f4aafff0a5a7576ef0a9b2f9f0c5a99dd8131d8830feb19c618bbbb43e2ac`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:48:10 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 02:48:10 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 05 Mar 2019 02:58:41 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 05 Mar 2019 02:58:41 GMT
WORKDIR /root
# Tue, 05 Mar 2019 02:58:42 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d71b62e097032287b6840d2450b6d79f89dff1c07931f0f28f7fc7b94f18367`  
		Last Modified: Tue, 05 Mar 2019 03:15:30 GMT  
		Size: 145.0 MB (144994896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:10` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:6b465bdc2b279038c523c2043fc8f6002174261357523ce8ae2caffd224b9c7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162293130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a83c3834e6580d248a9f26bb76f802471872294ddbc8ccf250bd6b3f715326`
-	Default Command: `["fsharpi"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 20:48:09 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 06 Feb 2019 20:48:12 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 06 Feb 2019 21:24:29 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 06 Feb 2019 21:24:33 GMT
WORKDIR /root
# Wed, 06 Feb 2019 21:24:36 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae958a8ea55c7f7919ff011636c83e7b070d849b96edb08e699498b5e8e4c00`  
		Last Modified: Wed, 06 Feb 2019 21:25:52 GMT  
		Size: 141.9 MB (141942971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2`

```console
$ docker pull fsharp@sha256:dbddcb89165a62b4eca122cfa1cd327bb1da8cb5e5c3503f2dda49648451357e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:10.2` - linux; amd64

```console
$ docker pull fsharp@sha256:b8d272a0557e47a8d0f4f160e5503bcdbf643d8c386f8542c54e139c566f1b3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167490930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953f4aafff0a5a7576ef0a9b2f9f0c5a99dd8131d8830feb19c618bbbb43e2ac`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:48:10 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 02:48:10 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 05 Mar 2019 02:58:41 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 05 Mar 2019 02:58:41 GMT
WORKDIR /root
# Tue, 05 Mar 2019 02:58:42 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d71b62e097032287b6840d2450b6d79f89dff1c07931f0f28f7fc7b94f18367`  
		Last Modified: Tue, 05 Mar 2019 03:15:30 GMT  
		Size: 145.0 MB (144994896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:10.2` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:6b465bdc2b279038c523c2043fc8f6002174261357523ce8ae2caffd224b9c7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162293130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a83c3834e6580d248a9f26bb76f802471872294ddbc8ccf250bd6b3f715326`
-	Default Command: `["fsharpi"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 20:48:09 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 06 Feb 2019 20:48:12 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 06 Feb 2019 21:24:29 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 06 Feb 2019 21:24:33 GMT
WORKDIR /root
# Wed, 06 Feb 2019 21:24:36 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae958a8ea55c7f7919ff011636c83e7b070d849b96edb08e699498b5e8e4c00`  
		Last Modified: Wed, 06 Feb 2019 21:25:52 GMT  
		Size: 141.9 MB (141942971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2.1`

```console
$ docker pull fsharp@sha256:dbddcb89165a62b4eca122cfa1cd327bb1da8cb5e5c3503f2dda49648451357e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:10.2.1` - linux; amd64

```console
$ docker pull fsharp@sha256:b8d272a0557e47a8d0f4f160e5503bcdbf643d8c386f8542c54e139c566f1b3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167490930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953f4aafff0a5a7576ef0a9b2f9f0c5a99dd8131d8830feb19c618bbbb43e2ac`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:48:10 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 02:48:10 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 05 Mar 2019 02:58:41 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 05 Mar 2019 02:58:41 GMT
WORKDIR /root
# Tue, 05 Mar 2019 02:58:42 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d71b62e097032287b6840d2450b6d79f89dff1c07931f0f28f7fc7b94f18367`  
		Last Modified: Tue, 05 Mar 2019 03:15:30 GMT  
		Size: 145.0 MB (144994896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:10.2.1` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:6b465bdc2b279038c523c2043fc8f6002174261357523ce8ae2caffd224b9c7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162293130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a83c3834e6580d248a9f26bb76f802471872294ddbc8ccf250bd6b3f715326`
-	Default Command: `["fsharpi"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 20:48:09 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 06 Feb 2019 20:48:12 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 06 Feb 2019 21:24:29 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 06 Feb 2019 21:24:33 GMT
WORKDIR /root
# Wed, 06 Feb 2019 21:24:36 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae958a8ea55c7f7919ff011636c83e7b070d849b96edb08e699498b5e8e4c00`  
		Last Modified: Wed, 06 Feb 2019 21:25:52 GMT  
		Size: 141.9 MB (141942971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2.1-netcore`

```console
$ docker pull fsharp@sha256:4e99c6786ea3b7a5720cc831b4749d8263a9ae829970fd29d94fec4410fe4eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10.2.1-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:271c5eb04558baecd833317b8991c8743f21421e12e3b21604b5be688a829fbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.5 MB (657545075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7ef4a9f039224e6425f28b113f4377f855fb11603e973a647362a232bc85a8`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:48:10 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 02:48:10 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 05 Mar 2019 02:58:41 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 05 Mar 2019 02:58:41 GMT
WORKDIR /root
# Tue, 05 Mar 2019 02:58:42 GMT
CMD ["fsharpi"]
# Tue, 05 Mar 2019 03:13:26 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 03:13:26 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Tue, 05 Mar 2019 03:13:27 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 05 Mar 2019 03:13:36 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:13:57 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 05 Mar 2019 03:13:57 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 05 Mar 2019 03:14:47 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 05 Mar 2019 03:14:49 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d71b62e097032287b6840d2450b6d79f89dff1c07931f0f28f7fc7b94f18367`  
		Last Modified: Tue, 05 Mar 2019 03:15:30 GMT  
		Size: 145.0 MB (144994896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0399f25c66faa01756c2367569cf84fb6a31fa5bdc2cff8c8abc33c2ef5d4764`  
		Last Modified: Tue, 05 Mar 2019 03:16:28 GMT  
		Size: 18.0 MB (18025987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aace0e2222290b1c5f72616581f170cc42a1ec96437a834c38839f5c88898fe3`  
		Last Modified: Tue, 05 Mar 2019 03:16:49 GMT  
		Size: 167.3 MB (167286694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d136fdfa09dc7c91173e3d48abf0ee3d3f42c659699e012ce5d95582298ab6c2`  
		Last Modified: Tue, 05 Mar 2019 03:17:07 GMT  
		Size: 304.7 MB (304741464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2-netcore`

```console
$ docker pull fsharp@sha256:4e99c6786ea3b7a5720cc831b4749d8263a9ae829970fd29d94fec4410fe4eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10.2-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:271c5eb04558baecd833317b8991c8743f21421e12e3b21604b5be688a829fbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.5 MB (657545075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7ef4a9f039224e6425f28b113f4377f855fb11603e973a647362a232bc85a8`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:48:10 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 02:48:10 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 05 Mar 2019 02:58:41 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 05 Mar 2019 02:58:41 GMT
WORKDIR /root
# Tue, 05 Mar 2019 02:58:42 GMT
CMD ["fsharpi"]
# Tue, 05 Mar 2019 03:13:26 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 03:13:26 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Tue, 05 Mar 2019 03:13:27 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 05 Mar 2019 03:13:36 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:13:57 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 05 Mar 2019 03:13:57 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 05 Mar 2019 03:14:47 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 05 Mar 2019 03:14:49 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d71b62e097032287b6840d2450b6d79f89dff1c07931f0f28f7fc7b94f18367`  
		Last Modified: Tue, 05 Mar 2019 03:15:30 GMT  
		Size: 145.0 MB (144994896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0399f25c66faa01756c2367569cf84fb6a31fa5bdc2cff8c8abc33c2ef5d4764`  
		Last Modified: Tue, 05 Mar 2019 03:16:28 GMT  
		Size: 18.0 MB (18025987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aace0e2222290b1c5f72616581f170cc42a1ec96437a834c38839f5c88898fe3`  
		Last Modified: Tue, 05 Mar 2019 03:16:49 GMT  
		Size: 167.3 MB (167286694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d136fdfa09dc7c91173e3d48abf0ee3d3f42c659699e012ce5d95582298ab6c2`  
		Last Modified: Tue, 05 Mar 2019 03:17:07 GMT  
		Size: 304.7 MB (304741464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10-netcore`

```console
$ docker pull fsharp@sha256:4e99c6786ea3b7a5720cc831b4749d8263a9ae829970fd29d94fec4410fe4eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:271c5eb04558baecd833317b8991c8743f21421e12e3b21604b5be688a829fbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.5 MB (657545075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7ef4a9f039224e6425f28b113f4377f855fb11603e973a647362a232bc85a8`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:48:10 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 02:48:10 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 05 Mar 2019 02:58:41 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 05 Mar 2019 02:58:41 GMT
WORKDIR /root
# Tue, 05 Mar 2019 02:58:42 GMT
CMD ["fsharpi"]
# Tue, 05 Mar 2019 03:13:26 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 03:13:26 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Tue, 05 Mar 2019 03:13:27 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 05 Mar 2019 03:13:36 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:13:57 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 05 Mar 2019 03:13:57 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 05 Mar 2019 03:14:47 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 05 Mar 2019 03:14:49 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d71b62e097032287b6840d2450b6d79f89dff1c07931f0f28f7fc7b94f18367`  
		Last Modified: Tue, 05 Mar 2019 03:15:30 GMT  
		Size: 145.0 MB (144994896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0399f25c66faa01756c2367569cf84fb6a31fa5bdc2cff8c8abc33c2ef5d4764`  
		Last Modified: Tue, 05 Mar 2019 03:16:28 GMT  
		Size: 18.0 MB (18025987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aace0e2222290b1c5f72616581f170cc42a1ec96437a834c38839f5c88898fe3`  
		Last Modified: Tue, 05 Mar 2019 03:16:49 GMT  
		Size: 167.3 MB (167286694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d136fdfa09dc7c91173e3d48abf0ee3d3f42c659699e012ce5d95582298ab6c2`  
		Last Modified: Tue, 05 Mar 2019 03:17:07 GMT  
		Size: 304.7 MB (304741464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4`

```console
$ docker pull fsharp@sha256:8fdc15aef9015b953c51bba0e48ef250ee50cb97ff9c2b81eb892008cab0d405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4` - linux; amd64

```console
$ docker pull fsharp@sha256:ff285997ab5c0c50ff643deea49efa1ac88efe679bfcc9b773d9751d79242a20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176292204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc5732e7cdca2fd8412ce8dcf3d7c8841c631a5ddc9a8958d3da849e065800c7`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:30 GMT
ADD file:9c83a686342b9918902182a223021336d3fba9b5e540dcdb130ad47a22033781 in / 
# Mon, 04 Mar 2019 23:20:30 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:58:45 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 02:58:46 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 05 Mar 2019 03:13:17 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Tue, 05 Mar 2019 03:13:18 GMT
WORKDIR /root
# Tue, 05 Mar 2019 03:13:18 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:9fa17f107b7e9d91511082fc06c45340c4ab2b0820dc0974a963b137b3434e01`  
		Last Modified: Mon, 04 Mar 2019 23:24:38 GMT  
		Size: 30.2 MB (30154842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030cbc28d56edc1700a9bc2c156eb02dfee0ca70e9eabd6667eaa99f768fdc5a`  
		Last Modified: Tue, 05 Mar 2019 03:16:18 GMT  
		Size: 146.1 MB (146137362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0`

```console
$ docker pull fsharp@sha256:7f54297dc48c3aa454d1048b245bfd5fb0bfb2b6fa07817b7fa5e046495a611c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0` - linux; amd64

```console
$ docker pull fsharp@sha256:7b2bcf703e91168b743685bb21de48385dd85f5105563e142f063491e0888e47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275393414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12d960bc6467757a7efc9e940b5fc838c7ce2fc80ab5c9e932239c276c7a1d6`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 08:53:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 08:53:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 08:54:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 01:42:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 03:47:35 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Sat, 02 Mar 2019 03:47:35 GMT
ENV MONO_VERSION=4.8.0.495
# Sat, 02 Mar 2019 03:47:36 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Sat, 02 Mar 2019 03:47:37 GMT
ENV MONO_THREADS_PER_CPU=50
# Sat, 02 Mar 2019 03:48:57 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 03:48:57 GMT
ENV FSHARP_VERSION=4.0.1.1
# Sat, 02 Mar 2019 03:48:57 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Sat, 02 Mar 2019 04:01:21 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Sat, 02 Mar 2019 04:01:21 GMT
WORKDIR /root
# Sat, 02 Mar 2019 04:01:22 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df6f1a0abef9eee9f0426e3253148a180e24373697854ee44ed6aa0cc2bef3e`  
		Last Modified: Wed, 23 Jan 2019 09:06:14 GMT  
		Size: 4.7 MB (4659547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04f5617fa3d897c722b33466d64935c7d9d665c7d3d0c53cf36a417a65c323a`  
		Last Modified: Wed, 23 Jan 2019 09:06:25 GMT  
		Size: 29.6 MB (29601821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8cb99a9fa680a2ab8095bce77bcf05113ab5e644e98f0e820fce5757fdb0e26`  
		Last Modified: Sat, 02 Mar 2019 01:53:38 GMT  
		Size: 108.0 MB (108016009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b9e99da9b3cb93d4db1989653ab6ec1705b51afe87337656d607f050780b76`  
		Last Modified: Sat, 02 Mar 2019 04:02:01 GMT  
		Size: 13.8 KB (13825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17771ab3ccc98f891219152d71b82992e9393a1526fcc3e3701d6e355053cec0`  
		Last Modified: Sat, 02 Mar 2019 04:02:18 GMT  
		Size: 55.3 MB (55274145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dcc5f123d1d9e5c4ab4206e4981e469c4b9f628aaaa7da2ab9ee1b9694cbb1f`  
		Last Modified: Sat, 02 Mar 2019 04:02:04 GMT  
		Size: 10.6 MB (10606372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.1`

```console
$ docker pull fsharp@sha256:7f54297dc48c3aa454d1048b245bfd5fb0bfb2b6fa07817b7fa5e046495a611c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1` - linux; amd64

```console
$ docker pull fsharp@sha256:7b2bcf703e91168b743685bb21de48385dd85f5105563e142f063491e0888e47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275393414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12d960bc6467757a7efc9e940b5fc838c7ce2fc80ab5c9e932239c276c7a1d6`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 08:53:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 08:53:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 08:54:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 01:42:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 03:47:35 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Sat, 02 Mar 2019 03:47:35 GMT
ENV MONO_VERSION=4.8.0.495
# Sat, 02 Mar 2019 03:47:36 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Sat, 02 Mar 2019 03:47:37 GMT
ENV MONO_THREADS_PER_CPU=50
# Sat, 02 Mar 2019 03:48:57 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 03:48:57 GMT
ENV FSHARP_VERSION=4.0.1.1
# Sat, 02 Mar 2019 03:48:57 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Sat, 02 Mar 2019 04:01:21 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Sat, 02 Mar 2019 04:01:21 GMT
WORKDIR /root
# Sat, 02 Mar 2019 04:01:22 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df6f1a0abef9eee9f0426e3253148a180e24373697854ee44ed6aa0cc2bef3e`  
		Last Modified: Wed, 23 Jan 2019 09:06:14 GMT  
		Size: 4.7 MB (4659547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04f5617fa3d897c722b33466d64935c7d9d665c7d3d0c53cf36a417a65c323a`  
		Last Modified: Wed, 23 Jan 2019 09:06:25 GMT  
		Size: 29.6 MB (29601821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8cb99a9fa680a2ab8095bce77bcf05113ab5e644e98f0e820fce5757fdb0e26`  
		Last Modified: Sat, 02 Mar 2019 01:53:38 GMT  
		Size: 108.0 MB (108016009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b9e99da9b3cb93d4db1989653ab6ec1705b51afe87337656d607f050780b76`  
		Last Modified: Sat, 02 Mar 2019 04:02:01 GMT  
		Size: 13.8 KB (13825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17771ab3ccc98f891219152d71b82992e9393a1526fcc3e3701d6e355053cec0`  
		Last Modified: Sat, 02 Mar 2019 04:02:18 GMT  
		Size: 55.3 MB (55274145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dcc5f123d1d9e5c4ab4206e4981e469c4b9f628aaaa7da2ab9ee1b9694cbb1f`  
		Last Modified: Sat, 02 Mar 2019 04:02:04 GMT  
		Size: 10.6 MB (10606372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.1.1`

```console
$ docker pull fsharp@sha256:7f54297dc48c3aa454d1048b245bfd5fb0bfb2b6fa07817b7fa5e046495a611c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1.1` - linux; amd64

```console
$ docker pull fsharp@sha256:7b2bcf703e91168b743685bb21de48385dd85f5105563e142f063491e0888e47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275393414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12d960bc6467757a7efc9e940b5fc838c7ce2fc80ab5c9e932239c276c7a1d6`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 22 Jan 2019 22:46:53 GMT
ADD file:13f0f6484071addf07e8399246be51c3a1d9e26ccd7e6d19d75797f37387dc12 in / 
# Tue, 22 Jan 2019 22:46:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:46:55 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:46:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:46:56 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 08:53:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 08:53:24 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 08:54:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 01:42:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 03:47:35 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Sat, 02 Mar 2019 03:47:35 GMT
ENV MONO_VERSION=4.8.0.495
# Sat, 02 Mar 2019 03:47:36 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Sat, 02 Mar 2019 03:47:37 GMT
ENV MONO_THREADS_PER_CPU=50
# Sat, 02 Mar 2019 03:48:57 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 03:48:57 GMT
ENV FSHARP_VERSION=4.0.1.1
# Sat, 02 Mar 2019 03:48:57 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Sat, 02 Mar 2019 04:01:21 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Sat, 02 Mar 2019 04:01:21 GMT
WORKDIR /root
# Sat, 02 Mar 2019 04:01:22 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:e53f134edff2c9a6928199bfbd8d0e70c1ecfcb4b5b70462028062f567a528f7`  
		Last Modified: Tue, 22 Jan 2019 22:50:25 GMT  
		Size: 67.1 MB (67148514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbbd466a715ba1ee85664ed1e1fe53c3cb54759225eef1869a9b27179ea675f`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e11368b8e0c73f08ef1deb948c24a8cfd2307a8eb138a0caf77bdfe4a4722d99`  
		Last Modified: Tue, 22 Jan 2019 22:50:02 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dab2de7692bef415de0b332748c99d8949a7768add945030191c72a42e80511`  
		Last Modified: Tue, 22 Jan 2019 22:50:03 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2df6f1a0abef9eee9f0426e3253148a180e24373697854ee44ed6aa0cc2bef3e`  
		Last Modified: Wed, 23 Jan 2019 09:06:14 GMT  
		Size: 4.7 MB (4659547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b04f5617fa3d897c722b33466d64935c7d9d665c7d3d0c53cf36a417a65c323a`  
		Last Modified: Wed, 23 Jan 2019 09:06:25 GMT  
		Size: 29.6 MB (29601821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8cb99a9fa680a2ab8095bce77bcf05113ab5e644e98f0e820fce5757fdb0e26`  
		Last Modified: Sat, 02 Mar 2019 01:53:38 GMT  
		Size: 108.0 MB (108016009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b9e99da9b3cb93d4db1989653ab6ec1705b51afe87337656d607f050780b76`  
		Last Modified: Sat, 02 Mar 2019 04:02:01 GMT  
		Size: 13.8 KB (13825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17771ab3ccc98f891219152d71b82992e9393a1526fcc3e3701d6e355053cec0`  
		Last Modified: Sat, 02 Mar 2019 04:02:18 GMT  
		Size: 55.3 MB (55274145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dcc5f123d1d9e5c4ab4206e4981e469c4b9f628aaaa7da2ab9ee1b9694cbb1f`  
		Last Modified: Sat, 02 Mar 2019 04:02:04 GMT  
		Size: 10.6 MB (10606372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1`

```console
$ docker pull fsharp@sha256:8fdc15aef9015b953c51bba0e48ef250ee50cb97ff9c2b81eb892008cab0d405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.1` - linux; amd64

```console
$ docker pull fsharp@sha256:ff285997ab5c0c50ff643deea49efa1ac88efe679bfcc9b773d9751d79242a20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176292204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc5732e7cdca2fd8412ce8dcf3d7c8841c631a5ddc9a8958d3da849e065800c7`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:30 GMT
ADD file:9c83a686342b9918902182a223021336d3fba9b5e540dcdb130ad47a22033781 in / 
# Mon, 04 Mar 2019 23:20:30 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:58:45 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 02:58:46 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 05 Mar 2019 03:13:17 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Tue, 05 Mar 2019 03:13:18 GMT
WORKDIR /root
# Tue, 05 Mar 2019 03:13:18 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:9fa17f107b7e9d91511082fc06c45340c4ab2b0820dc0974a963b137b3434e01`  
		Last Modified: Mon, 04 Mar 2019 23:24:38 GMT  
		Size: 30.2 MB (30154842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030cbc28d56edc1700a9bc2c156eb02dfee0ca70e9eabd6667eaa99f768fdc5a`  
		Last Modified: Tue, 05 Mar 2019 03:16:18 GMT  
		Size: 146.1 MB (146137362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1.34`

```console
$ docker pull fsharp@sha256:8fdc15aef9015b953c51bba0e48ef250ee50cb97ff9c2b81eb892008cab0d405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.1.34` - linux; amd64

```console
$ docker pull fsharp@sha256:ff285997ab5c0c50ff643deea49efa1ac88efe679bfcc9b773d9751d79242a20
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176292204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc5732e7cdca2fd8412ce8dcf3d7c8841c631a5ddc9a8958d3da849e065800c7`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:30 GMT
ADD file:9c83a686342b9918902182a223021336d3fba9b5e540dcdb130ad47a22033781 in / 
# Mon, 04 Mar 2019 23:20:30 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:58:45 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 02:58:46 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 05 Mar 2019 03:13:17 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Tue, 05 Mar 2019 03:13:18 GMT
WORKDIR /root
# Tue, 05 Mar 2019 03:13:18 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:9fa17f107b7e9d91511082fc06c45340c4ab2b0820dc0974a963b137b3434e01`  
		Last Modified: Mon, 04 Mar 2019 23:24:38 GMT  
		Size: 30.2 MB (30154842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:030cbc28d56edc1700a9bc2c156eb02dfee0ca70e9eabd6667eaa99f768fdc5a`  
		Last Modified: Tue, 05 Mar 2019 03:16:18 GMT  
		Size: 146.1 MB (146137362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:latest`

```console
$ docker pull fsharp@sha256:dbddcb89165a62b4eca122cfa1cd327bb1da8cb5e5c3503f2dda49648451357e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:latest` - linux; amd64

```console
$ docker pull fsharp@sha256:b8d272a0557e47a8d0f4f160e5503bcdbf643d8c386f8542c54e139c566f1b3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167490930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:953f4aafff0a5a7576ef0a9b2f9f0c5a99dd8131d8830feb19c618bbbb43e2ac`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:48:10 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 02:48:10 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 05 Mar 2019 02:58:41 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 05 Mar 2019 02:58:41 GMT
WORKDIR /root
# Tue, 05 Mar 2019 02:58:42 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d71b62e097032287b6840d2450b6d79f89dff1c07931f0f28f7fc7b94f18367`  
		Last Modified: Tue, 05 Mar 2019 03:15:30 GMT  
		Size: 145.0 MB (144994896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:latest` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:6b465bdc2b279038c523c2043fc8f6002174261357523ce8ae2caffd224b9c7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162293130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78a83c3834e6580d248a9f26bb76f802471872294ddbc8ccf250bd6b3f715326`
-	Default Command: `["fsharpi"]`

```dockerfile
# Wed, 06 Feb 2019 10:09:24 GMT
ADD file:7fd62ee33e020bdd30665de7ce17e32b61f7ba089ee0d8bf27511946daeab6a6 in / 
# Wed, 06 Feb 2019 10:09:27 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 20:48:09 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 06 Feb 2019 20:48:12 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 06 Feb 2019 21:24:29 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 06 Feb 2019 21:24:33 GMT
WORKDIR /root
# Wed, 06 Feb 2019 21:24:36 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:42367302fc78a226e000d71988d3eea5bbeea023beeb97957e6f20610974197f`  
		Last Modified: Wed, 06 Feb 2019 10:14:57 GMT  
		Size: 20.4 MB (20350159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ae958a8ea55c7f7919ff011636c83e7b070d849b96edb08e699498b5e8e4c00`  
		Last Modified: Wed, 06 Feb 2019 21:25:52 GMT  
		Size: 141.9 MB (141942971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:netcore`

```console
$ docker pull fsharp@sha256:4e99c6786ea3b7a5720cc831b4749d8263a9ae829970fd29d94fec4410fe4eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:271c5eb04558baecd833317b8991c8743f21421e12e3b21604b5be688a829fbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.5 MB (657545075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7ef4a9f039224e6425f28b113f4377f855fb11603e973a647362a232bc85a8`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:48:10 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 02:48:10 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 05 Mar 2019 02:58:41 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 05 Mar 2019 02:58:41 GMT
WORKDIR /root
# Tue, 05 Mar 2019 02:58:42 GMT
CMD ["fsharpi"]
# Tue, 05 Mar 2019 03:13:26 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 05 Mar 2019 03:13:26 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Tue, 05 Mar 2019 03:13:27 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 05 Mar 2019 03:13:36 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:13:57 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 05 Mar 2019 03:13:57 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 05 Mar 2019 03:14:47 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 05 Mar 2019 03:14:49 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d71b62e097032287b6840d2450b6d79f89dff1c07931f0f28f7fc7b94f18367`  
		Last Modified: Tue, 05 Mar 2019 03:15:30 GMT  
		Size: 145.0 MB (144994896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0399f25c66faa01756c2367569cf84fb6a31fa5bdc2cff8c8abc33c2ef5d4764`  
		Last Modified: Tue, 05 Mar 2019 03:16:28 GMT  
		Size: 18.0 MB (18025987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aace0e2222290b1c5f72616581f170cc42a1ec96437a834c38839f5c88898fe3`  
		Last Modified: Tue, 05 Mar 2019 03:16:49 GMT  
		Size: 167.3 MB (167286694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d136fdfa09dc7c91173e3d48abf0ee3d3f42c659699e012ce5d95582298ab6c2`  
		Last Modified: Tue, 05 Mar 2019 03:17:07 GMT  
		Size: 304.7 MB (304741464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
