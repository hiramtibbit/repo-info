## `fsharp:netcore`

```console
$ docker pull fsharp@sha256:7738a48748fc7bb6fd97f4b357ff5f4d2da1ec0a236cac534e5b5a2588ed72c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:81eaa5fcbe8b7cc6e1ba46bca4d466d137c6a5b17353e7e2f045636b11b83c91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.8 MB (627806727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04598ca4b961475e715e6be3b3991c482e18dc0aae45991cffe51f41577e1f8d`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:13:46 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 26 Jun 2018 22:13:46 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 26 Jun 2018 22:25:56 GMT
RUN MONO_VERSION=5.8.0.127 &&     FSHARP_VERSION=10.0.2 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 26 Jun 2018 22:26:02 GMT
WORKDIR /root
# Tue, 26 Jun 2018 22:26:03 GMT
CMD ["fsharpi"]
# Tue, 26 Jun 2018 22:39:04 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 26 Jun 2018 22:39:04 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.6.2-api/
# Tue, 26 Jun 2018 22:39:04 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 26 Jun 2018 22:39:15 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:39:29 GMT
RUN DOTNET_SDK_VERSION=2.1.104 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=813334694667f8c1389d88cd3128a7749f4f65b13a0a8e2cb47380823849b8fe7f4816ab66c2d77e589fac9cb5748390b262beae9673aef86cad5a3d8f24986e &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 26 Jun 2018 22:39:29 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 26 Jun 2018 22:40:02 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 26 Jun 2018 22:40:04 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b1757444bc935ddf6c9c76653b7ec952cc696941bff6a978d7450055a5f049d`  
		Last Modified: Tue, 26 Jun 2018 22:41:19 GMT  
		Size: 132.5 MB (132511224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19ded50eb7759fd5254071b3ea036e323f1bda403e8289854884bebdba47c5a`  
		Last Modified: Tue, 26 Jun 2018 22:43:43 GMT  
		Size: 18.0 MB (17997721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12046d6081d643a66cfebde699e38867afae70306a5897d80798035b73a9b26`  
		Last Modified: Tue, 26 Jun 2018 22:44:20 GMT  
		Size: 164.3 MB (164322424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b426bc6feeedc1498f736895b3ca89ad84f8e6d0d33044f99e352af466655d0`  
		Last Modified: Tue, 26 Jun 2018 22:44:52 GMT  
		Size: 290.5 MB (290478383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
