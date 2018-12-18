## `golang:windowsservercore-1709`

```console
$ docker pull golang@sha256:59db58386ac56b35fdbb378afa0f57ba88040cb98713aedf55471bd43cc22a0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.846; amd64

### `golang:windowsservercore-1709` - windows version 10.0.16299.846; amd64

```console
$ docker pull golang@sha256:70ed536e30c515710bfc646b5dbeb58a35df4b800f0c04eaff58a9833ccea0f7
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3320994379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e82d0143dd707b06452c069c87d19425802926ec662af94e271360ed618dabd`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 05 Dec 2018 22:40:26 GMT
RUN Install update 10.0.16299.846
# Fri, 14 Dec 2018 10:54:52 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Dec 2018 10:54:53 GMT
ENV GIT_VERSION=2.11.1
# Fri, 14 Dec 2018 10:54:54 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 14 Dec 2018 10:54:55 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 14 Dec 2018 10:54:56 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 14 Dec 2018 10:56:41 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 14 Dec 2018 10:56:43 GMT
ENV GOPATH=C:\gopath
# Fri, 14 Dec 2018 10:57:34 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 18 Dec 2018 10:24:52 GMT
ENV GOLANG_VERSION=1.11.4
# Tue, 18 Dec 2018 10:31:43 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'eeb20e21702f2b9469d9381df5de85e2f731b64a1f54effe196d0f7d0227fe14'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 18 Dec 2018 10:31:45 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:10167262a01401a5b7cd880ca2abdb5a43d0cdb288b23e2bbda0cd16760064e7`  
		Last Modified: Tue, 11 Dec 2018 21:30:45 GMT  
		Size: 877.8 MB (877837008 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3f98cda35707ef2fc387c3a54b43843c3b83a0aca5dff2755b109b6395a01f1c`  
		Last Modified: Fri, 14 Dec 2018 11:45:45 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e20bf42689611acc614bb3803edb7b99fb1a5eaf4eaa11ce704fb221e4d17bf`  
		Last Modified: Fri, 14 Dec 2018 11:45:44 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e311246f562dd7df15c62bbb0186aafb57884d244fb7c10ad58818d9f1a4f45f`  
		Last Modified: Fri, 14 Dec 2018 11:45:44 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3706b0af9bfc6f655e961735719d7603d14d97612ae518d2c2ff5b7aa5a5172`  
		Last Modified: Fri, 14 Dec 2018 11:45:42 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa59c053ebeb9b3021bcf43c0d8aac0639d567fe1a13d0d81d2ed44f7afabc7a`  
		Last Modified: Fri, 14 Dec 2018 11:45:41 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c86f1cdd5b5db4f9321631e38cd2e2682b9bb846cb24f3fb2fc491a8ce79e4b`  
		Last Modified: Fri, 14 Dec 2018 11:45:54 GMT  
		Size: 29.2 MB (29198890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26a3d37098c5d476102a9ac6055b6ef1c803a9f8faf128fa9068d4ece0115ad5`  
		Last Modified: Fri, 14 Dec 2018 11:45:38 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75842b557c663fc06d58bafb66475fb30399dc7b579d7a8b824bab8b6b80735b`  
		Last Modified: Fri, 14 Dec 2018 11:45:40 GMT  
		Size: 4.8 MB (4753547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc8d7939fb5ba6ad005291d87ef193b9cad440db25851c1c23f20a09c22cd87`  
		Last Modified: Tue, 18 Dec 2018 11:10:41 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20922af418c8a8d9b75e5160d8687dda5aaebb37028dbbb483586a8e69a853c9`  
		Last Modified: Tue, 18 Dec 2018 11:12:19 GMT  
		Size: 134.9 MB (134894625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:033db13c0ddf456556970db237658f9ab80933d67654b28ccf88ea030fe4292f`  
		Last Modified: Tue, 18 Dec 2018 11:10:42 GMT  
		Size: 1.3 KB (1342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
