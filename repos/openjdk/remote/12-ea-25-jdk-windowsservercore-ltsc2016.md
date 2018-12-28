## `openjdk:12-ea-25-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:d308d8de140f211f8821cf098190c27d3e7def3bc884fc58c30d1be8ccd3e182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2665; amd64

### `openjdk:12-ea-25-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2665; amd64

```console
$ docker pull openjdk@sha256:76fc1f4b4e3f63f4b2a9b6d6b3126e3fc7157f20d644ab3eca90b45ac62f81ad
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5841300750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a0a19f03ebf2aee97dcdf789beeaf8e66e1d207a90e2be8ff051265812e2ba4`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Mon, 10 Dec 2018 22:22:29 GMT
RUN Install update 10.0.14393.2665
# Tue, 25 Dec 2018 17:17:56 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:08:36 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 25 Dec 2018 18:10:15 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 26 Dec 2018 10:54:27 GMT
ENV JAVA_VERSION=12-ea+25
# Wed, 26 Dec 2018 10:54:28 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/25/GPL/openjdk-12-ea+25_windows-x64_bin.zip
# Wed, 26 Dec 2018 10:54:29 GMT
ENV JAVA_SHA256=a3c94a495ea402b6c752c5757dcd902ec497720d52f59cee756975615a0661c3
# Fri, 28 Dec 2018 10:18:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Fri, 28 Dec 2018 10:18:45 GMT
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
	-	`sha256:88c3d7be4c2760e750ccd244f2cd79c32fc9e1534640817aad858156500c4e0a`  
		Last Modified: Tue, 25 Dec 2018 17:51:28 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bfff8d5bb5e4de0bf1a82679e5ba46ee4d0d5cb5793e5088fe2df492d5e7ae`  
		Last Modified: Tue, 25 Dec 2018 18:47:35 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b4b45920298a8651f9197e3244a96b5f5406b2307c15bc66e351ab0819df1e`  
		Last Modified: Tue, 25 Dec 2018 18:47:37 GMT  
		Size: 5.2 MB (5234964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206827ecaf37bf82b9c9ceef7818be358beec0b7ff3d2ad92302e3ae10f1c468`  
		Last Modified: Fri, 28 Dec 2018 10:20:30 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6f0a22209e8ed0f2a56315e81c0d3227354d52ae739a1bda5c01524355e929`  
		Last Modified: Fri, 28 Dec 2018 10:20:30 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a9bbdeb007f7de05ea7bea3a44f057a346c54418074f9a7af3310db118f01d`  
		Last Modified: Fri, 28 Dec 2018 10:20:30 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a8a87ef76271eedff2bc5741127f153769b437b963a967491df265c17ba9b3`  
		Last Modified: Fri, 28 Dec 2018 10:21:30 GMT  
		Size: 201.3 MB (201331381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5469ec481827189f64d9e132c60000be6f1fff5137004c2a97e7320ba56150c0`  
		Last Modified: Fri, 28 Dec 2018 10:20:30 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
