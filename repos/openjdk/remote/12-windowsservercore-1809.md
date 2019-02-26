## `openjdk:12-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:279d0710548597bf011f4b4ea1183315c0693484a17d02075e24a1e1662751c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.316; amd64

### `openjdk:12-windowsservercore-1809` - windows version 10.0.17763.316; amd64

```console
$ docker pull openjdk@sha256:cadc9d64fdc30860bc8bc5312f9a9ec3f008fc3f31bd4bc9df3f3c04f586f02f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2101838702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfea015b6309194fc11e4787da6c0393a1fb434b92e98747338d7c130811f814`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Fri, 08 Feb 2019 00:24:24 GMT
RUN Install update 1809-amd64
# Wed, 13 Feb 2019 11:45:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 15 Feb 2019 10:29:28 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 15 Feb 2019 10:44:00 GMT
ENV JAVA_HOME=C:\openjdk-12
# Fri, 15 Feb 2019 10:44:24 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 15 Feb 2019 10:44:26 GMT
ENV JAVA_VERSION=12
# Tue, 26 Feb 2019 10:34:57 GMT
ENV JAVA_URL=https://download.java.net/java/GA/jdk12/33/GPL/openjdk-12_windows-x64_bin.zip
# Tue, 26 Feb 2019 10:34:58 GMT
ENV JAVA_SHA256=35a8d018f420fb05fe7c2aa9933122896ca50bd23dbd373e90d8e2f3897c4e92
# Tue, 26 Feb 2019 10:36:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 26 Feb 2019 10:36:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9e2f2b17be7207dce6730ad64c630dc10b5b3f61a74545c7c1628d605e381297`  
		Last Modified: Tue, 12 Feb 2019 20:42:21 GMT  
		Size: 370.7 MB (370687536 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cd3ade6fc2a72f217b4055dbb0d08b2a25d881d592aeba426cc097b18d9795f7`  
		Last Modified: Wed, 13 Feb 2019 12:52:13 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef813a1585330dd985f09a5e87000a28ea47ed9abf3086e4b532f6b78ef978b2`  
		Last Modified: Fri, 15 Feb 2019 11:52:51 GMT  
		Size: 4.2 MB (4206856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60df5555469e6db3135afa8e4e314505aaeb2482c5cd3dbbd630bb633c513898`  
		Last Modified: Fri, 15 Feb 2019 12:00:53 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8879739ff2804d5d1b3e1caa86caae67b704b4f3540ebf8b9c9aa3d2f10312`  
		Last Modified: Fri, 15 Feb 2019 12:00:53 GMT  
		Size: 309.5 KB (309518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169775f73e88a829274d9fef434e32ef6b0c9c27ead611d6f960be763092db16`  
		Last Modified: Fri, 15 Feb 2019 12:00:50 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a6a7ebbf0ac029a5213edf5d5c90baab51cd54ba471510d83eef8616b1df2c6`  
		Last Modified: Tue, 26 Feb 2019 11:01:51 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b92b1e6ffddbb9c16af96b7e8f69cc0a347dc287b9a77bc3cad97ea3200d06`  
		Last Modified: Tue, 26 Feb 2019 11:01:50 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1d303ce3b0d5e9d7fbb9a331fdbed6235e1821429894770e5300f8fbae4538`  
		Last Modified: Tue, 26 Feb 2019 11:02:15 GMT  
		Size: 191.9 MB (191942237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887d09edb606e7e7a0541719ed4f70a61f14494f2b4eb02479db8a3b023066cc`  
		Last Modified: Tue, 26 Feb 2019 11:01:51 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
