## `fsharp:10-netcore`

```console
$ docker pull fsharp@sha256:fd675606ad616443d01fd3b7683f69be20037de270edcaf0e9bbce263b2a312a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:10-netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:b4180f91a6732ad3e851b9ca74ebc5090a0fd7988c7f660bb49847e9ce828bd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **657.5 MB (657539548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bc06e8c3e3dd0937fd01ed64370b82743f3af22775c0804f6624545218802c3`
-	Default Command: `["fsharpi"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:44:27 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Sat, 29 Dec 2018 01:44:28 GMT
ENV MONO_THREADS_PER_CPU=50
# Wed, 02 Jan 2019 21:29:23 GMT
RUN MONO_VERSION=5.14.0.177 &&     FSHARP_VERSION=10.2.1 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --batch --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono locales &&     rm -rf /var/lib/apt/lists/* &&     echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && /usr/sbin/locale-gen &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Wed, 02 Jan 2019 21:29:24 GMT
WORKDIR /root
# Wed, 02 Jan 2019 21:29:24 GMT
CMD ["fsharpi"]
# Wed, 02 Jan 2019 21:29:38 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Wed, 02 Jan 2019 21:29:38 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.7.1-api/
# Wed, 02 Jan 2019 21:29:38 GMT
ENV NUGET_XMLDOC_MODE=skip
# Wed, 02 Jan 2019 21:29:47 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Wed, 02 Jan 2019 21:30:10 GMT
RUN DOTNET_SDK_VERSION=2.1.401 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=639f9f68f225246d9cce798d72d011f65c7eda0d775914d1394df050bddf93e2886555f5eed85a75d6c72e9063a54d8aa053c64c326c683b94e9e0a0570e5654 &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Wed, 02 Jan 2019 21:30:11 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Wed, 02 Jan 2019 21:31:02 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Wed, 02 Jan 2019 21:31:03 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69cfd50ecd512238c837bf1850075d532efd3cc4b27997d6b60fb6474dce99ce`  
		Last Modified: Wed, 02 Jan 2019 21:32:00 GMT  
		Size: 145.0 MB (144994709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee9e12e229b07293b823bb523aae9a02503c7f064663c132b5d9682947a0607`  
		Last Modified: Wed, 02 Jan 2019 21:32:11 GMT  
		Size: 18.0 MB (18024388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb72ef817fd16d9b4eb8c40e8b8d727c223b7d483b812fa958e5b58c493a9d1`  
		Last Modified: Wed, 02 Jan 2019 21:32:39 GMT  
		Size: 167.3 MB (167286700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f600eb507a332f0141531ea3d00ed7c8f1444b33a7e816cd2f47a2c9cbbb9c76`  
		Last Modified: Wed, 02 Jan 2019 21:32:53 GMT  
		Size: 304.7 MB (304740835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
