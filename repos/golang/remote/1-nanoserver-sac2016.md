## `golang:1-nanoserver-sac2016`

```console
$ docker pull golang@sha256:a5188129d9c3c96c279634c6a5a9e8c3b852d2040b51d8851660baf8f8ad5599
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `golang:1-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull golang@sha256:1d7007a4c02f2aaa67c3b859cbe08b90b1747d8841adf7d65b5793d9e0e3b9fe
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **568.9 MB (568888925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cccba1ed43580d982c18fecd2245403006ab8d2fa665736d8ee5ffe1bca1aea`
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
# Thu, 24 Jan 2019 10:42:43 GMT
ENV GOLANG_VERSION=1.11.5
# Thu, 24 Jan 2019 10:48:21 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '1c734fe614fa052f44694e993f2d06f24a56b6703ee46fdfb2b9bf277819fe40'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 24 Jan 2019 10:48:23 GMT
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
	-	`sha256:c68567faca150d36cd8d487971baee80605a4d0c8db172b8dc57d9211a107fff`  
		Last Modified: Thu, 24 Jan 2019 11:21:31 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4ac3a1467b5eb08d4f1adbe1bab8ffd882283d2113da40abb056a846c2ec66`  
		Last Modified: Thu, 24 Jan 2019 11:23:00 GMT  
		Size: 132.5 MB (132544641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aae8b2cb52a0e320250c4c3043c667f27253f6fba28b49596eb9d912ed7d574`  
		Last Modified: Thu, 24 Jan 2019 11:21:31 GMT  
		Size: 1.2 KB (1161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
