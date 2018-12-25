## `openjdk:8u191-jdk-windowsservercore`

```console
$ docker pull openjdk@sha256:3af1ebc667122f4adc0eb509975eac8b53c68e2e4d4ac463c4446305261628b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64
	-	windows version 10.0.16299.846; amd64
	-	windows version 10.0.17134.469; amd64

### `openjdk:8u191-jdk-windowsservercore` - windows version 10.0.14393.2665; amd64

```console
$ docker pull openjdk@sha256:8a4f346ccc1ddf3c4f208b87db01a6f6288037526890919a3774f84d2bed332d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5751464333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dac3123782699819b8340d461e6da1611f6f864e809d3fa249722396b411240`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Tue, 25 Dec 2018 17:17:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:33:17 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Tue, 25 Dec 2018 18:34:35 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 25 Dec 2018 18:34:36 GMT
ENV JAVA_VERSION=8u191
# Tue, 25 Dec 2018 18:34:38 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Tue, 25 Dec 2018 18:34:40 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Tue, 25 Dec 2018 18:34:41 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Tue, 25 Dec 2018 18:37:05 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:88c3d7be4c2760e750ccd244f2cd79c32fc9e1534640817aad858156500c4e0a`  
		Last Modified: Tue, 25 Dec 2018 17:51:28 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb62b08ef5e1ad0f8bb6d402af245784c54d3616fb8b64a5da611eda21c9c10e`  
		Last Modified: Tue, 25 Dec 2018 18:54:55 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182e0a73a7d206be77dfe337cf3c8d7ca291a7c749a4a6cc8f7181c30f52ee34`  
		Last Modified: Tue, 25 Dec 2018 18:54:57 GMT  
		Size: 5.2 MB (5235250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3722b62b3ff1e559c71d6adea44a9fc8cecaa4e4b7c8685dbfe2e3dcde902357`  
		Last Modified: Tue, 25 Dec 2018 18:54:52 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9d743345c99dee08747dd9f375b90dc0b42bcbba78192489759814be78f9cbc`  
		Last Modified: Tue, 25 Dec 2018 18:54:52 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70cff7cf86c0e8abb2149861c170bfd72bdc222b0634841a806a9c3460fa6cf8`  
		Last Modified: Tue, 25 Dec 2018 18:54:52 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19bb78f72de4e5a2c354d5580596c64ddab8d828171a0515a1e6a316c9fd893`  
		Last Modified: Tue, 25 Dec 2018 18:54:52 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616c2dcf8ecc49ae9ece72bd73fa70609d4fcd3075b1f75657d182d8dc81500d`  
		Last Modified: Tue, 25 Dec 2018 18:55:22 GMT  
		Size: 111.5 MB (111494645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u191-jdk-windowsservercore` - windows version 10.0.16299.846; amd64

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

### `openjdk:8u191-jdk-windowsservercore` - windows version 10.0.17134.469; amd64

```console
$ docker pull openjdk@sha256:ad9905f43cb154dd31975e5a0c0b05e32366fbab56210f801926a346b04f6b39
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2354900733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:165df4540bcd918ca2d395b98fa714358ca3851d60bec9807b45ca24516ffbd3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Tue, 25 Dec 2018 18:18:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:40:40 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Tue, 25 Dec 2018 18:41:25 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 25 Dec 2018 18:41:27 GMT
ENV JAVA_VERSION=8u191
# Tue, 25 Dec 2018 18:41:28 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Tue, 25 Dec 2018 18:41:30 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Tue, 25 Dec 2018 18:41:31 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Tue, 25 Dec 2018 18:43:05 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a716b198c71b782955b21f1eed303f89f487eaef823ebccdeb452b764512b3b`  
		Last Modified: Tue, 11 Dec 2018 22:06:40 GMT  
		Size: 583.9 MB (583898765 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:219a311071ee4293d1c43ed6fbbc267544771d491843ca5ff9c1a235c116c96d`  
		Last Modified: Tue, 25 Dec 2018 18:50:55 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:197d3d7d097bdc91dac1c211a57e5b2f377f2d9790bdee6fcdfc0b7df1a60f3c`  
		Last Modified: Tue, 25 Dec 2018 18:56:13 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66dd0bae7c67bbb562b9a5d0c47779e103215cb3a35890e06b37a54cc8347c64`  
		Last Modified: Tue, 25 Dec 2018 18:56:14 GMT  
		Size: 4.7 MB (4706943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb32677d8dea44075f548bd0d68ae54b7977c2c7cbbf5ddf56dfde8a57f59a9`  
		Last Modified: Tue, 25 Dec 2018 18:56:10 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b8012b558b575ca62aff143d81c95513ab8a7122e42b00486f6af27610750c`  
		Last Modified: Tue, 25 Dec 2018 18:56:10 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e3b835136624c96afb2613f7ff3722c8111aaa35fcdd061116f78c312ece505`  
		Last Modified: Tue, 25 Dec 2018 18:56:10 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08aa104f0f77debf960c7f39e9a81fd5db22b0543fc3795b5969b67e1257f20a`  
		Last Modified: Tue, 25 Dec 2018 18:56:10 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7fb296e9068a0ef416ed599699e744e7006b8bd2b40aa41c7c41445e3cb32ee`  
		Last Modified: Tue, 25 Dec 2018 18:56:26 GMT  
		Size: 106.6 MB (106599555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
