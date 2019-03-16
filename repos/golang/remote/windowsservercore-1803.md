## `golang:windowsservercore-1803`

```console
$ docker pull golang@sha256:ffb44c8978620720dfeaa69bd1657d4b11d62a422324eb3f5f24db287ce11b73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.648; amd64

### `golang:windowsservercore-1803` - windows version 10.0.17134.648; amd64

```console
$ docker pull golang@sha256:f7a966c42dbbf9ef537a590865d8cd3f1fe5111743dfb24b3d6c28bab29290d4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2419294541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48eb88c6330701727439624902c70cf2498fb2fe48831b90b6e8efa95a42560c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 08 Mar 2019 23:20:01 GMT
RUN Install update 10.0.17134.648
# Sat, 16 Mar 2019 09:44:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 16 Mar 2019 09:44:20 GMT
ENV GIT_VERSION=2.11.1
# Sat, 16 Mar 2019 09:44:21 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Sat, 16 Mar 2019 09:44:22 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Sat, 16 Mar 2019 09:44:23 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Sat, 16 Mar 2019 09:45:42 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Sat, 16 Mar 2019 09:45:44 GMT
ENV GOPATH=C:\gopath
# Sat, 16 Mar 2019 09:46:15 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 16 Mar 2019 09:46:16 GMT
ENV GOLANG_VERSION=1.12.1
# Sat, 16 Mar 2019 09:51:59 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '2f4849b512fffb2cf2028608aa066cc1b79e730fd146c7b89015797162f08ec5'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 16 Mar 2019 09:52:01 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:be86bca8de59067e592a8becc2e83ed2465a6d9bce324043e434aa4a15493b00`  
		Last Modified: Mon, 11 Mar 2019 21:17:02 GMT  
		Size: 593.3 MB (593288046 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:97db8a70a029fc0e25892873d5695bd2b9a1c93e4cd7dcd91fcddf338989a592`  
		Last Modified: Sat, 16 Mar 2019 10:43:05 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ace316ab2a5e38e53ab2d41c52e02a85ce154c1e1518660d4aaf708f35c52a38`  
		Last Modified: Sat, 16 Mar 2019 10:43:05 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b708b6be85a88ff6fb6d6d4a04fa2bdd2706b263e12278b6b6677cee4dbae9`  
		Last Modified: Sat, 16 Mar 2019 10:43:02 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99d48cfc773498b88a635fafa71082ed444d55326f884f2b668257dd9360f73`  
		Last Modified: Sat, 16 Mar 2019 10:43:01 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daff932fc6836ebaca651404a4813bc12094272b4530976fd644b2190de96bac`  
		Last Modified: Sat, 16 Mar 2019 10:43:01 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:290ceeb38a6cb3230cbc38928cb7c2508148bc385415a7dca4ecbb77666b6093`  
		Last Modified: Sat, 16 Mar 2019 10:43:16 GMT  
		Size: 29.1 MB (29127255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9d0da6244f76827898766a00163f1a646037a9d68ee418b8062038019762b65`  
		Last Modified: Sat, 16 Mar 2019 10:42:58 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967464bf86c49f3c9f7b07129d4fc213d21c9fe92e4bf112a2f1bd94ea7426d9`  
		Last Modified: Sat, 16 Mar 2019 10:42:59 GMT  
		Size: 298.9 KB (298856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83fe48bb5e178a584c3d36c236b8906fc5204566aa6600650b6a702148cf930`  
		Last Modified: Sat, 16 Mar 2019 10:42:58 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c07a08a82e470d3aacc422f10b8fd0b7b6ab86fc33ab69118c66d1231475fdfa`  
		Last Modified: Sat, 16 Mar 2019 10:44:36 GMT  
		Size: 136.9 MB (136882312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c952f425c2f6b53768426d7fa6f5bdbd609ef4b2391b2d6ce36f72bdf5bbc21`  
		Last Modified: Sat, 16 Mar 2019 10:42:58 GMT  
		Size: 1.4 KB (1361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
