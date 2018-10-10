## `openjdk:11-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:87366a4896b331c94044bf174892ed705f85b242ae650cbe15711a9c4ffd0f0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.726; amd64

### `openjdk:11-jdk-windowsservercore-1709` - windows version 10.0.16299.726; amd64

```console
$ docker pull openjdk@sha256:c575080fd845b0cb388c5b6cb3b58bcde91322c6bd46b26f23bc0612b5293bed
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3332950365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99c3c7176f517b9179d790b5dae8fa97f4e1137356bbc8a6377273bd770ec947`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 01 Oct 2018 22:02:14 GMT
RUN Install update 10.0.16299.726
# Wed, 10 Oct 2018 09:42:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:38:40 GMT
ENV JAVA_HOME=C:\openjdk-11
# Wed, 10 Oct 2018 10:39:32 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath
# Wed, 10 Oct 2018 10:39:33 GMT
ENV JAVA_VERSION=11
# Wed, 10 Oct 2018 10:39:34 GMT
ENV JAVA_URL=https://download.java.net/java/ga/jdk11/openjdk-11_windows-x64_bin.zip
# Wed, 10 Oct 2018 10:39:35 GMT
ENV JAVA_SHA256=fde3b28ca31b86a889c37528f17411cd0b9651beb6fa76cac89a223417910f4b
# Wed, 10 Oct 2018 10:41:58 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:JAVA_URL); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $env:JAVA_URL -OutFile 'openjdk.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_SHA256); 	if ((Get-FileHash openjdk.zip -Algorithm sha256).Hash -ne $env:JAVA_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	New-Item -ItemType Directory -Path C:\temp | Out-Null; 	Expand-Archive openjdk.zip -DestinationPath C:\temp; 	Move-Item -Path C:\temp\* -Destination $env:JAVA_HOME; 	Remove-Item C:\temp; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item openjdk.zip -Force; 		Write-Host 'Complete.'
# Wed, 10 Oct 2018 10:42:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd7a4737dfbb59b49c30480146e7f0a61842409755bd479b63004c5643d0ed3`  
		Last Modified: Mon, 08 Oct 2018 19:38:11 GMT  
		Size: 866.5 MB (866458210 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cf0d3e1d36b0cda001b50a29a3b2898c0f456696a4491b2d5536e4af41eed468`  
		Last Modified: Wed, 10 Oct 2018 10:08:52 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0341d61b107ab740c1bf6ae7bd058369784b6704262b98e41358253e5a14f960`  
		Last Modified: Wed, 10 Oct 2018 11:06:35 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e182a5912945e1aa6bed83b81f685d70bff2026c3a6790b1aa42ac6a627e65a2`  
		Last Modified: Wed, 10 Oct 2018 11:06:37 GMT  
		Size: 4.8 MB (4763829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4c525e4cf89a9b5113cdaca1e4f667b11f966a691f3894beed1b42cae8769c`  
		Last Modified: Wed, 10 Oct 2018 11:06:33 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724fc294a295a8cf7ee37c57b0335caf69444442a53e0bd2328f54d5b16aed89`  
		Last Modified: Wed, 10 Oct 2018 11:06:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6626f652f36c4406da453de858cf5ef06b822877d9c7ff229c543c09e7b510ec`  
		Last Modified: Wed, 10 Oct 2018 11:06:32 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a03f3b8d0cbbf7143dc45603bd76a0db3a4c63798e973a2f7df1ae55d1379fd`  
		Last Modified: Wed, 10 Oct 2018 11:06:56 GMT  
		Size: 187.4 MB (187420556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbeee20f95bac42fae33fa109f45f27ba2fe5c5ca26316bdd127a3174236b0f`  
		Last Modified: Wed, 10 Oct 2018 11:06:32 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
