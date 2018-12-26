## `golang:rc-nanoserver-sac2016`

```console
$ docker pull golang@sha256:400ba263d2200b60f407ad89146dc84d782a6dddcfa4d545659f56a209dc4d86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `golang:rc-nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull golang@sha256:cb6694593e2a67b3218a35d2d788fd259a538e551e533a9dd5aafded400a8c4d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **573.7 MB (573691100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:546b6b1c9c036b51f967dc7ac48e0ca16f782194ed6b14b23b95a24b49faf1e0`
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
# Tue, 25 Dec 2018 22:30:36 GMT
ENV GOLANG_VERSION=1.12beta1
# Tue, 25 Dec 2018 22:37:15 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '167824d31e5a75a89e0ee159561042e144498f8f2cc725767277ccbcf749684b'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 25 Dec 2018 22:37:17 GMT
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
	-	`sha256:4a56f5d33b1310378537b1d2089c59c8fc71167ba02dbf89978c4e27264cfd39`  
		Last Modified: Tue, 25 Dec 2018 23:34:37 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b58ee01e1e14619f5605acc98392403b42b5e7f188a8fd269f012c1baa18856`  
		Last Modified: Tue, 25 Dec 2018 23:36:06 GMT  
		Size: 137.3 MB (137346832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5d1145e42ee12141240c0195feeecae6379d3e7f4ad90ac80d135000464abe`  
		Last Modified: Tue, 25 Dec 2018 23:34:37 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
