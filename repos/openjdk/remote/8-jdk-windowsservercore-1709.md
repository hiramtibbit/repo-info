## `openjdk:8-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:c86b222d397f2937ddd5064730be36016f587e20e2203e819036c23edf571659
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `openjdk:8-jdk-windowsservercore-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull openjdk@sha256:d5d84f8e0135faf20c28579013909bce50ee4437fa2de8524dec101f3caf6736
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3267961004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21235f1037f79f90cac73b356dcb7dc99dd55111b55a7f0bda2d750698d10ea0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Tue, 25 Dec 2018 17:23:38 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:37:14 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Tue, 25 Dec 2018 18:38:11 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 25 Dec 2018 18:38:13 GMT
ENV JAVA_VERSION=8u191
# Tue, 25 Dec 2018 18:38:14 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Tue, 25 Dec 2018 18:38:16 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Tue, 25 Dec 2018 18:38:18 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Tue, 25 Dec 2018 18:40:22 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7c1b47cffe80520ef16d931d598cdadd371f9cb1e4ca9304d9c7532bb19c9721`  
		Last Modified: Tue, 25 Dec 2018 17:52:11 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805d59429b8207f3532563fcf27d5aa25e09e7ace921435e6957cd48f4ba7eb9`  
		Last Modified: Tue, 25 Dec 2018 18:55:39 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f28fcfe31780f290a2bfe9cb2ad4560e2b030a1e020279d662ca1b02c02c949d`  
		Last Modified: Tue, 25 Dec 2018 18:55:41 GMT  
		Size: 4.8 MB (4787950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca5d7fe7ba7e05a2b0ac4e1ad72c8d03ed28d3269f447aaaf147a0aa9dafe704`  
		Last Modified: Tue, 25 Dec 2018 18:55:36 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b3b367ea89ab11cd757e7e54996ac2ff5e7ae2e61c5247a6f350a4aca7c3171`  
		Last Modified: Tue, 25 Dec 2018 18:55:36 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed135364a09ad6168c545fc6b506bd6bcf2e9df9e35bee4a205f466075747b36`  
		Last Modified: Tue, 25 Dec 2018 18:55:37 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1d12362cbaf62c91d7917950038d1055e448eeca62c04e2f3f92ac3b0dd88e`  
		Last Modified: Tue, 25 Dec 2018 18:55:36 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:027aa3d40cbf488b6326eb557578ca29c9939a5c71db872faf26a365f0382aa5`  
		Last Modified: Tue, 25 Dec 2018 18:55:55 GMT  
		Size: 111.0 MB (111028244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
