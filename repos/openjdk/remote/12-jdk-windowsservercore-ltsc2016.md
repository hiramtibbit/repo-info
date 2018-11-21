## `openjdk:12-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:3c908cf9d68ec8a557d8c7a05956dfb6ec0bbe8c76c3b4a41137d9c396e684ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2608; amd64

### `openjdk:12-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2608; amd64

```console
$ docker pull openjdk@sha256:fb30a5f778a5431c9bc1a4f5493f8c40ee5287599041d93cdb099aea321f77c4
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5834775851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc28245583bbe554adb15f04dc23fd10ae739a5341a0094b54d946baceed1a4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 12 Nov 2018 20:18:49 GMT
RUN Install update 10.0.14393.2608
# Thu, 15 Nov 2018 10:44:14 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 21 Nov 2018 10:17:31 GMT
ENV JAVA_HOME=C:\openjdk-12
# Wed, 21 Nov 2018 10:19:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 21 Nov 2018 10:19:08 GMT
ENV JAVA_VERSION=12-ea+20
# Wed, 21 Nov 2018 10:19:09 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/20/GPL/openjdk-12-ea+20_windows-x64_bin.zip
# Wed, 21 Nov 2018 10:19:10 GMT
ENV JAVA_SHA256=42f843635a0166951bd96a85d982ead987b6cfc07ba18b7f6830eb5a6c1df5c9
# Wed, 21 Nov 2018 10:21:39 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 21 Nov 2018 10:21:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:900b07d4317229a6e17265974aa1dac7af538380b34f978cbe221403c279c09a`  
		Last Modified: Mon, 12 Nov 2018 20:18:49 GMT  
		Size: 1.6 GB (1563935107 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:87926998c696620346cdc0a9a6b8363985c9f433be9759201c3226e8cdf020c1`  
		Last Modified: Thu, 15 Nov 2018 11:02:41 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a73dd485a587939590e9229c43eb1d7f486dddef485831ea8b810e1b770bd24`  
		Last Modified: Wed, 21 Nov 2018 10:55:34 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9185aff84009eb869fc2300040d79fe8ef8be56a519bc4f52cc943a234e429`  
		Last Modified: Wed, 21 Nov 2018 10:55:36 GMT  
		Size: 5.2 MB (5204448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e33e2ae1c1aa6b1a068b27ee612aa7e7be7105c4357eba2735f35108c285550`  
		Last Modified: Wed, 21 Nov 2018 10:55:31 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f576022ed4fe822fa50a5f91306c11bb1aa6c0d481e3ad932e5e0e675bbbfbf1`  
		Last Modified: Wed, 21 Nov 2018 10:55:31 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab63304c89e6068ca77bb29c6cb0b3fb8a1723bd40b407f110a20f83f6c82fb`  
		Last Modified: Wed, 21 Nov 2018 10:55:31 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba5c4b8a241cff8888974904319b437a2e5f129882c07e8e2c31ac159dd79a6`  
		Last Modified: Wed, 21 Nov 2018 10:55:56 GMT  
		Size: 195.6 MB (195643218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1e0f4f75d9f3484c7d4dc2431ec4d7f9cda009c613a7fc4ec2af9767ff7909`  
		Last Modified: Wed, 21 Nov 2018 10:55:31 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
