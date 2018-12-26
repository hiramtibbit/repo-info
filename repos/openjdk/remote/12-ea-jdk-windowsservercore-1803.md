## `openjdk:12-ea-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:c4fc1a84621c1fc085c771045879ac63b48df5a9564fed3a86a73add024030e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.469; amd64

### `openjdk:12-ea-jdk-windowsservercore-1803` - windows version 10.0.17134.469; amd64

```console
$ docker pull openjdk@sha256:6881e8f80eef4550eff006c7a40923d64ff09f4abef4866ed959f8a759a61253
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2440194351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82a3785510403f27e48b4f09a31b0c97ec5d5958a2bb26dda9680dd68fd62c42`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Thu, 06 Dec 2018 19:45:44 GMT
RUN Install update 10.0.17134.469
# Tue, 25 Dec 2018 18:18:15 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 25 Dec 2018 18:18:16 GMT
ENV JAVA_HOME=C:\openjdk-12
# Tue, 25 Dec 2018 18:19:10 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 26 Dec 2018 11:09:40 GMT
ENV JAVA_VERSION=12-ea+25
# Wed, 26 Dec 2018 11:09:42 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/25/GPL/openjdk-12-ea+25_windows-x64_bin.zip
# Wed, 26 Dec 2018 11:09:43 GMT
ENV JAVA_SHA256=a3c94a495ea402b6c752c5757dcd902ec497720d52f59cee756975615a0661c3
# Wed, 26 Dec 2018 11:12:04 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 26 Dec 2018 11:12:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4a716b198c71b782955b21f1eed303f89f487eaef823ebccdeb452b764512b3b`  
		Last Modified: Tue, 11 Dec 2018 22:06:40 GMT  
		Size: 583.9 MB (583898765 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:219a311071ee4293d1c43ed6fbbc267544771d491843ca5ff9c1a235c116c96d`  
		Last Modified: Tue, 25 Dec 2018 18:50:55 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e041b07d5705ead9d465304f6a88a043a8e59306e41db5b264a326f968bbbc70`  
		Last Modified: Tue, 25 Dec 2018 18:50:54 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484503c2bd858dba296ec81f5ca7ea4fe8c497502e92e94f0e56f6a181881d4d`  
		Last Modified: Tue, 25 Dec 2018 18:50:56 GMT  
		Size: 4.7 MB (4704156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e028df12475f30d864acfc7984367bd42bfcc2e3c2157872dba3675eee3d2ec6`  
		Last Modified: Wed, 26 Dec 2018 11:15:34 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0d0b424e03b65433347df5fdeca8c59b23e745ee2e98ff46053d722e4b4317e`  
		Last Modified: Wed, 26 Dec 2018 11:15:34 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aa59f1f9b3c8dc1e756d57735e1f696d6b619f6102939ce069a138917683a05`  
		Last Modified: Wed, 26 Dec 2018 11:15:34 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1e8daffb818db7de25e9185489f25b8b21d2a58c68d6c0d4f95060765bb7b6`  
		Last Modified: Wed, 26 Dec 2018 11:16:07 GMT  
		Size: 191.9 MB (191895933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd82f1ede91dfb304f7bd4945411ab8ac4779f16e594a21ad506b60b6a834f51`  
		Last Modified: Wed, 26 Dec 2018 11:15:34 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
