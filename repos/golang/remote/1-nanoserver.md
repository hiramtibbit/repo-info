## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:9d0774394827a63ce30822be80c184b54c8124689709ce9bc87f44479ecd7e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `golang:1-nanoserver` - windows version 10.0.14393.2007; amd64

```console
$ docker pull golang@sha256:debb15737b9725501e9757e490fad2aaa36227fdd188e3139da192c52de0f3d8
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **511.5 MB (511518024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be5e141748fb7c61cc06c78d86479ca045ba32fa9a1652ab7fdef1c64738e4c`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:02 GMT
RUN Install update 10.0.14393.2007
# Fri, 05 Jan 2018 10:05:51 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Mon, 08 Jan 2018 18:26:16 GMT
ENV GOPATH=C:\gopath
# Mon, 08 Jan 2018 18:27:21 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 08 Feb 2018 03:49:16 GMT
ENV GOLANG_VERSION=1.9.4
# Thu, 08 Feb 2018 03:53:23 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '880e011ac6f4a509308a62ec6d963dd9d561d0cdc705e93d81c750d7f1c696f4'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 08 Feb 2018 03:53:25 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:764aee428c28f0935a6ded2a2730509373e1357648795b609b911dd46aa06257`  
		Last Modified: Thu, 04 Jan 2018 20:07:02 GMT  
		Size: 150.4 MB (150357748 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:954c60e18caf74c1c34ea38a04c2d8c7a2e4e2ae3658951596ace699a3894207`  
		Last Modified: Fri, 05 Jan 2018 10:14:14 GMT  
		Size: 922.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86e7fa28644d6145ab3a303bf625643f98fd573f0c038ccd2aed1d1a7de6a9a`  
		Last Modified: Mon, 08 Jan 2018 19:55:41 GMT  
		Size: 942.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c3e186accae51f0eeb18ba54d31934fbb1db4dc4adcae8b4bbc186ce83d476f`  
		Last Modified: Mon, 08 Jan 2018 19:55:43 GMT  
		Size: 856.7 KB (856654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c025684910c6c7d8865c5bc9e5da530836246063413e58f47f31e69fc331c9`  
		Last Modified: Thu, 08 Feb 2018 04:39:09 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16609adf59b2e8733db4d8f344b4ee70b79c42d11440c5bcd2a58831764fd469`  
		Last Modified: Thu, 08 Feb 2018 04:40:26 GMT  
		Size: 107.6 MB (107608679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0f58af32395c350479be56e1ee38fa1c872cf2962d06910329b5cf0e42e3a40`  
		Last Modified: Thu, 08 Feb 2018 04:39:09 GMT  
		Size: 1.1 KB (1134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
