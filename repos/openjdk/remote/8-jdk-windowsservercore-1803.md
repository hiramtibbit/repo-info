## `openjdk:8-jdk-windowsservercore-1803`

```console
$ docker pull openjdk@sha256:d6500335b5d644fa8a451178239b414c3f98cf550376c777fe970e1462b0697e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.523; amd64

### `openjdk:8-jdk-windowsservercore-1803` - windows version 10.0.17134.523; amd64

```console
$ docker pull openjdk@sha256:0219b254b9002dfba995cd8d79335a74f80b039d13f398b2bdeebf33d43bd7c0
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2356947595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c8e7bde96ec027932b384486f5ab517f3d609d4e5258afe74ab444133fd0bc1`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 10.0.17134.1
# Fri, 04 Jan 2019 22:40:00 GMT
RUN Install update 10.0.17134.523
# Fri, 11 Jan 2019 10:49:23 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 11:24:43 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 11 Jan 2019 11:25:30 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 11 Jan 2019 11:25:31 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 11:25:33 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Fri, 11 Jan 2019 11:25:34 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Fri, 11 Jan 2019 11:25:35 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Fri, 11 Jan 2019 11:26:59 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:80c309c8f9e2a929c92fe88fafde882006a56d421e9cb306b5a55baefe52c4b6`  
		Last Modified: Tue, 08 Jan 2019 01:38:21 GMT  
		Size: 586.0 MB (585998859 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bfc3888f034fb7d00898fffa324da3e9ccfb30f42ed800fe45bb58da849af364`  
		Last Modified: Fri, 11 Jan 2019 11:31:41 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f40afb6f83974ecb870826b1c484f5742308e550adb5d6c57fb5f9594cef06f`  
		Last Modified: Fri, 11 Jan 2019 11:49:24 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e4ae02f0db967b3fa5d729c2e0b246c8d7bee2ae483a17bb87b12e9db3beb6`  
		Last Modified: Fri, 11 Jan 2019 11:49:26 GMT  
		Size: 4.7 MB (4678787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe94a2eaae91a81bfd049bf8bb58f60a6e2d9cb1aeb213de8f2ac137ce97453c`  
		Last Modified: Fri, 11 Jan 2019 11:49:21 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7842e6d0cc63ae794eb31c1018abad8577ef28476e0b4f3bd036129d2f45da`  
		Last Modified: Fri, 11 Jan 2019 11:49:21 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ded42b33de11032b004b141f9af5bc387b0f4a5e9c610d73ddfbc238ca4f0f`  
		Last Modified: Fri, 11 Jan 2019 11:49:21 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761f3a9b6aa2515e9719685ed50557b7749aba971e7db8df197d0dfa1ea60a50`  
		Last Modified: Fri, 11 Jan 2019 11:49:22 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87fdea16f7eb65737aab7357d3d3269a18f409160a1f91c8073d124e2ed631cc`  
		Last Modified: Fri, 11 Jan 2019 11:49:37 GMT  
		Size: 106.6 MB (106574444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
