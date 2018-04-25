## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:6de45d6e6c015a119748197886a4c6d4c9e2aee7fe8cb409b54b5d51302472d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2189; amd64

### `golang:1-nanoserver` - windows version 10.0.14393.2189; amd64

```console
$ docker pull golang@sha256:822e6ee3ce4380666415117a8a1bc84937b3cb6772f2a90eabbce56a4b7b7995
```

-	Docker Version: 17.06.2-ee-7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **539.0 MB (539047704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1927e4cbbc9489c8c87171b731a1dc7b9d138369d7bc0dacd9df83de93ae54b2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Fri, 06 Apr 2018 21:37:58 GMT
RUN Install update 10.0.14393.2189
# Wed, 11 Apr 2018 09:41:12 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 12 Apr 2018 09:31:25 GMT
ENV GOPATH=C:\gopath
# Wed, 25 Apr 2018 21:57:49 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 25 Apr 2018 21:57:50 GMT
ENV GOLANG_VERSION=1.10.1
# Wed, 25 Apr 2018 22:05:14 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '17f7664131202b469f4264161ff3cd0796e8398249d2b646bbe4990301afc678'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 25 Apr 2018 22:05:16 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:83eec61707e8c8a926a02da0ac7156cf6b64d3630672a6790004f10b87ae805b`  
		Last Modified: Fri, 06 Apr 2018 21:37:58 GMT  
		Size: 155.3 MB (155252511 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:033b580f09fb20812108124e4c4f15144c9b45cf48e9dbba6bc16956751cd2b6`  
		Last Modified: Wed, 25 Apr 2018 22:28:54 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69beb0009aaed4387e5b88cbd9f97096e65a91d2ce2154b678cac06b6093bb21`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c608949359d30a4a197028219cf8b297507d22d05729556616634795ff9a9d62`  
		Last Modified: Wed, 25 Apr 2018 22:28:59 GMT  
		Size: 5.0 MB (4978289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d800a4885af02980155f1d6b4a8e1156fcdec8a87c073a0bec455e19f3c19f16`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764971b63f126b5c31499454ee528ff5b5aef94358fd4eecefc16ecb757f995a`  
		Last Modified: Wed, 25 Apr 2018 22:36:37 GMT  
		Size: 126.1 MB (126121906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e548b23728a65d5df9ab329778f718af3191b0b02d0b234a6f9a6de3cb131027`  
		Last Modified: Wed, 25 Apr 2018 22:28:47 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
