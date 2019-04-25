## `openjdk:8u212-windowsservercore-1809`

```console
$ docker pull openjdk@sha256:425ee089b9e5d162a376633a2c096d6c956dfbafb4821e966db6cae7639f6c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.437; amd64

### `openjdk:8u212-windowsservercore-1809` - windows version 10.0.17763.437; amd64

```console
$ docker pull openjdk@sha256:59a0177a537617a71eef0bfc355d164753a72ea3b7b4a8f4bd11b183422d542f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2087470125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cada7a047b2378c15416272bf9c19679f65f32b36fd2005925d53ac073819e4`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Wed, 03 Apr 2019 20:53:33 GMT
RUN Install update 1809-amd64
# Thu, 11 Apr 2019 23:07:27 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 12 Apr 2019 01:09:15 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 12 Apr 2019 01:40:07 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 25 Apr 2019 09:48:36 GMT
ENV JAVA_VERSION=8u212
# Thu, 25 Apr 2019 09:48:38 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Thu, 25 Apr 2019 09:48:39 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Thu, 25 Apr 2019 09:48:40 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Thu, 25 Apr 2019 09:50:02 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0e787b79aad1a2bfd8fbef887083298fcd314650de9e7ca884cdf0897e874b63`  
		Last Modified: Tue, 09 Apr 2019 17:43:46 GMT  
		Size: 439.2 MB (439177903 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:77e3f6e069cdb88fdad1008b3dd2aa59bea5669bcd1b93c79f07b6f6dc9662de`  
		Last Modified: Fri, 12 Apr 2019 00:04:43 GMT  
		Size: 1.2 KB (1220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d5b2dd28acb9f0bc26b10ba7e668caeae093e3cdb6deaa9214993be0c2044a1`  
		Last Modified: Fri, 12 Apr 2019 01:59:32 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199f619aea7e26cdeea9a70a82964cfee407b41ba9f77e721dbe6a8b2ae9c0ef`  
		Last Modified: Fri, 12 Apr 2019 01:59:33 GMT  
		Size: 4.3 MB (4340593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d9713f9483f6b18e729742459e42bed1be8219ec4ecb675088971825eabb167`  
		Last Modified: Thu, 25 Apr 2019 09:53:04 GMT  
		Size: 1.2 KB (1218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fedb40387ff3ca9ad5f09de58790975ed5c2dd1ba66f43634c321d684ffafb5d`  
		Last Modified: Thu, 25 Apr 2019 09:53:04 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b4f70461a57880393ae444746826b4e33c93674d74de5271e8be4f85aa4d77d`  
		Last Modified: Thu, 25 Apr 2019 09:53:04 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7803a91b5178a794e0475e69bf36ac5de409adb827ff4e8cbf087b64b88efb51`  
		Last Modified: Thu, 25 Apr 2019 09:53:04 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcf62be1169eb56f466544e0a5a540232d48687d6ad37f9507f83923ab95eef`  
		Last Modified: Thu, 25 Apr 2019 09:53:26 GMT  
		Size: 109.3 MB (109259035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
