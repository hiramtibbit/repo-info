## `golang:windowsservercore-1709`

```console
$ docker pull golang@sha256:657ba4d2c2295ce036ea82f4443aa29c84abb9d7f77347872f50adc6689400eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.431; amd64

### `golang:windowsservercore-1709` - windows version 10.0.16299.431; amd64

```console
$ docker pull golang@sha256:649fe559843db2a72907aa7da775dec23d4ecc947c7d294fb7a9ac9d6743ec5e
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3253484653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d512cb863b90e6b64cf593018684be6c5e0ddbfda2c770600a8ed5cbbc99414`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 05 May 2018 14:37:10 GMT
RUN Install update 10.0.16299.431
# Thu, 10 May 2018 09:50:49 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 09 Jun 2018 09:33:29 GMT
ENV GIT_VERSION=2.11.1
# Sat, 09 Jun 2018 09:33:29 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Sat, 09 Jun 2018 09:33:30 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Sat, 09 Jun 2018 09:33:31 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Sat, 09 Jun 2018 09:35:53 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Sat, 09 Jun 2018 09:35:54 GMT
ENV GOPATH=C:\gopath
# Sat, 09 Jun 2018 09:36:45 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 09 Jun 2018 09:36:46 GMT
ENV GOLANG_VERSION=1.10.3
# Sat, 09 Jun 2018 09:41:38 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 09 Jun 2018 09:41:40 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:af675e5054a0dfb3eb70b140f566a5dbe612b5212e4a4ef2a2991308740d1006`  
		Last Modified: Tue, 08 May 2018 18:45:22 GMT  
		Size: 805.9 MB (805944217 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0d3f2c48ca5c41c53fe84071bb55725c2d6c36c8840dcef5297cc048ffe39aa`  
		Last Modified: Thu, 10 May 2018 10:18:48 GMT  
		Size: 1.2 KB (1174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75748857d218add07e99ed1d75867f65c5c294cb1bf71a5e67dfc86df0b92ee4`  
		Last Modified: Sat, 09 Jun 2018 10:16:32 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d74f63c37276b0ea5dc7209f2c10baf56837fdf801d7a3ca7191ed1cd566b4`  
		Last Modified: Sat, 09 Jun 2018 10:16:31 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0eed83ecb53375fc44594a1059804a5a0f560d6de8430b374d8ab7b0f9353c0`  
		Last Modified: Sat, 09 Jun 2018 10:16:29 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3207ad993a04e3979560d44c033770aeb203e0f69bae9912820a1ee4a7bb24a8`  
		Last Modified: Sat, 09 Jun 2018 10:16:29 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49973c4621b3545e4bc046d97451e8973ac2c9068156037bc71eaa6fb6130ca`  
		Last Modified: Sat, 09 Jun 2018 10:16:43 GMT  
		Size: 29.1 MB (29088327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa0cb63db5afabd804d695855ec58d021b160e08d7dd3fa887699ae28840d3bc`  
		Last Modified: Sat, 09 Jun 2018 10:16:26 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995311da59adf71da1ffebf03d64a23ee64e42976f455e18e30a5b6271e6d44b`  
		Last Modified: Sat, 09 Jun 2018 10:16:28 GMT  
		Size: 4.7 MB (4651925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22f9dfd86e108d80144db0023200366dba56ded6a42ddeb80a9edd06b152fd3`  
		Last Modified: Sat, 09 Jun 2018 10:16:27 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8d857661a286876db4e8612b07a51bb6883472b6959ff0e5c05cd3d4ec2c97`  
		Last Modified: Sat, 09 Jun 2018 10:18:09 GMT  
		Size: 139.5 MB (139489969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c0e57fdd68ace38b73d35dc3d54ca8b3f8cbf51c16ca81bfff8ac73f82d3e1`  
		Last Modified: Sat, 09 Jun 2018 10:16:26 GMT  
		Size: 1.3 KB (1347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
