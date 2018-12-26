## `golang:rc-windowsservercore-1803`

```console
$ docker pull golang@sha256:dcad824f710674375696ff908648de0a0f0d1c107af176ad3257403c9a9fd6a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `golang:rc-windowsservercore-1803` - windows version 10.0.17134.469; amd64

```console
$ docker pull golang@sha256:ed59fcfd0dc312d4f12b8119c853baf2965cd8a0f427209ae19ea8dc22bdbe6b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2406803114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43bae08aa416aeafbaa4666c55be0fc30a1cd906c6b7875fe8ac04fe44076132`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Tue, 25 Dec 2018 18:18:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 22:21:39 GMT
ENV GIT_VERSION=2.11.1
# Tue, 25 Dec 2018 22:21:40 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Tue, 25 Dec 2018 22:21:41 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Tue, 25 Dec 2018 22:21:43 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Tue, 25 Dec 2018 22:23:08 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 22:23:10 GMT
ENV GOPATH=C:\gopath
# Tue, 25 Dec 2018 22:23:40 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 25 Dec 2018 22:23:42 GMT
ENV GOLANG_VERSION=1.12beta1
# Tue, 25 Dec 2018 22:29:38 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '167824d31e5a75a89e0ee159561042e144498f8f2cc725767277ccbcf749684b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 22:29:40 GMT
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
	-	`sha256:219a311071ee4293d1c43ed6fbbc267544771d491843ca5ff9c1a235c116c96d`  
		Last Modified: Tue, 25 Dec 2018 18:50:55 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaf8ffc46cce25ad353cbd550086343be2f38f67612dad17abb9c9ce3ecb602`  
		Last Modified: Tue, 25 Dec 2018 23:32:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5570c7198566f534e77e30f11427f7da7f6c0b7f20a34f59a37f78632824f6a9`  
		Last Modified: Tue, 25 Dec 2018 23:32:54 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c788c61cbedc5ccc3b5bba51d68c16b632501d18fc0d896db98496b4a97d02fd`  
		Last Modified: Tue, 25 Dec 2018 23:32:53 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6306d5560c1b50c973c601dfc75d9ed1f13409578108b0f170a395f1a322ebf9`  
		Last Modified: Tue, 25 Dec 2018 23:32:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56818a40f7c5bf1500fa4ac756a7a60f7223b6ae528de09a6680c6b6116be3f`  
		Last Modified: Tue, 25 Dec 2018 23:33:04 GMT  
		Size: 29.1 MB (29111136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673e78a73ac4b072ed561ef27c5e5bd5a6b20629801f70050efd9c1c3e1e0dc6`  
		Last Modified: Tue, 25 Dec 2018 23:32:50 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b762acb8a97997f4c74a3d006d77f78c718795bc5d03bcc7f8dfd94deaf4a310`  
		Last Modified: Tue, 25 Dec 2018 23:32:50 GMT  
		Size: 318.1 KB (318125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b64b623da7295ce535d17280602d6c704ce35a804a61e3a0798e2afe44b8d76`  
		Last Modified: Tue, 25 Dec 2018 23:32:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ade31749e123647af0ed4b36113134c9a8de76e5c59fa1602746fd9f83403d`  
		Last Modified: Tue, 25 Dec 2018 23:34:23 GMT  
		Size: 133.8 MB (133777011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1f9c9a4e2141961536c26afcc72c5769d4877db82b016b5ff60136e1617f17`  
		Last Modified: Tue, 25 Dec 2018 23:32:50 GMT  
		Size: 1.4 KB (1350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
