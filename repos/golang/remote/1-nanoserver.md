## `golang:1-nanoserver`

```console
$ docker pull golang@sha256:83e3198df56647089195fba4f073e224399dfd6994f19f2c6be1bedc5a00026a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2312; amd64

### `golang:1-nanoserver` - windows version 10.0.14393.2312; amd64

```console
$ docker pull golang@sha256:93d18abafc1438f40f10cdff2c527bd020d67e1bc6dbad0f13018953866bdde9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.1 MB (555058639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc8f51a6da1a807779795a37ec25aab3d676f248fa51fa878f086a87696fc1f`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Wed, 13 Jun 2018 00:36:03 GMT
RUN Install update 10.0.14393.2312
# Tue, 03 Jul 2018 00:41:11 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 03 Jul 2018 00:41:12 GMT
ENV GOPATH=C:\gopath
# Tue, 03 Jul 2018 00:41:54 GMT
RUN $newPath = ('{0}\bin;C:\go\bin;{1}' -f $env:GOPATH, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Tue, 03 Jul 2018 00:58:49 GMT
ENV GOLANG_VERSION=1.10.3
# Tue, 03 Jul 2018 01:03:50 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'a3f19d4fc0f4b45836b349503e347e64e31ab830dedac2fc9c390836d4418edb'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Tue, 03 Jul 2018 01:03:52 GMT
WORKDIR C:\gopath
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7a598ed389ee13dc16cb56bd512d2eecc9597d79797803ef538a02b1e12351f`  
		Last Modified: Wed, 13 Jun 2018 00:36:03 GMT  
		Size: 165.7 MB (165749131 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3b6d1a1bf3243ae76116ec6df1f57dd3b3ada11aacf7e7bfcde343010a955a70`  
		Last Modified: Tue, 03 Jul 2018 01:24:09 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd20b8842cf41b8e332de31770d69029374300cfe278b0d40a519a000c10763e`  
		Last Modified: Tue, 03 Jul 2018 01:24:07 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d9e53fa417904b7f3f9f960c9bfa19456a67bb67e7a4db7034859fe30c64d9a`  
		Last Modified: Tue, 03 Jul 2018 01:24:09 GMT  
		Size: 925.2 KB (925154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a641b6beaca21d7f6ddcea880cf374adeb32a13dcd87f620dd30557e866d7de`  
		Last Modified: Tue, 03 Jul 2018 01:29:02 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bc54f7a67168415c6efe8b61fde27301b39f70e3addb2afd20f77456288ce29`  
		Last Modified: Tue, 03 Jul 2018 01:30:08 GMT  
		Size: 135.7 MB (135689348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156bf108ac32710722db8965594f01e248661ce3731b4d179049d7841f428286`  
		Last Modified: Tue, 03 Jul 2018 01:29:01 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
