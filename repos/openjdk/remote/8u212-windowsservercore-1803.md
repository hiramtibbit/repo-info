## `openjdk:8u212-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:f5e88f836cb60dc404cc3357a5001a1f0360472c7b4e23eeefc7855135556604
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `openjdk:8u212-windowsservercore-1803` - windows version 10.0.17134.766; amd64

```console
$ docker pull openjdk@sha256:5b45872831b1d53d6d0004db5e782605462f7e91ef2b216ff31f5f329768b61c
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2417492271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11266e35f6d6e5b82a0e0b8bff69921450944db78803077f36eceba02089356d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 12:50:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 15:24:30 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 22 May 2019 15:25:14 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 22 May 2019 15:25:15 GMT
ENV JAVA_VERSION=8u212
# Wed, 22 May 2019 15:25:17 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.212-1
# Wed, 22 May 2019 15:25:18 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.212-1.b04.ojdkbuild.windows.x86_64.zip
# Wed, 22 May 2019 15:25:20 GMT
ENV JAVA_OJDKBUILD_SHA256=a40d7ab150bb2c2b3ad19e388942c4fe47b92a89dd49c468e09ce9d8bc631934
# Wed, 22 May 2019 15:26:42 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:437e42e2c79862963e84efa4879b7522ff44416964747070df92412c08b9d147`  
		Last Modified: Wed, 22 May 2019 13:23:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fed5142a23462052dcdb716ece9c0d71848be7b6b38f59be31c25063f529574`  
		Last Modified: Wed, 22 May 2019 16:16:04 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e626acf9a2dd0e9437ca0899ca33b614982d52bc27a4dac2f0c109feef3dc3d6`  
		Last Modified: Wed, 22 May 2019 16:16:05 GMT  
		Size: 4.8 MB (4763816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e345812d30f986195fa0989437c10c31b194f32d3bb5af20a9f565e12f117d`  
		Last Modified: Wed, 22 May 2019 16:16:01 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a360808e6e88473c50ca4df180ce0e1bcadf8c8bd16575549c58cddc3f57a8c`  
		Last Modified: Wed, 22 May 2019 16:16:01 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f970a43cb7b7693ce5ac8422b629dda510c6bfa99372ea77b30873497ee3a49`  
		Last Modified: Wed, 22 May 2019 16:16:01 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2208c1764d9f69aa31cc00beac9adaaa7ec9bfb494a37164daa1df8f2f21d4ef`  
		Last Modified: Wed, 22 May 2019 16:16:01 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c92300b7beeef4efc8c3759ea2f2da2b3a1f4897e97d263282df30002d07c`  
		Last Modified: Wed, 22 May 2019 16:16:21 GMT  
		Size: 109.3 MB (109264502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
