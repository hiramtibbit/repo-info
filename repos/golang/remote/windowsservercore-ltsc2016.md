## `golang:windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:b7f89c9b806e67a548ce893de16c4b998cddc6c4ff176f2f2ccb5c31eccd7529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64

### `golang:windowsservercore-ltsc2016` - windows version 10.0.14393.2665; amd64

```console
$ docker pull golang@sha256:3bb61c349d553774ab3b1e2199d42bd93136df012da803c4dd03d6f43f972b1c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5809189285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e1faeb4e7cf7f409ff53b30a656792517c90ef2197060139206962633f1548f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Fri, 14 Dec 2018 10:44:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Dec 2018 10:44:32 GMT
ENV GIT_VERSION=2.11.1
# Fri, 14 Dec 2018 10:44:33 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 14 Dec 2018 10:44:33 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 14 Dec 2018 10:44:34 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 14 Dec 2018 10:46:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 14 Dec 2018 10:46:40 GMT
ENV GOPATH=C:\gopath
# Fri, 14 Dec 2018 10:47:53 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 14 Dec 2018 10:47:54 GMT
ENV GOLANG_VERSION=1.11.3
# Fri, 14 Dec 2018 10:54:34 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'bc168207115eb0686e226ed3708337b161946c1acb0437603e1221e94f2e1f0f'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 14 Dec 2018 10:54:36 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c9346499d56b89267b8f21f1328b59d8fe902493eca87b656cb4d1284a207c91`  
		Last Modified: Fri, 14 Dec 2018 11:43:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d3006c41e55a11b667d262aadd2a29e30fe128f834afe3fd57e9a7bd0bc1560`  
		Last Modified: Fri, 14 Dec 2018 11:43:34 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608723e251a6da4000b8bbdac22288e7e7fd5486061c74730d2e46ef05600001`  
		Last Modified: Fri, 14 Dec 2018 11:43:33 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ad996465c71ae7e0edaabb7da954dca8c7cf05dade88b4099d711c7d21a72b2`  
		Last Modified: Fri, 14 Dec 2018 11:43:30 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728947df61e1427e9eeb7a2202adf5e05be086dc7590369d0297eeb624b04b5d`  
		Last Modified: Fri, 14 Dec 2018 11:43:30 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:049e3b8cc855f729ab3502a86df86fea866ef4a865faf9a085e14fe7f9e6a260`  
		Last Modified: Fri, 14 Dec 2018 11:43:44 GMT  
		Size: 29.6 MB (29634807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ce25bb6d2170ad9a0fc91e77ec673923f7f8817bee87e92fde49ce4e27f855`  
		Last Modified: Fri, 14 Dec 2018 11:43:27 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc37d38119a1ea5fc1808aafb7256b8e748e0ba7b86be4553519c3b5dd41aafa`  
		Last Modified: Fri, 14 Dec 2018 11:43:29 GMT  
		Size: 5.2 MB (5184867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7148d0e4b125423e692f0fe9f8d077cb9e10db05c836ddf494c089bd6ff7eab`  
		Last Modified: Fri, 14 Dec 2018 11:43:27 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b883865ba40e3fbb1c897b6f26930a058c466ab709b2f53d5252a49dde199f9`  
		Last Modified: Fri, 14 Dec 2018 11:45:17 GMT  
		Size: 139.6 MB (139632700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967e72f34fda272f9e357673683664033a1a0db65d2f65f269fbcd652e81332a`  
		Last Modified: Fri, 14 Dec 2018 11:43:27 GMT  
		Size: 1.4 KB (1352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
