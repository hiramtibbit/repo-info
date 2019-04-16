## `fsharp:netcore`

```console
$ docker pull fsharp@sha256:dc82e3bf9d1e5eee69359db1d2d3fd4e21ff8076a6670aca3040656e5885f20f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:7a5396c300f43f6d45eebffcb957aebc4ef96d223abe77c001aab82adb9754fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **670.5 MB (670452948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44228212a5bca28bed8f1c336f73bdf9bf12cfa00b27203d9111193c18f23173`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:20:45 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 27 Mar 2019 00:20:45 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 15 Apr 2019 23:32:33 GMT
RUN MONO_VERSION=5.20.1.19 &&     FSHARP_VERSION=10.2.3 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Mon, 15 Apr 2019 23:32:33 GMT
WORKDIR /root
# Mon, 15 Apr 2019 23:32:34 GMT
CMD ["fsharpi"]
# Mon, 15 Apr 2019 23:32:53 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 15 Apr 2019 23:32:53 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.2-api/
# Mon, 15 Apr 2019 23:32:53 GMT
ENV NUGET_XMLDOC_MODE=skip
# Mon, 15 Apr 2019 23:33:06 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Mon, 15 Apr 2019 23:33:34 GMT
RUN DOTNET_SDK_VERSION=2.2.203 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=8DA955FA0AEEBB6513A6E8C4C23472286ED78BD5533AF37D79A4F2C42060E736FDA5FD48B61BF5AEC10BBA96EB2610FACC0F8A458823D374E1D437B26BA61A5C &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Mon, 15 Apr 2019 23:33:34 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Mon, 15 Apr 2019 23:34:28 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Mon, 15 Apr 2019 23:34:29 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d731601f9f4cd9b5e09ce614bbaa974830fd294d511f043d422f0780c5b49c93`  
		Last Modified: Mon, 15 Apr 2019 23:35:15 GMT  
		Size: 152.7 MB (152664930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29aef95596aa8f184e3852c9d8c36774f57dd7f72a77f3f369845aef9215f1e7`  
		Last Modified: Mon, 15 Apr 2019 23:35:25 GMT  
		Size: 18.0 MB (18025977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15df1f457157332bcc43e57ef3dcc417de39f2e3bc26131e1c1fd9591b2f6f5`  
		Last Modified: Mon, 15 Apr 2019 23:35:47 GMT  
		Size: 173.3 MB (173312632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d741fa1c6deeea4fb7cc2f782b0d1972960d89423d6ef0e27e54e8e65658d27`  
		Last Modified: Mon, 15 Apr 2019 23:36:06 GMT  
		Size: 304.0 MB (303953361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
