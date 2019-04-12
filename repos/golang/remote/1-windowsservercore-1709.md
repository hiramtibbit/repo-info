## `golang:1-windowsservercore-1709`

```console
$ docker pull golang@sha256:8219238b9fa5953fee5cbc8ebc4ae4afb27f497506b9906fb81cc087e68ea6c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.1087; amd64

### `golang:1-windowsservercore-1709` - windows version 10.0.16299.1087; amd64

```console
$ docker pull golang@sha256:3d5c61610e445e33da283a6dec0acf4bc8a9e333a969f46c71aaaad0bd2e536e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 GB (3376315844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15cccfacceba96b47a716a245f6da6b69f5ee3e6f12053a41fe210c9a5ed9995`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 1709-RTM-amd64
# Thu, 04 Apr 2019 00:21:24 GMT
RUN Install update 1709-amd64
# Thu, 11 Apr 2019 22:58:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:32:33 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:32:34 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:32:35 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:32:36 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:33:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:33:46 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:34:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 12 Apr 2019 05:34:33 GMT
ENV GOLANG_VERSION=1.12.3
# Fri, 12 Apr 2019 05:39:58 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1806e089e85b84f192d782a7f70f90a32e0eccfd181405857e612f806ec04059'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:40:00 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8c7d1531260f1f41cc711bfb3c8ab8efac981758fd7943518b863803f0b31552`  
		Last Modified: Tue, 09 Apr 2019 18:39:54 GMT  
		Size: 926.6 MB (926563180 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:59e24a9056c00889763abd79b000344468ace59ae58ae7d17acdfcbaadd1f6e8`  
		Last Modified: Fri, 12 Apr 2019 00:03:19 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a9342065c415bcacb005e7ac68714ffdc017c53a0b52c946c8bee8779654ce`  
		Last Modified: Fri, 12 Apr 2019 06:19:44 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d994ab46bec67b135e3a6f3ce8870879d871e5d8d1a1b24b34144ca63eafd6`  
		Last Modified: Fri, 12 Apr 2019 06:19:44 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42802c4afeed9569dc9ca24d73c2276b04b64bfa8805fd7bb00ca670ed16364b`  
		Last Modified: Fri, 12 Apr 2019 06:19:40 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abd4f670e09f0ee517528895e27f7ac54db6308ec2a0e4dcea81523b31a1f1c`  
		Last Modified: Fri, 12 Apr 2019 06:19:41 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dfc901d4d824f58296cde27b4be9547d2ae8c18c1d09631f7ba3d2e0086e73`  
		Last Modified: Fri, 12 Apr 2019 06:19:53 GMT  
		Size: 29.2 MB (29224744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97f6f41232c179bb0df69ae736409917893dc56bbb30bd8fc665052c56d2adc`  
		Last Modified: Fri, 12 Apr 2019 06:19:37 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d561f225846f9090d7fedfd5b5710d27c5a8a5885a09adcffb35ce9b3690e8a`  
		Last Modified: Fri, 12 Apr 2019 06:19:39 GMT  
		Size: 4.8 MB (4779897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965ab4f277d7d4bed96be781d0ce0347313e4acca82740e3683c96d14c0f70c8`  
		Last Modified: Fri, 12 Apr 2019 06:19:37 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f35a38445bb94495ff3ac4764e14051a0a754358778e65bf7b1de9e2d46011`  
		Last Modified: Fri, 12 Apr 2019 06:21:08 GMT  
		Size: 141.4 MB (141437666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a27770987c2a379fc570a6e9ab0c1c16201d97090de1c5618d86a69b77b7c8`  
		Last Modified: Fri, 12 Apr 2019 06:19:38 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
