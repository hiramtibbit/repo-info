## `golang:1-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:322aafc22d139c2930db5894332d1a25cc019a47b26074828829ec28a3c2f382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `golang:1-windowsservercore-ltsc2016` - windows version 10.0.14393.2972; amd64

```console
$ docker pull golang@sha256:ac8445caeb88ab697832553b631b4b049ba3a81e24d68abc4a8a49df10d4e63a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5880852978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0492c93f831d0cae0d6bc8d647cce38ae49da1b43d0ebc524ef5ac75ab8991ee`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 12:40:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 12:40:22 GMT
ENV GIT_VERSION=2.11.1
# Wed, 22 May 2019 12:40:23 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 22 May 2019 12:40:24 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 22 May 2019 12:40:26 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 22 May 2019 12:42:21 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 12:42:23 GMT
ENV GOPATH=C:\gopath
# Wed, 22 May 2019 12:43:32 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 22 May 2019 12:43:33 GMT
ENV GOLANG_VERSION=1.12.5
# Wed, 22 May 2019 12:49:42 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'ccb694279aab39fe0e70629261f13b0307ee40d2d5e1138ed94738023ab04baa'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 12:49:44 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:238abb146382d28000f03a82c40be99cbfac99a1480f9d23f8a6420cafc6b083`  
		Last Modified: Wed, 22 May 2019 13:21:05 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8a2800ef5c6584119c192848efd5b02082ee8dc756843420d529dfd09b7e04`  
		Last Modified: Wed, 22 May 2019 13:21:05 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b377bf1809f58b39fa7fd61adbc304960ef8123cf594ecb21a0b487369e5cfcc`  
		Last Modified: Wed, 22 May 2019 13:21:04 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046d97322059da2c7f7598ec1877092210194cb28245f3c00cbde75190fc27a0`  
		Last Modified: Wed, 22 May 2019 13:21:01 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b71e039222312e03702f27fc470d0fdfddb4735191c2c3fcf0bc3252aa2ad8c`  
		Last Modified: Wed, 22 May 2019 13:21:01 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640c01507024f0a90f2db9d2dbd15f369a13b9d879b70032d9e427b0e22beafd`  
		Last Modified: Wed, 22 May 2019 13:21:13 GMT  
		Size: 29.6 MB (29620260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eaad791a1830b9cc02f2decb3595de1b2bcd51ce01051ed862104dad5b04d0a`  
		Last Modified: Wed, 22 May 2019 13:20:58 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d48f397f711e94277ed7bfdfeb5ee602560b4de4468497d97b78a633469f51f9`  
		Last Modified: Wed, 22 May 2019 13:20:59 GMT  
		Size: 5.2 MB (5157555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76721a2ea4c662d44120ccbd513bb3eaf33b5f9bd6cb142f8ff19a33f7aaf17c`  
		Last Modified: Wed, 22 May 2019 13:20:58 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e960e31f45e484df59bf065540f94aee3fbcc39545b0a194a13dd2faf57f74e2`  
		Last Modified: Wed, 22 May 2019 13:22:27 GMT  
		Size: 146.3 MB (146277216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76523b79070337bbef52fa389877e5df259dbe0c930c3f382829a63d61b9239c`  
		Last Modified: Wed, 22 May 2019 13:20:58 GMT  
		Size: 1.4 KB (1353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
