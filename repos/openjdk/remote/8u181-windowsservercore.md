## `openjdk:8u181-windowsservercore`

```console
$ docker pull openjdk@sha256:01793f87de102504ea54dc3dca4403855546f7fdf5b53711b714d35f74a0c58f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2363; amd64
	-	windows version 10.0.16299.547; amd64

### `openjdk:8u181-windowsservercore` - windows version 10.0.14393.2363; amd64

```console
$ docker pull openjdk@sha256:833b2c5d53ba0031b46fb69cf33c69c0f79f86d81aa5fce3fbf0034c32a7988c
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5605483663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15a074d9c0f7c40cfcfa25e23b6aecb1766c7360ccee3f8ff51461bc82fc284d`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 10 Jul 2018 21:16:33 GMT
RUN Install update 10.0.14393.2363
# Wed, 11 Jul 2018 09:36:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 11 Jul 2018 09:36:35 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Wed, 11 Jul 2018 09:37:59 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Sat, 28 Jul 2018 09:42:49 GMT
ENV JAVA_VERSION=8u181
# Sat, 28 Jul 2018 09:42:50 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.181-1
# Sat, 28 Jul 2018 09:42:51 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.181-1.b13.ojdkbuild.windows.x86_64.zip
# Sat, 28 Jul 2018 09:42:52 GMT
ENV JAVA_OJDKBUILD_SHA256=dd7d2ea7951c06857523e95359e5e94630039a1eae5b5223e4b8c308afc95ebb
# Sat, 28 Jul 2018 09:45:08 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java -version'; java -version; 	Write-Host '  javac -version'; javac -version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:fb1ebf2c42b6ac63b874d36a405b413fdf6c314131c3605d77e3cee6f485881f`  
		Last Modified: Tue, 10 Jul 2018 21:16:33 GMT  
		Size: 1.4 GB (1419298293 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b678e902d6e9a27ab4d61bef7b26997ea26fdec2575d1317c9eab3b31c61fd9b`  
		Last Modified: Wed, 11 Jul 2018 09:53:57 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df0b7da96ba2f6f9998af410e0e83095c74f65e14e44e196fa7ca34b34b20e7`  
		Last Modified: Wed, 11 Jul 2018 09:53:56 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43557e5ace1974f8b220d16ea7c7a0b225327d94c023252ebc95b6847a042201`  
		Last Modified: Wed, 11 Jul 2018 09:53:58 GMT  
		Size: 5.0 MB (5041524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1734acbfb4bbe9e791e09c7bb206bc27af653223e6faad55e6b93b6b529d13a`  
		Last Modified: Sat, 28 Jul 2018 09:53:05 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30475b570d1db022102ada6f198dd98236febc4311cc27546de9414e70096446`  
		Last Modified: Sat, 28 Jul 2018 09:53:05 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12985828211b32babce11f09a05d946a9c5fe9c4fb402c98017b2e44e8f9ad97`  
		Last Modified: Sat, 28 Jul 2018 09:53:05 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ce669c8148e1aeb6c1e12b3796cd923d9abb046be9c99644c67c8e3ea66014`  
		Last Modified: Sat, 28 Jul 2018 09:53:05 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1dc77bf05eab867c15d3479161cc8c65c62aff0f755867d5c82e0446ce8ccb`  
		Last Modified: Sat, 28 Jul 2018 09:53:23 GMT  
		Size: 111.2 MB (111150765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:8u181-windowsservercore` - windows version 10.0.16299.547; amd64

```console
$ docker pull openjdk@sha256:b8502c1958d12adef1c4d306b33125bb7d8e37af9f04ae33f99f50978e627b5f
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3220961076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c602d7e51a785795dd02827ea124c1e66ce1c1216ffafe1d2126b2d3810d78d`
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
# Sat, 28 Jul 2018 09:45:15 GMT
ENV JAVA_VERSION=8u181
# Sat, 28 Jul 2018 09:45:17 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.181-1
# Sat, 28 Jul 2018 09:45:18 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.181-1.b13.ojdkbuild.windows.x86_64.zip
# Sat, 28 Jul 2018 09:45:19 GMT
ENV JAVA_OJDKBUILD_SHA256=dd7d2ea7951c06857523e95359e5e94630039a1eae5b5223e4b8c308afc95ebb
# Sat, 28 Jul 2018 09:47:11 GMT
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
	-	`sha256:08089b36bbc0b9b22744ee4b096ade226fceff32641ce40e73a70139c5b88161`  
		Last Modified: Sat, 28 Jul 2018 09:53:51 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba3be34898dec528be294ad50fc2e038554509fa452a8ccbecf560649155c3a`  
		Last Modified: Sat, 28 Jul 2018 09:53:51 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c849ae45b6b279cc08893bfb3714d0d863003af0500722508ec7903026c8bd3`  
		Last Modified: Sat, 28 Jul 2018 09:53:51 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ec1496c7105e94ade325f86d56e361136ec4210d81bc27ef864fd304b794cec`  
		Last Modified: Sat, 28 Jul 2018 09:53:51 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eab4060c2e2d6cae964d9c0e987bd32a892ca716bd4c34f30ef0216ce0a6f4f`  
		Last Modified: Sat, 28 Jul 2018 09:54:09 GMT  
		Size: 110.8 MB (110812308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
