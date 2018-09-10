## `fsharp:netcore`

```console
$ docker pull fsharp@sha256:6e7af01fdb4b5b42cfc13865d98a14961d4951379c9f75b9bc62f997057db14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:97e2244d59b3ee2edf32baaf3c39d3617f6083b89e2d588eef22a66cca2ef423
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **658.3 MB (658273356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4536957a951152b036447edcbdc1987e0b4de4355ad1d17bb67bc69fa7bd1b56`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 23:04:55 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 04 Sep 2018 23:04:56 GMT
ENV MONO_THREADS_PER_CPU=50
# Mon, 10 Sep 2018 20:28:19 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Mon, 10 Sep 2018 20:28:21 GMT
WORKDIR /root
# Mon, 10 Sep 2018 20:28:21 GMT
CMD ["fsharpi"]
# Mon, 10 Sep 2018 20:29:00 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Mon, 10 Sep 2018 20:29:00 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Mon, 10 Sep 2018 20:29:00 GMT
ENV NUGET_XMLDOC_MODE=skip
# Mon, 10 Sep 2018 20:29:08 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Mon, 10 Sep 2018 20:29:32 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Mon, 10 Sep 2018 20:29:32 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Mon, 10 Sep 2018 20:30:24 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Mon, 10 Sep 2018 20:30:26 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84752f6faba180f5afc32b9e9edc0de3209a9c8fc1db2a3bc1c16ab05e858e38`  
		Last Modified: Mon, 10 Sep 2018 20:31:22 GMT  
		Size: 145.0 MB (144990459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2fd15bf0339459c7e2fae546e1bd1fc456d0b52b1d85ca4b94c8f6f032196f`  
		Last Modified: Mon, 10 Sep 2018 20:31:57 GMT  
		Size: 18.0 MB (18027181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2b23896c58ea64371dd1bbd71bca0e7d2e6f5d61a46ca91ce8824604b4d1d5`  
		Last Modified: Mon, 10 Sep 2018 20:32:20 GMT  
		Size: 167.3 MB (167312431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6c2440c8745498a72fa0f996f0366378687c2664c1472b18d6b51de0404da9`  
		Last Modified: Mon, 10 Sep 2018 20:32:38 GMT  
		Size: 305.5 MB (305457320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
