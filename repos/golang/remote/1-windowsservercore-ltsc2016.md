## `golang:1-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:75f94c89d7e3118bf166bfedce96fa59133924442f54db2404fadd29d291740a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2791; amd64

### `golang:1-windowsservercore-ltsc2016` - windows version 10.0.14393.2791; amd64

```console
$ docker pull golang@sha256:8a4455a4844c97d02822b1fd18dce94aeda9732adf1abea42ec8e201d57c5f65
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5813063300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab91e589828976409d7f283217af62cb18f7d5ffe7fa128ef6c5c4ecafedd1c1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Feb 2019 20:08:57 GMT
RUN Install update 10.0.14393.2791
# Wed, 13 Feb 2019 10:35:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Feb 2019 11:20:26 GMT
ENV GIT_VERSION=2.11.1
# Wed, 13 Feb 2019 11:20:27 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 13 Feb 2019 11:20:29 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 13 Feb 2019 11:20:30 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 13 Feb 2019 11:22:06 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 11:22:08 GMT
ENV GOPATH=C:\gopath
# Wed, 13 Feb 2019 11:23:11 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 13 Feb 2019 11:59:36 GMT
ENV GOLANG_VERSION=1.11.5
# Wed, 13 Feb 2019 12:06:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1c734fe614fa052f44694e993f2d06f24a56b6703ee46fdfb2b9bf277819fe40'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 12:06:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b479a92ce115faf181c1196d762b00f05ec9aa83dc2fec2b7ca094c8d6e1bfff`  
		Last Modified: Mon, 11 Feb 2019 20:08:57 GMT  
		Size: 1.6 GB (1570061102 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d6be0e7f96b74f68be8ae9cde286b6108d09d939d8cb130d00bfb8519a6b7fbc`  
		Last Modified: Wed, 13 Feb 2019 11:04:46 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60633449b1433e4213eb9eaa6c9af6646fe8468e962e1e7efc24b93de809c3cf`  
		Last Modified: Wed, 13 Feb 2019 12:46:21 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fab44be18d4ee533fb0ed142294a9a73c5a93be5a0d1f5ca050cb6c2d0779a9`  
		Last Modified: Wed, 13 Feb 2019 12:46:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4586bb110848e1c8ce53407c691e4978a4933a0ec4d2d33894e7a91f9221b967`  
		Last Modified: Wed, 13 Feb 2019 12:46:18 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a4806e2eefb504f6026b1f6713136e34d04eb1ba3b2ee38ac8f4e2b63c0257`  
		Last Modified: Wed, 13 Feb 2019 12:46:16 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc864958c6c4bc5aec28850e5940cd87c2650cc2684d57dd7f9f5f115edad4f`  
		Last Modified: Wed, 13 Feb 2019 12:46:29 GMT  
		Size: 29.6 MB (29608307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636c7fd30ef4c74f68d707cae08fed474baffd1a16e438cd27f49e29c83238fe`  
		Last Modified: Wed, 13 Feb 2019 12:46:34 GMT  
		Size: 1.2 KB (1217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60cd2a8e38b721771dd02395b776a9322bfa2ed429c8d92e6d9a2a8b90228279`  
		Last Modified: Wed, 13 Feb 2019 12:46:15 GMT  
		Size: 5.1 MB (5137771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c01b763e14ac77a4e61681fadf58d19cc1b7e66350e2d1e68d8bfd0803e9965`  
		Last Modified: Wed, 13 Feb 2019 12:55:46 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20fe1f86f54d2665015318f80c495dd32e7612dfd9c9a9f81bb449448762735`  
		Last Modified: Wed, 13 Feb 2019 12:57:14 GMT  
		Size: 138.3 MB (138260375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ff469f10640acbe3aea87803193d2b311fba646f5d12e867958f02d5cc3a1f`  
		Last Modified: Wed, 13 Feb 2019 12:55:46 GMT  
		Size: 1.4 KB (1369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
