## `golang:rc-windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:5011ce33d76ab48a9c7b5077bada64caf49f463f05ee8057aa4da29814f75987
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `golang:rc-windowsservercore-ltsc2016` - windows version 10.0.14393.2312; amd64

```console
$ docker pull golang@sha256:5b1119fc42d197c112590d629d9d687447cf6350fc51b26fc3399e94a774a1b5
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5700450351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:294da10a0eaf0e448b27c83773759bff0fa2cfe2ff98f7190089665aae8e42c3`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:30 GMT
RUN Install update 10.0.14393.2312
# Tue, 03 Jul 2018 00:23:42 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Jul 2018 00:23:43 GMT
ENV GIT_VERSION=2.11.1
# Tue, 03 Jul 2018 00:23:44 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Tue, 03 Jul 2018 00:23:45 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Tue, 03 Jul 2018 00:23:45 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Tue, 03 Jul 2018 00:25:33 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Tue, 03 Jul 2018 00:25:34 GMT
ENV GOPATH=C:\gopath
# Tue, 03 Jul 2018 00:26:38 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Tue, 03 Jul 2018 00:26:39 GMT
ENV GOLANG_VERSION=1.11beta1
# Tue, 03 Jul 2018 00:32:27 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1eeb874a919143f3e62b641ccd5ebbfd1b3d4f2184de1d6497f7b2b6df996960'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 03 Jul 2018 00:32:29 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8e9da9bbe3af2118a0b5eef7a3d649367557d0d3992ed0213c79857b23b4140e`  
		Last Modified: Wed, 13 Jun 2018 00:36:30 GMT  
		Size: 1.4 GB (1414319443 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:650685bf03844147638a02f1b62114e24cf12bf85feb92b6e2273d551a54c647`  
		Last Modified: Tue, 03 Jul 2018 01:20:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73a91cb469c7e359d741522bed0e10c649670cfb3641af9c3cac4d93f2423df`  
		Last Modified: Tue, 03 Jul 2018 01:20:27 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f8620bdbf56ed7bd0c8b1631a4af59f14ac8b13b1a35a419effed5ec5833d81`  
		Last Modified: Tue, 03 Jul 2018 01:20:27 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f22b0f509ad85923738743a615bdea603c33c88950a9a98f767cab9388a3e8`  
		Last Modified: Tue, 03 Jul 2018 01:20:24 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df5f4eb693cb8a03451955a74621e10cccf27271739ccb347b2aba30e4ae776`  
		Last Modified: Tue, 03 Jul 2018 01:20:23 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b05ca26dfe593b9d3d71f88f926f989dde3098abf546ea352705a8d592ec535`  
		Last Modified: Tue, 03 Jul 2018 01:20:36 GMT  
		Size: 29.4 MB (29418486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226aa27d434e3715787b7423db91aa0b17f5935a306412dc1e9bdd0024426551`  
		Last Modified: Tue, 03 Jul 2018 01:20:20 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d93a88f4c490a44ae518df594618c85ae0740b85bd552f597b1db11b9c80f3f3`  
		Last Modified: Tue, 03 Jul 2018 01:20:24 GMT  
		Size: 5.0 MB (4957116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd70231903598ec134898bdc51f4ce57174266a27c161d33ac11419c09219eb`  
		Last Modified: Tue, 03 Jul 2018 01:20:21 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff30d3fa34e99fccc7fe6285c80073f46439c076fc69f9343a120efac001d4`  
		Last Modified: Tue, 03 Jul 2018 01:21:53 GMT  
		Size: 181.8 MB (181759695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac53ba20e8119f58b384b42fe6873b50dfdc468e47bda0c267c6a365c0df366`  
		Last Modified: Tue, 03 Jul 2018 01:20:20 GMT  
		Size: 1.3 KB (1343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
