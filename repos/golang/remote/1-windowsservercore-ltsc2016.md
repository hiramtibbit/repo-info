## `golang:1-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:72eea30be3e1f36eef59382ddc9600ad2e3bb47f4ffa390bab3b546836b72924
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `golang:1-windowsservercore-ltsc2016` - windows version 10.0.14393.3025; amd64

```console
$ docker pull golang@sha256:12785eb1785d671b8b0c2265359ec896fbc040a3e7c95d91e61cceb089b7f8b5
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 GB (5891405192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66518d9a45ab0cb663d976c6403368946f4187e8556f6240972d227ecf9ecde1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 12:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 12:41:02 GMT
ENV GIT_VERSION=2.11.1
# Wed, 12 Jun 2019 12:41:03 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Wed, 12 Jun 2019 12:41:04 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Wed, 12 Jun 2019 12:41:05 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Wed, 12 Jun 2019 12:43:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 12:43:05 GMT
ENV GOPATH=C:\gopath
# Wed, 12 Jun 2019 12:44:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 12 Jun 2019 19:14:03 GMT
ENV GOLANG_VERSION=1.12.6
# Wed, 12 Jun 2019 19:20:03 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '9badf7bbc0ed55f2db967434b033a2cddf2e46dbdc5bb8560d8fde019e8e19d3'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 19:20:05 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:57bc0501728e0596928517947d7b1c59a1010c84b5d54e534c0bad3109160d4c`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca98247ec55652f383c128ab87d212be58587ddeb21374c72b3242a142a1b2d9`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3200792c9f2afd2d016119eb89877d999707c0df7d90b89936a39222d4192abb`  
		Last Modified: Wed, 12 Jun 2019 13:21:20 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116d61d936b496be1876cebdf1b36f5d77022a4a657aaa21d569691550e3f5bd`  
		Last Modified: Wed, 12 Jun 2019 13:21:17 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dab62f40e2ae1628d86b8e13ecbabbcdf68f057abff7a2ee9e58eb144bd8a0`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f686797fe73df5c570abe1054db1eb09fea353406c0399e6b10073bcc999bfe2`  
		Last Modified: Wed, 12 Jun 2019 13:21:32 GMT  
		Size: 29.7 MB (29727051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf461bde81738a7a10be4a3e5f4f51bc4a4848576b96857f54e840e54b3f3a47`  
		Last Modified: Wed, 12 Jun 2019 13:21:14 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56053688bf5cc33069de5cf6fa4ed4283c525801c5b3521eb907a2a8c39f64f7`  
		Last Modified: Wed, 12 Jun 2019 13:21:16 GMT  
		Size: 5.3 MB (5270587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a457d2f0d49444af639f4d1bc6bdb5d6ac3099b00f2dca46fd1dbdf25fcf46`  
		Last Modified: Wed, 12 Jun 2019 19:48:20 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b9ef58681e612c36e491e4bebc62c64c08db8aa11f0dc9ce626c6f4dc3aea49`  
		Last Modified: Wed, 12 Jun 2019 19:49:54 GMT  
		Size: 146.4 MB (146423239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea522a20b2139b8e6dda6a2325a560d33a1204653a06320b68637a5f54fd7931`  
		Last Modified: Wed, 12 Jun 2019 19:48:20 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
