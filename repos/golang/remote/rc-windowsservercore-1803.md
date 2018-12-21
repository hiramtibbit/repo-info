## `golang:rc-windowsservercore-1803`

```console
$ docker pull golang@sha256:e8777ca9084a6faa841c1dd745078f8affd58a76c38132dc388f343be74bfb71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `golang:rc-windowsservercore-1803` - windows version 10.0.17134.469; amd64

```console
$ docker pull golang@sha256:b7558c2f3065ec31212e2dcf4b417b4580b222f94827bca4eb8719374b5deb6e
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406824582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35db633ed711e8a06902971af4af3e2b10aeb4e17533fee2b19c49530b241c84`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Fri, 14 Dec 2018 11:04:06 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 14 Dec 2018 11:04:07 GMT
ENV GIT_VERSION=2.11.1
# Fri, 14 Dec 2018 11:04:08 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 14 Dec 2018 11:04:09 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 14 Dec 2018 11:04:10 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 14 Dec 2018 11:05:48 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 14 Dec 2018 11:05:49 GMT
ENV GOPATH=C:\gopath
# Fri, 14 Dec 2018 11:06:40 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 21 Dec 2018 10:30:36 GMT
ENV GOLANG_VERSION=1.12beta1
# Fri, 21 Dec 2018 10:37:02 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '167824d31e5a75a89e0ee159561042e144498f8f2cc725767277ccbcf749684b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 21 Dec 2018 10:37:03 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a716b198c71b782955b21f1eed303f89f487eaef823ebccdeb452b764512b3b`  
		Last Modified: Tue, 11 Dec 2018 22:06:40 GMT  
		Size: 583.9 MB (583898765 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8b4b6fc57867bd595f143a036b6646613e7abc74c4e3c65f07d1c770f023d14c`  
		Last Modified: Fri, 14 Dec 2018 11:47:50 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4757ae2c8dac21c9d1c951288f88f2f1ae151d5384c87410eac015056510e7`  
		Last Modified: Fri, 14 Dec 2018 11:47:49 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0252e2ef8870156b05fbe5dc15e179768309c8eac36ac36ef5875f6f943f2760`  
		Last Modified: Fri, 14 Dec 2018 11:47:47 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8974ee51534e5f3ed1e697b6ba66df8e06d04811c2692e0ebc1381a46a48f507`  
		Last Modified: Fri, 14 Dec 2018 11:47:46 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def7914918b0f0abd08786b36aab3efdcb24938f3c295dfd66d1037a14e9ab16`  
		Last Modified: Fri, 14 Dec 2018 11:47:46 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a59f4aa044e215ee1f4bde311dfc3b302100bd41d975196db2fe524ac859a`  
		Last Modified: Fri, 14 Dec 2018 11:47:58 GMT  
		Size: 29.1 MB (29110623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e937512e6cb0cec3584a3be4b3bbdafcc200bfb4ef366ed05034b9c5e38e15`  
		Last Modified: Fri, 14 Dec 2018 11:47:43 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce3f9686c7c0b0c50e76f87f0159a8edd837b887f4087bbcdcfab379d84e880f`  
		Last Modified: Fri, 14 Dec 2018 11:47:43 GMT  
		Size: 318.0 KB (317954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a781b35df820437e2c81a0dd53f835c29bc96bf4ce80827f603f7b0539e81237`  
		Last Modified: Fri, 21 Dec 2018 10:48:33 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be98277cb748cb5ce4f196d08badd5e44ae465e4094a675383c98585d1b3234`  
		Last Modified: Fri, 21 Dec 2018 10:50:07 GMT  
		Size: 133.8 MB (133799240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a343e3a13bdbb5b6fea34cc27c63dbd842e9a9cc1d569be809ba35c8357dd5a`  
		Last Modified: Fri, 21 Dec 2018 10:48:33 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
