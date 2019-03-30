## `openjdk:13-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:ad080483beb02045b3f7c14c4ca849769cd66a71a7926ef1f60f36b3cd3cfd91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.379; amd64

### `openjdk:13-windowsservercore-1809` - windows version 10.0.17763.379; amd64

```console
$ docker pull openjdk@sha256:9b9213fdbed86cef72a7e0c46850d6fbd746ac1a93a12a8a50175074533bfca8
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2349465902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8102f098748fca48700beefeceb6040e96b2a616c3e9744c2275e683c6d1dffa`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 09 Mar 2019 03:10:13 GMT
RUN Install update 1809-amd64
# Sat, 16 Mar 2019 09:52:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:15:19 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Thu, 28 Mar 2019 10:15:21 GMT
ENV JAVA_HOME=C:\openjdk-13
# Thu, 28 Mar 2019 10:15:49 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 30 Mar 2019 10:20:29 GMT
ENV JAVA_VERSION=13-ea+14
# Sat, 30 Mar 2019 10:20:31 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/14/GPL/openjdk-13-ea+14_windows-x64_bin.zip
# Sat, 30 Mar 2019 10:20:32 GMT
ENV JAVA_SHA256=709c0cd64f9c49e40817e328fb56e8153d56f206db52fcd00e438880f09da8a5
# Sat, 30 Mar 2019 10:22:24 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 30 Mar 2019 10:22:27 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d48f500354393ec6614f6435639636db175e3ac6c3d1a3d1857b609789de7a7d`  
		Last Modified: Tue, 12 Mar 2019 22:36:05 GMT  
		Size: 620.8 MB (620755432 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5e195200ec7c843146b67b39b26ec25466f3b96bce8db32ff3a809a25fdece80`  
		Last Modified: Sat, 16 Mar 2019 10:45:02 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613244f30bb1a7b8ec62a7335f06e3cab5ea68622dead5ce1f837b9c3f829daf`  
		Last Modified: Thu, 28 Mar 2019 11:06:45 GMT  
		Size: 4.3 MB (4284846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b1c747acf45cad258e7509eb6a95224afa6d087de2310fb9974c969bce2910`  
		Last Modified: Thu, 28 Mar 2019 11:06:43 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d896352a7b9155c9918d35efff6bbb85dc04d7e3ce305cc536e6be58258951d7`  
		Last Modified: Thu, 28 Mar 2019 11:06:43 GMT  
		Size: 298.8 KB (298778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aae130afe3ef096766817319ef417fda85550d8d33e6e88305633e0e960507db`  
		Last Modified: Sat, 30 Mar 2019 10:32:55 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbfed622161ef7c1a472c5bc5de8750afa00ce3dc260226b4eddcd8b94d12fd`  
		Last Modified: Sat, 30 Mar 2019 10:32:55 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6654832a20094d99d5a6afd890aab87bb758fa58c1c22ba4b67c42166eb1e925`  
		Last Modified: Sat, 30 Mar 2019 10:32:55 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d492d0d173214e46d3a410573f1bcae99574360f44ec56c93d76e7171da6f39`  
		Last Modified: Sat, 30 Mar 2019 10:33:45 GMT  
		Size: 189.4 MB (189434271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4370edc3fceba367f4adde1bebe1b1b56b058c1df822971b55d80ae5ab3a15`  
		Last Modified: Sat, 30 Mar 2019 10:32:55 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
