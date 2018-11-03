## `golang:windowsservercore-ltsc2016`

```console
$ docker pull golang@sha256:bee7153ad51207684262a730d17c8bf3a1bf798a8dd62baf8221fc791474b76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `golang:windowsservercore-ltsc2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull golang@sha256:d8502078f39227733797554b08b224d8d3268bd0b113d302f5e808b90a490333
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5771145119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c34a1e694cc9bb52500181d991491ba5688e20a15a13047e7f5f32dab09da326`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Wed, 10 Oct 2018 09:36:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 03 Nov 2018 09:16:23 GMT
ENV GIT_VERSION=2.11.1
# Sat, 03 Nov 2018 09:16:25 GMT
ENV GIT_TAG=v2.11.1.windows.1
# Sat, 03 Nov 2018 09:16:26 GMT
ENV GIT_DOWNLOAD_URL=https://github.com/git-for-windows/git/releases/download/v2.11.1.windows.1/MinGit-2.11.1-64-bit.zip
# Sat, 03 Nov 2018 09:16:27 GMT
ENV GIT_DOWNLOAD_SHA256=668d16a799dd721ed126cc91bed49eb2c072ba1b25b50048280a4e2c5ed56e59
# Sat, 03 Nov 2018 09:18:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:GIT_DOWNLOAD_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:GIT_DOWNLOAD_URL -OutFile 'git.zip'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:GIT_DOWNLOAD_SHA256); 	if ((Get-FileHash git.zip -Algorithm sha256).Hash -ne $env:GIT_DOWNLOAD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive -Path git.zip -DestinationPath C:\git\.; 		Write-Host 'Removing ...'; 	Remove-Item git.zip -Force; 		Write-Host 'Updating PATH ...'; 	$env:PATH = 'C:\git\cmd;C:\git\mingw64\bin;C:\git\usr\bin;' + $env:PATH; 	[Environment]::SetEnvironmentVariable('PATH', $env:PATH, [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  git --version'; git --version; 		Write-Host 'Complete.';
# Sat, 03 Nov 2018 09:18:39 GMT
ENV GOPATH=C:\gopath
# Sat, 03 Nov 2018 09:19:55 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Sat, 03 Nov 2018 09:19:57 GMT
ENV GOLANG_VERSION=1.11.2
# Sat, 03 Nov 2018 09:26:59 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '086c59df0dce54d88f30edd50160393deceb27e73b8d6b46b9ee3f88b0c02e28'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 03 Nov 2018 09:27:01 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d41004b1d809eac4e77c97920984b278977d36627024ab085d0dd8ccc941ddeb`  
		Last Modified: Wed, 10 Oct 2018 10:08:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116fc1cd0a170c6f879fba1d94f15ead46450a2559fef19931bfc0a382368cdd`  
		Last Modified: Sat, 03 Nov 2018 10:18:21 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5046a60f6d072108402da028e501d217332619e8286d0ce489bc6cd93a3c0b5d`  
		Last Modified: Sat, 03 Nov 2018 10:18:20 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fd28067df5e0f99b740d89e68efa98f2083fc75d3b3b19b069a281bb9899fad`  
		Last Modified: Sat, 03 Nov 2018 10:18:18 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981ae300beee722167a45cab1736fd3547bb8e12eb6ef2cfed7baf19adca67ce`  
		Last Modified: Sat, 03 Nov 2018 10:18:18 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f9338888ca61514a8dfb9784a0ca98c6c654696524425a4e13549eaf3a8a41`  
		Last Modified: Sat, 03 Nov 2018 10:18:33 GMT  
		Size: 29.5 MB (29508513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccadb18c88560382d72cea1e87f160c1e45c5cfdbeb760a81d6215cc8ad0554d`  
		Last Modified: Sat, 03 Nov 2018 10:18:15 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa2ad84a6e9161eee74708fbed4225bdf530660f37970889aa6d1dd600fad2d`  
		Last Modified: Sat, 03 Nov 2018 10:18:17 GMT  
		Size: 5.0 MB (5040691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:930e4db82bd55252b2b0351fca1658169cdfca5be3d4ed2026585380d947730d`  
		Last Modified: Sat, 03 Nov 2018 10:18:15 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb53a929369a02d8485fa3f0adb7d339f5e755fc0b2082e858b1aa7b8edbcfb0`  
		Last Modified: Sat, 03 Nov 2018 10:20:05 GMT  
		Size: 139.5 MB (139475250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61e5624e7616dbf603d2bb5e386be643ffe0daf0776b87016b7a06cfe1e4878`  
		Last Modified: Sat, 03 Nov 2018 10:18:15 GMT  
		Size: 1.3 KB (1346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
