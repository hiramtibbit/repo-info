## `openjdk:13-ea-jdk-nanoserver`

```console
$ docker pull openjdk@sha256:73bfcb5077aa467787cffeff2c79191378996598e42b17318d41c8cc45592669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:13-ea-jdk-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:5e6537f49d0e06e6970960609f2b0ec5e77714be118b97d1eda48d6beef4d6b7
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.7 MB (629737707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837f47ea39586a6b468eec85ed1a5e42994e7a7ddee4e0f011506ef1f948ec19`
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
# Fri, 04 Jan 2019 10:26:31 GMT
ENV JAVA_HOME=C:\openjdk-13
# Fri, 04 Jan 2019 10:27:10 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Fri, 11 Jan 2019 10:53:21 GMT
ENV JAVA_VERSION=13-ea+3
# Fri, 11 Jan 2019 10:53:22 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk13/3/GPL/openjdk-13-ea+3_windows-x64_bin.zip
# Fri, 11 Jan 2019 10:53:23 GMT
ENV JAVA_SHA256=cf64871276ebf8beca4200f22718484eebab808942b0857147c76944fd65f846
# Fri, 11 Jan 2019 10:55:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 11 Jan 2019 10:55:43 GMT
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
	-	`sha256:1bf772117107201f3620270be39f8f8a3a0890b91491539a5d466efa546b44d8`  
		Last Modified: Fri, 04 Jan 2019 10:35:44 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ca64795c4a470baf8c3ad64701351384aee060dbb9b6d33b65e5045d05a921`  
		Last Modified: Fri, 04 Jan 2019 10:35:45 GMT  
		Size: 861.0 KB (861006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9043d9db1c4ff96c0ef4c7fc5e7d8e2cd8bc3dffa5e027bed1c76d915f0030b`  
		Last Modified: Fri, 11 Jan 2019 11:32:49 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94f0bbc4d0e2eac5585ad7a8e622e1544e1f60279cf51de31aada70cca9da2c7`  
		Last Modified: Fri, 11 Jan 2019 11:32:49 GMT  
		Size: 952.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90efbfe06a81c02fc726595ae52a69f547564fd55b8494687f1ace59da5f1905`  
		Last Modified: Fri, 11 Jan 2019 11:32:49 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9663c4396f4bb3e837a9243d21923994cc0afcd00a440bb9c0d77920b6d08234`  
		Last Modified: Fri, 11 Jan 2019 11:33:49 GMT  
		Size: 192.5 MB (192530383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5303ce3171d99218710a78129b45776f3deb393dcc82fecb62ddd9c0d41b8f46`  
		Last Modified: Fri, 11 Jan 2019 11:32:49 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
