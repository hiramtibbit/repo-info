## `openjdk:8u171-jdk-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:1d08be60b7bbbce6e8afe81e5fce98e94b2488cfb04d2fc3d7e64169433d6f13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.547; amd64

### `openjdk:8u171-jdk-windowsservercore-1709` - windows version 10.0.16299.547; amd64

```console
$ docker pull openjdk@sha256:a08c276c01803cee3770dbd4a15d43508d1992f4b724e25bf85c41aa20e3d039
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3220955104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a4b52467b237463dfd5b937436e0509e08738b85577aaa40e4471b21f2ead8d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 02 Jul 2018 18:10:50 GMT
RUN Install update 10.0.16299.547
# Wed, 11 Jul 2018 09:41:02 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Jul 2018 09:41:03 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 11 Jul 2018 09:42:12 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Wed, 11 Jul 2018 09:50:21 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 09:50:23 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.171-1
# Wed, 11 Jul 2018 09:50:24 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.171-1.b10.ojdkbuild.windows.x86_64.zip
# Wed, 11 Jul 2018 09:50:26 GMT
ENV JAVA_OJDKBUILD_SHA256=35104f658ed51d1b24cf6f0f6d1d21524d7640d3e3e7b64d8d7ac86cbfbc2ab9
# Wed, 11 Jul 2018 09:51:58 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a01c2a39b5bdf158508b424626efbcede4aa9da21f2d4f6ffbd5bff4deb0fb01`  
		Last Modified: Tue, 10 Jul 2018 23:36:17 GMT  
		Size: 831.1 MB (831119569 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5c935a79e71d79bf144e02b94352e10d483d43e5c3f4a3491874c5d6d72deda3`  
		Last Modified: Wed, 11 Jul 2018 09:55:02 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab9870e044256cc823af3ec08f6614064337e131de31190bd064a24f8f36eac8`  
		Last Modified: Wed, 11 Jul 2018 09:55:00 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b11eff0de8d29d6adc1d8e38a13440933cc7dee6ba24035353c0a39ea4a6a1f2`  
		Last Modified: Wed, 11 Jul 2018 09:55:01 GMT  
		Size: 4.7 MB (4721452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f235a542a47623e6ab31b45a5ec2fac4fbce2a41a92c6387fc45bfc8ff1275d`  
		Last Modified: Wed, 11 Jul 2018 09:58:20 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb798ac21d5b15b2689f33f98092e3488563f0f2c048ba6c2070786b8e1c937b`  
		Last Modified: Wed, 11 Jul 2018 09:58:19 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2dc7a9e179b7b114502763df074c6d3cceec79141b2da3624d6a7eaf16e49e9`  
		Last Modified: Wed, 11 Jul 2018 09:58:19 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df9766b0161f663ed3e0947174df2a5225fde3e7666764ca5bee6250d76b9bc1`  
		Last Modified: Wed, 11 Jul 2018 09:58:19 GMT  
		Size: 1.2 KB (1197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3287bf22910707d8b6a1436b1d500f43042b93ecb51b81f037f0d7095fbb0e6`  
		Last Modified: Wed, 11 Jul 2018 09:58:34 GMT  
		Size: 110.8 MB (110806334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
