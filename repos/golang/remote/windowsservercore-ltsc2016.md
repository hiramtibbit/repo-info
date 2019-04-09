## `golang:windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:4cf59d05aec5e6e7bde2961f716e153cca4f24eabf55c4f8129bc2aa913cd862
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2848; amd64

### `golang:windowsservercore-ltsc2016` - windows version 10.0.14393.2848; amd64

```console
$ docker pull golang@sha256:2b394c28a880e6b9885ecd3fe66b5be13faba7e48ac136d3c941dab0f6973a38
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5820202476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee52c0990020e63dc026d0c9e58e52c85e0b06cd05cc54383484695defdd366`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 11 Mar 2019 20:57:18 GMT
RUN Install update 10.0.14393.2848
# Sat, 16 Mar 2019 09:25:48 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 16 Mar 2019 09:25:49 GMT
ENV GIT_VERSION=2.11.1
# Sat, 16 Mar 2019 09:25:50 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Sat, 16 Mar 2019 09:25:51 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Sat, 16 Mar 2019 09:25:52 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Sat, 16 Mar 2019 09:27:27 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Sat, 16 Mar 2019 09:27:29 GMT
ENV GOPATH=C:\gopath
# Sat, 16 Mar 2019 09:28:34 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 09 Apr 2019 09:14:47 GMT
ENV GOLANG_VERSION=1.12.3
# Tue, 09 Apr 2019 09:21:37 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1806e089e85b84f192d782a7f70f90a32e0eccfd181405857e612f806ec04059'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 09 Apr 2019 09:21:39 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e0718b11f51220dd85c47a1d225be81c5ba343fbb45f9b43fe3d762c0a20300a`  
		Last Modified: Mon, 11 Mar 2019 20:57:18 GMT  
		Size: 1.6 GB (1569132556 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3c84f6ec9cf25e40329a2ab2c9fa1da3095d19cb67d4eacabcec0838b7e89729`  
		Last Modified: Sat, 16 Mar 2019 10:38:59 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833f50ac3601d0266188c3f53ab78da1becc5e9ebeeb293f9cfc2adb7367a6f6`  
		Last Modified: Sat, 16 Mar 2019 10:38:59 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64648fdb5b96ea1671d16a9063d718a7531de41057306536d3789fe9e3da7992`  
		Last Modified: Sat, 16 Mar 2019 10:38:59 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b36aeb7c7149006144da2b6215790f367b00c7e06ba6f15a2f8890fe48db41`  
		Last Modified: Sat, 16 Mar 2019 10:38:56 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a6d138d66a165a6cca04ea31de9191da29d2b7a6117a4136968e96dbbe4697d`  
		Last Modified: Sat, 16 Mar 2019 10:38:56 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25aa8fc993f09123a82ed16c0ae4b1259182b24089e4e61975745183192b8c4f`  
		Last Modified: Sat, 16 Mar 2019 10:39:09 GMT  
		Size: 29.6 MB (29604381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c68171b0fcd05ccf65838aea1665092a15771f48c8c20f448cd6bbfb8b88c9`  
		Last Modified: Sat, 16 Mar 2019 10:38:53 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf93e50dbbabe7a12b44bae56eae5680e14f4d2df2e8fbab50b5b44800ebca8`  
		Last Modified: Sat, 16 Mar 2019 10:38:56 GMT  
		Size: 5.1 MB (5149315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878f488f52dcd155162df168a6ab984b82a60312e462d880c7c1546a11a2159e`  
		Last Modified: Tue, 09 Apr 2019 10:12:38 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01eef1ea43d321e230eb4e6ae1bb3315d44382afc694f1a74cc1e924dfd4cb07`  
		Last Modified: Tue, 09 Apr 2019 10:13:59 GMT  
		Size: 146.3 MB (146320503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ea4a052e81b3cc1fcaa3d7018a061bcff7503292522feda56f3d9adc245702`  
		Last Modified: Tue, 09 Apr 2019 10:12:38 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
