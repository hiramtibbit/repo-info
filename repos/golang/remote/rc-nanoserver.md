## `golang:rc-nanoserver`

```console
$ docker pull golang@sha256:101823be4d1ee9d5b634f280ad285b40eeb018f1e336be077e9a61ac5758400c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `golang:rc-nanoserver` - windows version 10.0.14393.2007; amd64

```console
$ docker pull golang@sha256:f5fcba3c104789dd01192b5d04acc3716ca33ec9c28f95b307e7c0c46a06739d
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.3 MB (532259787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da3aa0f5d93dc997265bf4c62dd1fd336d4d2b5b08eae1b1aa3a4f75fa07f38`
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
# Thu, 08 Feb 2018 03:34:21 GMT
ENV GOLANG_VERSION=1.10rc2
# Thu, 08 Feb 2018 03:39:15 GMT
RUN $url = ('https://golang.org/dl/go{0}.windows-amd64.zip' -f $env:GOLANG_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'go.zip'; 		$sha256 = 'fc0160911005b725e7f5234232a27f317b50832e3eb78382a3475ec3cac5baee'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $sha256); 	if ((Get-FileHash go.zip -Algorithm sha256).Hash -ne $sha256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive go.zip -DestinationPath C:\; 		Write-Host 'Verifying install ("go version") ...'; 	go version; 		Write-Host 'Removing ...'; 	Remove-Item go.zip -Force; 		Write-Host 'Complete.';
# Thu, 08 Feb 2018 03:39:17 GMT
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
	-	`sha256:b39094842addc713394c474d3fb761a91617deea3f8fcd4d78c4d5d4446ce4d1`  
		Last Modified: Thu, 08 Feb 2018 04:34:16 GMT  
		Size: 953.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e235e187647b41cbd0ca1124f0ab9b7c9aa3c7b6aca54b0a3b4ca0d8bea96164`  
		Last Modified: Thu, 08 Feb 2018 04:35:41 GMT  
		Size: 128.4 MB (128350415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207972fe451986fb1dde8c727ddca9445492d3b40a16196527aa57001d6650cf`  
		Last Modified: Thu, 08 Feb 2018 04:34:17 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
