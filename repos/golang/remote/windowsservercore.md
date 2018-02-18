## `golang:windowsservercore`

```console
$ docker pull golang@sha256:f73e06dcbcf9fca45867d951ce0da8b6d9bcff94d41ff38f117c2dbe0251ad7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64
	-	windows version 10.0.16299.248; amd64

### `golang:windowsservercore` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:b0e08676ef60f4273c404227b994b2520fafe3fceacab25dfa67056bc81cf921
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5552726874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8520b84033e15d36d21654670ed5e464d989108474537eda9a8080dcb9bd117d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:21:42 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:21:43 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:21:44 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:24:59 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:25:00 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:26:17 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:14:18 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:19:41 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:19:43 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c012893922e6af6c412ab1eb83f8177ab1c04dc3585e5a6f7514d1f7fd793b5d`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069b703a8126bdc53bdc767f309380c7881915dd8f621808ad98ff2d69ecfb1`  
		Last Modified: Wed, 14 Feb 2018 04:43:56 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e95c6d08cd939f0be682a633a1be0f37b7b4065d39d691a4720fa6a47634c88a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea9d7d2de7d9b10837f87f374e165fdea658c3bf1cce4703c14de1af43d864a`  
		Last Modified: Wed, 14 Feb 2018 04:43:52 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd14b5978cf71c8e146e3b07776c225353058922937c6880d1e75ac2b13e21e`  
		Last Modified: Wed, 14 Feb 2018 04:44:08 GMT  
		Size: 32.8 MB (32785984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50b25d690793f9cea621434c614f7aa276af100ddb0064a03be603474d9c6721`  
		Last Modified: Wed, 14 Feb 2018 04:43:49 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d6024525bc0a9ab0f9346cd0f8427ce4ffd6642197b3ab7e68cee785b2749f`  
		Last Modified: Wed, 14 Feb 2018 04:43:53 GMT  
		Size: 4.9 MB (4876380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e836d4bcd1ed9ca381cee455b81a381dfd98f7c94f62ff4d16203c805fd4d9e`  
		Last Modified: Sun, 18 Feb 2018 03:31:22 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d26ab88c62a818e708800a25c4f66d863e35652a3992b27fde33e253a8dfbf`  
		Last Modified: Sun, 18 Feb 2018 03:32:34 GMT  
		Size: 136.9 MB (136912861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159af0f6053b54a0566f33c15277366fd58e2c4ca34ddd34507c421e4445bb3a`  
		Last Modified: Sun, 18 Feb 2018 03:31:23 GMT  
		Size: 1.4 KB (1351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `golang:windowsservercore` - windows version 10.0.16299.248; amd64

```console
$ docker pull golang@sha256:6df0d782fbd7dad5b5cdffec68ec34f8268249e634a688a430e4aca69fd85b9d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3181239336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fe78d887c3f24c1f610ee3c2ecd13098917b28a177dacbf90ce13fdaded83fb`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_VERSION=2.11.1
# Wed, 14 Feb 2018 03:31:59 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 14 Feb 2018 03:32:00 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 14 Feb 2018 03:32:01 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 14 Feb 2018 03:34:45 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 03:34:46 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:35:47 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sun, 18 Feb 2018 03:20:02 GMT
ENV GOLANG_VERSION=1.10
# Sun, 18 Feb 2018 03:25:46 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '210b223031c254a6eb8fa138c3782b23af710a9959d64b551fa81edd762ea167'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sun, 18 Feb 2018 03:25:48 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f731bcdc5cd55eedc66ea23df76cb93059fe744b1f0faf8184497f835faa8d7`  
		Last Modified: Wed, 14 Feb 2018 04:45:52 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc179edbbafeec46305fa6e533da5b18856481e6b5112d86144dc20a6dfe5ea`  
		Last Modified: Wed, 14 Feb 2018 04:45:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd35c3f64ddb8330feb68dcf2af50262c794c2a0122b1461968dfcc80f8cdec`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a391ad76ec9952a608d642f26541be0ec43ff1883ccc9623cdc8439172ac6cb`  
		Last Modified: Wed, 14 Feb 2018 04:45:49 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a1c82aecf01399896f980a1f80435ec1da48dd5dae580ea1dcf4ec81249e3d`  
		Last Modified: Wed, 14 Feb 2018 04:46:03 GMT  
		Size: 29.0 MB (29032224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8030cfe86f092e78c9a1996660f0d653c893ca7aec718cecdde57433b2be9577`  
		Last Modified: Wed, 14 Feb 2018 04:45:46 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eba6c2fc6b2f4766b70f1ca7d3a74ee542c621ad3cf3ffd75f25ecb9d61a4818`  
		Last Modified: Wed, 14 Feb 2018 04:45:47 GMT  
		Size: 4.6 MB (4553061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f63af6968407b44d853637f197cc28cadae8cb4b88fad221861a5a03b2a52883`  
		Last Modified: Sun, 18 Feb 2018 03:32:53 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29bad771ac1d3feaac675b1ebb69980cd1cb13bbf55472441593ba335520a66e`  
		Last Modified: Sun, 18 Feb 2018 03:34:07 GMT  
		Size: 132.2 MB (132165984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c394f284374daeec518296a84bed6d13ce9638b38ed955a622011440697817d`  
		Last Modified: Sun, 18 Feb 2018 03:32:52 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
