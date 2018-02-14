## `golang:1-nanoserver-sac2016`

```console
$ docker pull golang@sha256:7fce97bac46a6c8300a679747e3f7f4c120354db2af6649cc159f606e4337522
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2068; amd64

### `golang:1-nanoserver-sac2016` - windows version 10.0.14393.2068; amd64

```console
$ docker pull golang@sha256:8ce9e0a2ccc40516fa7c082d630a4fd3adfebfcfa8bb0e112b3b9d7bf529388a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **514.0 MB (513970783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c23238fee11e7c6d449e7f6352f5f0b0568fe1dc3d4eb1d222dfefeeba14a0`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:43:23 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:41:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 03:41:02 GMT
ENV GOPATH=C:\gopath
# Wed, 14 Feb 2018 03:42:09 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 14 Feb 2018 04:06:10 GMT
ENV GOLANG_VERSION=1.9.4
# Wed, 14 Feb 2018 04:10:07 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '880e011ac6f4a509308a62ec6d963dd9d561d0cdc705e93d81c750d7f1c696f4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 04:10:10 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cb1aafb7147372cc64faa070b94a893b8cd2e3de3a0e8001dc225c627d991c58`  
		Last Modified: Tue, 13 Feb 2018 19:43:23 GMT  
		Size: 152.8 MB (152802641 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:f0989bc431af6e98554c888dbe8a07881dbcb304436056a928c065a30bab3228`  
		Last Modified: Wed, 14 Feb 2018 04:47:49 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a10e240a0d9b03482aed491380671d57859198eafbda8110de185c471f74225`  
		Last Modified: Wed, 14 Feb 2018 04:47:46 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e65d31c52b391c008aa72447522ba44cfe7e7598eaf2381134c8372d9307ce2`  
		Last Modified: Wed, 14 Feb 2018 04:47:48 GMT  
		Size: 850.9 KB (850901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07305d7e8fb7b5ec7966191a84b6641c219f92c79ae2bbe88e4b6a9c78d31033`  
		Last Modified: Wed, 14 Feb 2018 04:52:44 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e12a7355f270126ffe77adf620d03cf8802b2bb14f5e5740ab74da9d584e18b`  
		Last Modified: Wed, 14 Feb 2018 04:53:55 GMT  
		Size: 107.6 MB (107622253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:609028fa9f3329fbdd53529695247c3f255ba4f691da2cb9caef0584baf04385`  
		Last Modified: Wed, 14 Feb 2018 04:52:44 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
