<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `fsharp`

-	[`fsharp:10`](#fsharp10)
-	[`fsharp:10.0`](#fsharp100)
-	[`fsharp:10.0.2`](#fsharp1002)
-	[`fsharp:10.0.2-netcore`](#fsharp1002-netcore)
-	[`fsharp:10.0-netcore`](#fsharp100-netcore)
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
$ docker pull fsharp@sha256:9096a513cb671e04c19d40d4217df92fa7b03076262989aedc5586149a0ed3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10` - linux; amd64

```console
$ docker pull fsharp@sha256:cfa56064dec464be0094a4545ae41c438b867170310376e37bfafb91e0722626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.4 MB (176404620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4661e9475f1260b9b581df6cd52346370ce0aed4a0cc9f4adfa1dea7ad0b6f5a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 07:37:23 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 07:37:23 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 30 Apr 2018 07:46:28 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Mon, 30 Apr 2018 07:46:29 GMT
WORKDIR /root
# Mon, 30 Apr 2018 07:46:29 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1656b69f6d18f7599e558164cfc88f8b44886a2b992b6f723843f5341568f99`  
		Last Modified: Mon, 30 Apr 2018 08:46:19 GMT  
		Size: 146.3 MB (146277323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.0`

```console
$ docker pull fsharp@sha256:9096a513cb671e04c19d40d4217df92fa7b03076262989aedc5586149a0ed3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10.0` - linux; amd64

```console
$ docker pull fsharp@sha256:cfa56064dec464be0094a4545ae41c438b867170310376e37bfafb91e0722626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.4 MB (176404620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4661e9475f1260b9b581df6cd52346370ce0aed4a0cc9f4adfa1dea7ad0b6f5a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 07:37:23 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 07:37:23 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 30 Apr 2018 07:46:28 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Mon, 30 Apr 2018 07:46:29 GMT
WORKDIR /root
# Mon, 30 Apr 2018 07:46:29 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1656b69f6d18f7599e558164cfc88f8b44886a2b992b6f723843f5341568f99`  
		Last Modified: Mon, 30 Apr 2018 08:46:19 GMT  
		Size: 146.3 MB (146277323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.0.2`

```console
$ docker pull fsharp@sha256:9096a513cb671e04c19d40d4217df92fa7b03076262989aedc5586149a0ed3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10.0.2` - linux; amd64

```console
$ docker pull fsharp@sha256:cfa56064dec464be0094a4545ae41c438b867170310376e37bfafb91e0722626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.4 MB (176404620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4661e9475f1260b9b581df6cd52346370ce0aed4a0cc9f4adfa1dea7ad0b6f5a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 07:37:23 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 07:37:23 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 30 Apr 2018 07:46:28 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Mon, 30 Apr 2018 07:46:29 GMT
WORKDIR /root
# Mon, 30 Apr 2018 07:46:29 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1656b69f6d18f7599e558164cfc88f8b44886a2b992b6f723843f5341568f99`  
		Last Modified: Mon, 30 Apr 2018 08:46:19 GMT  
		Size: 146.3 MB (146277323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.0.2-netcore`

```console
$ docker pull fsharp@sha256:367a79aa0b95c61d7c96a8693e50f490840a7f01028597c0f07b169a1a8dfa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10.0.2-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:d0f693a0c5365a60eb40d8302998930a535e76ae3b4fadc4d5d3a45107f95d4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.4 MB (648400046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a3d723b7170f73b38b43a4d4e0ee9b2fd50e97b9ad0c1284b51180c53be15a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 07:37:23 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 07:37:23 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 30 Apr 2018 07:46:28 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Mon, 30 Apr 2018 07:46:29 GMT
WORKDIR /root
# Mon, 30 Apr 2018 07:46:29 GMT
CMD ["fsharpi"]
# Mon, 30 Apr 2018 08:20:44 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 08:20:44 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.6.2-api/
# Mon, 30 Apr 2018 08:20:44 GMT
ENV NUGET_XMLDOC_MODE=skip
# Mon, 30 Apr 2018 08:21:13 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu52     liblttng-ust0     libssl1.0.0     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 08:21:23 GMT
RUN DOTNET_SDK_VERSION=2.1.104 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=813334694667f8c1389d88cd3128a7749f4f65b13a0a8e2cb47380823849b8fe7f4816ab66c2d77e589fac9cb5748390b262beae9673aef86cad5a3d8f24986e &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Mon, 30 Apr 2018 08:21:24 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Mon, 30 Apr 2018 08:22:10 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Mon, 30 Apr 2018 08:22:11 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1656b69f6d18f7599e558164cfc88f8b44886a2b992b6f723843f5341568f99`  
		Last Modified: Mon, 30 Apr 2018 08:46:19 GMT  
		Size: 146.3 MB (146277323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e93f49c63c30568137d926e29158741621fcbe10eecce3ab619dc55fd25e6`  
		Last Modified: Mon, 30 Apr 2018 09:27:57 GMT  
		Size: 17.2 MB (17190514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5d19bcd8f015021a4c5ea38b61cddb08045a928947a701916a4973342b60bf`  
		Last Modified: Mon, 30 Apr 2018 09:28:20 GMT  
		Size: 164.3 MB (164322389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccef6a393297a2389ca9588cdf8bc7320468682c07007bb0b5a702725ffa42c`  
		Last Modified: Mon, 30 Apr 2018 09:28:57 GMT  
		Size: 290.5 MB (290482523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10.0-netcore`

```console
$ docker pull fsharp@sha256:367a79aa0b95c61d7c96a8693e50f490840a7f01028597c0f07b169a1a8dfa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10.0-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:d0f693a0c5365a60eb40d8302998930a535e76ae3b4fadc4d5d3a45107f95d4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.4 MB (648400046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a3d723b7170f73b38b43a4d4e0ee9b2fd50e97b9ad0c1284b51180c53be15a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 07:37:23 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 07:37:23 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 30 Apr 2018 07:46:28 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Mon, 30 Apr 2018 07:46:29 GMT
WORKDIR /root
# Mon, 30 Apr 2018 07:46:29 GMT
CMD ["fsharpi"]
# Mon, 30 Apr 2018 08:20:44 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 08:20:44 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.6.2-api/
# Mon, 30 Apr 2018 08:20:44 GMT
ENV NUGET_XMLDOC_MODE=skip
# Mon, 30 Apr 2018 08:21:13 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu52     liblttng-ust0     libssl1.0.0     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 08:21:23 GMT
RUN DOTNET_SDK_VERSION=2.1.104 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=813334694667f8c1389d88cd3128a7749f4f65b13a0a8e2cb47380823849b8fe7f4816ab66c2d77e589fac9cb5748390b262beae9673aef86cad5a3d8f24986e &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Mon, 30 Apr 2018 08:21:24 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Mon, 30 Apr 2018 08:22:10 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Mon, 30 Apr 2018 08:22:11 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1656b69f6d18f7599e558164cfc88f8b44886a2b992b6f723843f5341568f99`  
		Last Modified: Mon, 30 Apr 2018 08:46:19 GMT  
		Size: 146.3 MB (146277323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e93f49c63c30568137d926e29158741621fcbe10eecce3ab619dc55fd25e6`  
		Last Modified: Mon, 30 Apr 2018 09:27:57 GMT  
		Size: 17.2 MB (17190514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5d19bcd8f015021a4c5ea38b61cddb08045a928947a701916a4973342b60bf`  
		Last Modified: Mon, 30 Apr 2018 09:28:20 GMT  
		Size: 164.3 MB (164322389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccef6a393297a2389ca9588cdf8bc7320468682c07007bb0b5a702725ffa42c`  
		Last Modified: Mon, 30 Apr 2018 09:28:57 GMT  
		Size: 290.5 MB (290482523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:10-netcore`

```console
$ docker pull fsharp@sha256:367a79aa0b95c61d7c96a8693e50f490840a7f01028597c0f07b169a1a8dfa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:d0f693a0c5365a60eb40d8302998930a535e76ae3b4fadc4d5d3a45107f95d4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.4 MB (648400046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a3d723b7170f73b38b43a4d4e0ee9b2fd50e97b9ad0c1284b51180c53be15a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 07:37:23 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 07:37:23 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 30 Apr 2018 07:46:28 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Mon, 30 Apr 2018 07:46:29 GMT
WORKDIR /root
# Mon, 30 Apr 2018 07:46:29 GMT
CMD ["fsharpi"]
# Mon, 30 Apr 2018 08:20:44 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 08:20:44 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.6.2-api/
# Mon, 30 Apr 2018 08:20:44 GMT
ENV NUGET_XMLDOC_MODE=skip
# Mon, 30 Apr 2018 08:21:13 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu52     liblttng-ust0     libssl1.0.0     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 08:21:23 GMT
RUN DOTNET_SDK_VERSION=2.1.104 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=813334694667f8c1389d88cd3128a7749f4f65b13a0a8e2cb47380823849b8fe7f4816ab66c2d77e589fac9cb5748390b262beae9673aef86cad5a3d8f24986e &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Mon, 30 Apr 2018 08:21:24 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Mon, 30 Apr 2018 08:22:10 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Mon, 30 Apr 2018 08:22:11 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1656b69f6d18f7599e558164cfc88f8b44886a2b992b6f723843f5341568f99`  
		Last Modified: Mon, 30 Apr 2018 08:46:19 GMT  
		Size: 146.3 MB (146277323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e93f49c63c30568137d926e29158741621fcbe10eecce3ab619dc55fd25e6`  
		Last Modified: Mon, 30 Apr 2018 09:27:57 GMT  
		Size: 17.2 MB (17190514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5d19bcd8f015021a4c5ea38b61cddb08045a928947a701916a4973342b60bf`  
		Last Modified: Mon, 30 Apr 2018 09:28:20 GMT  
		Size: 164.3 MB (164322389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccef6a393297a2389ca9588cdf8bc7320468682c07007bb0b5a702725ffa42c`  
		Last Modified: Mon, 30 Apr 2018 09:28:57 GMT  
		Size: 290.5 MB (290482523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4`

```console
$ docker pull fsharp@sha256:9096a513cb671e04c19d40d4217df92fa7b03076262989aedc5586149a0ed3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4` - linux; amd64

```console
$ docker pull fsharp@sha256:cfa56064dec464be0094a4545ae41c438b867170310376e37bfafb91e0722626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.4 MB (176404620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4661e9475f1260b9b581df6cd52346370ce0aed4a0cc9f4adfa1dea7ad0b6f5a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 07:37:23 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 07:37:23 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 30 Apr 2018 07:46:28 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Mon, 30 Apr 2018 07:46:29 GMT
WORKDIR /root
# Mon, 30 Apr 2018 07:46:29 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1656b69f6d18f7599e558164cfc88f8b44886a2b992b6f723843f5341568f99`  
		Last Modified: Mon, 30 Apr 2018 08:46:19 GMT  
		Size: 146.3 MB (146277323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0`

```console
$ docker pull fsharp@sha256:17bdffa05cc5bc64e97f620e000e003369b131acf762f70f7bf524040f10cfe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0` - linux; amd64

```console
$ docker pull fsharp@sha256:a9f39aad0557a26f9a31dd9756802ccca8f2b18dc8e3c93d7a45844897dd1a33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279920673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51f4c8bf125909e7a725716752b18fca69b85816c3980181db4378d32c74ac2`
-	Default Command: `["fsharpi"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 17:37:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:37:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:38:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:42:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 08:09:32 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 08:09:32 GMT
ENV MONO_VERSION=4.8.0.495
# Mon, 30 Apr 2018 08:09:39 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Mon, 30 Apr 2018 08:09:39 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 30 Apr 2018 08:11:18 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 08:11:19 GMT
ENV FSHARP_VERSION=4.0.1.1
# Mon, 30 Apr 2018 08:11:19 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Mon, 30 Apr 2018 08:17:19 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Mon, 30 Apr 2018 08:17:20 GMT
WORKDIR /root
# Mon, 30 Apr 2018 08:17:20 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb854984e22cbff893751cc7eb0632acbc2037696a24c9dbf4d2f2f413a04ea`  
		Last Modified: Sat, 28 Apr 2018 21:10:21 GMT  
		Size: 4.7 MB (4658379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b6f35133cbdf0b7bb9be14a72b614818a17e541eea65ccabe6056505b2a5b9`  
		Last Modified: Sat, 28 Apr 2018 21:11:16 GMT  
		Size: 29.6 MB (29557138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f936c0a1ec98401d5f4ffe709ef48f9a7ddaa0ac4892708960f545cf5eeb93`  
		Last Modified: Sat, 28 Apr 2018 21:12:23 GMT  
		Size: 106.7 MB (106670348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a204246a6e1bf3c1f675a25a6f3f49ba346e133e08c98dc253df51911e981e`  
		Last Modified: Mon, 30 Apr 2018 09:13:06 GMT  
		Size: 13.8 KB (13826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82396426ebc22f0269c73e00f72118ff471b669133b46fb5272af950b2292f4`  
		Last Modified: Mon, 30 Apr 2018 09:13:22 GMT  
		Size: 55.3 MB (55285551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58c16943e97ef2c0b8a305690a6ab4c150ee9094dbad52fcebcc4802a3e0a53`  
		Last Modified: Mon, 30 Apr 2018 09:13:09 GMT  
		Size: 10.6 MB (10579307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.1`

```console
$ docker pull fsharp@sha256:17bdffa05cc5bc64e97f620e000e003369b131acf762f70f7bf524040f10cfe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1` - linux; amd64

```console
$ docker pull fsharp@sha256:a9f39aad0557a26f9a31dd9756802ccca8f2b18dc8e3c93d7a45844897dd1a33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279920673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51f4c8bf125909e7a725716752b18fca69b85816c3980181db4378d32c74ac2`
-	Default Command: `["fsharpi"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 17:37:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:37:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:38:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:42:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 08:09:32 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 08:09:32 GMT
ENV MONO_VERSION=4.8.0.495
# Mon, 30 Apr 2018 08:09:39 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Mon, 30 Apr 2018 08:09:39 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 30 Apr 2018 08:11:18 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 08:11:19 GMT
ENV FSHARP_VERSION=4.0.1.1
# Mon, 30 Apr 2018 08:11:19 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Mon, 30 Apr 2018 08:17:19 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Mon, 30 Apr 2018 08:17:20 GMT
WORKDIR /root
# Mon, 30 Apr 2018 08:17:20 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb854984e22cbff893751cc7eb0632acbc2037696a24c9dbf4d2f2f413a04ea`  
		Last Modified: Sat, 28 Apr 2018 21:10:21 GMT  
		Size: 4.7 MB (4658379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b6f35133cbdf0b7bb9be14a72b614818a17e541eea65ccabe6056505b2a5b9`  
		Last Modified: Sat, 28 Apr 2018 21:11:16 GMT  
		Size: 29.6 MB (29557138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f936c0a1ec98401d5f4ffe709ef48f9a7ddaa0ac4892708960f545cf5eeb93`  
		Last Modified: Sat, 28 Apr 2018 21:12:23 GMT  
		Size: 106.7 MB (106670348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a204246a6e1bf3c1f675a25a6f3f49ba346e133e08c98dc253df51911e981e`  
		Last Modified: Mon, 30 Apr 2018 09:13:06 GMT  
		Size: 13.8 KB (13826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82396426ebc22f0269c73e00f72118ff471b669133b46fb5272af950b2292f4`  
		Last Modified: Mon, 30 Apr 2018 09:13:22 GMT  
		Size: 55.3 MB (55285551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58c16943e97ef2c0b8a305690a6ab4c150ee9094dbad52fcebcc4802a3e0a53`  
		Last Modified: Mon, 30 Apr 2018 09:13:09 GMT  
		Size: 10.6 MB (10579307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.0.1.1`

```console
$ docker pull fsharp@sha256:17bdffa05cc5bc64e97f620e000e003369b131acf762f70f7bf524040f10cfe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.0.1.1` - linux; amd64

```console
$ docker pull fsharp@sha256:a9f39aad0557a26f9a31dd9756802ccca8f2b18dc8e3c93d7a45844897dd1a33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279920673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51f4c8bf125909e7a725716752b18fca69b85816c3980181db4378d32c74ac2`
-	Default Command: `["fsharpi"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 17:37:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:37:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 17:38:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:42:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 08:09:32 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 08:09:32 GMT
ENV MONO_VERSION=4.8.0.495
# Mon, 30 Apr 2018 08:09:39 GMT
RUN apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-xamarin.list
# Mon, 30 Apr 2018 08:09:39 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 30 Apr 2018 08:11:18 GMT
RUN apt-get -y update &&     apt-get -y --no-install-recommends install nuget mono-devel ca-certificates-mono &&     rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 08:11:19 GMT
ENV FSHARP_VERSION=4.0.1.1
# Mon, 30 Apr 2018 08:11:19 GMT
ENV FSHARP_PREFIX=/usr FSHARP_GACDIR=/usr/lib/mono/gac FSHARP_BASENAME=fsharp-4.0.1.1 FSHARP_ARCHIVE=4.0.1.1.tar.gz FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/4.0.1.1.tar.gz
# Mon, 30 Apr 2018 08:17:19 GMT
RUN mkdir -p /tmp/src &&     cd /tmp/src &&     wget $FSHARP_ARCHIVE_URL &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src
# Mon, 30 Apr 2018 08:17:20 GMT
WORKDIR /root
# Mon, 30 Apr 2018 08:17:20 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efb854984e22cbff893751cc7eb0632acbc2037696a24c9dbf4d2f2f413a04ea`  
		Last Modified: Sat, 28 Apr 2018 21:10:21 GMT  
		Size: 4.7 MB (4658379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b6f35133cbdf0b7bb9be14a72b614818a17e541eea65ccabe6056505b2a5b9`  
		Last Modified: Sat, 28 Apr 2018 21:11:16 GMT  
		Size: 29.6 MB (29557138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88f936c0a1ec98401d5f4ffe709ef48f9a7ddaa0ac4892708960f545cf5eeb93`  
		Last Modified: Sat, 28 Apr 2018 21:12:23 GMT  
		Size: 106.7 MB (106670348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a204246a6e1bf3c1f675a25a6f3f49ba346e133e08c98dc253df51911e981e`  
		Last Modified: Mon, 30 Apr 2018 09:13:06 GMT  
		Size: 13.8 KB (13826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82396426ebc22f0269c73e00f72118ff471b669133b46fb5272af950b2292f4`  
		Last Modified: Mon, 30 Apr 2018 09:13:22 GMT  
		Size: 55.3 MB (55285551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f58c16943e97ef2c0b8a305690a6ab4c150ee9094dbad52fcebcc4802a3e0a53`  
		Last Modified: Mon, 30 Apr 2018 09:13:09 GMT  
		Size: 10.6 MB (10579307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1`

```console
$ docker pull fsharp@sha256:9096a513cb671e04c19d40d4217df92fa7b03076262989aedc5586149a0ed3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.1` - linux; amd64

```console
$ docker pull fsharp@sha256:cfa56064dec464be0094a4545ae41c438b867170310376e37bfafb91e0722626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.4 MB (176404620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4661e9475f1260b9b581df6cd52346370ce0aed4a0cc9f4adfa1dea7ad0b6f5a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 07:37:23 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 07:37:23 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 30 Apr 2018 07:46:28 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Mon, 30 Apr 2018 07:46:29 GMT
WORKDIR /root
# Mon, 30 Apr 2018 07:46:29 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1656b69f6d18f7599e558164cfc88f8b44886a2b992b6f723843f5341568f99`  
		Last Modified: Mon, 30 Apr 2018 08:46:19 GMT  
		Size: 146.3 MB (146277323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:4.1.34`

```console
$ docker pull fsharp@sha256:9096a513cb671e04c19d40d4217df92fa7b03076262989aedc5586149a0ed3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:4.1.34` - linux; amd64

```console
$ docker pull fsharp@sha256:cfa56064dec464be0094a4545ae41c438b867170310376e37bfafb91e0722626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.4 MB (176404620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4661e9475f1260b9b581df6cd52346370ce0aed4a0cc9f4adfa1dea7ad0b6f5a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 07:37:23 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 07:37:23 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 30 Apr 2018 07:46:28 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Mon, 30 Apr 2018 07:46:29 GMT
WORKDIR /root
# Mon, 30 Apr 2018 07:46:29 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1656b69f6d18f7599e558164cfc88f8b44886a2b992b6f723843f5341568f99`  
		Last Modified: Mon, 30 Apr 2018 08:46:19 GMT  
		Size: 146.3 MB (146277323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:latest`

```console
$ docker pull fsharp@sha256:9096a513cb671e04c19d40d4217df92fa7b03076262989aedc5586149a0ed3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:latest` - linux; amd64

```console
$ docker pull fsharp@sha256:cfa56064dec464be0094a4545ae41c438b867170310376e37bfafb91e0722626
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.4 MB (176404620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4661e9475f1260b9b581df6cd52346370ce0aed4a0cc9f4adfa1dea7ad0b6f5a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 07:37:23 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 07:37:23 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 30 Apr 2018 07:46:28 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Mon, 30 Apr 2018 07:46:29 GMT
WORKDIR /root
# Mon, 30 Apr 2018 07:46:29 GMT
CMD ["fsharpi"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1656b69f6d18f7599e558164cfc88f8b44886a2b992b6f723843f5341568f99`  
		Last Modified: Mon, 30 Apr 2018 08:46:19 GMT  
		Size: 146.3 MB (146277323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `fsharp:netcore`

```console
$ docker pull fsharp@sha256:367a79aa0b95c61d7c96a8693e50f490840a7f01028597c0f07b169a1a8dfa1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:d0f693a0c5365a60eb40d8302998930a535e76ae3b4fadc4d5d3a45107f95d4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.4 MB (648400046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43a3d723b7170f73b38b43a4d4e0ee9b2fd50e97b9ad0c1284b51180c53be15a`
-	Default Command: `["fsharpi"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 07:37:23 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 07:37:23 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 30 Apr 2018 07:46:28 GMT
RUN MONO_VERSION=5.8.0.108 &&     FSHARP_VERSION=4.1.34 &&     FSHARP_PREFIX=/usr &&     FSHARP_GACDIR=/usr/lib/mono/gac &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb http://download.mono-project.com/repo/debian jessie/snapshots/$MONO_VERSION main" > /etc/apt/sources.list.d/mono-official.list &&     apt-get update -y &&     apt-get --no-install-recommends install -y autoconf libtool pkg-config make automake nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     ./autogen.sh --prefix=$FSHARP_PREFIX --with-gacdir=$FSHARP_GACDIR &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local &&     apt-get purge -y autoconf libtool make automake &&     apt-get clean
# Mon, 30 Apr 2018 07:46:29 GMT
WORKDIR /root
# Mon, 30 Apr 2018 07:46:29 GMT
CMD ["fsharpi"]
# Mon, 30 Apr 2018 08:20:44 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 30 Apr 2018 08:20:44 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.6.2-api/
# Mon, 30 Apr 2018 08:20:44 GMT
ENV NUGET_XMLDOC_MODE=skip
# Mon, 30 Apr 2018 08:21:13 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu52     liblttng-ust0     libssl1.0.0     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 08:21:23 GMT
RUN DOTNET_SDK_VERSION=2.1.104 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=813334694667f8c1389d88cd3128a7749f4f65b13a0a8e2cb47380823849b8fe7f4816ab66c2d77e589fac9cb5748390b262beae9673aef86cad5a3d8f24986e &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Mon, 30 Apr 2018 08:21:24 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Mon, 30 Apr 2018 08:22:10 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Mon, 30 Apr 2018 08:22:11 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1656b69f6d18f7599e558164cfc88f8b44886a2b992b6f723843f5341568f99`  
		Last Modified: Mon, 30 Apr 2018 08:46:19 GMT  
		Size: 146.3 MB (146277323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e93f49c63c30568137d926e29158741621fcbe10eecce3ab619dc55fd25e6`  
		Last Modified: Mon, 30 Apr 2018 09:27:57 GMT  
		Size: 17.2 MB (17190514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f5d19bcd8f015021a4c5ea38b61cddb08045a928947a701916a4973342b60bf`  
		Last Modified: Mon, 30 Apr 2018 09:28:20 GMT  
		Size: 164.3 MB (164322389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ccef6a393297a2389ca9588cdf8bc7320468682c07007bb0b5a702725ffa42c`  
		Last Modified: Mon, 30 Apr 2018 09:28:57 GMT  
		Size: 290.5 MB (290482523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
