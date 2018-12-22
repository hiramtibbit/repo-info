## `openjdk:12-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:f4d4cb8cfcacf6a69c96114127a0d3423ae6b2ee5c6f1b8268cba3ee80ee69b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64

### `openjdk:12-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2665; amd64

```console
$ docker pull openjdk@sha256:f7bbd1009e86b449ada6166506c28ab26e060cf08e2392e278cef412e992cd7f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5836710281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef80e45d6a049a05cac2b8b73fe869d52d30d44b522192e9a3a2a4a17b251eb8`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Fri, 14 Dec 2018 10:44:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 22 Dec 2018 10:16:26 GMT
ENV JAVA_HOME=C:\openjdk-12
# Sat, 22 Dec 2018 10:18:03 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Sat, 22 Dec 2018 10:18:04 GMT
ENV JAVA_VERSION=12-ea+24
# Sat, 22 Dec 2018 10:18:05 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/24/GPL/openjdk-12-ea+24_windows-x64_bin.zip
# Sat, 22 Dec 2018 10:18:06 GMT
ENV JAVA_SHA256=4ecd476eca44cfc061769ee0ded86fe35e5ab11caedc930112badab4ce9bfcc2
# Sat, 22 Dec 2018 10:20:37 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Sat, 22 Dec 2018 10:20:39 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bf261bf8d7bc7faa62a55474c337e0c2bf6e7d24df25e7737fa97ace46a2cd9a`  
		Last Modified: Mon, 10 Dec 2018 22:22:29 GMT  
		Size: 1.6 GB (1564741272 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c9346499d56b89267b8f21f1328b59d8fe902493eca87b656cb4d1284a207c91`  
		Last Modified: Fri, 14 Dec 2018 11:43:34 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f417b0d19543382a87235482d367c6050395c23bf3a78df89163e92ff15dc8e9`  
		Last Modified: Sat, 22 Dec 2018 10:48:40 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65cdcba8ef80a06a0fbfb2ba8991104354bfc9811d4e0db9edfdf134d3e5d4fe`  
		Last Modified: Sat, 22 Dec 2018 10:48:42 GMT  
		Size: 5.2 MB (5226264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afcb0f123a0ae670418fd60ec16d8db7ee2397ee61a3b2b7867868c3b828786`  
		Last Modified: Sat, 22 Dec 2018 10:48:38 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10a2557c2072ebc44e2be1aa66786c4b5c79f4204e85e833106c4f913009f72`  
		Last Modified: Sat, 22 Dec 2018 10:48:38 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb5e05e96a7dd28a34ce486e7df04aa92e6e69da231c153e34386a68e7e2937`  
		Last Modified: Sat, 22 Dec 2018 10:48:38 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83a30c4040e8833f9895c078081e8648995ddbd8ecf66808d803642fc2409bc`  
		Last Modified: Sat, 22 Dec 2018 10:49:02 GMT  
		Size: 196.7 MB (196749629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b019e98d332835c001521d2d47990025ea3d680ea6a3d99dc1e85de4a8033d61`  
		Last Modified: Sat, 22 Dec 2018 10:48:38 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
