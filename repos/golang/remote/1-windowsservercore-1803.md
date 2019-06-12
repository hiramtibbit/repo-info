## `golang:1-windowsservercore-1803`

```console
$ docker pull golang@sha256:52cc0314b01f6b20edb58f9d4807f88377219dfab5712ac3d138a64908a00a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `golang:1-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull golang@sha256:13007cae6631a44f2e2c1bad8d1bc70ab88f3b85602fb0d73289c58d6b05905f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2474662691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a452f033a4eb6b81eaeb88e693fc8176ba70b81ed16c522398b6875b5d54a83`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:50:32 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:50:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:50:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:50:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:52:02 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:52:04 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:52:30 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 12:52:31 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 12 Jun 2019 12:57:25 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:57:27 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53feb10be6e94235a293c4b25ddc7e46d826c5f908b8578140ce5227a01566b9`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412dd68946cbde06734f42664c954b622427703fc99864c68b433a90a5cef538`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af237c30697760cb789f10ebc64dafcc560c50e4d3ee68b8509f3c2d2b5f648`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665840ebbd856fddc3698ceb0e562192f42a45892e13123459b444e2e8a41418`  
		Last Modified: Wed, 12 Jun 2019 13:23:21 GMT  
		Size: 1.1 KB (1138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5041c0bda357f5eb5ee5c0116fffbb4f69458ff060fd1cd845a5ae5b1c15892b`  
		Last Modified: Wed, 12 Jun 2019 13:23:37 GMT  
		Size: 29.2 MB (29169598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d418b2de29bed6234721b9a6cccaaaf529e76f0c53cf5f1409256c46c7a6ae`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47f3f1dc10bf9c90183513b0a2327169808c7ebd150b71e67c677a0b48b7d8bd`  
		Last Modified: Wed, 12 Jun 2019 13:23:19 GMT  
		Size: 307.3 KB (307278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:563745ae589c2e3fcc6495ddd519592beadbf3b5f25464bb65f751c3892011e1`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.2 KB (1182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee984a5d5997cd4e82c31fe1f71a7600a0802001a2eb05927bb5dbcd3baed4ca`  
		Last Modified: Wed, 12 Jun 2019 13:24:47 GMT  
		Size: 137.0 MB (136969581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d713be456e1b968eb2d8740af9a78fde8122cf2a3689adccc881a913080291ee`  
		Last Modified: Wed, 12 Jun 2019 13:23:18 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
