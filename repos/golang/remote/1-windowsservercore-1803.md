## `golang:1-windowsservercore-1803`

```console
$ docker pull golang@sha256:143472c4559dc1026bf6f24b1274536af6c6b26b5e63dae592699004bd7aa1a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.112; amd64

### `golang:1-windowsservercore-1803` - windows version 10.0.17134.112; amd64

```console
$ docker pull golang@sha256:3c309debea104972232a2db59f15a72bfa4293b5d9e4ab85278f998d443022e7
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2206585672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:804a36b5f3c122a74821a64249cf0090ee4639b35ad47fe8f85f54f057409367`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Mon, 11 Jun 2018 20:28:23 GMT
RUN Install update 10.0.17134.112
# Wed, 04 Jul 2018 02:41:03 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 04 Jul 2018 02:41:04 GMT
ENV GIT_VERSION=2.11.1
# Wed, 04 Jul 2018 02:41:05 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 04 Jul 2018 02:41:06 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 04 Jul 2018 02:41:07 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 04 Jul 2018 02:42:22 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 04 Jul 2018 02:42:23 GMT
ENV GOPATH=C:\gopath
# Wed, 04 Jul 2018 02:43:02 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 04 Jul 2018 02:43:03 GMT
ENV GOLANG_VERSION=1.10.3
# Wed, 04 Jul 2018 02:48:01 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 04 Jul 2018 02:48:03 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Mon, 07 May 2018 21:18:35 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:acacb1f3f7c2ba4fed8405c536d1cbf1a21cc99fe63d76c1d7b70b49da4d4918`  
		Last Modified: Thu, 14 Jun 2018 18:13:25 GMT  
		Size: 382.5 MB (382545424 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4e8dbd5fffc77364d12fd371fee6bb72a47e0fcb1d2c3c9b1685955bc6bc2b66`  
		Last Modified: Fri, 06 Jul 2018 09:33:12 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f5168b3eb916ce2cb3b93cea751fbf41ea690e40f17e6df12a17c7933514cbd`  
		Last Modified: Fri, 06 Jul 2018 09:33:12 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:652cfdd88c6fc0a1b390e324024bf4267fd38c095e92eb2dd845232eb253668e`  
		Last Modified: Fri, 06 Jul 2018 09:33:09 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139acecf72247cdc77d402272745cd2f18755a4616ea1936a7320e39f7da4c62`  
		Last Modified: Fri, 06 Jul 2018 09:33:09 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ca40200dfd84a1f75869686da0f3d8d5da87252564dec1f463137ac8fdc7ecf`  
		Last Modified: Fri, 06 Jul 2018 09:33:08 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9daddacee7ef4ecd97d5b9122b99434cfb69c8249b5448c6609c64fd4568ff4d`  
		Last Modified: Fri, 06 Jul 2018 09:33:22 GMT  
		Size: 28.9 MB (28859959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a04c1e137047206866898ac328e943671f14c0bfb5d407e284b4219ab527209`  
		Last Modified: Fri, 06 Jul 2018 09:33:04 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff4665aa993aa998f594cdc5b2c84e0987b61aecddfed21a32e73b52e9e81d9f`  
		Last Modified: Fri, 06 Jul 2018 09:33:04 GMT  
		Size: 309.8 KB (309819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d532895ec67f129df9c23589c0cf2c431599c3d73ba16587358e2c2bae490797`  
		Last Modified: Fri, 06 Jul 2018 09:35:45 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15bceee2f52c4ae160255aeb95bbd6608232310e5439f1cb005bac9e8b40679`  
		Last Modified: Fri, 06 Jul 2018 09:37:35 GMT  
		Size: 135.2 MB (135172544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22f544ef1b76d6ceba48fd3251c2787c6125d3371072deb6662f34df8d4fd018`  
		Last Modified: Fri, 06 Jul 2018 09:35:45 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
