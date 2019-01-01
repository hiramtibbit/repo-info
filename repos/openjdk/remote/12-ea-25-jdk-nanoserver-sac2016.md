## `openjdk:12-ea-25-jdk-nanoserver-sac2016`

```console
$ docker pull openjdk@sha256:ba04716bb2bcc42a508f4f171c05d8ccf6c25e8d4d24c7f42788b62ad52e77a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:12-ea-25-jdk-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:7ba0447e21c0f44168664f71e4ce99b35216beac73975966a91557b72c30f6c9
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.6 MB (629611044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26671b3d6ba068aaf18a15d37fd8bfe71319f0b454c1a03f8bfbd0184845824d`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:43:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:44:05 GMT
RUN Write-Host 'Enabling TLS 1.2 (https://githubengineering.com/crypto-removal-notice/) ...'; 	$tls12RegBase = 'HKLM:\\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.2'; 	if (Test-Path $tls12RegBase) { throw ('"{0}" already exists!' -f $tls12RegBase) }; 	New-Item -Path ('{0}/Client' -f $tls12RegBase) -Force; 	New-Item -Path ('{0}/Server' -f $tls12RegBase) -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Client' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'DisabledByDefault' -PropertyType DWORD -Value 0 -Force; 	New-ItemProperty -Path ('{0}/Server' -f $tls12RegBase) -Name 'Enabled' -PropertyType DWORD -Value 1 -Force
# Tue, 01 Jan 2019 10:36:28 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 01 Jan 2019 10:37:05 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Tue, 01 Jan 2019 10:37:06 GMT
ENV JAVA_VERSION=12-ea+25
# Tue, 01 Jan 2019 10:37:07 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/25/GPL/openjdk-12-ea+25_windows-x64_bin.zip
# Tue, 01 Jan 2019 10:37:09 GMT
ENV JAVA_SHA256=a3c94a495ea402b6c752c5757dcd902ec497720d52f59cee756975615a0661c3
# Tue, 01 Jan 2019 10:39:19 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Tue, 01 Jan 2019 10:39:20 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1f72e042ba5d72d27b42026712df029a6a160e9acc59f0ec444c96e610f275d3`  
		Last Modified: Tue, 25 Dec 2018 18:56:43 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9480a580fcc4eac71262761c837c4002f85e0a7b13e7cacf7f1d2f1a01b231fe`  
		Last Modified: Tue, 25 Dec 2018 18:56:44 GMT  
		Size: 943.8 KB (943792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ef869893f1952ba1f7062c1d967daa640dd02f2d24d44c9f99336cc5b5e7e0`  
		Last Modified: Tue, 01 Jan 2019 10:58:37 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23ab3f05bfdb099bd926288b750f2af5609ba4ca94dee31b83125a05c99666ab`  
		Last Modified: Tue, 01 Jan 2019 10:58:37 GMT  
		Size: 858.9 KB (858949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db30a4c78d5f590cbd11e7816c906ddc976314b47f869582b5bc827a1519f400`  
		Last Modified: Tue, 01 Jan 2019 10:58:34 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cbd15df6af3a507f1a96e6dae82509f1793633996f542fe9b15580140adf97`  
		Last Modified: Tue, 01 Jan 2019 10:58:34 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b32f59f63f61a031f4cde4049c2a1e01a09d63c062deb356a9ff7a4f1c044fa`  
		Last Modified: Tue, 01 Jan 2019 10:58:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562ef37c969a01db1dbb460ced56592e5eb55ea01104526a6f0027f91437c9e9`  
		Last Modified: Tue, 01 Jan 2019 10:59:03 GMT  
		Size: 192.4 MB (192405791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:455ee562abad11d454c15bc7944724979a030cdeec766fce65c1d2a3a107f372`  
		Last Modified: Tue, 01 Jan 2019 10:58:34 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
