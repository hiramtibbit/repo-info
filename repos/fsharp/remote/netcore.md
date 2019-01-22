## `fsharp:netcore`

```console
$ docker pull fsharp@sha256:bde15ead181b59e58d6ccebf17766f9984eee1d8a13afcd3b7bda238235ebc99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:37a4a3b960a57fcf0a43d0bb519d8e223acd0fdd6ad01212a4a4d4a117719b1c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.5 MB (657546263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3829f1acd8ca3a986a823f6ec6b6ef7daa8f1af125326155ee6da51b11d318d`
-	Default Command: `["fsharpi"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:26 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 22 Jan 2019 20:05:27 GMT
ENV MONO_THREADS_PER_CPU=50
# Tue, 22 Jan 2019 20:15:36 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 22 Jan 2019 20:15:37 GMT
WORKDIR /root
# Tue, 22 Jan 2019 20:15:37 GMT
CMD ["fsharpi"]
# Tue, 22 Jan 2019 20:30:43 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 22 Jan 2019 20:30:43 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Tue, 22 Jan 2019 20:30:43 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 22 Jan 2019 20:30:54 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:31:31 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 22 Jan 2019 20:31:31 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 22 Jan 2019 20:32:29 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 22 Jan 2019 20:32:30 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69eb65ec243550319b8928fcdef4dda3ab9ec9a5be839e49692cbbf334b7f5d3`  
		Last Modified: Tue, 22 Jan 2019 20:33:30 GMT  
		Size: 145.0 MB (144994756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:111bafdff9897b9c9337d31fabaf1231aebc69b696ae1d9dafb0724373305a4b`  
		Last Modified: Tue, 22 Jan 2019 20:34:17 GMT  
		Size: 18.0 MB (18024418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2584f2643ba75b828d8254b111972053415847b19cd2326902094461348948a7`  
		Last Modified: Tue, 22 Jan 2019 20:34:42 GMT  
		Size: 167.3 MB (167286720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2169ce801e96215988e7844ad59fdc41e23239f84f5b8dcfdc8f7938c6e321`  
		Last Modified: Tue, 22 Jan 2019 20:35:12 GMT  
		Size: 304.7 MB (304739662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
