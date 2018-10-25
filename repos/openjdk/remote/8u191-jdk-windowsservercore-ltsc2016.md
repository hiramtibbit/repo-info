## `openjdk:8u191-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:4300145313f34030a42e138500b963d1c844d87cb709a2a968151b8902386395
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `openjdk:8u191-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull openjdk@sha256:8319a1374b9216bb30362acd531305f911cf244b554de7bd2432d17ce7c077be
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5713537007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c47ffc1532a7324fa02cc0cef03e8178f029e47c0d61c6db707ecf2e8172d62`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Wed, 10 Oct 2018 09:36:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Oct 2018 10:45:07 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 10 Oct 2018 10:46:28 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Thu, 25 Oct 2018 09:17:50 GMT
ENV JAVA_VERSION=8u191
# Thu, 25 Oct 2018 09:17:51 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Thu, 25 Oct 2018 09:17:52 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Thu, 25 Oct 2018 09:17:53 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Thu, 25 Oct 2018 09:20:11 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d41004b1d809eac4e77c97920984b278977d36627024ab085d0dd8ccc941ddeb`  
		Last Modified: Wed, 10 Oct 2018 10:08:02 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1915dd474f299f58e6e85bc8ac7f335e9f18b175a4829b4dd8db604fe56e79ff`  
		Last Modified: Wed, 10 Oct 2018 11:07:57 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532c03209e5c7a33b2f0e4463bd8b639cef417b5baf13c83b9ab5ebd34ce693d`  
		Last Modified: Wed, 10 Oct 2018 11:07:59 GMT  
		Size: 5.1 MB (5092274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a26eadcd369fe02566964ab5f3a0c99fcc6eb13d061c9c05028f30db9769295`  
		Last Modified: Thu, 25 Oct 2018 09:25:16 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8b7cbd1c7c5dbb86e987156dbf4f9bf72daec81b89b2dadc04b99a4ad9349e`  
		Last Modified: Thu, 25 Oct 2018 09:25:16 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6090cf64d386d6aec7c11fe772e07bca8358fcd1f60e0de49675c4ab161b476c`  
		Last Modified: Thu, 25 Oct 2018 09:25:16 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef8facaadf098bdc03fe1ac62ced857a14cd5496fbc9a7c0f887e450f192cef1`  
		Last Modified: Thu, 25 Oct 2018 09:25:16 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa87e6ed7624ac99f3507ef4fb72d068a9e154417e896e329a398dc91f390897`  
		Last Modified: Thu, 25 Oct 2018 09:27:19 GMT  
		Size: 111.3 MB (111326609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
