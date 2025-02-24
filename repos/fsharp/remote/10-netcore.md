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
