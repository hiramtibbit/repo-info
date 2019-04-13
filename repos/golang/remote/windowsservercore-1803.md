## `golang:windowsservercore-1803`

```console
$ docker pull golang@sha256:ae59ae270a7d9a72a7bf8c2aad473ca8970b12bb8c7e481cbd38e6f7fc8467df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.706; amd64

### `golang:windowsservercore-1803` - windows version 10.0.17134.706; amd64

```console
$ docker pull golang@sha256:87bea289da1e1a4bb3d1aae9de9a4ca6977ae5486c329deefc22f4bed6699255
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2422741328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7a5d80d5753d20d33b149f601d7a6bfc5481c627e4c80fea3aec47cf5b6a05`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Thu, 04 Apr 2019 18:30:12 GMT
RUN Install update 1803-amd64
# Thu, 11 Apr 2019 23:03:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 05:40:17 GMT
ENV GIT_VERSION=2.11.1
# Fri, 12 Apr 2019 05:40:18 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 12 Apr 2019 05:40:19 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 12 Apr 2019 05:40:21 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 12 Apr 2019 05:41:38 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 12 Apr 2019 05:41:41 GMT
ENV GOPATH=C:\gopath
# Fri, 12 Apr 2019 05:42:10 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 13 Apr 2019 09:26:45 GMT
ENV GOLANG_VERSION=1.12.4
# Sat, 13 Apr 2019 09:32:05 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '25b043ebacca2fa2c87bbcd7463be5f34fbd225247c101888f81647fadbdfca0'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 13 Apr 2019 09:32:07 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6a8147bebfc5d75cdbc4154ff5ea5ec95231702321385b172e1323577bf689ef`  
		Last Modified: Tue, 09 Apr 2019 18:25:14 GMT  
		Size: 596.7 MB (596662323 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:37b6568b4a1267078fda687a318c987c4cb5a7d81edad72ed156b23333c61042`  
		Last Modified: Fri, 12 Apr 2019 00:04:01 GMT  
		Size: 1.2 KB (1219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d821a7fb0c6729306b27e86bed17ef5f363a52e9ff8ae295d22a5fd12d39d2fb`  
		Last Modified: Fri, 12 Apr 2019 06:21:37 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb4dd11e44eec6fce64819b584cfb08efe9dd12dc15b6890625bcaa13bc1923`  
		Last Modified: Fri, 12 Apr 2019 06:21:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61602e5e318a6b9db923ecd44b49ceb8be534dffc072fac00509bf69cb1523b6`  
		Last Modified: Fri, 12 Apr 2019 06:21:34 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cab4218bf75782a8d4516fc58fa8ee803139cdcd3fe9adaabfa0f405c0eb468`  
		Last Modified: Fri, 12 Apr 2019 06:21:33 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e343208f97414cf9c2d723aa0b069f3f2bd0b3cbe2c9236a0a8fd4c1045094`  
		Last Modified: Fri, 12 Apr 2019 06:21:46 GMT  
		Size: 29.1 MB (29131686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9b2229d6fe333f2953615ab9937365cc40934c28680913fba8cbe3a209e4b1`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5848365b12a3c17850a2ad92d9f776489627036b7ed11b69a1458bfdbcb3a375`  
		Last Modified: Fri, 12 Apr 2019 06:21:31 GMT  
		Size: 297.7 KB (297735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a0ad393021577276298b6cfc1ceb273a0b20c8e1f5edaf2968f5039f28ebed`  
		Last Modified: Sat, 13 Apr 2019 09:56:07 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebaf86a43298b863d7e24234152d1f18c7021ae851740b5fc397bdd7ba9f569`  
		Last Modified: Sat, 13 Apr 2019 09:57:27 GMT  
		Size: 137.0 MB (136951518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ed0c9b3b6aa28a221c9fc9fcea62137fb8e9e2d0396adc4e7ce0d6801118a5`  
		Last Modified: Sat, 13 Apr 2019 09:56:08 GMT  
		Size: 1.3 KB (1344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
