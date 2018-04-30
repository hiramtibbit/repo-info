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
