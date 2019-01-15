## `golang:rc-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:8e318dd79fd49ad2ff892bae7a7ffc0d0135aa5f5785299d509f569633d898b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `golang:rc-windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull golang@sha256:1fb9dbea5061ebb1604ec1c1bc3dc4d1ac232e459b15f66498d65e89646bb29e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5817515549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82d25bdc586f7addf96d25eadea7a7e4d99287b0cf437b16d7bcf27db8285a33`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 11:55:13 GMT
ENV GIT_VERSION=2.11.1
# Fri, 11 Jan 2019 11:55:14 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Fri, 11 Jan 2019 11:55:15 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Fri, 11 Jan 2019 11:55:16 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Fri, 11 Jan 2019 11:56:44 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 11:56:46 GMT
ENV GOPATH=C:\gopath
# Fri, 11 Jan 2019 11:57:58 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Fri, 11 Jan 2019 11:58:00 GMT
ENV GOLANG_VERSION=1.12beta2
# Fri, 11 Jan 2019 12:04:32 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '6d1878249d99dc9ba3e7c7da05470cf7c4fa70b319eeb8e6248dd5a26ff3d870'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Fri, 11 Jan 2019 12:04:34 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e61af345295efea8e59cccf803b343c407ce77a198d68056833235a3adcfc4`  
		Last Modified: Fri, 11 Jan 2019 13:54:21 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1d2d63737b52c3eee42a2de1888453e8f27bae070f6dd869c538f54ea18aef`  
		Last Modified: Fri, 11 Jan 2019 13:54:19 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45962e33b2d3de9ba79b048db3aa0158c69e6b60fd5c498fd3595551e48ea846`  
		Last Modified: Fri, 11 Jan 2019 13:54:18 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d677e9f5e722cbc5d32c6e998b76402d52613124d3754b812152193c1c2b213`  
		Last Modified: Fri, 11 Jan 2019 13:54:17 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9b6562e3ce3395a2de0eeeda2a439f7f50c96374be711fe3ae90c4560340cec`  
		Last Modified: Fri, 11 Jan 2019 13:54:30 GMT  
		Size: 29.6 MB (29630483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0924b343b4dadd57ed6d7033af0b3f2f5b8c74544b3d2fe9c2a47792ec9d6397`  
		Last Modified: Fri, 11 Jan 2019 13:54:14 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c4801d95116c9b1de47576071deca0cdbf3c1d6729343b9ab5edb9a751b22c`  
		Last Modified: Fri, 11 Jan 2019 13:54:16 GMT  
		Size: 5.2 MB (5162103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29eed8a18d814a05a1aef685c23c66bfd2762569704317d680f7442ad23109d0`  
		Last Modified: Fri, 11 Jan 2019 13:54:15 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb0f2ffd7795bbc8afad44d27eb75ca46684a9d7787e522b8daf595c4acb89b`  
		Last Modified: Fri, 11 Jan 2019 13:55:58 GMT  
		Size: 146.9 MB (146897065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9165c93752145ff36f40d252c69629cbe741220f3d7fdef1a1dcd36681cb63c6`  
		Last Modified: Fri, 11 Jan 2019 13:54:15 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
