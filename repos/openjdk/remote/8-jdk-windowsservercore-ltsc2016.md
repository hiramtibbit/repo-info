## `openjdk:8-jdk-windowsservercore-ltsc2016`

```console
$ docker pull openjdk@sha256:a28596586d047a3170824b93529811aaf5b076c7eed34bc8c3f29e5df52bd936
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `openjdk:8-jdk-windowsservercore-ltsc2016` - windows version 10.0.14393.2724; amd64

```console
$ docker pull openjdk@sha256:c5a04564c9d2c9328ae6c9c2c74f662c62655b89f1af03d3acef33f2c2e0895b
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5752514158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afec74279a39a9795cfa169af250f54df1a0eb578d9d561269dfa08a1eb1c227`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Fri, 11 Jan 2019 10:38:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 11 Jan 2019 11:18:18 GMT
ENV JAVA_HOME=C:\ojdkbuild
# Fri, 11 Jan 2019 11:19:18 GMT
RUN $newPath = ('{0}\bin;{1}' -f $env:JAVA_HOME, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	setx /M PATH $newPath;
# Fri, 11 Jan 2019 11:19:20 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 11:19:21 GMT
ENV JAVA_OJDKBUILD_VERSION=1.8.0.191-1
# Fri, 11 Jan 2019 11:19:23 GMT
ENV JAVA_OJDKBUILD_ZIP=java-1.8.0-openjdk-1.8.0.191-1.b12.ojdkbuild.windows.x86_64.zip
# Fri, 11 Jan 2019 11:19:24 GMT
ENV JAVA_OJDKBUILD_SHA256=d52167198912e239bba19e059870c5742558096ad7b82fe73d51461361b149bd
# Fri, 11 Jan 2019 11:21:27 GMT
RUN $url = ('https://github.com/ojdkbuild/ojdkbuild/releases/download/{0}/{1}' -f $env:JAVA_OJDKBUILD_VERSION, $env:JAVA_OJDKBUILD_ZIP); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'ojdkbuild.zip'; 	Write-Host ('Verifying sha256 ({0}) ...' -f $env:JAVA_OJDKBUILD_SHA256); 	if ((Get-FileHash ojdkbuild.zip -Algorithm sha256).Hash -ne $env:JAVA_OJDKBUILD_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Expanding ...'; 	Expand-Archive ojdkbuild.zip -DestinationPath C:\; 		Write-Host 'Renaming ...'; 	Move-Item 		-Path ('C:\{0}' -f ($env:JAVA_OJDKBUILD_ZIP -Replace '.zip$', '')) 		-Destination $env:JAVA_HOME 	; 		Write-Host 'Verifying install ...'; 	Write-Host '  java --version'; java --version; 	Write-Host '  javac --version'; javac --version; 		Write-Host 'Removing ...'; 	Remove-Item ojdkbuild.zip -Force; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:52e9c8dd86ca94537c9a49c5082ecddcdff7fc266e93f1587ff015c3e463ed51`  
		Last Modified: Fri, 11 Jan 2019 11:28:56 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c6fde31c5d8c81f2c82316c26411814a455a2721d2784f51175600f73cd237`  
		Last Modified: Fri, 11 Jan 2019 11:46:30 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806046c56985d461b8c8de1444188d78e05983371de5c391c7f8f20f35eeb8db`  
		Last Modified: Fri, 11 Jan 2019 11:46:36 GMT  
		Size: 5.2 MB (5225798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d1e446158b7acf7c6f1e1db18db6db0194ea13471413ba7ec49cd3e32f1b7e`  
		Last Modified: Fri, 11 Jan 2019 11:46:27 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb326cefcb7afbe707103a77df850f73b735cc8b7e552161bbd5a65f30a4ead4`  
		Last Modified: Fri, 11 Jan 2019 11:46:27 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9a2c811ab17b4534375f04ac8d3fb246fb17782b813a09bc2d82b603b5ebdc`  
		Last Modified: Fri, 11 Jan 2019 11:46:27 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdf338c72cb6ca9d77578d490b25d2afa051ec00e62d153e2d8b8ce8a7c655`  
		Last Modified: Fri, 11 Jan 2019 11:46:27 GMT  
		Size: 1.2 KB (1216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4bcce93ec6b3c7d9064972e5885558105cd256e0783b97a46e7a96071b95efd`  
		Last Modified: Fri, 11 Jan 2019 11:46:47 GMT  
		Size: 111.5 MB (111465057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
