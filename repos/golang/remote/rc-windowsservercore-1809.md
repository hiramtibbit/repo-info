## `golang:rc-windowsservercore-1809`

```console
$ docker pull golang@sha256:34242a571a7a7c4f355b28399e4d731b6b0ba839eabfbb5f66efa3ed86e156ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.253; amd64

### `golang:rc-windowsservercore-1809` - windows version 10.0.17763.253; amd64

```console
$ docker pull golang@sha256:19e7a08de4fa8c427cac3c6c4ded43e8e2066d0835ac7a02c8aa34afcca8f96f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (2016441545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92bcfc8bba7a42da14a77d2d7da9e12d2316791059b9820c7d4e063436411472`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809_RTM_amd64
# Wed, 02 Jan 2019 22:33:05 GMT
RUN Install update 1809_amd64
# Fri, 11 Jan 2019 12:21:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 12:21:26 GMT
ENV GIT_VERSION=2.11.1
# Fri, 11 Jan 2019 12:21:27 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 11 Jan 2019 12:21:29 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 11 Jan 2019 12:21:30 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 11 Jan 2019 12:22:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 12:22:44 GMT
ENV GOPATH=C:\gopath
# Fri, 11 Jan 2019 12:23:12 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 11 Jan 2019 12:23:13 GMT
ENV GOLANG_VERSION=1.12beta2
# Fri, 11 Jan 2019 12:59:02 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6d1878249d99dc9ba3e7c7da05470cf7c4fa70b319eeb8e6248dd5a26ff3d870'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 12:59:04 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2ac060f1ef0656a73755234824c317294dcaf934c9f0933b1a3aa349d8e4fbf3`  
		Last Modified: Tue, 08 Jan 2019 19:21:17 GMT  
		Size: 315.3 MB (315326112 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:409ca3908f9b0e2af8c5b8e8e66b93a5b0b79aa380a8750859965d0017697547`  
		Last Modified: Fri, 11 Jan 2019 14:00:24 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c8e42e8c407967d0a217f6d85613cd4f05f30d0e8b37d0f12268ae33de1c02`  
		Last Modified: Fri, 11 Jan 2019 14:00:23 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39532532c4de7b860f3695dcd6ad5523b2b85734bd24ec9ee383db37d4d4954`  
		Last Modified: Fri, 11 Jan 2019 14:00:21 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faa97f71daaac47123c4a81618bd3ec0341809b2835e5ec5870c6171ffb4c72`  
		Last Modified: Fri, 11 Jan 2019 14:00:21 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a99d3cca2b432f8ee688708adb2436dc74622dcf580104029bc8755ec760156`  
		Last Modified: Fri, 11 Jan 2019 14:00:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bc325317936d55c40376cc3cf1bfca7963d4136fbe86c78b3fd8c3e6fbba2e`  
		Last Modified: Fri, 11 Jan 2019 14:00:32 GMT  
		Size: 28.5 MB (28542533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e7d996a4bf197348e2d84cb5fbf47028a93b646df0d382574ff7538712c7c9f`  
		Last Modified: Fri, 11 Jan 2019 14:00:17 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e248d960d69056cb868f8d15ee6f4d85062b7436eb319cacedc68f33aecd2a2`  
		Last Modified: Fri, 11 Jan 2019 14:00:18 GMT  
		Size: 315.0 KB (314999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfa6b1c4153669c82c714b170e627a50a5557c7a434923f6517d0a67f88f1c4`  
		Last Modified: Fri, 11 Jan 2019 14:00:17 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24dc99d1b3fd483f3a3e5ca89560b26c2b5ebf702c36bafe38e48d3541e63bcc`  
		Last Modified: Fri, 11 Jan 2019 14:01:54 GMT  
		Size: 137.6 MB (137562779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d18357d461e4d5f81711aca42f3f8de305fa6b8523106febf3e01c6105ec2ab`  
		Last Modified: Fri, 11 Jan 2019 14:00:17 GMT  
		Size: 1.3 KB (1337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
