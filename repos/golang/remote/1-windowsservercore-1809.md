## `golang:1-windowsservercore-1809`

```console
$ docker pull golang@sha256:65e8f119ddeffa5bb33f8207efde7ab3f6f6c7e00469c8bf0d376f142e311ad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.253; amd64

### `golang:1-windowsservercore-1809` - windows version 10.0.17763.253; amd64

```console
$ docker pull golang@sha256:1b460cb991ecaab37380b80aa26197074fdcdd96550b48cbfed04ee669499be8
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (2009338654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8288d8408a1536c9b48756cf1c0a063595700e84ee6514ea37140b5ce4fbb55a`
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
# Fri, 11 Jan 2019 13:25:05 GMT
ENV GOLANG_VERSION=1.11.4
# Fri, 11 Jan 2019 13:30:47 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'eeb20e21702f2b9469d9381df5de85e2f731b64a1f54effe196d0f7d0227fe14'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 13:30:49 GMT
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
	-	`sha256:87723d90b848e3328aaa5921487c35552e71d50b4cae8b40d4ae2374b0bb62ff`  
		Last Modified: Fri, 11 Jan 2019 14:09:21 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0851883a4fe95d100c1dbef557d187881e8a20d6bfeae84647f3851912d4cb6b`  
		Last Modified: Fri, 11 Jan 2019 14:11:23 GMT  
		Size: 130.5 MB (130459861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf9ba83111c147bec1af701cc47d02e496dfd142db836bec6c00c963e61eb86`  
		Last Modified: Fri, 11 Jan 2019 14:09:21 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
