## `openjdk:8-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:4234fb8d59bf204ca4504bf5da9f5f35e964dfe8cfb9e3f9e5de353d7fc8a174
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `openjdk:8-jdk-windowsservercore-1803` - windows version 10.0.17134.469; amd64

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
