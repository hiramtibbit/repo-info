## `openjdk:13-ea-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:776eff5f0cb6096827a9065b26dd41ae23346ecb86f80a1f9b2d4634bab31ce0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2906; amd64

### `openjdk:13-ea-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2906; amd64

```console
$ docker pull openjdk@sha256:7c0ce39789834df117e9a7931d15230675b9312a6e601a015c1cb41f74040a0d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5852684433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7239d4b707c2cf92d49ec25b939dd143b9983ad4fca55256cc7fb0089448f11c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Wed, 03 Apr 2019 21:27:50 GMT
RUN Install update ltsc2016-amd64
# Thu, 11 Apr 2019 22:52:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 00:17:15 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Fri, 12 Apr 2019 00:17:17 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 12 Apr 2019 00:18:22 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 14 May 2019 00:49:09 GMT
ENV JAVA_VERSION=13-ea+20
# Tue, 14 May 2019 00:49:11 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/20/GPL/openjdk-13-ea+20_windows-x64_bin.zip
# Tue, 14 May 2019 00:49:12 GMT
ENV JAVA_SHA256=532fb6c2bd0e979dad19c495aa9c4378deb5fdef4913ccb9eece8202403f0e01
# Tue, 14 May 2019 00:52:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 14 May 2019 00:52:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ba2bcc6237ee9f5a8f3c4252e834890be10a921f5941265ad234230a00ebc786`  
		Last Modified: Tue, 09 Apr 2019 15:23:44 GMT  
		Size: 1.6 GB (1572383782 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:531bdf2c301d16276bdb1ccfcc2625181323e9c6b9fb43b5d98aa89b4fa55fa3`  
		Last Modified: Fri, 12 Apr 2019 00:02:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69e6721de712ffa461cc39978199d76951056103df05dcc38d1919d7cce16392`  
		Last Modified: Fri, 12 Apr 2019 01:44:03 GMT  
		Size: 5.2 MB (5222055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5372b93b2a73e347a0752aef2a100cbf57f0fdde8636a616b3d7074b4bc4aa7b`  
		Last Modified: Fri, 12 Apr 2019 01:44:00 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff85540e8700b05b951b93a8ef036cf8623b116dbdf4f9bf7eecb33493f5fbf5`  
		Last Modified: Fri, 12 Apr 2019 01:44:03 GMT  
		Size: 5.2 MB (5201436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45336d182505d398fd497183c953853a7bc0979e4c461bb8612e89680136a8cf`  
		Last Modified: Tue, 14 May 2019 00:58:20 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:918b140c19d6dc92f3e1849d2b49c46373f573b8a163fc5f4ea06777b6774ebc`  
		Last Modified: Tue, 14 May 2019 00:58:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a49d0f7d1c4f285c4f9d504e0580db38cabc0a24e335a55c318fa7a22d2f83`  
		Last Modified: Tue, 14 May 2019 00:58:20 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d2199249954db07e0b357f391a9127048db7f9394d01d38d31ef4638cdc108`  
		Last Modified: Tue, 14 May 2019 00:59:02 GMT  
		Size: 199.9 MB (199884008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe37d49fc6d71fe84cf16824da3682e2ef0a0e7ca6dfd45c81a9174af51642b0`  
		Last Modified: Tue, 14 May 2019 00:58:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
