## `golang:rc-windowsservercore-1809`

```console
$ docker pull golang@sha256:e2cd27ad2a9d4926c0d9a92e392fa48355353687c590765b2e94abd3a2bdfccf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.316; amd64

### `golang:rc-windowsservercore-1809` - windows version 10.0.17763.316; amd64

```console
$ docker pull golang@sha256:092cbf1fd661e13368dd0d9e71b032d8fe2c3727dc97fb975d6ef5fb9f5063cd
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2072025279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c9901748ed6d5447dd4fac8c1f515979d4472c02d88f9f31c5968482d399ae`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Fri, 08 Feb 2019 00:24:24 GMT
RUN Install update 1809-amd64
# Wed, 13 Feb 2019 11:45:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 13 Feb 2019 11:45:55 GMT
ENV GIT_VERSION=2.11.1
# Wed, 13 Feb 2019 11:45:57 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 13 Feb 2019 11:45:58 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 13 Feb 2019 11:45:59 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 13 Feb 2019 11:47:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 11:47:10 GMT
ENV GOPATH=C:\gopath
# Wed, 13 Feb 2019 11:47:37 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 13 Feb 2019 11:47:39 GMT
ENV GOLANG_VERSION=1.12rc1
# Wed, 13 Feb 2019 11:53:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'cf3e163c6106f4f272816fa53d1e01e0cabff8dd797732f46513bbc5ea4f1843'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 11:53:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9e2f2b17be7207dce6730ad64c630dc10b5b3f61a74545c7c1628d605e381297`  
		Last Modified: Tue, 12 Feb 2019 20:42:21 GMT  
		Size: 370.7 MB (370687536 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cd3ade6fc2a72f217b4055dbb0d08b2a25d881d592aeba426cc097b18d9795f7`  
		Last Modified: Wed, 13 Feb 2019 12:52:13 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2fb602668fa787d650318ac74b4712d765b26647addc5c6f4aae3b20e755e6`  
		Last Modified: Wed, 13 Feb 2019 12:52:13 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53a1d0ecab852e6aaf52d7e42f7c8decbc1f6a9a50414eca108f5c3386aa133c`  
		Last Modified: Wed, 13 Feb 2019 12:52:11 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27a3ac6579a52681175920a79452c2e5d249332453b8b09a6815ef8018dc88ba`  
		Last Modified: Wed, 13 Feb 2019 12:52:10 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b14e11e82d95b16a3ce5d7cefe46284d5fa6a18acc04afae7f7b23617106aa`  
		Last Modified: Wed, 13 Feb 2019 12:52:10 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd7d140c859832718404adcb38ba2b4221a41e0afefbb72b65799b4c63813b4`  
		Last Modified: Wed, 13 Feb 2019 12:52:20 GMT  
		Size: 28.6 MB (28578734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3ef7e7e51439e2e88b23580e095aeeccabdcf2928210f8cfeca48791ef0331`  
		Last Modified: Wed, 13 Feb 2019 12:52:07 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5f4e68ef35c423d9322236f851b892fbca00884cd92bf893ae7c8b508236cc`  
		Last Modified: Wed, 13 Feb 2019 12:52:07 GMT  
		Size: 294.1 KB (294144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adb001e4ff2e3d78e58b8dcafa36fd21cdcac64d098591b586f5bd1114df628`  
		Last Modified: Wed, 13 Feb 2019 12:52:07 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b111beec886c5177fe9a8dc460b1e13e2019eca3958c46397035ee4441802e7b`  
		Last Modified: Wed, 13 Feb 2019 12:53:41 GMT  
		Size: 137.8 MB (137769735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:420e46fc413fa415d3984c6c7b5a365096e911ab863f9a5f93eb52b434b7bb03`  
		Last Modified: Wed, 13 Feb 2019 12:52:06 GMT  
		Size: 1.4 KB (1359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
