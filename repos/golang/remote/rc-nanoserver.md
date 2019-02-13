## `golang:rc-nanoserver`

```console
$ docker pull golang@sha256:4be7c09436f4ef9f9573435bdefd56f04a0e4270458f7fe08af9f1df58c6d696
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `golang:rc-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull golang@sha256:1036e41ca051d7d185c0638f024ad8a18fa7a0dc84d2bed2ee7113d87f71158d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **577.7 MB (577701123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e49eb5c993e459e03a19df5d1c1ec89519641c9a1a039f0866af35fcd015c9fa`
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
# Wed, 13 Feb 2019 11:53:23 GMT
ENV GOLANG_VERSION=1.12rc1
# Wed, 13 Feb 2019 11:59:18 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'cf3e163c6106f4f272816fa53d1e01e0cabff8dd797732f46513bbc5ea4f1843'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 13 Feb 2019 11:59:19 GMT
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
	-	`sha256:bc62992f859803e372b2f7303d0d00504a7ada31e1be55ad2f4c0c73cb19c71c`  
		Last Modified: Wed, 13 Feb 2019 12:53:57 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425c58a4f063198d8738a1ab4a331c45b9ae74a5cda12e385a0a15bb33df2e09`  
		Last Modified: Wed, 13 Feb 2019 12:55:29 GMT  
		Size: 141.4 MB (141356843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4c630a85424e67d23a95f58ad927b2dec3f4357c8c73a3a564169a161c0829`  
		Last Modified: Wed, 13 Feb 2019 12:53:56 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
