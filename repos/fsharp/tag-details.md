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
$ docker pull fsharp@sha256:cd5ce90524e0df51d7e7dae57a1fdc18e4a3cb06db9729aa0d4dc406f3015692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:10` - linux; amd64

```console
$ docker pull fsharp@sha256:99b587f52fb5ffd5ca3cf20475a2cda027eb6f271ca943b985bfcac8bd1a156e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167476634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00af7c7e1c0720b8f3b859c37abf69e8bbb0f682f6dc667eed10c353f152c472`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:06:19 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:06:19 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 07:15:21 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 16 Oct 2018 07:15:22 GMT
WORKDIR /root
# Tue, 16 Oct 2018 07:15:22 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b374f791544207b1f62ca9bf783b1217e908b87d767dbd5b5ed84c39cc21484`  
		Last Modified: Tue, 16 Oct 2018 07:29:01 GMT  
		Size: 145.0 MB (144990595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:10` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:8f19b23efc6daff10aca7c80daff5c7cbc6eba11c7f332171b89bb1ecb6014a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162275610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9c447a25a22b490986da331d3abed82996bd85c0621a85db7c20a7e89194e9e`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 15:52:14 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 15:52:15 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 16:23:52 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 16 Oct 2018 16:23:53 GMT
WORKDIR /root
# Tue, 16 Oct 2018 16:23:54 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48b0f1ca9926fda7d2cb9f4ef4cd0a6f771dad58a6b10d852222eab970ee3ff`  
		Last Modified: Tue, 16 Oct 2018 16:25:09 GMT  
		Size: 141.9 MB (141944025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2`

```console
$ docker pull fsharp@sha256:cd5ce90524e0df51d7e7dae57a1fdc18e4a3cb06db9729aa0d4dc406f3015692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:10.2` - linux; amd64

```console
$ docker pull fsharp@sha256:99b587f52fb5ffd5ca3cf20475a2cda027eb6f271ca943b985bfcac8bd1a156e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167476634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00af7c7e1c0720b8f3b859c37abf69e8bbb0f682f6dc667eed10c353f152c472`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:06:19 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:06:19 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 07:15:21 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 16 Oct 2018 07:15:22 GMT
WORKDIR /root
# Tue, 16 Oct 2018 07:15:22 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b374f791544207b1f62ca9bf783b1217e908b87d767dbd5b5ed84c39cc21484`  
		Last Modified: Tue, 16 Oct 2018 07:29:01 GMT  
		Size: 145.0 MB (144990595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:10.2` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:8f19b23efc6daff10aca7c80daff5c7cbc6eba11c7f332171b89bb1ecb6014a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162275610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9c447a25a22b490986da331d3abed82996bd85c0621a85db7c20a7e89194e9e`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 15:52:14 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 15:52:15 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 16:23:52 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 16 Oct 2018 16:23:53 GMT
WORKDIR /root
# Tue, 16 Oct 2018 16:23:54 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48b0f1ca9926fda7d2cb9f4ef4cd0a6f771dad58a6b10d852222eab970ee3ff`  
		Last Modified: Tue, 16 Oct 2018 16:25:09 GMT  
		Size: 141.9 MB (141944025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2.1`

```console
$ docker pull fsharp@sha256:cd5ce90524e0df51d7e7dae57a1fdc18e4a3cb06db9729aa0d4dc406f3015692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:10.2.1` - linux; amd64

```console
$ docker pull fsharp@sha256:99b587f52fb5ffd5ca3cf20475a2cda027eb6f271ca943b985bfcac8bd1a156e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167476634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00af7c7e1c0720b8f3b859c37abf69e8bbb0f682f6dc667eed10c353f152c472`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:06:19 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:06:19 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 07:15:21 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 16 Oct 2018 07:15:22 GMT
WORKDIR /root
# Tue, 16 Oct 2018 07:15:22 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b374f791544207b1f62ca9bf783b1217e908b87d767dbd5b5ed84c39cc21484`  
		Last Modified: Tue, 16 Oct 2018 07:29:01 GMT  
		Size: 145.0 MB (144990595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:10.2.1` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:8f19b23efc6daff10aca7c80daff5c7cbc6eba11c7f332171b89bb1ecb6014a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162275610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9c447a25a22b490986da331d3abed82996bd85c0621a85db7c20a7e89194e9e`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 15:52:14 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 15:52:15 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 16:23:52 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 16 Oct 2018 16:23:53 GMT
WORKDIR /root
# Tue, 16 Oct 2018 16:23:54 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48b0f1ca9926fda7d2cb9f4ef4cd0a6f771dad58a6b10d852222eab970ee3ff`  
		Last Modified: Tue, 16 Oct 2018 16:25:09 GMT  
		Size: 141.9 MB (141944025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2.1-netcore`

```console
$ docker pull fsharp@sha256:8fe00278aa168379b72f6c5ba233bc77ceb7e656b5cfe48602ef8efc5d143931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10.2.1-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:2e170aea79896199639536656e2f655e1d402e506e7da88236dd5fc3da74ba85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **658.3 MB (658272256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96d7d3ecafdc49b9c6424ebc5d6c85398b5581472dbb68bdbaf28c48a1975496`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:06:19 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:06:19 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 07:15:21 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 16 Oct 2018 07:15:22 GMT
WORKDIR /root
# Tue, 16 Oct 2018 07:15:22 GMT
CMD ["fsharpi"]
# Tue, 16 Oct 2018 07:26:41 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:26:41 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Tue, 16 Oct 2018 07:26:41 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 16 Oct 2018 07:26:51 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:27:18 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 16 Oct 2018 07:27:18 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 16 Oct 2018 07:28:09 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 16 Oct 2018 07:28:10 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b374f791544207b1f62ca9bf783b1217e908b87d767dbd5b5ed84c39cc21484`  
		Last Modified: Tue, 16 Oct 2018 07:29:01 GMT  
		Size: 145.0 MB (144990595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba300c5e4ce1952c2f3e286197401f3c519e56c5d0b177a445c946cee33ab09`  
		Last Modified: Tue, 16 Oct 2018 07:31:12 GMT  
		Size: 18.0 MB (18027020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f0c10a668163f5afb973c7f4078ae741aa0fb516ab54cb2e85ae08cf83dd87`  
		Last Modified: Tue, 16 Oct 2018 07:31:36 GMT  
		Size: 167.3 MB (167312408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bc060936dc1b27decb41637c175fa73de20d23128dabbebd998d16476331a2`  
		Last Modified: Tue, 16 Oct 2018 07:31:57 GMT  
		Size: 305.5 MB (305456194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.2-netcore`

```console
$ docker pull fsharp@sha256:8fe00278aa168379b72f6c5ba233bc77ceb7e656b5cfe48602ef8efc5d143931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10.2-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:2e170aea79896199639536656e2f655e1d402e506e7da88236dd5fc3da74ba85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **658.3 MB (658272256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96d7d3ecafdc49b9c6424ebc5d6c85398b5581472dbb68bdbaf28c48a1975496`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:06:19 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:06:19 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 07:15:21 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 16 Oct 2018 07:15:22 GMT
WORKDIR /root
# Tue, 16 Oct 2018 07:15:22 GMT
CMD ["fsharpi"]
# Tue, 16 Oct 2018 07:26:41 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:26:41 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Tue, 16 Oct 2018 07:26:41 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 16 Oct 2018 07:26:51 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:27:18 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 16 Oct 2018 07:27:18 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 16 Oct 2018 07:28:09 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 16 Oct 2018 07:28:10 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b374f791544207b1f62ca9bf783b1217e908b87d767dbd5b5ed84c39cc21484`  
		Last Modified: Tue, 16 Oct 2018 07:29:01 GMT  
		Size: 145.0 MB (144990595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba300c5e4ce1952c2f3e286197401f3c519e56c5d0b177a445c946cee33ab09`  
		Last Modified: Tue, 16 Oct 2018 07:31:12 GMT  
		Size: 18.0 MB (18027020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f0c10a668163f5afb973c7f4078ae741aa0fb516ab54cb2e85ae08cf83dd87`  
		Last Modified: Tue, 16 Oct 2018 07:31:36 GMT  
		Size: 167.3 MB (167312408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bc060936dc1b27decb41637c175fa73de20d23128dabbebd998d16476331a2`  
		Last Modified: Tue, 16 Oct 2018 07:31:57 GMT  
		Size: 305.5 MB (305456194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10-netcore`

```console
$ docker pull fsharp@sha256:8fe00278aa168379b72f6c5ba233bc77ceb7e656b5cfe48602ef8efc5d143931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:2e170aea79896199639536656e2f655e1d402e506e7da88236dd5fc3da74ba85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **658.3 MB (658272256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96d7d3ecafdc49b9c6424ebc5d6c85398b5581472dbb68bdbaf28c48a1975496`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:06:19 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:06:19 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 07:15:21 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 16 Oct 2018 07:15:22 GMT
WORKDIR /root
# Tue, 16 Oct 2018 07:15:22 GMT
CMD ["fsharpi"]
# Tue, 16 Oct 2018 07:26:41 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:26:41 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Tue, 16 Oct 2018 07:26:41 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 16 Oct 2018 07:26:51 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:27:18 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 16 Oct 2018 07:27:18 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 16 Oct 2018 07:28:09 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 16 Oct 2018 07:28:10 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b374f791544207b1f62ca9bf783b1217e908b87d767dbd5b5ed84c39cc21484`  
		Last Modified: Tue, 16 Oct 2018 07:29:01 GMT  
		Size: 145.0 MB (144990595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba300c5e4ce1952c2f3e286197401f3c519e56c5d0b177a445c946cee33ab09`  
		Last Modified: Tue, 16 Oct 2018 07:31:12 GMT  
		Size: 18.0 MB (18027020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f0c10a668163f5afb973c7f4078ae741aa0fb516ab54cb2e85ae08cf83dd87`  
		Last Modified: Tue, 16 Oct 2018 07:31:36 GMT  
		Size: 167.3 MB (167312408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bc060936dc1b27decb41637c175fa73de20d23128dabbebd998d16476331a2`  
		Last Modified: Tue, 16 Oct 2018 07:31:57 GMT  
		Size: 305.5 MB (305456194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4`

```console
$ docker pull fsharp@sha256:2375c17e9324ca7944d2449ccc2bb27419c162aa7cc1cfabe16eee342c661abe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4` - linux; amd64

```console
$ docker pull fsharp@sha256:933e976687cb77c4e850e51267f0dbbf703489c497e02f646daf3d5b08f71a3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176288417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e7fd0a04b6fbf15ec33fae1b2ae039b083d6104ee8fd8b1aa379f89299ec92`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:15:32 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:15:32 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 07:26:27 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Tue, 16 Oct 2018 07:26:28 GMT
WORKDIR /root
# Tue, 16 Oct 2018 07:26:28 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11eefbafb5105e9647c51d498561e7ad63eff51723adac5516ea23b05e39507`  
		Last Modified: Tue, 16 Oct 2018 07:30:33 GMT  
		Size: 146.2 MB (146167794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0`

```console
$ docker pull fsharp@sha256:078541fdd341265a15e1db027922b0e1ba5210ff1cd9ac2e9a190852dfdd5b75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0` - linux; amd64

```console
$ docker pull fsharp@sha256:18d0826bf68958ecf04bb0f3aba876664fd628b1d8a786cb54c7141237734243
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.0 MB (274017402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb5b7d54f6308e914c3039141ee9eb1e103ce8568af0c3e5c5a7a1c57f41725`
-	Default Command: `["fsharpi"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Oct 2018 01:37:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:39:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 03:19:28 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Fri, 19 Oct 2018 03:19:28 GMT
ENV MONO_VERSION=4.8.0.495
# Fri, 19 Oct 2018 03:19:29 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Fri, 19 Oct 2018 03:19:29 GMT
ENV MONO_THREADS_PER_CPU=50
# Fri, 19 Oct 2018 03:20:14 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 03:20:14 GMT
ENV FSHARP_VERSION=4.0.1.1
# Fri, 19 Oct 2018 03:20:14 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Fri, 19 Oct 2018 03:27:03 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Fri, 19 Oct 2018 03:27:03 GMT
WORKDIR /root
# Fri, 19 Oct 2018 03:27:03 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f71e00156fbe8ce712996101dd416eaca68aed747f0ec695a7dd4d59ff540a`  
		Last Modified: Fri, 19 Oct 2018 01:48:18 GMT  
		Size: 4.7 MB (4658428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c68eb5d54c552876be1d70596ad13f4c29a156be06bca5deaeebd4971eb2887`  
		Last Modified: Fri, 19 Oct 2018 01:48:59 GMT  
		Size: 29.6 MB (29595507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c754fe547056f36e1660e705adc887cb5c597d61f316ee754849b0b1ccd6068`  
		Last Modified: Fri, 19 Oct 2018 01:49:49 GMT  
		Size: 106.7 MB (106663884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfcfb56d6892cc76bb7d7b4bf4ff40efcf68f6257a6565ebb921028eb903be8`  
		Last Modified: Fri, 19 Oct 2018 03:27:22 GMT  
		Size: 13.8 KB (13822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a279e36c1042669e36cfaf7b5f62e06da9d16bb60411c9d262e7c7854839d9ef`  
		Last Modified: Fri, 19 Oct 2018 03:27:33 GMT  
		Size: 55.3 MB (55286024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f23bd701c88e70da037a80ad21644f83778f305459b7940519a485bf19fe87`  
		Last Modified: Fri, 19 Oct 2018 03:27:23 GMT  
		Size: 10.6 MB (10597304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.1`

```console
$ docker pull fsharp@sha256:078541fdd341265a15e1db027922b0e1ba5210ff1cd9ac2e9a190852dfdd5b75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1` - linux; amd64

```console
$ docker pull fsharp@sha256:18d0826bf68958ecf04bb0f3aba876664fd628b1d8a786cb54c7141237734243
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.0 MB (274017402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb5b7d54f6308e914c3039141ee9eb1e103ce8568af0c3e5c5a7a1c57f41725`
-	Default Command: `["fsharpi"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Oct 2018 01:37:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:39:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 03:19:28 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Fri, 19 Oct 2018 03:19:28 GMT
ENV MONO_VERSION=4.8.0.495
# Fri, 19 Oct 2018 03:19:29 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Fri, 19 Oct 2018 03:19:29 GMT
ENV MONO_THREADS_PER_CPU=50
# Fri, 19 Oct 2018 03:20:14 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 03:20:14 GMT
ENV FSHARP_VERSION=4.0.1.1
# Fri, 19 Oct 2018 03:20:14 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Fri, 19 Oct 2018 03:27:03 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Fri, 19 Oct 2018 03:27:03 GMT
WORKDIR /root
# Fri, 19 Oct 2018 03:27:03 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f71e00156fbe8ce712996101dd416eaca68aed747f0ec695a7dd4d59ff540a`  
		Last Modified: Fri, 19 Oct 2018 01:48:18 GMT  
		Size: 4.7 MB (4658428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c68eb5d54c552876be1d70596ad13f4c29a156be06bca5deaeebd4971eb2887`  
		Last Modified: Fri, 19 Oct 2018 01:48:59 GMT  
		Size: 29.6 MB (29595507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c754fe547056f36e1660e705adc887cb5c597d61f316ee754849b0b1ccd6068`  
		Last Modified: Fri, 19 Oct 2018 01:49:49 GMT  
		Size: 106.7 MB (106663884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfcfb56d6892cc76bb7d7b4bf4ff40efcf68f6257a6565ebb921028eb903be8`  
		Last Modified: Fri, 19 Oct 2018 03:27:22 GMT  
		Size: 13.8 KB (13822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a279e36c1042669e36cfaf7b5f62e06da9d16bb60411c9d262e7c7854839d9ef`  
		Last Modified: Fri, 19 Oct 2018 03:27:33 GMT  
		Size: 55.3 MB (55286024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f23bd701c88e70da037a80ad21644f83778f305459b7940519a485bf19fe87`  
		Last Modified: Fri, 19 Oct 2018 03:27:23 GMT  
		Size: 10.6 MB (10597304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.1.1`

```console
$ docker pull fsharp@sha256:078541fdd341265a15e1db027922b0e1ba5210ff1cd9ac2e9a190852dfdd5b75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1.1` - linux; amd64

```console
$ docker pull fsharp@sha256:18d0826bf68958ecf04bb0f3aba876664fd628b1d8a786cb54c7141237734243
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.0 MB (274017402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb5b7d54f6308e914c3039141ee9eb1e103ce8568af0c3e5c5a7a1c57f41725`
-	Default Command: `["fsharpi"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 19 Oct 2018 01:37:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:39:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 03:19:28 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Fri, 19 Oct 2018 03:19:28 GMT
ENV MONO_VERSION=4.8.0.495
# Fri, 19 Oct 2018 03:19:29 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Fri, 19 Oct 2018 03:19:29 GMT
ENV MONO_THREADS_PER_CPU=50
# Fri, 19 Oct 2018 03:20:14 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 03:20:14 GMT
ENV FSHARP_VERSION=4.0.1.1
# Fri, 19 Oct 2018 03:20:14 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Fri, 19 Oct 2018 03:27:03 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Fri, 19 Oct 2018 03:27:03 GMT
WORKDIR /root
# Fri, 19 Oct 2018 03:27:03 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f71e00156fbe8ce712996101dd416eaca68aed747f0ec695a7dd4d59ff540a`  
		Last Modified: Fri, 19 Oct 2018 01:48:18 GMT  
		Size: 4.7 MB (4658428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c68eb5d54c552876be1d70596ad13f4c29a156be06bca5deaeebd4971eb2887`  
		Last Modified: Fri, 19 Oct 2018 01:48:59 GMT  
		Size: 29.6 MB (29595507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c754fe547056f36e1660e705adc887cb5c597d61f316ee754849b0b1ccd6068`  
		Last Modified: Fri, 19 Oct 2018 01:49:49 GMT  
		Size: 106.7 MB (106663884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfcfb56d6892cc76bb7d7b4bf4ff40efcf68f6257a6565ebb921028eb903be8`  
		Last Modified: Fri, 19 Oct 2018 03:27:22 GMT  
		Size: 13.8 KB (13822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a279e36c1042669e36cfaf7b5f62e06da9d16bb60411c9d262e7c7854839d9ef`  
		Last Modified: Fri, 19 Oct 2018 03:27:33 GMT  
		Size: 55.3 MB (55286024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f23bd701c88e70da037a80ad21644f83778f305459b7940519a485bf19fe87`  
		Last Modified: Fri, 19 Oct 2018 03:27:23 GMT  
		Size: 10.6 MB (10597304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1`

```console
$ docker pull fsharp@sha256:2375c17e9324ca7944d2449ccc2bb27419c162aa7cc1cfabe16eee342c661abe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.1` - linux; amd64

```console
$ docker pull fsharp@sha256:933e976687cb77c4e850e51267f0dbbf703489c497e02f646daf3d5b08f71a3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176288417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e7fd0a04b6fbf15ec33fae1b2ae039b083d6104ee8fd8b1aa379f89299ec92`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:15:32 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:15:32 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 07:26:27 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Tue, 16 Oct 2018 07:26:28 GMT
WORKDIR /root
# Tue, 16 Oct 2018 07:26:28 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11eefbafb5105e9647c51d498561e7ad63eff51723adac5516ea23b05e39507`  
		Last Modified: Tue, 16 Oct 2018 07:30:33 GMT  
		Size: 146.2 MB (146167794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1.34`

```console
$ docker pull fsharp@sha256:2375c17e9324ca7944d2449ccc2bb27419c162aa7cc1cfabe16eee342c661abe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.1.34` - linux; amd64

```console
$ docker pull fsharp@sha256:933e976687cb77c4e850e51267f0dbbf703489c497e02f646daf3d5b08f71a3e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.3 MB (176288417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5e7fd0a04b6fbf15ec33fae1b2ae039b083d6104ee8fd8b1aa379f89299ec92`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 15 Oct 2018 23:20:55 GMT
ADD file:a315242364ff0b1f22eb579398f2925c0db790a2777484f98d2be9e8916bb06a in / 
# Mon, 15 Oct 2018 23:20:55 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:15:32 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:15:32 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 07:26:27 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Tue, 16 Oct 2018 07:26:28 GMT
WORKDIR /root
# Tue, 16 Oct 2018 07:26:28 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:795df959b1e6be8e633894b6e4b011bdbe12eacbc9733e68d367b7c0323df8f9`  
		Last Modified: Mon, 15 Oct 2018 23:29:22 GMT  
		Size: 30.1 MB (30120623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d11eefbafb5105e9647c51d498561e7ad63eff51723adac5516ea23b05e39507`  
		Last Modified: Tue, 16 Oct 2018 07:30:33 GMT  
		Size: 146.2 MB (146167794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:latest`

```console
$ docker pull fsharp@sha256:cd5ce90524e0df51d7e7dae57a1fdc18e4a3cb06db9729aa0d4dc406f3015692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `fsharp:latest` - linux; amd64

```console
$ docker pull fsharp@sha256:99b587f52fb5ffd5ca3cf20475a2cda027eb6f271ca943b985bfcac8bd1a156e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167476634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00af7c7e1c0720b8f3b859c37abf69e8bbb0f682f6dc667eed10c353f152c472`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:06:19 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:06:19 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 07:15:21 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 16 Oct 2018 07:15:22 GMT
WORKDIR /root
# Tue, 16 Oct 2018 07:15:22 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b374f791544207b1f62ca9bf783b1217e908b87d767dbd5b5ed84c39cc21484`  
		Last Modified: Tue, 16 Oct 2018 07:29:01 GMT  
		Size: 145.0 MB (144990595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `fsharp:latest` - linux; arm64 variant v8

```console
$ docker pull fsharp@sha256:8f19b23efc6daff10aca7c80daff5c7cbc6eba11c7f332171b89bb1ecb6014a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.3 MB (162275610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9c447a25a22b490986da331d3abed82996bd85c0621a85db7c20a7e89194e9e`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:45 GMT
ADD file:e83c09a5cfc1cecaeba6b736737d551fe0f5d3f204ec3fc984fe768003774f81 in / 
# Tue, 16 Oct 2018 08:43:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 15:52:14 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 15:52:15 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 16:23:52 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 16 Oct 2018 16:23:53 GMT
WORKDIR /root
# Tue, 16 Oct 2018 16:23:54 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:141796bfcf0d5a5edb072138e517bf85deef4f47f40afb51ba8705bec3b921dd`  
		Last Modified: Tue, 16 Oct 2018 08:50:53 GMT  
		Size: 20.3 MB (20331585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e48b0f1ca9926fda7d2cb9f4ef4cd0a6f771dad58a6b10d852222eab970ee3ff`  
		Last Modified: Tue, 16 Oct 2018 16:25:09 GMT  
		Size: 141.9 MB (141944025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:netcore`

```console
$ docker pull fsharp@sha256:8fe00278aa168379b72f6c5ba233bc77ceb7e656b5cfe48602ef8efc5d143931
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:2e170aea79896199639536656e2f655e1d402e506e7da88236dd5fc3da74ba85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **658.3 MB (658272256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96d7d3ecafdc49b9c6424ebc5d6c85398b5581472dbb68bdbaf28c48a1975496`
-	Default Command: `["fsharpi"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:06:19 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:06:19 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 16 Oct 2018 07:15:21 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 16 Oct 2018 07:15:22 GMT
WORKDIR /root
# Tue, 16 Oct 2018 07:15:22 GMT
CMD ["fsharpi"]
# Tue, 16 Oct 2018 07:26:41 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 16 Oct 2018 07:26:41 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Tue, 16 Oct 2018 07:26:41 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 16 Oct 2018 07:26:51 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:27:18 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 16 Oct 2018 07:27:18 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 16 Oct 2018 07:28:09 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 16 Oct 2018 07:28:10 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b374f791544207b1f62ca9bf783b1217e908b87d767dbd5b5ed84c39cc21484`  
		Last Modified: Tue, 16 Oct 2018 07:29:01 GMT  
		Size: 145.0 MB (144990595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba300c5e4ce1952c2f3e286197401f3c519e56c5d0b177a445c946cee33ab09`  
		Last Modified: Tue, 16 Oct 2018 07:31:12 GMT  
		Size: 18.0 MB (18027020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f0c10a668163f5afb973c7f4078ae741aa0fb516ab54cb2e85ae08cf83dd87`  
		Last Modified: Tue, 16 Oct 2018 07:31:36 GMT  
		Size: 167.3 MB (167312408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7bc060936dc1b27decb41637c175fa73de20d23128dabbebd998d16476331a2`  
		Last Modified: Tue, 16 Oct 2018 07:31:57 GMT  
		Size: 305.5 MB (305456194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
