## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:c1c87886c5ab5d4a5c4c7385e11e6092981d7c94016a51e691d7bdf8687de366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `golang:1-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull golang@sha256:ad7e73b39ab2012adf05a26aa6205f714911947f6652c9e98275c4758313c072
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **576.1 MB (576103753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6354915de2c8369d230b8f431287f7177e0cb8ed0793837b6af4fef6a6f1b33`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:43:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 22:29:52 GMT
ENV GOPATH=C:\gopath
# Tue, 25 Dec 2018 22:30:33 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 27 Feb 2019 10:41:18 GMT
ENV GOLANG_VERSION=1.12
# Wed, 27 Feb 2019 10:47:24 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '880ced1aecef08b3471a84381b6c7e2c0e846b81dd97ecb629b534d941f282bd'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 27 Feb 2019 10:47:26 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1f72e042ba5d72d27b42026712df029a6a160e9acc59f0ec444c96e610f275d3`  
		Last Modified: Tue, 25 Dec 2018 18:56:43 GMT  
		Size: 956.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f276a017370ba20669b97b2114e04abcb6fbc550935652a2fda2f21b007ceb70`  
		Last Modified: Tue, 25 Dec 2018 23:34:37 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7c4aea0902cfd13e0323d30ee7bee7af103db8b0fa1448d30ad26575fd3279`  
		Last Modified: Tue, 25 Dec 2018 23:34:38 GMT  
		Size: 943.5 KB (943453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7707d18121db67d4bda893a724364adb1d2bb789326745b22f2528f73f823c16`  
		Last Modified: Wed, 27 Feb 2019 10:55:45 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e4218d6da7e4c3feaa48fdda56af1771788c72ed58b89e2186ea2a283fe2c3`  
		Last Modified: Wed, 27 Feb 2019 10:57:12 GMT  
		Size: 139.8 MB (139759473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b7365903b08f9ee4a29d4006d2786dffd3d3c20db861757a94e1f81f26ac6b`  
		Last Modified: Wed, 27 Feb 2019 10:55:45 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
