## `openjdk:8u201-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:3b61ec61fc1f9784c323febd8e12e38df1eab4fc56c7d65669eda8d4dc26eade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.1029; amd64

### `openjdk:8u201-windowsservercore-1709` - windows version 10.0.16299.1029; amd64

```console
$ docker pull openjdk@sha256:5115754ec66d69c57c4a55b042089839b9be4cc086ff96c6a207a5abb4b54e8a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3326654796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba12afdf5afccbe58b836e6aead3ac3cae13e39ece233f947d2e340a28b02637`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Sat, 16 Mar 2019 09:35:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 10:52:56 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 28 Mar 2019 10:53:48 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 28 Mar 2019 10:53:49 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 10:53:51 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.201-1
# Thu, 28 Mar 2019 10:53:53 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.201-1.b09.ojdkbuild.windows.x86_64.zip
# Thu, 28 Mar 2019 10:53:54 GMT
ENV JAVA_OJDKBUILD_SHA256=d74066dc7d6e017388b1eeeb4f4cc0af20337aa6eea8e3a818017ae8d15b988a
# Thu, 28 Mar 2019 10:55:41 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7f4a716683dc03db3521ed040924c24ea9bd17c7f134c09bf22e33f6af33ade8`  
		Last Modified: Mon, 11 Mar 2019 21:13:17 GMT  
		Size: 936.6 MB (936551125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:81856e9377a060d58cb8798fbc456fc8414158afec682bdd098149edc0a7d1fc`  
		Last Modified: Sat, 16 Mar 2019 10:41:06 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f4bdf443e6bd630381cc22499b99921822ed81d02cf239fb8f6b4b80d713f1a`  
		Last Modified: Thu, 28 Mar 2019 11:23:17 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b9797fc6ef93e73deed58e3f6a4a4b1b9fa0fa517f533bcc6bd4581ce0f30cf`  
		Last Modified: Thu, 28 Mar 2019 11:23:19 GMT  
		Size: 4.8 MB (4794960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b14c2c6cc9e2714083c9d7224695d02ee64ad2d49092070350d327fb7c14a95`  
		Last Modified: Thu, 28 Mar 2019 11:23:15 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2697e0c5d9805e3acc2ee6b1059c7b991d910b3a85868367104d6b4703e4e8a`  
		Last Modified: Thu, 28 Mar 2019 11:23:15 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8528e29f4b29981f7648bbaba2ef25f331046ef3ec709bc62e07e611cde557d8`  
		Last Modified: Thu, 28 Mar 2019 11:23:15 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412ee3cdb96126464cbb16a9a00c6855f305ad9e52c4dcb628868a4f3738b3d3`  
		Last Modified: Thu, 28 Mar 2019 11:23:15 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018efe9f1b6651ef16b650a1eb52ce724b280616a4e0d2b1c9773713237ff3cc`  
		Last Modified: Thu, 28 Mar 2019 11:23:56 GMT  
		Size: 111.0 MB (111000907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
