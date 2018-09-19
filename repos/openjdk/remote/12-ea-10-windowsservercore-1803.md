## `openjdk:12-ea-10-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:d72c369b3554b3d8a6b67f4f9accf090b42ed57dd2636c35692a080cf398b7a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.285; amd64

### `openjdk:12-ea-10-windowsservercore-1803` - windows version 10.0.17134.285; amd64

```console
$ docker pull openjdk@sha256:99e30ddaa3573a9b95627b3cd6b0ceb3e927d5b516be190d67c23afa90a753f2
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2394321385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69bcc554f0e84db5dc9273c63acf9a9cf74d48e50c6e18d41199ee611be8c08c`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Sun, 09 Sep 2018 17:20:44 GMT
RUN Install update 10.0.17134.285
# Thu, 13 Sep 2018 09:50:54 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 13 Sep 2018 09:50:55 GMT
ENV JAVA_HOME=C:\jdk-12
# Thu, 13 Sep 2018 09:52:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Thu, 13 Sep 2018 09:52:08 GMT
ENV JAVA_VERSION=12-ea+10
# Thu, 13 Sep 2018 09:52:09 GMT
ENV JAVA_URL=https://download.java.net/java/early_access/jdk12/10/GPL/openjdk-12-ea+10_windows-x64_bin.zip
# Thu, 13 Sep 2018 09:52:10 GMT
ENV JAVA_SHA256=ad3954511fda449a1840ecccfabed877581204eb1f64decd69614af1831cf2c4
# Thu, 13 Sep 2018 09:54:05 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive openjdk.zip -DestinationPath C:\; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Thu, 13 Sep 2018 09:54:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:9f036448990c273bb1accf8d436799639bbb644326ae47f30fe4faed21c8d8d9`  
		Last Modified: Tue, 11 Sep 2018 17:11:59 GMT  
		Size: 547.2 MB (547225773 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:499c5d8410bcb30d8e576aa1248844529b2af7aff7307a4b79f366790c87756f`  
		Last Modified: Thu, 13 Sep 2018 10:26:08 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a707f51d0c866dc051de3d98f35b0059daf96c55f64e7813dcacc2ef54a4474d`  
		Last Modified: Thu, 13 Sep 2018 10:26:08 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f3fe0d22db23f29670f1ef789a4799b1ebac94bc42ff79abfab3449ac0c92c`  
		Last Modified: Thu, 13 Sep 2018 10:26:09 GMT  
		Size: 4.7 MB (4653887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584d4de3b33c58bdf90f5c6bf5c925f41adde4cebcd6997bad7ea4ff7347bafa`  
		Last Modified: Thu, 13 Sep 2018 10:26:05 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d668d4bc977d983af97ee2f3360dc0a16e67c75a9925ba74f6e7211ce0ce77b1`  
		Last Modified: Thu, 13 Sep 2018 10:26:05 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd528d3b8fecbfb6a8fffd65cdacb38564305488fa18ca0e867ca5cc856f1a16`  
		Last Modified: Thu, 13 Sep 2018 10:26:05 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea6fc525f3040661185abec94d4140e485e2942dbf3a4aeb012a492b167fe08`  
		Last Modified: Thu, 13 Sep 2018 10:26:27 GMT  
		Size: 182.7 MB (182746279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:423d2117a5081ec4ecdd4473786da6879ba4b0e4b7a11ff5853c5d9ce7cfa6e6`  
		Last Modified: Thu, 13 Sep 2018 10:26:04 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
