## `golang:1-windowsservercore-1809`

```console
$ docker pull golang@sha256:ef4ae5ddb973bc16ee19104b7ada950ba7db2838ade54bd91ab61df46b754f57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.379; amd64

### `golang:1-windowsservercore-1809` - windows version 10.0.17763.379; amd64

```console
$ docker pull golang@sha256:65b4a7afdf3ad037d1e3418acc6d20da4ce3a46c0355283e4349e25b50f9d780
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2321304862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5f613e4224ea0dcd2fe773b166711fbc77b7a7e8c52de8d0ea467ba81bd7ca`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 09 Mar 2019 03:10:13 GMT
RUN Install update 1809-amd64
# Sat, 16 Mar 2019 09:52:18 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 16 Mar 2019 09:52:19 GMT
ENV GIT_VERSION=2.11.1
# Sat, 16 Mar 2019 09:52:20 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Sat, 16 Mar 2019 09:52:21 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Sat, 16 Mar 2019 09:52:23 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Sat, 16 Mar 2019 09:53:32 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Sat, 16 Mar 2019 09:53:35 GMT
ENV GOPATH=C:\gopath
# Sat, 16 Mar 2019 09:54:02 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 16 Mar 2019 09:54:03 GMT
ENV GOLANG_VERSION=1.12.1
# Sat, 16 Mar 2019 09:59:51 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2f4849b512fffb2cf2028608aa066cc1b79e730fd146c7b89015797162f08ec5'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 16 Mar 2019 09:59:53 GMT
WORKDIR C:\gopath
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
	-	`sha256:7a6b222a032220308de9a5359ffcff3762b4cbaa3d3f5c7ae19f9cd9bbf47cfb`  
		Last Modified: Sat, 16 Mar 2019 10:45:02 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27b582605f5601aba792284b2d3ce2a3dbb99eb7de23a00fc2b446a8dc4193b`  
		Last Modified: Sat, 16 Mar 2019 10:44:59 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb70fa7aef2e28c96fcb27257d1e200f756d2773a70956f83777a3bdf85d577f`  
		Last Modified: Sat, 16 Mar 2019 10:44:59 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b102bb976a9bd41feae5d78cd8de3e247b756b890489f5ca74167fd48069572`  
		Last Modified: Sat, 16 Mar 2019 10:44:59 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e4c344b49bddd57dd70f61fbad205df32ce7dd927623d59892070180a10cfd`  
		Last Modified: Sat, 16 Mar 2019 10:45:16 GMT  
		Size: 28.7 MB (28683279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04ccda38da03cbd6687ad10b2a40388f7a787b069f47a4dfc541bd99a5dde2b`  
		Last Modified: Sat, 16 Mar 2019 10:44:56 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40ad66e975f74b7d9020a35c6990a3a65a6188e44d009ba603c21684031c75f`  
		Last Modified: Sat, 16 Mar 2019 10:44:56 GMT  
		Size: 301.0 KB (300952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe369f513804a7182797690e3a164d6143de05d0cef7473ec8916773129cdb4`  
		Last Modified: Sat, 16 Mar 2019 10:44:56 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f524dac5f4359ec36d0118a7d6fb9981865c35986eb756e58eb8a6c1b8c5cea7`  
		Last Modified: Sat, 16 Mar 2019 10:46:38 GMT  
		Size: 136.9 MB (136870031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18fab8ec5ac85a3229fd40c211f956bc3e4dabd8e2604ae8d609fd736c93a52`  
		Last Modified: Sat, 16 Mar 2019 10:44:56 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
