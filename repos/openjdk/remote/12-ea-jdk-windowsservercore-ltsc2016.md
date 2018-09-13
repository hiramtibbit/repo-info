## `openjdk:12-ea-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:0d628cee2e8a64c59bcb01bc3bf1b3516d08df24600864aec92ef3d136394a21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2485; amd64

### `openjdk:12-ea-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2485; amd64

```console
$ docker pull openjdk@sha256:cbe293c41ce3bb8695ce5d19e4fd2532fa20a201e4b78b4c06f910bac44b58d9
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5782938182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dce3f2ca7c3372e4b6046c3703558ce85cefaabc9288939b21885d4ebcfc2d37`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 11 Sep 2018 16:53:50 GMT
RUN Install update 10.0.14393.2485
# Thu, 13 Sep 2018 09:42:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:42:25 GMT
ENV JAVA_HOME=C:\jdk-12
# Thu, 13 Sep 2018 09:44:05 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Thu, 13 Sep 2018 09:44:06 GMT
ENV JAVA_VERSION=12-ea+10
# Thu, 13 Sep 2018 09:44:07 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/10/GPL/openjdk-12-ea+10_windows-x64_bin.zip
# Thu, 13 Sep 2018 09:44:08 GMT
ENV JAVA_SHA256=ad3954511fda449a1840ecccfabed877581204eb1f64decd69614af1831cf2c4
# Thu, 13 Sep 2018 09:47:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 13 Sep 2018 09:47:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6e046b8e194c642cfc4d7dcaa12ec2f9359e1f54dbc7088ee9ca188416d5c553`  
		Last Modified: Tue, 11 Sep 2018 16:53:50 GMT  
		Size: 1.5 GB (1515870209 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7aa2ad8eff720622c1b1f25bf31d2c32b588766208c093caef00e8b31961b74e`  
		Last Modified: Thu, 13 Sep 2018 10:24:13 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03d41013d53a6436cb43e00e548dbba344be745186756d51785d7d2112f893dc`  
		Last Modified: Thu, 13 Sep 2018 10:24:12 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf3b5f90ddee927318cc694f2e987e9a4be7bff110d2728d6b461d343523b5f`  
		Last Modified: Thu, 13 Sep 2018 10:24:15 GMT  
		Size: 5.1 MB (5091320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff7eadc9979c657924c29e97aa55b29a40eb3d858a4bad54ef3cfa6363d741d`  
		Last Modified: Thu, 13 Sep 2018 10:24:09 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f031025179caf743e0ca18a90ad1c775221414571cd3811b15dcc97bcf33228d`  
		Last Modified: Thu, 13 Sep 2018 10:24:10 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5672ffd881a59f357a786a058bc9f428259b4f406a2dc058de8c6a22269394e`  
		Last Modified: Thu, 13 Sep 2018 10:24:09 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437815ea92a3d16ef3d22d9a0500469e39dce123d6a0c4ab4ded1532f3872bcc`  
		Last Modified: Thu, 13 Sep 2018 10:24:39 GMT  
		Size: 192.0 MB (191983580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f3efe6e37bfea4980ed0ebb739d89462340736ff4d1c82e92f97b41c65396c`  
		Last Modified: Thu, 13 Sep 2018 10:24:09 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
