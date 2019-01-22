## `openjdk:12-jdk-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:6a22f1faf25fc5450f4414b6fa14def45bddfcb9fb0b250837583cd46c6afbc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.253; amd64

### `openjdk:12-jdk-windowsservercore-1809` - windows version 10.0.17763.253; amd64

```console
$ docker pull openjdk@sha256:9074cea9eb23a0544fc9b636f60b9af5b03b22fe895d7172b16bbc6a224cfe41
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (2046436139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0814699042401cccd85cece3c75735bfc61ec429a4e78a0b242962016479633c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809_RTM_amd64
# Wed, 02 Jan 2019 22:33:05 GMT
RUN Install update 1809_amd64
# Fri, 11 Jan 2019 12:21:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 18 Jan 2019 10:16:21 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 18 Jan 2019 10:19:23 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 18 Jan 2019 10:19:48 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 22 Jan 2019 10:35:38 GMT
ENV JAVA_VERSION=12-ea+28
# Tue, 22 Jan 2019 10:35:39 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/28/GPL/openjdk-12-ea+28_windows-x64_bin.zip
# Tue, 22 Jan 2019 10:35:40 GMT
ENV JAVA_SHA256=faa74869bda4c98782997c87ca40cd6f666f2c642155a19e7b9eaac69a47db3b
# Tue, 22 Jan 2019 11:07:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 22 Jan 2019 11:07:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2ac060f1ef0656a73755234824c317294dcaf934c9f0933b1a3aa349d8e4fbf3`  
		Last Modified: Tue, 08 Jan 2019 19:21:17 GMT  
		Size: 315.3 MB (315326112 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:409ca3908f9b0e2af8c5b8e8e66b93a5b0b79aa380a8750859965d0017697547`  
		Last Modified: Fri, 11 Jan 2019 14:00:24 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb19289d6afe170c6e62cad97ceeb2ce669fc368b028de1cb3d0fd04f11b8248`  
		Last Modified: Fri, 18 Jan 2019 10:39:22 GMT  
		Size: 4.1 MB (4145682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907f7661a47e434aefef71c19c448be0e6818d3835cbc14fdd7667275783581d`  
		Last Modified: Fri, 18 Jan 2019 10:40:38 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117ae2385a460efd13248b8ede73ec4513040ecf5c49a58628e07b0f4cad900f`  
		Last Modified: Fri, 18 Jan 2019 10:40:38 GMT  
		Size: 313.4 KB (313402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da6dcf6104d924a3b492339931c58f2afd621ef661a096d7009556e3e7e168b`  
		Last Modified: Tue, 22 Jan 2019 11:36:07 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259449102e7652044db17dc3330252c9ebbd70e8e88902f3c2d7250a1e8ab853`  
		Last Modified: Tue, 22 Jan 2019 11:36:07 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88acb5065fa8213fe752e5995bc09243b1d31f53f2abd8d4a4d33e5ff994e6f0`  
		Last Modified: Tue, 22 Jan 2019 11:36:07 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595c2a0bc6e09058b50d6a1e790523d38b9914e9f37d090d894f6e6992656187`  
		Last Modified: Tue, 22 Jan 2019 11:36:40 GMT  
		Size: 192.0 MB (191958367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39bbea677c93552902ce20c49a1a9526f6028706e311025c9aef48f15ee09d9`  
		Last Modified: Tue, 22 Jan 2019 11:36:07 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
