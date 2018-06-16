## `openjdk:8-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:a4898edaf3ab28edda4e8348eb9fd23931bdc015c7b4bc9f6083d0d0153ddba6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.492; amd64

### `openjdk:8-windowsservercore-1709` - windows version 10.0.16299.492; amd64

```console
$ docker pull openjdk@sha256:f8e94e66e91f904fe2efa0f851316aa384dd3e21caf3f94bdfeecfae750effa5
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3213373688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57fb8a96a61748bae056c05f237a88cb6fa41d7975d0aa514fc7d5693dcfd501`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 11 Jun 2018 20:38:48 GMT
RUN Install update 10.0.16299.492
# Sat, 16 Jun 2018 10:25:10 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Sat, 16 Jun 2018 10:25:11 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Sat, 16 Jun 2018 10:27:13 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 16 Jun 2018 10:37:46 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 10:37:47 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Sat, 16 Jun 2018 10:37:47 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Sat, 16 Jun 2018 10:37:48 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Sat, 16 Jun 2018 10:40:17 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3b9c63e313c8b374d5767c602fd6f2b947a3f1df9a8f8c5fcecb2fa6b1cfa968`  
		Last Modified: Wed, 13 Jun 2018 01:11:53 GMT  
		Size: 823.6 MB (823576248 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c64dfe6152b178e35770ab15c53bfcc70f8dd47d8a0551e325ccfa665416b738`  
		Last Modified: Sat, 16 Jun 2018 10:43:33 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432e0357edec73d47a9a9f0d45df806096b0d2124cc3495b64f0c8853e397da8`  
		Last Modified: Sat, 16 Jun 2018 10:43:33 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2fd923a3d34ae42ef6116f39e4e034e6b2e37b054bbc301d44ed5bb0f66edf`  
		Last Modified: Sat, 16 Jun 2018 10:43:34 GMT  
		Size: 4.7 MB (4704668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d305e6ccbfe1bc9cdf82dae26cbf69a47a11c4f4430ceec09219bc643aecd85f`  
		Last Modified: Sat, 16 Jun 2018 10:46:56 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74643993b3b0c12f3bba61b3034fb85bce330c5d9d0e0463c4462885d6b911ff`  
		Last Modified: Sat, 16 Jun 2018 10:46:56 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beb402ad72c8d9f93dd258ec1a20bd846eb2541018d751b45d3a32cd76a84b13`  
		Last Modified: Sat, 16 Jun 2018 10:46:56 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9910efd3eda486aaaf5e0875bd3b45aa3ae58eb465c906e85aa8bd187aa661af`  
		Last Modified: Sat, 16 Jun 2018 10:46:56 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a61447f0e5e15fc8f4bffea5e7887e0d92bbb1d0a61b9741cbdec77361d5b7dc`  
		Last Modified: Sat, 16 Jun 2018 10:47:10 GMT  
		Size: 110.8 MB (110785088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
