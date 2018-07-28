## `openjdk:8u181-windowsservercore-1709`

```console
$ docker pull openjdk@sha256:4b2ffce5452cb41f2fbd7aa4922f71e106c36b1ae6c2ecca76d55d7c24d844dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.547; amd64

### `openjdk:8u181-windowsservercore-1709` - windows version 10.0.16299.547; amd64

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
