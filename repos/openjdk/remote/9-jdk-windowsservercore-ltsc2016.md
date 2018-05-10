## `openjdk:9-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:0d22a6ed47e54ffdf9df061349e16a325b99a171865f5cf81a25fc7bc3aff9d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2248; amd64

### `openjdk:9-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2248; amd64

```console
$ docker pull openjdk@sha256:11a0093616dc360f2b608438537e336583395a1ca6e0bc4e0c555663a75b7366
```

-	Docker Version: 17.10.0-ee-preview-3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5666994300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92ebea92ca02ff09987e444c347ec50f0773838771c54174c0c9a8e7b6f62350`
-	Default Command: `["jshell"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Mon, 07 May 2018 18:12:28 GMT
RUN Install update 10.0.14393.2248
# Thu, 10 May 2018 09:39:25 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 10 May 2018 09:39:26 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Thu, 10 May 2018 09:41:25 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 10 May 2018 09:41:26 GMT
ENV JAVA_VERSION=9.0.4
# Thu, 10 May 2018 09:41:27 GMT
ENV JAVA_OJDKBUILD_VERSION=9.0.4-1
# Thu, 10 May 2018 09:41:28 GMT
ENV JAVA_OJDKBUILD_ZIP=java-9-openjdk-9.0.4-1.b11.ojdkbuild.windows.x86_64.zip
# Thu, 10 May 2018 09:41:29 GMT
ENV JAVA_OJDKBUILD_SHA256=1333ab5bccc20e9043f0593b001825cbfa141f0e0c850d877af6b8e2c990cb47
# Thu, 10 May 2018 09:50:35 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
# Thu, 10 May 2018 09:50:36 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ace98111594c5bc232640988045037489d2adc214b3a14e07a8a9e9d30442cef`  
		Last Modified: Mon, 07 May 2018 18:12:28 GMT  
		Size: 1.4 GB (1395367096 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3fef3bd83b7c0eb06ccae001ea0bfed47b7258d9a1c5d593913034b18f7fd8c0`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea1b42a6f17fabe336f5dd07d2975c7ad8c1dec5c0609d653246b0753edb093`  
		Last Modified: Thu, 10 May 2018 10:17:54 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e43d8b60d530872261d4de737352f6486980b268438d9160f0d231470af3fe21`  
		Last Modified: Thu, 10 May 2018 10:17:57 GMT  
		Size: 5.0 MB (5012784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c80bd6314d629134f93ac7e31dc572e6e1c59c6c0f688c880f422856b275b65`  
		Last Modified: Thu, 10 May 2018 10:17:55 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fbb4c50d5628fc1bdce879d4769497ced82ff6f85755e6aa1890244323b1b4`  
		Last Modified: Thu, 10 May 2018 10:17:52 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037b44a1c6e82aec5190bcc8560b178cec306428dda5e19140833646c0677d7b`  
		Last Modified: Thu, 10 May 2018 10:17:52 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631fe5789c02a912f3ddc5465ef6eb5c689654f9f616d2df2cc1ed1e6ff919c8`  
		Last Modified: Thu, 10 May 2018 10:17:51 GMT  
		Size: 1.2 KB (1172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b36d59dd984fb18d8543aacb38acfbb06b05b39fa86424a072026d80668d600`  
		Last Modified: Thu, 10 May 2018 10:18:16 GMT  
		Size: 196.6 MB (196620203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b482a16720600e69e8eaca45642ef8337f2a7033b722fba606b56df23cbfacf8`  
		Last Modified: Thu, 10 May 2018 10:17:51 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
