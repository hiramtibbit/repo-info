## `golang:nanoserver-sac2016`

```console
$ docker pull golang@sha256:994a3c60ddce9a91695adb68d1e48ab29abe94675f0f2ea83903a10b51056ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `golang:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull golang@sha256:5d27dba1d7050e62affa2ce09c096c25972ff67ce0e83603a4b6c74adeca984a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **576.9 MB (576877943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26cf1c35474a45fafd20602dc627d41dab23f756e1eb6cb052214679e8c75900`
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
# Sat, 06 Apr 2019 10:14:27 GMT
ENV GOLANG_VERSION=1.12.2
# Sat, 06 Apr 2019 10:19:51 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = '4197135ef2221c9d7772063e1bdcd3f51de37811b19a678db87d7fc735a218f9'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Sat, 06 Apr 2019 10:19:53 GMT
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
	-	`sha256:6e59125319454f550995f6987e7f3ac2594c6be808c396a82169335cb4dd8e23`  
		Last Modified: Sat, 06 Apr 2019 10:55:43 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20f0da17de5f135108db70eadfcbb42c5b72efc7bb80fd6ffe67c931c59f879`  
		Last Modified: Sat, 06 Apr 2019 10:57:10 GMT  
		Size: 140.5 MB (140533671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7516b6c4cab7536e4f1a54b5681f070fc1b1e61183a1ee034457ddb1c8a24f1c`  
		Last Modified: Sat, 06 Apr 2019 10:55:43 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
