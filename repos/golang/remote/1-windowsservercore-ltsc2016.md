## `golang:1-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:b286afe1fba52c5386ead6e55f0e0933c0d29bdb92d42b7329cadb5ac471938d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2430; amd64

### `golang:1-windowsservercore-ltsc2016` - windows version 10.0.14393.2430; amd64

```console
$ docker pull golang@sha256:592a104c33d34b7045367415bdad1d4841c992241e5464fcc7517268d8d84caa
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5690677766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94921e7f38b7295c0ad24d191bb6395ddda30555350c758cb7ea52d0ebac7b20`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 13 Aug 2018 17:52:23 GMT
RUN Install update 10.0.14393.2430
# Wed, 15 Aug 2018 09:35:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Aug 2018 10:30:21 GMT
ENV GIT_VERSION=2.11.1
# Thu, 23 Aug 2018 10:30:22 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 23 Aug 2018 10:30:23 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 23 Aug 2018 10:30:24 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 23 Aug 2018 10:32:12 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 10:32:13 GMT
ENV GOPATH=C:\gopath
# Thu, 23 Aug 2018 10:33:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 23 Aug 2018 11:07:21 GMT
ENV GOLANG_VERSION=1.10.3
# Thu, 23 Aug 2018 11:14:06 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 11:14:08 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6631c2d2a60cd7ee5b334c2725b03e4d4976abb9a19c8e8dc9b806b3752745a6`  
		Last Modified: Mon, 13 Aug 2018 17:52:23 GMT  
		Size: 1.4 GB (1441905067 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3e7b18583f4b1d198a1b0f222de8583f8565481a4b667be0863f398eaad783dd`  
		Last Modified: Wed, 15 Aug 2018 09:53:36 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b679707990911db06e417ee415391ab49bbc2ffcf1de2567c03bfe49f886aa`  
		Last Modified: Thu, 23 Aug 2018 11:55:21 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e3bcd827afbf10c585f5f3c94755187d50391b4562c6c29b65c6f5f33991c2`  
		Last Modified: Thu, 23 Aug 2018 11:55:19 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1546d3d7838915c43d1426749344b49f04378aea046c6153eaa3028227176883`  
		Last Modified: Thu, 23 Aug 2018 11:55:17 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f358492519165911ca86c3ca8e162e66d40ac5b489716979cd8012271df746a8`  
		Last Modified: Thu, 23 Aug 2018 11:55:17 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7946f07b69c61143eddb456d7f12d81e4c0ee1e9400b89450d680a13ebc2b7a`  
		Last Modified: Thu, 23 Aug 2018 11:55:31 GMT  
		Size: 29.5 MB (29458229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe6089d5b9e99a950ab9dbdaa757a13d23f6716a85566dc5fc6f6fa705b1f38`  
		Last Modified: Thu, 23 Aug 2018 11:55:14 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3f9a33f61ee1a3cf5c3e9d36f9f0e5ae233c869ca4ea267e88ab4b8c5c1800`  
		Last Modified: Thu, 23 Aug 2018 11:55:16 GMT  
		Size: 5.0 MB (4991074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e58ca6b4d9150dcb956f4eb9e143989cf7dd1d133073b3d0f0549604c5164ced`  
		Last Modified: Thu, 23 Aug 2018 12:03:51 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6afa256b2c06b3bf51c1aee1ccf3a4c998d89fae047d4e0eb1bc3a58cbab8cf`  
		Last Modified: Thu, 23 Aug 2018 12:05:18 GMT  
		Size: 144.3 MB (144327761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e262b00b947391d2129ac5076cbbd92c6b2859204c074cc28b301f22427f7b79`  
		Last Modified: Thu, 23 Aug 2018 12:03:50 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
