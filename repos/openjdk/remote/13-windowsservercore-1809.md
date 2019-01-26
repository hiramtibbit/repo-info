## `openjdk:13-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:d6847d76e2a613a239527301496f9afdd66e31558c631d2997de0abe87ba33f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.253; amd64

### `openjdk:13-windowsservercore-1809` - windows version 10.0.17763.253; amd64

```console
$ docker pull openjdk@sha256:65df228fcdad4f0c53ee5568cdc7edae4e567aba125fa1f424e8f2c5fd607eed
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (2046542103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4381b1fba3bc09671959a466277be88a9611fa141c266050606a39a8f0c9a63b`
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
# Fri, 18 Jan 2019 10:16:23 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 18 Jan 2019 10:16:50 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 26 Jan 2019 10:51:52 GMT
ENV JAVA_VERSION=13-ea+5
# Sat, 26 Jan 2019 10:51:54 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/5/GPL/openjdk-13-ea+5_windows-x64_bin.zip
# Sat, 26 Jan 2019 10:51:55 GMT
ENV JAVA_SHA256=bbac8dc310afb0b3bed5d2f8e3acaac27a7b544ee2d863c8e2d4292eb48c2aa8
# Sat, 26 Jan 2019 10:53:50 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 26 Jan 2019 10:53:53 GMT
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
	-	`sha256:b99c2d8dd49105a9accae5f4445b0dc5b6f811619871a38409a436f46d4df16f`  
		Last Modified: Fri, 18 Jan 2019 10:39:20 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47230e78cff7aaab76381709465682862b29117e1002d8d1816f5af289b7153c`  
		Last Modified: Fri, 18 Jan 2019 10:39:21 GMT  
		Size: 313.6 KB (313563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1003e9f3280556fd204d572aa03336fc7c0d87f4c11994e70194282430a18ad6`  
		Last Modified: Sat, 26 Jan 2019 11:26:05 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee45b1e42dd229ef0fc0f8ec22780d35ee10e1c9af155463260c5a5fd3837a22`  
		Last Modified: Sat, 26 Jan 2019 11:26:05 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a232d85f5b7647fcee1680d16489dccd8ee0e5baba69bf45e12b9d212fcdc110`  
		Last Modified: Sat, 26 Jan 2019 11:26:05 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8420891f1875dac2affc078cd52e71bff08367eaf3b3f9100c0927008c5319f2`  
		Last Modified: Sat, 26 Jan 2019 11:27:31 GMT  
		Size: 192.1 MB (192064160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f08f94b6341bf5b8d535cd60e720940ed831f977394fe22ef516540741656586`  
		Last Modified: Sat, 26 Jan 2019 11:26:05 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
