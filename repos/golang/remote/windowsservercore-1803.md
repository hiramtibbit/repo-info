## `golang:windowsservercore-1803`

```console
$ docker pull golang@sha256:b4719fd7fe2ce8da2a20a48a7e5bdb47163310151ba6cb1e6d3af4e07724535a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `golang:windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull golang@sha256:18a9468ff963458d4e6a7e3b745514a38877b9a4fb76930b5064de7993aa0eb6
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2404061313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3572fc2698544205bae92cdfc7fa0cd3ef8837f05bc450919aa593e25ca38311`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 12:13:26 GMT
ENV GIT_VERSION=2.11.1
# Fri, 11 Jan 2019 12:13:28 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 11 Jan 2019 12:13:29 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 11 Jan 2019 12:13:30 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 11 Jan 2019 12:15:00 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 12:15:02 GMT
ENV GOPATH=C:\gopath
# Fri, 11 Jan 2019 12:15:31 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 24 Jan 2019 10:31:04 GMT
ENV GOLANG_VERSION=1.11.5
# Thu, 24 Jan 2019 10:36:23 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1c734fe614fa052f44694e993f2d06f24a56b6703ee46fdfb2b9bf277819fe40'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 24 Jan 2019 10:36:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b934d5ab5fbb50fd3e1b560b03c3b24f11a3c0e1bdd399c7850a968865cf32c9`  
		Last Modified: Fri, 11 Jan 2019 13:58:19 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382c299400df1a200890f5a84fc62163f3f8e943a072bd6421aaa61059bd2079`  
		Last Modified: Fri, 11 Jan 2019 13:58:17 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db751b50c2dd2a9c08bfc757c5cd3458cd2c00c8ae8d14d81d147578a9959940`  
		Last Modified: Fri, 11 Jan 2019 13:58:16 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378165ec9af35fb940c4f0a761b79321fd79e07d4763ccb6d2244affa4a17c8d`  
		Last Modified: Fri, 11 Jan 2019 13:58:16 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ec26d45f5823ec286db921c11ddba3b7831906d2b72703c9d1975495f46bf1`  
		Last Modified: Fri, 11 Jan 2019 13:58:27 GMT  
		Size: 29.1 MB (29085541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba465b29c021e982d324f2a2ed0e5262fd741bf1ae40d91eb851fc2c71f39b0e`  
		Last Modified: Fri, 11 Jan 2019 13:58:13 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ed7086c4b5e96a2b45161a28bdbab57c4c107fc255a09a8b7fccb7b476b80b`  
		Last Modified: Fri, 11 Jan 2019 13:58:13 GMT  
		Size: 295.2 KB (295179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b64b7da17822831f1f9bf8813f2653bd1b74b73662686514ba2d10f3cbc95b5`  
		Last Modified: Thu, 24 Jan 2019 11:18:09 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d8e8d760c3d9a6bcc72994c4fce7c7574d07278885935299d251c0ee1acdb40`  
		Last Modified: Thu, 24 Jan 2019 11:19:28 GMT  
		Size: 129.0 MB (128983669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c6d51bb1630d1aec1b20db925b2858306e70b9d817967db6154a8cd789b8f1`  
		Last Modified: Thu, 24 Jan 2019 11:18:09 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
