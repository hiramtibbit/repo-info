## `fsharp:netcore`

```console
$ docker pull fsharp@sha256:9e73df4811e522dea6919e9b465e6f6342a10f2647b444506fd2b418ff29fe21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `fsharp:netcore` - linux; amd64

```console
$ docker pull fsharp@sha256:1c8254374e1ab8086752d4051070cc960055155e433d3768525c1398f8d22909
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.7 MB (627727355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2efb88b0e8233dacc9b3435d8801a1d477eab3a0c3276085316d62ae9ebafeb`
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
# Tue, 04 Sep 2018 23:15:36 GMT
RUN MONO_VERSION=5.8.0.127 &&     FSHARP_VERSION=10.0.2 &&     FSHARP_BASENAME=fsharp-$FSHARP_VERSION &&     FSHARP_ARCHIVE=$FSHARP_VERSION.tar.gz &&     FSHARP_ARCHIVE_URL=https://github.com/fsharp/fsharp/archive/$FSHARP_VERSION.tar.gz &&     export GNUPGHOME="$(mktemp -d)" &&     apt-get update && apt-get --no-install-recommends install -y gnupg dirmngr &&     apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF &&     echo "deb https://download.mono-project.com/repo/debian stretch/snapshots/$MONO_VERSION main" | tee /etc/apt/sources.list.d/mono-official-stable.list &&     apt-get install -y apt-transport-https &&     apt-get update -y &&     apt-get --no-install-recommends install -y pkg-config make nuget mono-devel msbuild ca-certificates-mono &&     rm -rf /var/lib/apt/lists/* &&     mkdir -p /tmp/src &&     cd /tmp/src &&     printf "namespace a { class b { public static void Main(string[] args) { new System.Net.WebClient().DownloadFile(\"%s\", \"%s\");}}}" $FSHARP_ARCHIVE_URL $FSHARP_ARCHIVE > download-fsharp.cs &&     mcs download-fsharp.cs && mono download-fsharp.exe && rm download-fsharp.exe download-fsharp.cs &&     tar xf $FSHARP_ARCHIVE &&     cd $FSHARP_BASENAME &&     make &&     make install &&     cd ~ &&     rm -rf /tmp/src /tmp/NuGetScratch ~/.nuget ~/.config ~/.local "$GNUPGHOME" &&     apt-get purge -y make gnupg dirmngr &&     apt-get clean
# Tue, 04 Sep 2018 23:15:37 GMT
WORKDIR /root
# Tue, 04 Sep 2018 23:15:37 GMT
CMD ["fsharpi"]
# Tue, 04 Sep 2018 23:37:21 GMT
LABEL maintainer=Dave Curylo <dave@curylo.org>, Steve Desmond <steve@stevedesmond.ca>
# Tue, 04 Sep 2018 23:37:21 GMT
ENV FrameworkPathOverride=/usr/lib/mono/4.6.2-api/
# Tue, 04 Sep 2018 23:37:21 GMT
ENV NUGET_XMLDOC_MODE=skip
# Tue, 04 Sep 2018 23:37:29 GMT
RUN apt-get update &&     apt-get --no-install-recommends install -y     curl     libunwind8     gettext     apt-transport-https     libc6     libcurl3     libgcc1     libgssapi-krb5-2     libicu57     liblttng-ust0     libssl1.0.2     libstdc++6     libunwind8     libuuid1     zlib1g &&     rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 23:37:51 GMT
RUN DOTNET_SDK_VERSION=2.1.104 &&     DOTNET_SDK_DOWNLOAD_URL=https://dotnetcli.blob.core.windows.net/dotnet/Sdk/$DOTNET_SDK_VERSION/dotnet-sdk-$DOTNET_SDK_VERSION-linux-x64.tar.gz &&     DOTNET_SDK_DOWNLOAD_SHA=813334694667f8c1389d88cd3128a7749f4f65b13a0a8e2cb47380823849b8fe7f4816ab66c2d77e589fac9cb5748390b262beae9673aef86cad5a3d8f24986e &&     curl -SL $DOTNET_SDK_DOWNLOAD_URL --output dotnet.tar.gz &&     echo "$DOTNET_SDK_DOWNLOAD_SHA dotnet.tar.gz" | sha512sum -c - &&     mkdir -p /usr/share/dotnet &&     tar -zxf dotnet.tar.gz -C /usr/share/dotnet &&     rm dotnet.tar.gz &&     ln -s /usr/share/dotnet/dotnet /usr/bin/dotnet
# Tue, 04 Sep 2018 23:37:51 GMT
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
# Tue, 04 Sep 2018 23:38:32 GMT
RUN mkdir warmup &&     cd warmup &&     dotnet new &&     cd - &&     rm -rf warmup /tmp/NuGetScratch
# Tue, 04 Sep 2018 23:38:33 GMT
WORKDIR /root
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eeb2006aec5655bfc9224bb97b05fd3a7e162c49e2f32e2fb831969c1ee56f7`  
		Last Modified: Tue, 04 Sep 2018 23:39:33 GMT  
		Size: 132.4 MB (132436957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8051cbb023af981383adc2db0e2264231c96f067e94578b4c95d0a4d9d147c9f`  
		Last Modified: Tue, 04 Sep 2018 23:41:04 GMT  
		Size: 18.0 MB (17997031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268bbb8267447a131884edcf172b257a912d43a52cbc8731f3ae4b672fa36682`  
		Last Modified: Tue, 04 Sep 2018 23:41:31 GMT  
		Size: 164.3 MB (164322398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae28acd082f7826bd627c8043aa50db369a50d9508537bb831a2f2ceefc37a1d`  
		Last Modified: Tue, 04 Sep 2018 23:41:50 GMT  
		Size: 290.5 MB (290485004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
