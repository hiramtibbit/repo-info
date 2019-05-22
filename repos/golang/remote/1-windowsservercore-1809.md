## `golang:1-windowsservercore-1809`

```console
$ docker pull golang@sha256:9311abaaedce1e8fb063ca65efa54fd29a3240c0626e1124f09270a8c0ee2859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64

### `golang:1-windowsservercore-1809` - windows version 10.0.17763.504; amd64

```console
$ docker pull golang@sha256:a6ce8ea9da562bc3e9b1f3c4abf7dbcf5fef8185ed85d12f55b9c679cd28f21a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2245116875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:084d877a7881f6fe0833f1343458534385d4de232402f9e1e53c2e78f06582e0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 12:57:17 GMT
ENV GIT_VERSION=2.11.1
# Wed, 22 May 2019 12:57:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 22 May 2019 12:57:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 22 May 2019 12:57:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 22 May 2019 12:58:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 12:58:34 GMT
ENV GOPATH=C:\gopath
# Wed, 22 May 2019 12:59:00 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 22 May 2019 12:59:02 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 22 May 2019 13:04:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 13:04:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec1362b49ab91bdbcce71c69e1c06729be8c63b9b3b14b1ef0091539dda2bf2`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12169cc875d0c8bc1fdc5e273be7fc0a395f5a1238ff6a7acf8c8f418ec171fe`  
		Last Modified: Wed, 22 May 2019 13:24:51 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e31c8263b33ea79205792d3a0218cf867b25bb659e6a96b434aea82c7472c0`  
		Last Modified: Wed, 22 May 2019 13:24:51 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c2b519bfcba87e014766bba5eabe96bf99af2fb29747b42beb4aa9d72f515a`  
		Last Modified: Wed, 22 May 2019 13:24:51 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b11f95ac55b414ecc0582d43e8d988c230dc1f7811d903d3c481ba27630f896`  
		Last Modified: Wed, 22 May 2019 13:24:59 GMT  
		Size: 28.7 MB (28736447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b6bc2f60498314b89de4fbbdc99bd0c729fb05c079c16c1598f15cc01b3859`  
		Last Modified: Wed, 22 May 2019 13:24:49 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd04da7bed9e6a8aa769a240f506ed27c7debc5089d9bb2858e14a76f0bad68`  
		Last Modified: Wed, 22 May 2019 13:24:49 GMT  
		Size: 293.7 KB (293676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ececc83ef92d513883cddae85203f68399741e531bc4ef9a0910684ed0e5943a`  
		Last Modified: Wed, 22 May 2019 13:24:48 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3ba952a5c5113dd443764a54d28b5a82b36b0aeffb12d8a10d099948e51766`  
		Last Modified: Wed, 22 May 2019 13:27:57 GMT  
		Size: 137.0 MB (136950315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910806be62bf8d06420447a30820ade8ff3d95ace9469840bdae15ca7912ee8b`  
		Last Modified: Wed, 22 May 2019 13:24:48 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
