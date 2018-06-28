## `golang:windowsservercore-1709`

```console
$ docker pull golang@sha256:4d2f1e57dbb340e0e9be16d07aa3a1db6415c351059a8b96b90b9923ccbfeca6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.492; amd64

### `golang:windowsservercore-1709` - windows version 10.0.16299.492; amd64

```console
$ docker pull golang@sha256:e7a363e080d01aaad8b263a400e3519339f06db30036f8e77001a76d61cbc8e0
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3271129854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932017a64eda6d7750ab0bf4dcb3971dc43531f1625598181933477123d6b59d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 11 Jun 2018 20:38:48 GMT
RUN Install update 10.0.16299.492
# Sat, 16 Jun 2018 10:25:10 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Jun 2018 09:27:22 GMT
ENV GIT_VERSION=2.11.1
# Thu, 28 Jun 2018 09:27:23 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Thu, 28 Jun 2018 09:27:24 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Thu, 28 Jun 2018 09:27:25 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Thu, 28 Jun 2018 09:30:11 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Thu, 28 Jun 2018 09:30:12 GMT
ENV GOPATH=C:\gopath
# Thu, 28 Jun 2018 09:31:05 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 28 Jun 2018 09:50:05 GMT
ENV GOLANG_VERSION=1.10.3
# Thu, 28 Jun 2018 09:56:15 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 28 Jun 2018 09:56:17 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3b9c63e313c8b374d5767c602fd6f2b947a3f1df9a8f8c5fcecb2fa6b1cfa968`  
		Last Modified: Wed, 13 Jun 2018 01:11:53 GMT  
		Size: 823.6 MB (823576248 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c64dfe6152b178e35770ab15c53bfcc70f8dd47d8a0551e325ccfa665416b738`  
		Last Modified: Sat, 16 Jun 2018 10:43:33 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8a7362d18c7557f0647621858e80c20c24fba132a185f21ca1a8d8e4b056f0`  
		Last Modified: Thu, 28 Jun 2018 10:23:13 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20491759d238539ade6c851e9c3b180ba1b9847803059111990a15d8a48fd05a`  
		Last Modified: Thu, 28 Jun 2018 10:23:12 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11b0cbe2f5e791ba6c15db1abf06f88259e067ca3f44381962d3aefa6af4098`  
		Last Modified: Thu, 28 Jun 2018 10:23:10 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcc18a1bc43a1dac10c6f494be4ec787c0e9545362afe9dca29885bf5a9601e`  
		Last Modified: Thu, 28 Jun 2018 10:23:10 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bbfa39391787b21da81cd15cf0ffd956a8b7b1d99be218350c5105c3e45efde`  
		Last Modified: Thu, 28 Jun 2018 10:23:24 GMT  
		Size: 29.1 MB (29122707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3727f2f7ba0e5a47b1bdd5fd922bf2e83b054cc213d43d03e4a051c33fd8166b`  
		Last Modified: Thu, 28 Jun 2018 10:23:07 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3d64e2206db290090330fe2d1e4a1573f0036d43c77fa0dab543a6a66400bfc`  
		Last Modified: Thu, 28 Jun 2018 10:23:09 GMT  
		Size: 4.6 MB (4637449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c70acb64291c42ad26ded82cb59072676e5a029ce00b36ca559452a345a359`  
		Last Modified: Thu, 28 Jun 2018 10:29:46 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4216b33be4c96073ea69458d7beac279a56846ba24b1158d8682ba685538efc7`  
		Last Modified: Thu, 28 Jun 2018 10:31:22 GMT  
		Size: 139.5 MB (139483192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a075c67aff6c396f14f9d6d2e2793405e52a28b5091b30f0926294fc84fb25`  
		Last Modified: Thu, 28 Jun 2018 10:29:47 GMT  
		Size: 1.3 KB (1348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
