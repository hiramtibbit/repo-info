## `golang:rc-windowsservercore-1809`

```console
$ docker pull golang@sha256:acaf6d699de3439fb9b27493536b2b35472406dc1456fdf700527ed34f45edee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.194; amd64

### `golang:rc-windowsservercore-1809` - windows version 10.0.17763.194; amd64

```console
$ docker pull golang@sha256:1f4c1e4d7cff46b845acd67c3ab1c1808bdede0488203c3c5585d3ea8a7090b0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.0 GB (1998907487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779156ecc5ac3c4a089cadb95f3bebd26557b7ca4d91b60791611181abf90a6f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809_RTM_amd64
# Wed, 05 Dec 2018 22:38:49 GMT
RUN Install update 1809_amd64
# Tue, 01 Jan 2019 11:15:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 01 Jan 2019 11:15:50 GMT
ENV GIT_VERSION=2.11.1
# Tue, 01 Jan 2019 11:15:52 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Tue, 01 Jan 2019 11:15:53 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Tue, 01 Jan 2019 11:15:54 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Tue, 01 Jan 2019 11:17:01 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Tue, 01 Jan 2019 11:17:04 GMT
ENV GOPATH=C:\gopath
# Tue, 01 Jan 2019 11:17:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 01 Jan 2019 11:17:33 GMT
ENV GOLANG_VERSION=1.12beta1
# Tue, 01 Jan 2019 11:23:12 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '167824d31e5a75a89e0ee159561042e144498f8f2cc725767277ccbcf749684b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 01 Jan 2019 11:23:14 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:783e312e2ddb047814819c9957e07db9d463edf8e951f52f5b8636ae8a23253b`  
		Last Modified: Tue, 11 Dec 2018 19:45:56 GMT  
		Size: 301.6 MB (301575496 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:dac309d9decdc33c70d1a6fb2877ae4285451ed06da5e7a77e27b402a163d579`  
		Last Modified: Tue, 01 Jan 2019 11:35:59 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d0db5dd056be3e08964555d4420a61201c8415fce506246483077f00971fe7`  
		Last Modified: Tue, 01 Jan 2019 11:35:59 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b0692476131a7e819c2a05b23af004ccf4a62d8098c6b14092902b904c8647`  
		Last Modified: Tue, 01 Jan 2019 11:35:55 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f14f62b0d6234349b585cd220155e1e2d0d3be01f84afc47e52642159a4a1a`  
		Last Modified: Tue, 01 Jan 2019 11:35:55 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6848f384f1798aa933a8623063ade803c2429f6e72b66462b3fffaf0807d27`  
		Last Modified: Tue, 01 Jan 2019 11:35:54 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:332c9b494fafdf9b8b7ff98f181e41ceeb1bb0eb11d2c3589c41dfe10f48c026`  
		Last Modified: Tue, 01 Jan 2019 11:36:05 GMT  
		Size: 28.5 MB (28541420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d50dadef564f829ba97852e55f5b065bca271dfc683d1bb34c431c814c8a3df`  
		Last Modified: Tue, 01 Jan 2019 11:35:52 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1db8003fd6cb63a7877d23f992469174c40a2e8995f903166f31c4408ca587`  
		Last Modified: Tue, 01 Jan 2019 11:35:52 GMT  
		Size: 320.8 KB (320786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b7c19cce0ee89b98bc1f400fabf9ed4431719ae5d89fd044cd2d4a659111ef2`  
		Last Modified: Tue, 01 Jan 2019 11:35:52 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246738e563d516bbf776ee018b2c8e790e2be0640303dde337ad369a9efc1499`  
		Last Modified: Tue, 01 Jan 2019 11:37:15 GMT  
		Size: 133.8 MB (133774636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d61acfcc807652451999e1568f9c63a728fdafdf11ef0c0b7974fd97e1fbb6`  
		Last Modified: Tue, 01 Jan 2019 11:35:52 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
